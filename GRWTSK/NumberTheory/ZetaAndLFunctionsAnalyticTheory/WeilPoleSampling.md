# Enclosing the original signed odd pole in source samples

Local attribution: **grwtsk contributors**.

Maintained source: [WeilPoleSampling.lean](WeilPoleSampling.lean).
Namespace: `GRWTSK.NumberTheory.WeilQuadraticForm.PoleSampling`.
Primary MSC2020: 11M06; secondary 33B10, 65G20.
Status: **WRITTEN_ANALYTICAL_ARGUMENT / SOURCE_PROOF_CANDIDATE**.
Lean parsing, elaboration, exact types, builds, fresh kernel replay, transitive
axiom audit and independent review: **NOT_RUN**. Novelty: **UNASSESSED**.

The consumer is the literal `spatialColumn` midpoint observation subsequently
used by `residualGram_upper_of_rational_samples` and
`signedEnergy_lower_of_rational_samples`. This is an arithmetic coefficient
and observation result, not a new Schur reduction or an RH/GRH theorem.

## PS-1. Retain the exact source pole and its alternating coefficients

For T>0 the original normalized sine is

    e_n(t)=sin(n*pi*t/T)/sqrt(T),  |t|<=T,
    e_n(t)=0,                    |t|>T.

Put w_n=n*pi/T. The canonical source coefficient is

    p_n(T)=2*(-1)^(n+1)*w_n*sinh(T/2)
              /[sqrt(T)*(1/4+w_n^2)].                (PS-1)

The pre-existing `OddPrimePoleOutput.integral_sine_mul_sinh` identifies this
with the actual integral of e_n(t)*sinh(t/2), for n>=1. Its proof evaluates
exp(a*t)*(a*sin(w*t)-w*cos(w*t))/(a^2+w^2) at both endpoints, retains both
pole orientations and the exact normalization. The source identity is reused,
not assumed from agreement with a numerical coefficient.

For f_c=sum_i c_i*e_(i+1), each moment integrand is integrable: it is a
continuous function restricted to a compact interval. Finite integral
linearity therefore gives

    p(f_c)=integral f_c(t)*sinh(t/2) dt
          =sum_i c_i*p_(i+1)(T).                     (PS-2)

The original minimizing pole port is -2*p(f_c). The physical pole output is

    -2*p(f_c)*sinh(t/2),

and its quadratic contribution is -2*p(f_c)^2. In particular, the sign is
negative, and cross terms between different sine modes must not be deleted.
There is no positive-square substitution or pole-neutral restriction.

## PS-2. Rational magnitude bounds and the signed center

Suppose rational endpoints enclose the three NONNEGATIVE quantities

    wl<=w_n<=wu,
    0<=sl<=sinh(T/2)<=su,
    0<=rl<=1/sqrt(T)<=ru,     wl>=0.

The denominator is strictly positive, and monotonicity of squaring on the
nonnegative half-line gives the valid, possibly conservative endpoints

    ml = 2*wl*sl*rl/(1/4+wu^2),
    mu = 2*wu*su*ru/(1/4+wl^2).                       (PS-3)

Thus ml<=|p_n|<=mu. This argument does NOT assume w/(1/4+w^2) is globally
increasing; numerator and denominator are enclosed separately. At n=0 the
magnitude is zero, so the candidate's more general scalar statement is safe.
For n>=1 it returns to the original source sine coefficient.

Set

    center_n=(-1)^(n+1)*(ml+mu)/2,
    radius_n=(mu-ml)/2.

Then |p_n-center_n|<=radius_n. The alternating sign is retained in center_n;
the radius is nonnegative as a consequence of (PS-3).

For integer T>=1, the source candidate `integer_coefficient_error` supplies
these bounds from:

1. explicit certified pi endpoints pl<=pi<=pu, with pl>=0;
2. the existing integer-square-root bounds for 1/sqrt(T), at resolution D>0;
3. finite rational logarithm comparisons admitting a<=exp(T/2)<=b, and the
   companion sinh endpoints (a-1/a)/2 and (b-1/b)/2.

