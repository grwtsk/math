#!/usr/bin/env python3
"""Finite exact controls; not proof of any infinite arithmetic bound."""
from fractions import Fraction as Q
from itertools import product
from pathlib import Path
import json
import subprocess
import sys
import unittest
from unittest.mock import patch

import bessel_mobius_packet_compiler as b


def sieve(limit):
    out = [1] * (limit + 1)
    out[0] = 0
    marked = [False] * (limit + 1)
    for p in range(2, limit + 1):
        if marked[p]:
            continue
        for k in range(p, limit + 1, p):
            marked[k] = True
            out[k] *= -1
        for k in range(p * p, limit + 1, p * p):
            out[k] = 0
    return out


def times(poly, other):
    out = {}
    for x, a in poly.items():
        for y, c in other.items():
            out[x + y] = out.get(x + y, Q(0)) + a * c
    return {x: a for x, a in out.items() if a}


class CompilerTests(unittest.TestCase):
    def test_cube_root_boundaries(self):
        for k in range(1, 100):
            for n in (k ** 3, (k + 1) ** 3 - 1):
                self.assertEqual(b.integer_cube_root(n), k)

    def test_independent_mu(self):
        mu = sieve(2048)
        self.assertEqual([0] + [b.mobius_by_factorization(k) for k in range(1, 2049)], mu)

    def test_all_small_cutoffs(self):
        reference = sieve(256)
        for limit in range(1, 257):
            packet = b.compile_prefix(limit)
            self.assertEqual(packet.recombined(), tuple(reference[:limit + 1]))

    def test_full_degree_shells(self):
        for start in (2, 4, 8, 16, 32, 64):
            plan = b.shell_plan(start)
            packet = b.compile_prefix(plan['closed_source_limit'])
            self.assertEqual(packet.recombined(), tuple(sieve(packet.limit)))
            self.assertLess(packet.limit, (packet.cutoff + 1) ** 3)

    def test_only_short_mobius_queries(self):
        original = b.mobius_by_factorization
        with patch.object(b, 'mobius_by_factorization', side_effect=original) as call:
            packet = b.compile_prefix(4096)
            self.assertEqual([c.args[0] for c in call.call_args_list], list(range(1, packet.cutoff + 1)))

    def test_strict_support_gate(self):
        with self.assertRaises(ValueError):
            b.compile_prefix(8, 1)
        a, q, r = b.cubic_branches(8, [0, 1])
        self.assertEqual(3 * a[8] - 3 * q[8] + r[8], 1)
        self.assertEqual(sieve(8)[8], 0)

    def test_full_remainder_identity(self):
        limit, U = 64, 2
        mu = sieve(limit)
        small = mu[:U + 1]
        rows = b.cubic_branches(limit, small)
        residual = [0 if k <= U else mu[k] for k in range(limit + 1)]
        one = [0] + [1] * limit
        rem = b.dirichlet_convolution(residual, residual, limit)
        rem = b.dirichlet_convolution(rem, residual, limit)
        rem = b.dirichlet_convolution(rem, one, limit)
        rem = b.dirichlet_convolution(rem, one, limit)
        self.assertEqual([3 * x - 3 * y + z + e for x, y, z, e in zip(*rows, rem)], mu)

    def test_neutral_multiplier_multiplicity(self):
        a, second, third = b.cubic_branches(32, [0, 1])
        for k in range(1, 33):
            self.assertEqual(second[k], 1)
            self.assertEqual(third[k], sum(k % d == 0 for d in range(1, k + 1)))

    def test_ordered_convolution(self):
        row = [0, 1, -1, -1]
        out = b.dirichlet_convolution(row, row, 12)
        self.assertEqual(out[6], 2)
        self.assertEqual(out[4], 1)

    def test_exact_linear_transport(self):
        for limit in (7, 16, 64, 127):
            packet = b.compile_prefix(limit)
            mu = sieve(limit)
            for s in (0, 1, 2, 3):
                weights = [Q(0)] + [Q((-1) ** k, k ** s) for k in range(1, limit + 1)]
                value = b.apply_test_weights(packet, weights)[3]
                self.assertEqual(value, sum((x * y for x, y in zip(mu, weights)), Q(0)))

    def test_all_mixed_orders(self):
        for row in product((-2, -1, 0, 1, 2), repeat=3):
            result = b.joint_energy([row], [Q(7, 3)])
            self.assertEqual(result['identity_residual'], 0)
            self.assertGreaterEqual(result['joint'], 0)

    def test_removing_cross_terms_fails(self):
        values = b.joint_energy([(1, 2, 3)], [1])
        self.assertEqual(values['joint'], 0)
        self.assertEqual(values['first'] + values['second'] + values['third'], 54)
        self.assertNotEqual(values['joint'] - values['first_second'], 0)

    def test_wrong_packet_sign_fails(self):
        packet = b.compile_prefix(16)
        first, second, third = packet.branches
        self.assertNotEqual(tuple(3*x+3*y+z for x,y,z in zip(first,second,third)), packet.recombined())

    def test_atom_window_and_carry(self):
        for n in range(2, 100):
            self.assertEqual(b.atom_window(n, 1), (Q(1, n**4), Q(1, n)))
            self.assertEqual(b.atom_window(n, n**2), (Q(1, n**4), Q(1, n**4)))
            self.assertEqual(b.atom_window(n, n**2+1), (Q(1, n**4), Q(1, n**4)))
            l, r = b.atom_window(n, n**2-1)
            self.assertLess(l, r)

    def test_exact_source_derivative_kernel(self):
        # Differentiate the two terms of the actual source atom g_k.
        source_parts = ({Q(-5,12): Q(2)}, {Q(-1,6): Q(-2)})
        for n in range(2, 34):
            lam = n * (Q(n)+Q(7,6))
            multiplier = {Q(7,6): 1/(2*lam), Q(13,6): -1/(2*lam)}
            parts = b.atom_kernel_parts(n)
            for source, target in zip(source_parts, parts.values()):
                derivative = {power-1: value*power for power,value in source.items()}
                self.assertEqual(times(multiplier, derivative), target)

    def test_low_phase_region_not_empty(self):
        for n in range(4, 101):
            plan = b.low_phase_plan(n)
            self.assertLess(plan['physical_left'], plan['physical_right'])
            self.assertGreater(plan['physical_left']**2, n)
            self.assertEqual(1-Q(3,14)*plan['argument_squared_upper'], plan['normalized_bessel_lower'])

    def test_invalid_inputs(self):
        for value in (True, 0, -2, Q(8), 8.0, '8'):
            with self.assertRaises(ValueError):
                b.compile_prefix(value)
        for value in (1, 3, 6):
            with self.assertRaises(ValueError):
                b.shell_plan(value)
        with self.assertRaises(ValueError):
            b.apply_test_weights(b.compile_prefix(7), [0]*9)
        with self.assertRaises(TypeError):
            b.joint_energy([(1.0, 2, 3)], [1])
        with self.assertRaises(ValueError):
            b.joint_energy([(1, 2, 3)], [-1])
        with self.assertRaises(ValueError):
            b.low_phase_plan(3)

    def test_cli_scope(self):
        path = Path(b.__file__).resolve()
        run = subprocess.run([sys.executable, '-B', str(path), '--shell', '8'], capture_output=True, text=True)
        self.assertEqual(run.returncode, 0, run.stderr)
        result = json.loads(run.stdout)
        self.assertFalse(result['bessel_integrals_evaluated'])
        self.assertFalse(result['uniform_energy_bound_proved'])
        self.assertEqual(result['records'][0]['closed_source_limit'], 225)
        denied = subprocess.run([sys.executable, '-B', str(path), '--shell', '64', '--max-source', '100'], capture_output=True, text=True)
        self.assertNotEqual(denied.returncode, 0)


if __name__ == '__main__':
    unittest.main()
