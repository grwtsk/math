# Rational radius-two pole coefficients

Local attribution: grwtsk contributors.
Owner: [WeilRationalPoleCoefficients.lean](WeilRationalPoleCoefficients.lean).
Namespace: `GRWTSK.NumberTheory.WeilQuadraticForm.RationalPoleCoefficients`.
MSC2020 primary: 11M06; dependencies 65G20 and 33B10.
Evidence: **WRITTEN_ANALYTICAL_ARGUMENT / SOURCE_PROOF_CANDIDATE**.
Novelty and exhaustive prior-art assessment: **UNASSESSED**.

## Exact source and consumer

The source is `OddOutputTrace.sinePoleCoefficient 2 n`, not a newly fitted
pole vector. For the original zero-extended normalized sine

    phi_n(t) = sin(pi*n*t/2)/sqrt(2) on [-2,2], zero elsewhere,

`OddPrimePoleOutput.integral_sine_mul_sinh` identifies the coefficient, for
n>=1, with the actual integral of phi_n(t)*sinh(t/2). Independently of this
notation, `OddPoleMoment.sinhMomentRow_eq_sinePoleCoefficient` identifies
it with the half-difference of the TWO original exponential pole moments.

The exact source formula reduces to

    b_n = (-1)^(n+1) A_n,
    A_n = 4 alpha pi sinh(1) n / (1 + pi^2 n^2),
    alpha = 1/sqrt(2).

The equality is algebraic at T=2>0. All denominators are positive. The
normalization is unchanged, and the sign is retained even for high modes.
At n=0 both sides vanish; no positive-frequency hypothesis is needed for
the formula or enclosure. The integral interpretation uses n>=1.

Immediate consumers are the original bordered `sinhMomentRow`, the actual
minimizing `FiniteSineOperator.polePort`, and the signed zeta compression.
Their rounding return is in
[WeilPoleCoefficientRounding.lean](WeilPoleCoefficientRounding.lean).

## Complete analytical argument

1. The pinned Mathlib bounds give pi in [pL,pU], where the endpoints are
   3.14159265358979323846 and 3.14159265358979323847, regarded as EXACT
   rationals. These are used through existing theorem declarations.

2. Set aL=707106781186547/10^15 and aU=707106781186548/10^15. Exact rational
   arithmetic checks 0<aL<aU and 2*aL^2<=1<=2*aU^2. Positivity of sqrt(2)
   and squaring give aL<=alpha<=aU. This uses the existing
   `RationalSineSamples.inv_sqrt_bounds`, not a numerical square-root oracle.

3. Set e0=363916618873/133877442384 and eL=e0-10^-20, eU=e0+10^-20.
   Mathlib's `Real.exp_one_near_20` gives eL<=exp(1)<=eU, with eL>0.
   Inversion reverses order. Therefore

       sL=(eL-1/eL)/2 <= sinh(1) <= (eU-1/eU)/2=sU.

   This follows from the exact identity sinh(1)=(exp(1)-exp(-1))/2 and
   exp(-1)=1/exp(1). Both sL and sU are positive rational numbers.

4. For every natural n, define the rational bounds

       AL_n = 4*aL*pL*sL*n / (1+pU^2*n^2),
       AU_n = 4*aU*pU*sU*n / (1+pL^2*n^2).

   All factors are nonnegative, all denominators strictly positive.
   Bound the numerator upwards/downwards by products of the corresponding
   scalar endpoints; bound the denominator in the opposite direction.
   Cross-multiplication proves AL_n<=A_n<=AU_n. Dependence of the two pi
   occurrences does not invalidate this outer enclosure: no independence
   premise is used, and interval dependence can only widen the allowance.

5. Define the signed rational center and unsigned radius

       center(n)=(-1)^(n+1)*(AL_n+AU_n)/2,
       radius(n)=(AU_n-AL_n)/2.

   Radius is nonnegative. Since |(-1)^(n+1)|=1,

       |b_n-center(n)| <= radius(n).

   This is a quantified argument for ALL natural modes. It is not an
   extrapolation from the finite fixtures or the first 2048 calculations.

6. Transport the result through the existing integral/source identity to
   `sinhMomentRow 2 M i`. The mode is i.val+1; the scalar pole coordinate
   and its one-half corner are NOT another sine mode.

## Explicit examples

The following centers have absolute radius 10^-12 under that argument.

| Mode n | Exact decimal-rational center |
|---:|---:|
| 1 | 0.960712301842 |
| 2 | -0.515957059703 |
| 4 | -0.262848693554 |
| 8 | -0.132047550954 |
| 64 | -0.016531666209 |
| 65 | 0.016277345177 |
| 512 | -0.002066508595 |
| 2048 | -0.000516627336 |

Mode 65 is the first physical row after a retained 64-mode block. It is
not zero, nor are later modes erased by including mode 2048 in the table.
The fixture theorem checks |center(n)-sampleCenter|+radius(n)<=10^-12 by
finite rational arithmetic. Its `norm_num` body has NOT been executed.
The package's separate Python diagnostics read the actual source constants
and fixture arrays and check the same rational conditions.

