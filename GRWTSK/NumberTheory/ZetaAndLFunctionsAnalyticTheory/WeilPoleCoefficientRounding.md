# Signed pole rounding on the original source

Local attribution: grwtsk contributors.
Owner: [WeilPoleCoefficientRounding.lean](WeilPoleCoefficientRounding.lean).
Namespace: `GRWTSK.NumberTheory.WeilQuadraticForm.PoleCoefficientRounding`.
MSC2020 primary: 11M06; dependencies 65G20 and 15A48.
Evidence: **WRITTEN_ANALYTICAL_ARGUMENT / SOURCE_PROOF_CANDIDATE**.
Novelty and exhaustive prior-art assessment: **UNASSESSED**.

## Exact source objects

Work at the original radius T=2. For a real vector x on Fin M, write

    b_i = sinhMomentRow 2 M i,
    p = sum_i x_i*b_i,
    q = roundedMoment(x) = sum_i x_i*center(i+1),
    e = momentError(x) = sum_i |x_i|*radius(i+1).

The original `FiniteSineOperator.polePort 2 x` is -2 times the integral
of finiteSine(2,x)*sinh(t/2). It is not a freely adjustable positive port.
The retained source matrix is `OddSchurAccounting.retainedCoreMatrix`;
its name does not assert positivity. Its gamma and prime terms remain exact.

## Complete analytical argument

### Integral identity and every signed combination

Each supported source sine times sinh(t/2) is an indicator of a continuous
function on a compact interval, hence integrable. Finite integral linearity
and the existing `integral_sine_mul_sinh` theorem give

    integral finiteSine(2,x)(t)*sinh(t/2) dt = sum_i x_i*b_i = p.

Therefore the ACTUAL minimizing port is -2p. The prior coefficient theorem
and the finite triangle inequality prove |p-q|<=e and e>=0 for EVERY real
coefficient vector. Signed sums are not replaced by sums of magnitudes;
absolute values occur only in the allowance. In particular cancellation
near p=0 is allowed and does not create a division-by-small-moment issue.

### Negative rank-one term and its full quadratic error

Factor p^2-q^2=(p-q)(p+q). Since

    |p+q| <= |p-q|+2|q| <= e+2|q|,

we get

    |-2p^2-(-2q^2)| <= 2e(2|q|+e).                       (1)

Both the sign and the quadratic error are necessary. At q=0,p=e=1,
the left side is 2 while the linear-only error 4|q|e is zero. This is an
arithmetic falsification control, not a claim about a negative Weil test.

The existing exact source decomposition is

    quadratic(zetaSineMatrix(2,M),x)
      = quadratic(retainedCoreMatrix(2,M),x)-2p^2.

Combining it with (1) gives the TWO-SIDED signed error in
`zeta_quadratic_error` and the lower bound

    quadratic(zetaSineMatrix(2,M),x)
      >= quadratic(retainedCoreMatrix(2,M),x)-2q^2-2e(2|q|+e).   (2)

There is no assumption that the retained core is positive, and this theorem
does not enclose its gamma/prime entries. It isolates and pays the pole
component while leaving the rest of the actual source unchanged.

### Mixed entries: both pole orientations precede oddness

The source algebra says

    sinePoleEntry = 2*coshMoment_i*coshMoment_j
                   -2*sinhMoment_i*sinhMoment_j.

The existing analytic oddness theorem makes the cosh moments zero. Only
then may this become -2*b_i*b_j. For rational centers c_i and radii e_i,

    |b_i*b_j-c_i*c_j|
      <= |c_i|e_j+|c_j|e_i+e_i*e_j.

The final product of errors is retained. The supplied exact rational
center and radius are

    entryCenter(i,j)=-2*c_i*c_j,
    entryRadius(i,j)=2(|c_i|e_j+|c_j|e_i+e_i*e_j).

This preserves all off-diagonal signs, including the positive mixed pole
entry for a positive odd-mode coefficient and a negative even-mode one.
The same row-error accounting can consume these entries, but no complete
paid lower matrix or accepted certificate is constructed here.

### Original output, with only its port rounded