Frequency bounds are exactly pl*n/T and pu*n/T. No numerical sinh or real-sqrt
observation is an additional premise. Pi precision remains a parameter; the
fixed 20-decimal bounds used in the examples are not claimed sufficient for
arbitrarily small cofinal errors.

From coefficient errors |p_i-m_i|<=r_i, (PS-2) proves

    |p(f_c)-sum_i c_i*m_i| <= sum_i |c_i|*r_i.         (PS-4)

Only the error uses absolute values. The synthesized central value stays signed.

## PS-3. Pay both the moment and spatial-profile errors

Let |p-p0|<=ep and |s-s0|<=es. The inequalities imply ep,es>=0. Since

    p*s-p0*s0=(p-p0)*s+p0*(s-s0),
    |s|<=|s0|+es,

one obtains

    |-2*p*s-(-2*p0*s0)|
      <=2*((|s0|+es)*ep+|p0|*es).                    (PS-5)

This includes the ep*es cross allowance. It holds for all signs, not just
positive profiles. The companion odd-reflection theorem covers negative t.
Taking s=p and s0=p0 also yields the source-preserving lower estimate

    -2*p0^2-2*ep*(2*|p0|+ep) <= -2*p^2.             (PS-6)

For a multivariate coefficient family, (PS-4) is applied to the actual signed
linear moment for each vector. An entrywise pole-matrix version can alternatively
use error 2*(|m_i|r_j+|m_j|r_i+r_i*r_j) and the existing symmetric row-sum bound.
That matrix assembly is a written consequence, not a new Lean declaration here.

## PS-4. Return to the unchanged numerical and arithmetic source columns

`poleSampleValue` explicitly evaluates the preceding integer-inventory column
on the physical window, replacing ONLY polePort*sinh(t/2) by -2*p0*s0. It
retains the gamma middle function, complete separated tail, original gamma
constant, physical beta shift, all integer-list prime terms, normalization,
and subtracted retained sine head. It is a mathematical scalar expression,
not a completed numerical evaluator for all its remaining terms.

For t in [-T,T], exact subtraction gives

    integerSpatialColumn-poleSampleValue
      =-2*p(f_c)*sinh(t/2)-(-2*p0*s0).                (PS-7)

Thus a sample |poleSampleValue-v|<=e returns to the existing integer column
with radius e+E_pole, where E_pole is the RHS of (PS-5). Compose the prior
`SineInventoryPadding.integer_sample_transfer` to obtain

    |spatialColumn-v|
      <=e+E_pole+K(c)*B_lag+A(c)*B_weight.           (PS-8)

This is `source_pole_sample_transfer`. The inventory hypothesis exp(2T)<=B
and the square-root resolution hypothesis D>0 remain explicit. B=9^T is
available for positive integer T by the existing theorem. A smaller EXACT
inventory may instead use its separately proved set equality; one must not
feed B=floor(exp(2T)) into the upper-padding hypothesis.

All central values and radii in (PS-5) may be rational; its surcharge is then
rational too. The original whole-cell source modulus is applied after this
midpoint return. Gamma quadrature's output error is separate. The genuine
high-complement floor and final signed Schur inequality are NOT supplied.

## PS-5. Evaluated scalar source examples

The examples use the existing Mathlib pi bounds

    314159265358979323846/10^20 < pi
      < 314159265358979323847/10^20,

integer reciprocal resolution D=10^18, and the exp(T/2) endpoints accepted by
the N=64 rational log checks in [WeilRationalHyperbolic.md](WeilRationalHyperbolic.md).
Only Fraction and integer-square-root arithmetic were used for the following
outward endpoints of the ACTUAL moment in (PS-1), conditional on the written
source identity and the inspected pinned pi theorem. All printed decimals
are exact rationals with denominator 10^12.

