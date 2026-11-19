# Rational hyperbolic bounds for the literal Weil pole

Local attribution: **grwtsk contributors**.

Maintained source: [WeilRationalHyperbolic.lean](WeilRationalHyperbolic.lean).
Namespace: `GRWTSK.NumberTheory.WeilQuadraticForm.RationalHyperbolic`.
Primary MSC2020: 33B10; secondary 65G20, 11M06.
Status: **WRITTEN_ANALYTICAL_ARGUMENT / SOURCE_PROOF_CANDIDATE**.
Lean parsing, elaboration, exact types, builds, fresh kernel replay, transitive
axiom audit and independent review: **NOT_RUN**. Novelty: **UNASSESSED**.
This is elementary enclosure arithmetic, not a claimed new special-function theorem.

The consumer is [WeilPoleSampling.lean](WeilPoleSampling.lean): its inputs are
the actual `sinh(T/2)` in the original sine pole moment, the actual `sinh(t/2)`
in the physical output, and `cosh(T/2)` in the existing spatial modulus. The
construction supplies no Weil sign and does not replace the source gamma data.

## RHYP-1. Admit exponential endpoints by finite logarithm comparisons

For q>=1 the pre-existing rational supplier sets

    z=(q-1)/(q+1),
    l_N(q)=2 sum_(k<N) z^(2k+1)/(2k+1),
    u_N(q)=l_N(q)+2*z^(2N+1)/(1-z^2).

Its source theorem is `l_N(q) <= Real.log q <= u_N(q)`. Fix rational x,a,b
and N with a>=1,b>=1 and the exact rational comparisons

    u_N(a) <= x <= l_N(b).                         (RHYP-1)

Then log a<=x<=log b. Positivity of a,b justifies exp(log a)=a and
exp(log b)=b. The monotonicity of exp gives

    a <= exp x <= b.                              (RHYP-2)

No exponential observation is an admitted premise. A proposed pair a,b may be
found by another algorithm; only (RHYP-1) is used by the Lean consumer.
The displayed direct supplier is suitable for the examples below. For large
arguments its cost can grow; the existing exact dyadic log factorization may
be used in a separate supplier. There is no asserted uniform all-window cost.

## RHYP-2. Reciprocals, hyperbolic signs and rounding

Write E=exp x. For 0<a<=E<=b, inversion reverses order:

    1/b <= 1/E <= 1/a.

The ORIGINAL functions satisfy

    sinh x=(E-1/E)/2,       cosh x=(E+1/E)/2.

Hence

    (a-1/a)/2 <= sinh x <= (b-1/b)/2,
    (a+1/b)/2 <= cosh x <= (b+1/a)/2.              (RHYP-3)

All endpoints are rational. The cosh bound is deliberately a safe independent
endpoint enclosure, not an assumption that the two uncertain summands vary
independently. If a>=1, the lower sinh endpoint is nonnegative. Odd reflection
sends [l,u] for sinh x to [-u,-l] for sinh(-x). Cosh is even, but no new cosh
reflection declaration is needed by the stated consumers.

For a rational proposed sample center p and radius e, check

    p-e <= (a-1/a)/2,
    (b-1/b)/2 <= p+e.

These inequalities and (RHYP-3) prove |sinh x-p|<=e, and imply e>=0.
The last public theorem performs this outward sample return. A rounded printed
value without its radius is not an admitted observation.

## RHYP-3. Evaluated exact-rational examples

The following input endpoints have common denominator 10^18. Direct logarithm
checks (RHYP-1) at N=64 were executed with `fractions.Fraction`, without a
floating log, exponential, or real square root.

| x | lower exp numerator | upper exp numerator |
|---|---:|---:|
| 1/4 | 1284025416687741484 | 1284025416687741485 |
| 1/2 | 1648721270700128146 | 1648721270700128147 |
| 1 | 2718281828459045235 | 2718281828459045236 |
| 3/2 | 4481689070338064822 | 4481689070338064823 |

Outward conversion of (RHYP-3) to denominator 10^12 gives:

| x | sinh lower | sinh upper | cosh lower | cosh upper |
|---|---:|---:|---:|---:|
| 1/4 | 0.252612316808 | 0.252612316809 | 1.031413099879 | 1.031413099880 |
| 1/2 | 0.521095305493 | 0.521095305494 | 1.127625965206 | 1.127625965207 |
| 1 | 1.175201193643 | 1.175201193644 | 1.543080634815 | 1.543080634816 |
| 3/2 | 2.129279455094 | 2.129279455095 | 2.352409615243 | 2.352409615244 |

Each decimal is an exact rational endpoint. The finite arithmetic was run;
the analytical source return is the written argument above and the uncompiled
Lean candidate, not a fresh kernel-verified numerical result.

