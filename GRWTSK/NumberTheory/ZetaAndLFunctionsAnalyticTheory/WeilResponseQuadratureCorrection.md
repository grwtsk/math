# Gamma-quadrature return for corrected response bounds

Local attribution: grwtsk contributors. Date: 2026-11-18.

Maintained source: [WeilResponseQuadratureCorrection.lean](WeilResponseQuadratureCorrection.lean).
Namespace: `GRWTSK.NumberTheory.WeilQuadraticForm.ResponseQuadratureCorrection`.
Status: **SOURCE_PROOF_CANDIDATE**. Novelty not claimed; prior-art
completeness **UNASSESSED**. The four theorems below are local consequences
of the canonical source-output quadrature and residual correction.

## Exact source and scalar budget

Fix T>0, real beta,epsilon, load h in the original `WindowPhysical T`, and
two arbitrary finite-sine trials f=`finiteInput T a` and g=`finiteInput T b`.
Their dimensions M and K need not be equal and are not fixed globally.
Put lambda=`regularization T beta`, c=lambda-epsilon, and
ell=h-2c f. The original physical residuals are

    r=h-finiteOutput(T,beta-lambda,a),
    s=ell-finiteOutput(T,beta-lambda,b).

The parameter beta-lambda is essential: it represents A_beta+lambda I.
The pole port remains the original minimizing -2 times the sinh moment.
The unchanged `approximateOutput` contains the geometric gamma quadrature
AND the exact prime/pole remainder; it is not a positive surrogate.

Let the increasing lag nodes x_i satisfy x_0>0, x_N>=2T and
x_(i+1)-x_i<=mesh*x_i for i<N, with mesh>=0. The actual source-output theorem
gives, for each coefficient vector a,

    delta_a=(x_0+x_0^2+5 mesh)*slopeBound(T,a),
    ||r-r_tilde|| <= delta_a,

where r_tilde=h-approximateOutput(T,beta-lambda,x,N,a). Similarly
||s-s_tilde||<=delta_b. The slope is the existing explicit weighted
coefficient quantity; its source proof, all omitted lag regions, and the
full support-separated far row remain the supplier of this delta.

Suppose certified observations supply

    ||r_tilde||<=eta,        ||s_tilde||<=sigma,
    |m_tilde-observed|<=rounding,

with

    m_tilde=trialDefect(h,a)+<r_tilde,g>.

The norms here are complete physical L2 norms, not finite sampled rows.
They are mathematical hypotheses until an actual certified evaluator
supplies them. Define rho=eta+delta_a and theta=sigma+delta_b. Then

    ||r||<=rho,              ||s||<=theta,
    |m-m_tilde|<=delta_a||g||.

The final theorem is the source-specific lower enclosure

    observed-rounding-delta_a||g||
      -rho*theta-max(c,0)rho^2 <= responseDefect(T,beta,epsilon,h).    (Q)

This separates every paid effect: scalar observation, correction evaluation,
primal output quadrature, dual output quadrature, primal/dual response
product, and the signed quadratic remainder. Quadrature inflation in rho
and theta does NOT pay the additional scalar correction error by itself.

## Complete primary argument and individual declarations

All names below have the namespace stated above.

### `physicalResidual_approximate_error_le`

Statement: the complete physical residual differs from its quadrature
approximation by at most `quadratureCharge T x mesh a` for every finite
trial and every admitted mesh. Subtracting h on both sides shows that this
difference is the NEGATIVE of the canonical output difference. Norm
invariance under negation lets
`FiniteSineGammaQuadrature.finiteOutput_error_le` apply with beta-lambda.
The output/source identity is consumed, not assumed as a new oracle.

### `physicalResidual_norm_le`

Statement: a supplied upper norm for the approximate residual, plus delta,
bounds the original physical residual. Proof: write r=(r-r_tilde)+r_tilde
and use the triangle inequality and the preceding theorem. This theorem
is applied separately to h,a and ell,b; no nonnegativity of the arithmetic
form or spectral information enters.

### `correctedTrial_approximate_error_le`

Statement: |m-m_tilde|<=delta_a||g||. The trial-defect summand cancels
exactly, leaving <r-r_tilde,g>. The Hilbert Cauchy-Schwarz inequality and
the complete output-error estimate pay this scalar error. The pairing is
in the unchanged physical L2 space, so the estimate covers all of g, not
only a selected coefficient. This is the charge whose omission is falsified
below.