## Individual declaration correspondence

- `scalar_signs`: exact rational positivity of the lower scalar endpoints.
- `pi_bounds`: direct use of the two pinned Mathlib pi endpoint theorems.
- `normalization_bounds`: squared rational endpoints and the existing
  inverse-square-root enclosure theorem, step 2.
- `exp_one_bounds`: translate the pinned absolute exponential error to
  lower and upper endpoints, step 3.
- `sinh_one_bounds`: positive reciprocal comparison and the actual
  hyperbolic identity, step 3.
- `coefficient_eq_sign_mul_amplitude`: algebraic source equality above,
  with all source denominators justified.
- `amplitude_bounds`: numerator/product and positive denominator order,
  step 4; the private `quotient_bounds` records the elementary division step.
- `radius_nonneg`: transitivity of the two amplitude endpoints, step 5.
- `coefficient_error`: the signed midpoint/radius theorem, step 5.
- `sinhMomentRow_error`: exact return to the original integral-defined
  bordered coupling, step 6.
- `sample_budget`: eight finite rational comparisons, not a general
  transcendental or positivity theorem.
- `source_samples`: triangle inequality combining the original-source
  coefficient enclosure and the observed fixture rounding.

## Exact inspected dependencies and provenance

Repository base: `grwtsk/math@7c183c31ebc4ed393e1ecef385479b8370ae8768`.
Lean pin: `leanprover/lean4:v4.34.1`.
Mathlib pin: `d13f23b723b8a846827a245b89c10fc7d3f11612`.

- [WeilOddOutputTrace.lean](WeilOddOutputTrace.lean), blob
  `c949319d576333b4288ac0309d3b427c4eed8dc8`: source `frequency` and
  `sinePoleCoefficient`. This increment does not reprove its prior source claims.
- [WeilOddPoleMoment.lean](WeilOddPoleMoment.lean), blob
  `c4e9acaf52faf2017a928ac5a9269ce401692e35`: actual moment evaluation and
  `sinhMomentRow_eq_sinePoleCoefficient`. Classical integration is the
  existing mathematical input, not a new theorem imported from a paper here.
- [WeilRationalSineSamples.lean](WeilRationalSineSamples.lean), blob
  `8d268b91aaba0d018bb7e96d3e19f0b06b4c16fb`: `inv_sqrt_bounds`.
- Pinned Mathlib `Mathlib/Analysis/Complex/ExponentialBounds.lean`, blob
  `747071091440887040140f84067ad4afd2f4cc4b`: `Real.exp_one_near_20`;
  upstream authors Mario Carneiro and Joseph Myers. Used through imports.
- Pinned Mathlib `Mathlib/Analysis/Real/Pi/Bounds.lean`, blob
  `86147be4daf2ed3b598f0aed9ff73822336f0e2a`: `Real.pi_gt_d20` and
  `Real.pi_lt_d20`; upstream authors Floris van Doorn and Mario Carneiro.
  Used through imports, not copied or reclassified as local discoveries.

Direct pinned upstream reference paths:
`https://github.com/leanprover-community/mathlib4/blob/d13f23b723b8a846827a245b89c10fc7d3f11612/Mathlib/Analysis/Complex/ExponentialBounds.lean`
and
`https://github.com/leanprover-community/mathlib4/blob/d13f23b723b8a846827a245b89c10fc7d3f11612/Mathlib/Analysis/Real/Pi/Bounds.lean`.

## Evidence and remaining obligations

The numerical data and polynomial/rational inequalities were checked using
standard-library Fraction arithmetic. A separate positive exponential
Taylor sum with its full geometric tail gives a rational consistency control
for the chosen exp(1) interval. This is not independent human review or
kernel checking. No floating value determines any endpoint.

Lean parsing/elaboration, exact signatures, fresh kernel replay, transitive
axiom audit and independent mathematical review: **NOT_RUN**. The candidate
may require elaboration or numeral-performance repairs. Imported source
candidates retain their actual evidence status.

Radius two is fixed. There is no all-window bound, high-floor proof, full
spatial output evaluation, signed-matrix positivity, or cofinal certificate
existence theorem here. No primitive-character transfer or RH/GRH conclusion
is claimed. These elementary evaluation results make no novelty claim.

## Reconciliation for publication

The previously prepared package was not published at its original base.
This candidate is reconciled against `988cea9d49f5532be085918076c380ed6a400c20`.
The concurrently published `PoleSampling.finiteMoment_eq_sum` is reused by
`PoleCoefficientRounding.integral_finiteSine_sinh`; its former local duplicate
integrability/synthesis proof was removed before publication. The radius-two
scalar fixtures and the exact signed error statements are unchanged. Broader
integer-window `PoleSampling` and `RationalHyperbolic` constructions remain
canonical; no parallel general source or numerical truth definition is added.
Fresh source-text/hash diagnostics are required for these reconciled bytes.
Lean elaboration, kernel replay, transitive axiom audit and independent review
remain NOT_RUN.
