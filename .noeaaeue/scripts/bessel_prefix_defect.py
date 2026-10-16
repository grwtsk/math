#!/usr/bin/env python3
"""Finite checks for a written summable moving-prefix theorem.

Human mathematical direction: R.A. Jacob Martone.
Derivation and implementation assistance: OpenAI ChatGPT. MIT.

The written theorem bounds the ENTIRE short-prefix Bessel sequence using
MertensLogSquareBound. It does not bound the remaining signed defect energy.
The all-degree proof is in the companion evidence text; tests are finite.
Existing kernel, floor conventions, and published evidence are unchanged.
"""
from __future__ import annotations

import argparse
from dataclasses import dataclass
from fractions import Fraction as Q
import json
from typing import Sequence

import bessel_mobius_packet_compiler as c
import bessel_packet_integrals as b


def degree_plan(n: int) -> dict[str, int]:
    b.integer(n, 'degree', 2)
    return c.shell_plan(1 << (n.bit_length() - 1))


@dataclass(frozen=True)
class DefectPacket:
    start: int
    limit: int
    cutoff: int
    short: tuple[int, ...]
    defect: tuple[int, ...]
    linear: tuple[int, ...]
    quadratic: tuple[int, ...]
    long: tuple[int, ...]
    full: tuple[int, ...]


def compile_defect(start: int) -> DefectPacket:
    """eta=a*1-epsilon; full=a-a*eta+a*eta*eta below (U+1)^3.

    Only the actual short Mobius prefix is queried. Both defect channels
    are retained; neither channel separately inherits the |mu|<=1 bound.
    """
    plan = c.shell_plan(start)
    limit = plan['closed_source_limit']
    if limit > 100000:
        raise ValueError('finite resource guard: source limit <=100000')
    packet = c.compile_prefix(limit)
    a, second, third = packet.branches
    h = c.dirichlet_convolution(a, [0] + [1] * limit, limit)
    eta = list(h)
    eta[1] -= 1
    linear = c.dirichlet_convolution(a, eta, limit)
    quadratic = c.dirichlet_convolution(linear, eta, limit)
    long = tuple(v-u for u, v in zip(linear, quadratic))
    full = packet.recombined()
    if any(a[k]+long[k] != full[k] for k in range(limit+1)):
        raise ArithmeticError('joint defect reconstruction failed')
    if any(eta[1:packet.cutoff+1]) or any(long[1:packet.cutoff+1]):
        raise ArithmeticError('defect lost its zero prefix')
    if any(quadratic[1:min(limit+1, (packet.cutoff+1)**2)]):
        raise ArithmeticError('quadratic defect has premature support')
    if tuple(linear) != tuple(v-u for u, v in zip(a, second)):
        raise ArithmeticError('linear-to-cubic adapter failed')
    if tuple(quadratic) != tuple(w-2*v+u for u, v, w in zip(a, second, third)):
        raise ArithmeticError('quadratic-to-cubic adapter failed')
    return DefectPacket(start, limit, packet.cutoff, a, tuple(eta),
                        tuple(linear), tuple(quadratic), long, full)


def jacobi_coefficients(n: int) -> list[Q]:
    b.integer(n, 'degree', 0)
    p = [b.normalization(n)]
    for j in range(n):
        p.append(p[-1]*(-n+j)*(n+Q(7,6)+j)/((Q(7,6)+j)*(j+1)))
    return p


def short_jacobi(n: int, coefficients: Sequence[int | Q]) -> Q:
    """Exact full-half-line Jacobi moment of a FINITE coefficient source.

    These moments are rational; no zeta value or asymptotic tail is used.
    Index zero is zero. This is not the full infinite Mobius sequence.
    """
    b.integer(n, 'degree', 0)
    if len(coefficients) < 2 or coefficients[0] != 0:
        raise ValueError('require coefficients indexed 0..U, U>=1, with a[0]=0')
    a = [b.rational(x) for x in coefficients]
    if any(abs(x)>1 for x in a):
        raise ValueError('prefix theorem requires |a_k|<=1')
    p = jacobi_coefficients(n)
    return sum((p[j]*sum((a[k]/k**(2*j+2) for k in range(1,len(a))), Q(0))
                / ((2*j+Q(3,2))*(2*j+2)) for j in range(n+1)), Q(0))