### `responseDefect_lower_of_quadrature_observation`

Statement: (Q), universally quantified over T,beta,epsilon,h,M,K,a,b,
all admitted x,N,mesh and the supplied observation bounds. Apply
`ResponseResidualCorrection.finite_responseDefect_bounds` with rho and
theta from the two norm-return results. The lower halves of the correction
error bound and scalar rounding bound give (Q). This theorem returns to
the original signed response defect; it neither concludes that the lower
endpoint is nonnegative nor produces the observations.

Definitions `approximateResidual`, `quadratureCharge`, and
`approximateCorrectedTrial` name these exact quantities. The shared mesh is
a permitted choice, not an assertion that it is optimal; a common refinement
may be used when separate solves require different accuracies. No theorem
here asserts existence or effectiveness of that refinement's sign certificate.

## Return to the existing arithmetic consumer

For T=j+1, beta=0, epsilon=2^(-j), apply (Q) to
h=`ResponseGeneratedCore.loadMap T hT coeff` for EVERY finitely supported
real coefficient vector coeff. If, for each such load, actual observations
and trials make the paid lower endpoint nonnegative, its nonnegative lower
bound supplies the existing
`ResponseSignReturn.stageLower_of_finite_response_sign` premise. Supplying
that premise for every j invokes the unchanged literal cofinal return.
No new stage predicate, completed-zeta target or restricted test domain is
introduced. The quantifier pattern is

    forall j, forall finite load coeff,
      exists trials, mesh and certified observations with paid nonnegative margin.

Only the implication from such supplied data is established; this universal
existence statement remains open. Fixed-window or finite-load tests do not
prove it. Primitive Dirichlet character phases and conductor-one spectral
return require their existing separate transfer arguments; this real-odd
zeta-source module does not silently establish those arguments.

## Hostile checks and limitations

Let the synthetic one-dimensional B=I, c=1, h=v=1 and w=-1. The exact primal
and dual residuals are zero, and D=0. Take r_tilde=-1/10, delta_a=1/10,
s_tilde=0, delta_b=0. Then m_tilde=1/10, rho=1/5 and theta=0. If the scalar
charge delta_a||w|| is omitted, the alleged lower bound is

    1/10-(1/5)^2 = 3/50 > D=0.

Paying it restores the lower bound -1/25<=0. Thus even exact underlying
solves do not justify ignoring correction-evaluation error. This is not a
counterexample to the original arithmetic form.

The response approximation part is quadratic when both complete residuals
shrink together. The total bound (Q) is not automatically quadratic:
`rounding` and delta_a||g|| must be reduced on an appropriate scale, and
||g||, c and slopeBound may depend on the window/load. No uniform all-scale
rate or successful primal/dual approximation family is asserted.

The gamma quadrature is a finite-translation mathematical expression, not
an executable interval-arithmetic program. The prime/pole term is retained
exactly in that expression. Any numerical evaluation must pay its errors
as part of the stated norm and scalar observation enclosures. The missing
norm enclosures are not furnished by hashes, source publication or a finite
sample of residual coefficients.

## Source pins and evidence

Inspected base: `grwtsk/math@600fbd0d2b49d95ae2b289c7ea46b1e58b18a81c`.
Lean `leanprover/lean4:v4.34.1`; mathlib
`d13f23b723b8a846827a245b89c10fc7d3f11612`.

Primary local source:
[WeilFiniteSineGammaQuadrature.lean](WeilFiniteSineGammaQuadrature.lean),
Git blob `4c0038754542e9ad2e0b33b55add264d074320db`, especially
`finiteOutput_error_le`, and the original finite residual source, Git blob
`4c023c9c33f256ba83bda68c47d6d66b47e36fa0`.
The new residual-correction source and its eight individual theorem records
are [adjacent](WeilResponseResidualCorrection.md). Its dated Becker-Rannacher
prior-art comparison applies to the dual-residual mechanism; no outside
paper is claimed to contain this precise arithmetic-source quadrature return.

The full written argument is above. Source-text and synthetic arithmetic
checks are recorded separately in math#1837. Lean parsing, elaboration,
exact signatures, fresh kernel replay, transitive axiom audit, clean
dependency replay, certified source numerical evaluation and independent
review are **NOT_RUN**. Existing source proof candidates are not promoted.
No root import, dependency pin, previous theorem or historical receipt is
changed by these additive files.