| T | n | lower p_n(T) | upper p_n(T) |
|---:|---:|---:|---:|
| 1 | 1 | 0.323544106799 | 0.323544106800 |
| 1 | 2 | -0.164826014453 | -0.164826014452 |
| 1 | 3 | 0.110269507227 | 0.110269507228 |
| 2 | 1 | 0.960712301842 | 0.960712301843 |
| 2 | 2 | -0.515957059703 | -0.515957059702 |
| 2 | 3 | 0.348757984051 | 0.348757984052 |
| 3 | 1 | 1.911986032273 | 1.911986032274 |
| 3 | 2 | -1.110634702293 | -1.110634702292 |
| 3 | 3 | 0.763287885347 | 0.763287885348 |

At the nonzero spatial point t=1/2, the first-sine pole output has enclosures

| T | lower -2*p_1(T)*sinh(1/4) | upper |
|---:|---:|---:|
| 1 | -0.163462452817 | -0.163462452816 |
| 2 | -0.485375520710 | -0.485375520709 |
| 3 | -0.965982442636 | -0.965982442635 |

These are scalar pole contributions, not full source rows or signs of Weil
quadratic values. Their enclosures have been evaluated outside Lean. No
fresh kernel proof, independent review, or completed sample table is claimed.

Clean reproduction after loading F, outward and the checked `inputs` from
the companion note (outward returns integer endpoints):

```python
from math import isqrt
pl=F(314159265358979323846,10**20)
pu=F(314159265358979323847,10**20)
exp_data={x:(F(A,10**18),F(B,10**18)) for x,A,B in inputs}

def sinh_bounds(x):
    a,b=exp_data[x]
    assert log_bounds(a)[1]<=x<=log_bounds(b)[0]
    return (a-1/a)/2,(b-1/b)/2

def pole_bounds(T,n):
    D=10**18
    z=isqrt(T*D*D)
    assert z*z<=T*D*D<(z+1)*(z+1) and z>=D
    rl,ru=F(D,z+1),F(D,z)
    sl,su=sinh_bounds(F(T,2))
    wl,wu=pl*n/T,pu*n/T
    ml=2*wl*sl*rl/(F(1,4)+wu*wu)
    mu=2*wu*su*ru/(F(1,4)+wl*wl)
    assert 0<=ml<=mu
    return (ml,mu) if n%2 else (-mu,-ml)

for T in (1,2,3):
    for n in (1,2,3):
        print(T,n,outward(*pole_bounds(T,n)))
    lo,hi=pole_bounds(T,1)
    sl,su=sinh_bounds(F(1,4))
    products=[-2*p*s for p in (lo,hi) for s in (sl,su)]
    print('pole at 1/2',T,outward(min(products),max(products)))
```

Executed hostile controls covered 2025 signed rational endpoint combinations
for (PS-5). Further controls retain the alternating moment sign, the positive
off-diagonal pole entry when two moments have opposite signs, and the nonzero
profile-rounding error when the moment is exact. For example p=p0=1,s=2,s0=1
has output error 2: paying only moment error would incorrectly report zero.
These controls share the algebraic formula; they are not independent proof.

## Individual declaration provenance and source return

All names are in the namespace printed above. The elementary arithmetic
methods are not claimed novel. The proof comparison uses the actual existing
integral and operator outputs, not only matching names or finite values.

| Declaration | Primary argument, pinned supplier and consumer |
|---|---|
| `coefficient_center_error` | PS-1--3, positive numerator/denominator interval inequalities, absolute value of (-1)^(n+1)=1; actual sinePoleCoefficient. |
| `integer_coefficient_error` | Companion log-admitted sinh, existing reciprocal_enclosure and certified pi endpoints; removes observed sinh/sqrt premises at integer radii. |
| `finiteMoment_eq_sum` | Compact integrability, finite integral linearity and original integral_sine_mul_sinh; actual polePort moment. |
| `moment_error` | Signed source identity PS-2 and finite triangle inequality; scalar moment center/radius. |
| `pole_product_error` | Exact two-factor error expansion PS-5 including the cross allowance; source pole profile observation. |
| `pole_square_lower` | PS-5 with the same uncertain moment in both slots; lower enclosure of the negative source square. |
| `integer_pole_sample_transfer` | PS-7, exact unchanged remainder cancellation and PS-5; prior integerSpatialColumn. |
| `source_pole_sample_transfer` | Compose the preceding theorem with the existing complete inventory/prime-rounding return; original spatialColumn consumed by both rational matrices. |