`roundedPoleOutput beta x` is the EXISTING borderedTrialOutput with scalar
port -2q in place of -2p. The exact gamma output, both prime translations,
all prime-power weights, physical shift and window indicator are unchanged.
Inside [-2,2], the output difference is (-2p+2q)*sinh(t/2); outside, both
outputs vanish. Since |sinh(t/2)|<=sinh(1)<=sinhUpper on the interval,

    |literalOutput(2,beta,x)(t)-roundedPoleOutput(beta,x)(t)|
      <= 2e*sinhUpper                                    (3)

holds on the WHOLE real line. The sinh profile itself is still exact:
(3) pays only its port error, not numerical profile evaluation. It also
is not presented as an L2 norm without the necessary integration factor.

## Individual declaration correspondence

- `momentError_nonneg`: nonnegative prior radii and finite sum.
- `moment_error`: finite signed synthesis and triangle inequality; covers
  every real vector x, not just individual basis modes.
- `integral_finiteSine_sinh`: compact-support integrability, finite
  integral linearity, and the actual single-mode integral theorem.
- `polePort_eq_rowMoment`: substitute that integral identity into the
  canonical minimizing port definition.
- `polePort_error`: multiply the complete moment allowance by two.
- `negative_square_error`: factorization (1), including e^2.
- `zeta_quadratic_error`: exact original source decomposition and (1).
- `zeta_quadratic_lower`: the lower direction of that same two-sided bound.
- `pole_entry_eq_negative_product`: use the original two-orientation pole
  identity and the proved vanishing of the even moments before reduction.
- `entryRadius_symmetric`: exact rational commutative algebra.
- `pole_entry_error`: use the existing complete product-radius inequality
  on both coefficient errors, then retain the factor -2.
- `literalOutput_pole_rounding_error`: actual source-output subtraction,
  the unchanged indicator, and the uniform profile bound in (3).
- `zero_center_still_needs_square_charge`: explicit rational falsification
  of a linear-only rounding allowance.

## Source provenance and exact consumer

Base: `grwtsk/math@7c183c31ebc4ed393e1ecef385479b8370ae8768`.
Lean: `leanprover/lean4:v4.34.1`.
Mathlib: `d13f23b723b8a846827a245b89c10fc7d3f11612`.

- [WeilOddPrimePoleOutput.lean](WeilOddPrimePoleOutput.lean), blob
  `15e472b9fa1e7ad7c9d56de19cc4bdc2333cf235`:
  `integral_sine_mul_sinh`, `primePoleOutput`. The complete supported
  source, both shifts, and negative pole convention are inherited.
- [WeilOddSchurAccounting.lean](WeilOddSchurAccounting.lean), blob
  `c0ad7d8dbb4640e06224ec4e04762ec9cb1d2ca2`:
  `literal_pole_entry`, `zetaSineMatrix_quadratic`, and the retained core.
- [WeilFiniteSineOperator.lean](WeilFiniteSineOperator.lean), blob
  `c504693911bd7a8ee9e1dec909fa41480c185013`:
  `polePort` and `literalOutput`.
- [WeilOddConcreteResidual.lean](WeilOddConcreteResidual.lean):
  `borderedTrialOutput`; read through its actual definition and import chain.
- [WeilRationalPoleCoefficients.lean](WeilRationalPoleCoefficients.lean):
  all-mode signed scalar supplier with its own source-local argument.
- Existing `GRWTSK/FunctionalAnalysis/SpatialGramEnclosure.lean`:
  `abs_product_sub_le`. Its three-term radius includes the error product;
  no new matrix checker or purported positive arithmetic model is introduced.

These are local consequences of the canonical declarations. They do not
constitute a new formalization of a primary paper or an independent proof
of the source's earlier analytic claims. Those claims and verification
statuses remain unchanged. Reuse does not confer independent review.

## Verification and limitations

Exact rational controls cover all eight displayed source coefficient
budgets, outward intervals for modes 1..2048, 867 negative-square test
cases, and 256 signed mixed-entry endpoint cases. These are finite checks
of the rational conditions and algebra; they do not establish universal
statements by testing, or verify any Lean dependency.

Lean parsing/elaboration, exact signatures, kernel replay, transitive axiom
audit, and independent review: **NOT_RUN**. Source may need elaboration
repairs. No passing actual source matrix, high-complement floor, universal
cofinal family, primitive-character transfer, or RH/GRH conclusion is made.
The current approximation is fixed-window pole data and its paid return.

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