def atom_jacobi_by_parts(n: int, k: int) -> Q:
    """Independent rational evaluation of the full source-derivative integral."""
    b.integer(n, 'degree', 1)
    b.integer(k, 'atom', 1)
    p = jacobi_coefficients(n)
    lam = n*(n+Q(7,6))
    value = Q(0)
    for j in range(1,n+1):
        y0, y1 = Q(1,k**(2*j)), Q(1,k**(2*j+2))
        value += j*p[j]*(Q(1,3)*(y0/j-y1/(j+1))
                          -Q(5,6)*(y0/(j-Q(1,4))-y1/(j+Q(3,4))))
    return value/(2*lam)


def absolute_ball(x: b.Ball) -> b.Ball:
    return b.Ball(Q(0) if x.zero_inside() else min(abs(x.lo),abs(x.hi)),
                  max(abs(x.lo),abs(x.hi)))


def finite_prefix_envelope(n: int, coefficients: Sequence[int | Q], bits: int=64) -> b.Ball:
    """Enclose the WRITTEN bound 36|A_U|n^-4/3+22U^2/3 n^-3/2.

    This function does not prove that bound; its analytic proof is separate.
    The bound holds for all |a_k|<=1 and 2<=U<=n, not just Mobius values.
    """
    b.integer(n,'degree',2)
    b.integer(bits,'bits',16)
    if bits>256:
        raise ValueError('finite precision guard: bits <=256')
    U = len(coefficients)-1
    if not 2<=U<=n or coefficients[0] != 0:
        raise ValueError('require exactly indices 0..U and 2<=U<=n')
    a = [b.rational(v) for v in coefficients]
    if any(abs(v)>1 for v in a):
        raise ValueError('prefix theorem requires bounded coefficients')
    A = sum((a[k]*b.positive_root(Q(1,k),2,bits+32) for k in range(1,U+1)), b.Ball.point(0))
    return (36*absolute_ball(A)*b.positive_root(Q(1,n**4),3,bits+32)
            +22*b.positive_root(Q(U**2),3,bits+32)*b.positive_root(Q(1,n**3),2,bits+32)).rounded(bits)


def budget_certificate() -> dict:
    checks = {
        'prefix_amplitude': Q(12)+Q(312,2) == 168,
        'endpoint_A': Q(3,7)*Q(5,6)*Q(4,3)*Q(6,5) == Q(4,7),
        'interior_A': Q(7,2)*Q(5,6)*12 == 35,
        'A_total': Q(4,7)+35 < 36,
        'other_total': Q(6,35)+7+14+Q(24,35) < 22,
        'sqrt_U_constant': Q(4,3)**3 > 2,
        'U_two_thirds_constant': Q(3,2)**9 > 16,
        'log_prefix_constant': 168*Q(4,3)*Q(25,4) == 1400,
        'log_degree_constant': 36*1400 == 50400,
        'bulk_degree_constant': 22*Q(3,2) == 33,
        'bulk_exponent': Q(-3,2)+Q(4,9) == -Q(19,18),
        'log_squared_integral': Q(7,3)*50400**2 == 5927040000,
        'bulk_squared_integral': 7*33**2*9 == 68607,
        'sqrt_log_bound': Q(153,100)**2 > Q(7,3),
        'sqrt_bulk_bound': 8**2 > 63,
        'old_error_sqrt_bounds': 4725<69**2 and 420000<649**2 and 10500<103**2,
        'combined_norm': 50400*Q(153,100)+33*8+69+649+103 == 78197,
        'rounded_norm': 78197 < 78200,
        'constant_check': 78200**2 == 6115240000,
        'series_threshold': Q(1)+2*(-Q(19,18)) == -Q(10,9),
    }
    if not all(checks.values()):
        raise ArithmeticError('exact constant accounting failed')
    return {'checks':checks,
            'premise':'MertensLogSquareBound; published classical supplier, no native admission',
            'short_jacobi_norm':'50400*sqrt(7/3)+33*sqrt(63)',
            'approximation_difference_norm':'sqrt(4725)+sqrt(420000)+sqrt(10500)',
            'short_bessel_norm_less_than':78200,
            'full_jacobi_minus_long_bessel_norm_less_than':78200,
            'short_bessel_squared_norm_less_than':78200**2,
            'uniform_remaining_defect_energy_proved':False,
            'proof_grade':'written analytic argument; these checks validate finite algebra only'}