Private `magnitude_bounds` proves PS-3; private `integrable_sine_sinh` proves
the compact integrability used before integral linearity. Rational definitions
construct frequency/magnitude/center/radius data only. No new arithmetic form,
physical norm, completed L-function or RH predicate is introduced.

## Pins, prior art and actual evidence

Inspection base: math `7c183c31ebc4ed393e1ecef385479b8370ae8768`.
Lean `leanprover/lean4:v4.34.1`; mathlib
`d13f23b723b8a846827a245b89c10fc7d3f11612`.

* [WeilOddOutputTrace.lean](WeilOddOutputTrace.lean), blob
  `c949319d576333b4288ac0309d3b427c4eed8dc8`, original frequency and sinePoleCoefficient.
* [WeilOddPoleMoment.lean](WeilOddPoleMoment.lean), blob
  `c4e9acaf52faf2017a928ac5a9269ce401692e35`, retained exponential moment proof;
  [WeilOddPrimePoleOutput.lean](WeilOddPrimePoleOutput.lean), blob
  `15e472b9fa1e7ad7c9d56de19cc4bdc2333cf235`, integral_sine_mul_sinh.
* [WeilFiniteSineOperator.lean](WeilFiniteSineOperator.lean), original polePort,
  finiteInput and exact physical operator realization.
* [WeilRationalPrimeWeights.lean](WeilRationalPrimeWeights.lean), blob
  `973510bc0ec6a01a8db3c2c1e2f6c870559476c8`, integer reciprocal bounds.
* [WeilSineInventoryPadding.lean](WeilSineInventoryPadding.lean), blob
  `cb0b302772fb70b149502ce34f0c26e73a624174`, exact integerSpatialColumn and
  integer_sample_transfer. Its padding/rounding hypotheses are preserved.
* Pinned Mathlib [Pi/Bounds.lean](https://github.com/leanprover-community/mathlib4/blob/d13f23b723b8a846827a245b89c10fc7d3f11612/Mathlib/Analysis/Real/Pi/Bounds.lean),
  blob `86147be4daf2ed3b598f0aed9ff73822336f0e2a`, `Real.pi_gt_d20` and
  `Real.pi_lt_d20`; these were inspected, not re-executed here.
* NIST DLMF 4.28.1--2 supplies the elementary hyperbolic definitions. The
  original pole normalization is documented in the above source modules with
  Connes--Consani--Moscovici, *Zeta Spectral Triples*, arXiv:2511.22755v1,
  equation (3.19), as their prior arithmetic source. This increment is a local
  consequence of the maintained source identity, not a new adaptation of that
  paper or an independent proof of its explicit formula.

Exact scalar arithmetic and static source checks were performed. Lean source
may require elaboration repairs. Canonical Noe proof skill access returned 404
at `b0be41adc8b0bf76f9735b3c2793faf7f80862c3`; dependent execution was not
attempted. Publication readback, commands and hashes are in math#1837.

Unrun build target:

    lake build GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.WeilPoleSampling

Remaining obligations: all remaining gamma-constant/coefficient and sine
observations and their rounding, complete midpoint tables, genuine high floor,
valid low-coordinate coverage, a successful signed Schur matrix, and universal
cofinal supply. Refining a finite scalar interval does not prove any of these
signs. Scope is real odd conductor-one zeta; no primitive-character or GRH
transfer is inferred.