A different positive exponential expansion supplied proposals: for x>=0,
S=sum_(k=0)^80 x^k/k! and

    R=[x^81/81!]/[1-x/82]

bound the entire omitted tail when x<82. Thus S<=exp x<=S+R. The output
endpoints were obtained by outward rational rounding, and were THEN admitted
by the logarithm checks. These are distinct scalar expansions, not independent
human review, and the exponential expansion is not an extra Lean premise.

Clean standard-library reproduction of the actual acceptance checks:

```python
from fractions import Fraction as F

def log_bounds(q, n=64):
    q=F(q)
    assert q>=1
    z=(q-1)/(q+1)
    lo=2*sum((z**(2*k+1)/(2*k+1) for k in range(n)), F(0))
    return lo, lo+2*z**(2*n+1)/(1-z*z)

def outward(lo,hi,d=10**12):
    a=lo.numerator*d//lo.denominator
    b=-((-hi.numerator*d)//hi.denominator)
    assert F(a,d)<=lo<=hi<=F(b,d)
    return a,b

inputs=[(F(1,4),1284025416687741484,1284025416687741485),
        (F(1,2),1648721270700128146,1648721270700128147),
        (F(1),2718281828459045235,2718281828459045236),
        (F(3,2),4481689070338064822,4481689070338064823)]
for x,A,B in inputs:
    a,b=F(A,10**18),F(B,10**18)
    assert log_bounds(a)[1]<=x<=log_bounds(b)[0]
    print(x, outward((a-1/a)/2,(b-1/b)/2),
             outward((a+1/b)/2,(b+1/a)/2))
```

Failure controls: inversion order cannot be preserved; zero/negative
exponential endpoints are not permitted; for negative x, swapping only signs
without swapping endpoints is invalid. This file does not evaluate the gamma
constant, prove a uniform spectral margin, or make a statement about zeta zeros.

## Individual declaration provenance and consumers

Every name below is in the namespace printed above; none is an adapted new
paper-level theorem. The primary analytical method is RHYP-1--3.

| Declaration | Exact argument and immediate consumer |
|---|---|
| `exp_bounds_of_log_checks` | Existing `RationalLogarithms.log_enclosure`, exp monotonicity and exp(log) on positive inputs; both hyperbolic suppliers. |
| `sinh_bounds_of_exp_bounds` | Real sinh exponential definition, exp(-x)=1/exp x and reversed reciprocal inequalities; rational sinh supplier. |
| `cosh_bounds_of_exp_bounds` | Same exact positive/negative exponential data with a sum; actual cosh modulus bound. |
| `sinh_bounds_of_log_checks` | RHYP-1 followed by RHYP-3 and rational casts; original pole coefficient and spatial profile. |
| `cosh_bounds_of_log_checks` | RHYP-1 followed by the cosh part of RHYP-3; original residual-column modulus. |
| `sinhEndpoint_nonneg` | a>=1 implies 1/a<=1<=a; nonnegative magnitude factors in the source coefficient. |
| `sinh_negative_bounds` | Original `Real.sinh_neg`, with reversed endpoint order; negative spatial samples. |
| `sinh_sample_of_log_checks` | Interval containment in a proposed center/radius pair; finite rational observation supplied to the pole product consumer. |

Definitions `sinhEndpoint`, `coshLower`, `coshUpper` are finite rational
expressions. They are not new definitions of the transcendental functions.

## Primary sources, pins and execution scope

Inspected math revision: `7c183c31ebc4ed393e1ecef385479b8370ae8768`.
Lean `leanprover/lean4:v4.34.1`; mathlib
`d13f23b723b8a846827a245b89c10fc7d3f11612`.

* [WeilRationalLogarithms.lean](WeilRationalLogarithms.lean), original log
  enclosure and finite rational definitions, blob
  `776022a3cf679384fd2fb31404a90fc1178562c7`.
* NIST DLMF, [4.28.1](https://dlmf.nist.gov/4.28.E1) and
  [4.28.2](https://dlmf.nist.gov/4.28.E2), definitions of sinh and cosh; accessed
  2026-11-18. Local symbols are the existing real Mathlib functions.
* [WeilOddPoleMoment.lean](WeilOddPoleMoment.lean), blob
  `c4e9acaf52faf2017a928ac5a9269ce401692e35`, exact literal moment return;
  [WeilPoleSampling.lean](WeilPoleSampling.lean) is this increment's consumer.

The source-local argument is complete at its stated conditional scalar inputs.
Executed checks concern finite rational comparisons and static source text only.
No local Lean/Lake was available. Canonical Noe proof skill access returned 404
at `b0be41adc8b0bf76f9735b3c2793faf7f80862c3`; no dependent proof execution
was dispatched. Known absent formal checks remain NOT_RUN, not passing.
Manual source publication is recorded separately in math#1837.

Unrun build target:

    lake build GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.WeilRationalHyperbolic