def degree_record(n: int, packet: DefectPacket, bits: int=40) -> dict:
    """Evaluate the actual two signed defect channels and retained short part."""
    b.integer(n,'degree',2)
    b.integer(bits,'bits',16)
    if not packet.start<=n<2*packet.start or n>31 or bits>96:
        raise ValueError('degree must be in the packet shell and <=31, bits<=96')
    size=n*n+1
    rows=[row[:size] for row in (packet.full,packet.short,packet.linear,packet.quadratic,packet.long)]
    full,short,linear,quadratic,long=rows
    independent=tuple([0]+[c.mobius_by_factorization(k) for k in range(1,size)])
    if full!=independent or tuple(short[k]+long[k] for k in range(size))!=full:
        raise ArithmeticError('independent source reconstruction failed')
    amp=sum(sum(map(abs,row)) for row in rows)+size
    calc=b.KernelIntegral(n,bits,amp)
    kernels=[b.Ball.point(0)]+[calc.atom(k) for k in range(1,size)]
    t,s,l,q,v=[b.contract(row,kernels,calc.work_bits) for row in rows]
    long_cells=calc.from_cells(long)
    short_cells=calc.from_cells(short)
    dj=short_jacobi(n,short[:packet.cutoff+1])
    values={'full_bessel':t,'short_bessel':s,'defect_linear':l,'defect_quadratic':q,
            'long_bessel':v,'long_from_cells':long_cells,'short_jacobi':b.Ball.point(dj),
            'full_reconstruction_residual':t-s-v,'defect_residual':v-q+l,
            'long_cell_residual':v-long_cells,'short_cell_residual':s-short_cells,
            'long_squared':v.square(),'long_diagonal':l.square()+q.square(),
            'long_mixed':-2*l*q,'mixed_residual':v.square()-l.square()-q.square()+2*l*q,
            'short_long_mixed':2*s*v}
    checks={k:v.zero_inside() for k,v in values.items() if k.endswith('residual')}
    if not all(checks.values()):
        raise ArithmeticError('finite source or mixed-term identity unresolved')
    if any(v.hi-v.lo>Q(1,1<<(bits-4)) for v in values.values()):
        raise ArithmeticError('finite intervals too wide; increase precision')
    return {'degree':n,'prefix_cutoff':packet.cutoff,'closed_source_limit':n*n,
            'long_source_range':[packet.cutoff+1,n*n],
            'short_jacobi_rational':str(dj),'taylor_order':calc.order,
            'intervals':{k:v.rounded(bits).json() for k,v in values.items()},'checks':checks,
            'scope':'actual finite integrals only; no uniform long-source bound'}


def main() -> None:
    parser=argparse.ArgumentParser(description=__doc__)
    parser.add_argument('--shell',type=int,action='append')
    parser.add_argument('--bits',type=int,default=40)
    parser.add_argument('--integrals',action='store_true')
    args=parser.parse_args()
    try:
        b.integer(args.bits,'bits',16)
        if args.bits>96:
            raise ValueError('bits<=96 required')
        records=[]
        for start in args.shell or [2,4]:
            packet=compile_defect(start)
            if args.integrals and start>16:
                raise ValueError('integral batch resource guard: shell start <=16')
            records.append({'shell_start':start,'source_limit':packet.limit,'prefix_cutoff':packet.cutoff,
                            'zero_defect_prefix_verified':not any(packet.defect[1:packet.cutoff+1]),
                            'exact_coefficient_reconstruction':True,
                            'source_queries_above_prefix_in_compilation':0,
                            'independent_full_source_validation':args.integrals,
                            'degrees':[degree_record(n,packet,args.bits) for n in range(start,2*start)]
                                       if args.integrals else []})
        print(json.dumps({'schema':'bessel-prefix-defect-finite-v1','records':records,
                          'budget':budget_certificate(),'native_lean_replay':'NOT_RUN',
                          'uniform_defect_bound_proved':False},indent=2))
    except (ValueError,TypeError,ArithmeticError) as error:
        parser.exit(2,f'error: {error}\n')


if __name__=='__main__':
    main()
