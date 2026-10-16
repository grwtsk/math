#!/usr/bin/env python3
"""Source-exact bilinear reduction with a written unconditional error budget.

Human mathematical direction: grwtsk contributors.
Derivation/implementation: OpenAI ChatGPT. MIT.
The Newton residual square and regular Volterra inverse adapt methods in
OpenAI/NavierStokesAndEuler, not its terminal PDE theorem. The algebraic
Möbius identity is classical. No upstream Lean import or compiler change.

U_n=ceil(n^(3/5)), H_n=U_n^2. One finite Newton step reconstructs mu through
H_n. The omitted short source and high-source coefficient tail have a
written combined weighted norm <1936 relative to the full Jacobi sequence.
The remaining signed bilinear sequence is NOT proved square summable.
"""
from __future__ import annotations

import argparse
from dataclasses import dataclass
from fractions import Fraction as Q
import json

import bessel_mobius_packet_compiler as c
import bessel_packet_integrals as b
import bessel_prefix_defect as p


def integer_root_ceiling(value: int, order: int) -> int:
    c.positive_integer(value, 'value')
    c.positive_integer(order, 'order')
    if order < 2 or order > 64:
        raise ValueError('root order must be in 2..64')
    low, high = 0, 1 << ((value.bit_length()+order-1)//order)
    while high-low > 1:
        mid = (low+high)//2
        if mid**order < value:
            low = mid
        else:
            high = mid
    if not (high-1)**order < value <= high**order:
        raise ArithmeticError('integer root bracket failed')
    return high


def degree_plan(n: int) -> dict[str, int]:
    b.integer(n, 'degree', 2)
    U = integer_root_ceiling(n**3, 5)
    if not (2 <= U <= n and n <= U*U <= n*n and 32*U**5 <= 243*n**3):
        raise ArithmeticError('cutoff inequalities failed')
    return {'degree': n, 'mobius_input_limit': U, 'middle_source_limit': U*U,
            'original_source_limit': n*n, 'strict_newton_gate': (U+1)**2}


@dataclass(frozen=True)
class BilinearPacket:
    degree: int
    cutoff: int
    limit: int
    short: tuple[int, ...]
    pair: tuple[int, ...]
    middle_linear: tuple[int, ...]
    reconstructed: tuple[int, ...]


def compile_bilinear(n: int) -> BilinearPacket:
    """Use mu only through U; one Newton update equals 2a-a*a*1 below (U+1)^2.

    Do not assert that the updated source equals mu beyond that strict gate.
    Full-source validation and tail evaluation are separate diagnostics.
    """
    plan = degree_plan(n)
    U, H = plan['mobius_input_limit'], plan['middle_source_limit']
    if H > 100000:
        raise ValueError('finite compiler resource guard: U^2<=100000')
    short = [0]+[c.mobius_by_factorization(k) for k in range(1, U+1)]+[0]*(H-U)
    pair = c.dirichlet_convolution(c.dirichlet_convolution(short, short, H),
                                   [0]+[1]*H, H)
    reconstructed = [2*x-y for x, y in zip(short, pair)]
    middle = [0]*(U+1)+pair[U+1:]
    if reconstructed[:U+1] != short[:U+1]:
        raise ArithmeticError('initial divisor identity failed')
    if reconstructed != [x-y for x, y in zip(short, middle)]:
        raise ArithmeticError('middle sign or source carry changed')
    return BilinearPacket(n, U, H, tuple(short), tuple(pair), tuple(middle),
                          tuple(reconstructed))


def coefficient_tail_budget(n: int) -> Q:
    plan = degree_plan(n)
    return abs(b.normalization(n))/plan['middle_source_limit']


def budget_certificate() -> dict:
    theta = Q(3, 5)
    delta_short = Q(1, 3)-theta/2
    delta_bulk = Q(1, 2)-2*theta/3
    delta_tail = 2*theta-Q(7, 6)
    checks = {
        'volterra_exponent': 1/(1+Q(1,6)) == Q(6,7),
        'potential_bound': Q(1,18)+Q(1,12) == Q(5,36),
        'regular_derivative_bound': Q(4,3)*Q(6,7)*Q(4,3) == Q(32,21),
        'atom_scalar_integral': Q(5,6)*Q(4,3)-Q(1,3) == Q(7,9),
        'atom_kernel_constant': Q(32,21)*Q(7,9)/2 == Q(16,27) < 1,
        'smallest_ceil_range': Q(3,2)**5 < 2**3,
        'sqrt_cutoff_bound': Q(3,2) < Q(5,4)**2,
        'two_thirds_cutoff_bound': Q(3,2)**2 < Q(4,3)**3,
        'prefix_coefficients': 36*2*Q(5,4) == 90 and 22*Q(4,3) < 30,
        'balanced_gain': delta_short == delta_tail == Q(1,30),
        'bulk_gain': delta_bulk == Q(1,10),
        'tail_coefficient': Q(6,5)+90 == Q(456,5),
        'squared_series_integrals': 7/(2*delta_short) == 105 and 7/(2*delta_bulk) == 35,
        'sqrt105': Q(41,4)**2 > 105,
        'sqrt35': 6**2 > 35,
        'old_error_roots': 69**2 > 4725 and 649**2 > 420000 and 103**2 > 10500,
        'complete_norm': Q(456,5)*Q(41,4)+30*6+69+649+103 == Q(9679,5) < 1936,
    }
    if not all(checks.values()):
        raise ArithmeticError('exact constant/exponent accounting failed')
    return {'checks': checks, 'cutoff_power': str(theta),
            'minimum_power_gain': str(delta_short),
            'difference_norm': '(456/5)*sqrt(105)+30*sqrt(35)+sqrt(4725)+sqrt(420000)+sqrt(10500)',
            'difference_norm_less_than': 1936,
            'MertensLogSquareBound_required': False,
            'scope': 'written all-degree difference proof; rational checks are not native proof',
            'uniform_bilinear_energy_proved': False}


def degree_record(n: int, bits: int = 40) -> dict:
    b.integer(bits, 'bits', 16)
    if bits > 96 or n > 31:
        raise ValueError('finite integral guard: bits<=96, degree<=31')
    pack = compile_bilinear(n)
    U, H, size = pack.cutoff, pack.limit, n*n+1
    full = tuple([0]+[c.mobius_by_factorization(k) for k in range(1,size)])
    if full[:H+1] != pack.reconstructed:
        raise ArithmeticError('independent exact source validation failed')
    short = pack.short+(0,)*(size-len(pack.short))
    linear = pack.middle_linear+(0,)*(size-len(pack.middle_linear))
    high = (0,)*(H+1)+full[H+1:]
    if tuple(s-l+h for s,l,h in zip(short,linear,high)) != full:
        raise ArithmeticError('source reconstruction failed')
    rows = (full, short, linear, high)
    amp = sum(sum(map(abs,row)) for row in rows)+size
    calc = b.KernelIntegral(n,bits,amp)
    kernels = [b.Ball.point(0)]+[calc.atom(k) for k in range(1,size)]
    t,s,l,h = [b.contract(row,kernels,calc.work_bits) for row in rows]
    lcell = calc.from_cells(linear)
    pJ = p.short_jacobi(n,short[:U+1])
    vals = {'original_bessel':t,'short_bessel':s,'middle_linear_bessel':l,
            'high_source_bessel':h,'middle_from_cells':lcell,
            'source_identity_residual':t-s+l-h,'middle_cell_residual':l-lcell,
            'complete_short_jacobi':b.Ball.point(pJ),
            'old_full_bessel_plus_middle':t+l,
            'middle_energy':(4*n+Q(7,3))*l.square(),
            'actual_high_tail_budget':b.Ball.point(coefficient_tail_budget(n))}
    checks = {k:v.zero_inside() for k,v in vals.items() if k.endswith('residual')}
    checks['tail_within_written_budget'] = max(abs(h.lo),abs(h.hi)) <= coefficient_tail_budget(n)
    if not all(checks.values()):
        raise ArithmeticError('finite comparison failed or unresolved')
    if any(v.hi-v.lo>Q(1,1<<(bits-4)) for v in vals.values()):
        raise ArithmeticError('enclosures exceed requested width budget')
    return {**degree_plan(n), 'work_bits':calc.work_bits,'taylor_order':calc.order,
            'intervals':{k:v.rounded(bits).json() for k,v in vals.items()},
            'checks':checks,
            'source_queries_in_compiler':U,
            'independent_validation_queries_through':n*n,
            'scope':'finite actual source integrals; NOT a tail bound on the middle sequence'}


def main() -> None:
    parser=argparse.ArgumentParser(description=__doc__)
    parser.add_argument('--degree',type=int,action='append')
    parser.add_argument('--bits',type=int,default=40)
    parser.add_argument('--integrals',action='store_true')
    args=parser.parse_args()
    try:
        b.integer(args.bits,'bits',16)
        if args.bits>96:
            raise ValueError('bits<=96 required')
        records=[]
        for n in args.degree or [2,3,4,8,15]:
            pack=compile_bilinear(n)
            records.append(degree_record(n,args.bits) if args.integrals else
                           {**degree_plan(n),'reconstruction_checked':True,
                            'source_queries_above_input_cutoff':0})
        print(json.dumps({'schema':'signed-newton-bessel-bilinear-v1','records':records,
                          'budget':budget_certificate(),'native_lean_replay':'NOT_RUN',
                          'uniform_energy_bound_proved':False},indent=2))
    except (ValueError,TypeError,ArithmeticError) as exc:
        parser.exit(2,f'error: {exc}\n')


if __name__=='__main__':
    main()
