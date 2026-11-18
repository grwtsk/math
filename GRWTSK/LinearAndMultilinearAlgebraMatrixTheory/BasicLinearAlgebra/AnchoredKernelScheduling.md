# Anchored kernel scheduling: mathematical scope and provenance

Authorship: grwtsk contributors.

Maintained source: [AnchoredKernelScheduling.lean](AnchoredKernelScheduling.lean).
Namespace: `GRWTSK.Algebra.LinearAlgebra.AnchoredKernelScheduling`.
Coordination: [math #1838](https://github.com/grwtsk/math/issues/1838).
Signed arithmetic consumer: [math #1819](https://github.com/grwtsk/math/issues/1819).

## Disposition and exact source

This is a source candidate with complete elementary mathematical arguments and Lean
proof bodies. It is not a formalization of Weil's criterion or of Suzuki's analytic
theorems. The local contributions identify algebraic errors in a proposed scheduler,
retain a conditional PSD congruence construction, and state the scalar margin needed
when returning a reconstruction error to a signed source.

- Reviewed repository base: `grwtsk/math@749e1706a21a4fe07fda373fb58d5ed15800591c`.
- Candidate source SHA-256: `d4755606a74a7b4de4eb536fc8e75c381c4667a7fba205c4bbbf58515eada016`.
- Declared repository toolchain: `leanprover/lean4:v4.34.1`.
- Declared Mathlib revision: `d13f23b723b8a846827a245b89c10fc7d3f11612`.
- Lean parsing and elaboration: `NOT_RUN`; no local Lean/Lake executable or prepared
  Mathlib build was available in the inspected environment.
- Fresh independent kernel checking: `NOT_RUN`.
- Transitive axiom audit: `NOT_RUN`.
- Independent analytic review: `NOT_RUN`; the determinant comparison below is an
  alternative mathematical check, not a claim of independent authorship or review.
- Novelty: unassessed. Congruence and regularization results explicitly reuse Mathlib.

The source is separate from the default import root and does not change dependency pins.
The status above must follow the exact candidate bytes; publication alone does not change it.

## Primary argument and hostile comparisons

### A positive polynomial does not define a positive kernel by substitution

The polynomial in the proposal satisfies

\[
q(d,\tau)=d^2+d\tau+5\tau^2
=\left(d+\frac\tau2\right)^2+\frac{19}{4}\tau^2.
\]

It is nonnegative and vanishes only at `(0,0)`. Nevertheless, after substitution
`d = x-y`, its antisymmetric part is `2(x-y)tau`. For a symmetric real source kernel
`K`, the perturbed kernel has antisymmetric part `2 lambda (x-y) tau`. On the distinct
coordinates `0,1`, nonzero `lambda` and nonzero `tau` therefore give a non-Hermitian
matrix. Positive semidefiniteness fails already at this necessary condition.

At phase zero consider the anchored kernel

\[
K_g(x,y)=g(x-y)-g(x)-g(-y)+g(0).
\]

Its row and column at zero vanish for every real function `g`. On coordinates `0,1`,
adding `lambda (x-y)^2` produces

\[
A=\begin{pmatrix}0&\lambda\\\lambda&a\end{pmatrix},
\qquad a=K_g(1,1).
\]

For the explicit vector `v = (-(a^2+1), lambda)`,

\[
v^\mathsf{T}Av=\lambda^2(a-2a^2-2)<0\quad(\lambda\ne0),
\]

because `2a^2-a+2 = 2(a-1/4)^2 + 15/8 > 0`. The Lean source uses this
negative-vector argument, so no determinant theorem, positivity assumption on `g`,
or normalization `g(0)=0` is needed. As a separate algebraic comparison,
`det A = -lambda^2 < 0`. The smallest hostile instance is `g=0`, `lambda=1`:
the positive polynomial yields the indefinite matrix `[[0,1],[1,0]]`.

The unperturbed anchored sample itself cannot be strictly positive definite: its
`(0,0)` diagonal entry is zero. This does not refute positive semidefiniteness.

### Certified finite congruence

For `D_tick = diagonal (omega_i^tick)`, define

\[
K_{\mathrm{tick}}=D_{\mathrm{tick}}K D_{\mathrm{tick}}^*.
\]

For every vector `v`, its quadratic value is the source matrix's quadratic value at
`D_tick^* v`; hence PSD of `K` implies PSD of the new matrix. The Lean theorem invokes
Mathlib's general congruence result. It does not assume that `K` is the actual Weil
source or that it is PSD merely because a finite computation returned nonnegative
values. If `U` is invertible, a separate theorem gives the converse for `U K U*`.

The hypothesis `omega_i^19=1` gives a period of 19 by `omega_i^(n+19)=omega_i^n`.
It does not assert minimal period 19, a relationship to the 95-state machine, or a
relationship to the arithmetic counts in #1819. Complex phase values may instantiate
the general ordered star-ring statements using the imported `ComplexOrder` scope.
Unit modulus, unitarity, and a specific exponential parameterization are not established
by a label; they need their corresponding hypotheses or separate proofs.

The real regularizer `K + epsilon I` is strictly positive when `K` is PSD and
`epsilon > 0`, by adding its strictly positive quadratic value to the nonnegative
source value. This changes the matrix. For example, `K=-I` becomes `I` after adding
`2I`, although `K` is negative. Therefore a certificate for a regularized scheduler
matrix cannot be returned as a certificate for the unregularized arithmetic source.
Neither PSD nor strict positivity proves a transition system's fairness or liveness.

### Signed source return

Squaring loses sign: `s^2=(-s)^2`. If a decoder recovered every signed real value
from this priority, applying it to `1` and `-1` would give two incompatible outputs
for the same input. This is a precise obstruction to using a magnitude priority as
the signed source observation. It does not prohibit a decoder whose input retains
additional signed information.

The positive return is conditional and scalar. If

\[
|q_{\rm source}-q_{\rm reconstructed}|\le E,
\qquad E\le q_{\rm reconstructed},
\]

then `q_source >= q_reconstructed-E >= 0`. The result concerns the same source value
and reconstruction appearing in the error bound. It does not manufacture an error
bound, cover all test functions, or discard an omitted tail.

## Declaration correspondence

Every name below is prefixed by
`GRWTSK.Algebra.LinearAlgebra.AnchoredKernelScheduling.`.

| Declarations | Mathematical role and origin |
| --- | --- |
| `quadraticMetric_decomposition`, `quadraticMetric_nonneg`, `quadraticMetric_eq_zero_iff`, `quadraticMetric_pos` | Local completion-of-squares argument for the proposed polynomial. |
| `anchoredKernel_zero_left`, `anchoredKernel_zero_right` | Local algebraic consequences of the anchored-kernel definition; no analytic theorem is imported. |
| `polynomialPerturbation_asymmetry`, `polynomialPerturbation_not_symmetric`, `sampled_polynomial_not_isHermitian`, `sampled_polynomial_phase_ne_zero_not_posSemidef` | Local counterexample to Hermitian symmetry at nonzero phase. |
| `badCorner_quadratic`, `badCorner_negative`, `badCorner_not_posSemidef` | Local explicit negative-vector argument, using Mathlib's `Matrix.PosSemidef.dotProduct_mulVec_nonneg`. |
| `anchored_polynomial_phase_zero`, `anchored_polynomial_not_posSemidef`, `anchored_sample_not_posDef` | Local return to the sampled anchored source; the last theorem uses `Matrix.PosDef.diag_pos`. |
| `phaseDiagonal_periodic`, `phaseKernel_periodic` | Local finite-period consequence of the explicit nineteenth-root hypothesis and the power law. |
| `phaseKernel_posSemidef` | Specialization of Mathlib `Matrix.PosSemidef.mul_mul_conjTranspose_same`; it retains PSD as a premise. |
| `invertible_congruence_posSemidef_iff` | Restatement of Mathlib `Matrix.IsUnit.posSemidef_star_right_conjugate_iff`; it retains invertibility as a premise. |
| `regularized_posDef` | Composition of Mathlib `Matrix.PosDef.one`, `Matrix.PosDef.smul`, and `Matrix.PosDef.posSemidef_add`, with strictly positive regularization parameter. |
| `magnitudePriority_neg`, `no_signed_recovery_from_magnitude` | Local sign-collision and universal-decoder impossibility. |
| `signed_source_nonneg_of_error_and_margin` | Local ordered-field consequence of the stated absolute-error and margin premises. |

The Mathlib matrix APIs were read at the exact dependency revision in
[`Mathlib/LinearAlgebra/Matrix/PosDef.lean`](https://github.com/leanprover-community/mathlib4/blob/d13f23b723b8a846827a245b89c10fc7d3f11612/Mathlib/LinearAlgebra/Matrix/PosDef.lean)
(Git blob `d85277376a28a5c2265aad6e21472b1fec73185a`), by Alexander Bentkamp and
Mohanad Ahmed, Apache-2.0. The Hermitian API was read in
[`Mathlib/LinearAlgebra/Matrix/Hermitian.lean`](https://github.com/leanprover-community/mathlib4/blob/d13f23b723b8a846827a245b89c10fc7d3f11612/Mathlib/LinearAlgebra/Matrix/Hermitian.lean)
(Git blob `f731d5d3ec8ac4ac509d6d4e91c5801649a53c89`), by Alexander Bentkamp,
Apache-2.0. These adaptations are API uses, not independent new proofs of the upstream
matrix theorems. The imported complex partial-order API is
[`Mathlib/Analysis/Complex/Order.lean`](https://github.com/leanprover-community/mathlib4/blob/d13f23b723b8a846827a245b89c10fc7d3f11612/Mathlib/Analysis/Complex/Order.lean),
Git blob `43dc270e625bde3b2fccdeef0277dfd2e287cd11`, by Kim Morrison, Apache-2.0.

## Existing mathematical consumers

- [`ScrewKernelRefinement.lean`](../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/ScrewKernelRefinement.lean),
  read at the repository base above, Git blob `251e2ca4701d349c6c4d90f1d801b833826f0eff`,
  retains the exact payload `(g(t-u),g(t),g(-u))` and signed functional
  `x_0-x_1-x_2`. Its fully qualified consumer is
  `GRWTSK.NumberTheory.Zeta.Riemann.ScrewKernelRefinement.screwKernel_source_preserving_refinement_error`.
  It provides conditional source-preserving error return, not source positivity.
  The additional `g(0)` in this file's anchored convention vanishes only after an
  explicit normalization `g(0)=0`; a caller must preserve that distinction.
- [`ScrewSpectralReconstruction.lean`](../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/ScrewSpectralReconstruction.lean),
  read at the same base, Git blob `cd22cac855e24a9d3c9f2d37831e6e55eb812e49`,
  supplies `GRWTSK.Analysis.ErrorBounds.ScrewSpectralReconstruction.reconstruction_error_bound`.
  Its five error terms are source enclosure, Hermite reconstruction, transport,
  spectral computation, and omitted tail. Instantiating that result for a real scalar
  readout can supply the error premise of `signed_source_nonneg_of_error_and_margin`
  after the scalar norm is identified with absolute value and the source is fixed.
- [#1819](https://github.com/grwtsk/math/issues/1819) requires an actual signed decoder
  on the smooth compact test domain and separate evaluation or bounds for later prime
  terms. `no_signed_recovery_from_magnitude` is a minimal hostile control for that
  interface. It does not discharge `DeterminesWindowReadout` for an HS observer.

These are named intended consumers and proof obligations; this change does not claim
that the source files already import or execute the new scheduling construction.

## Primary literature: precise scope

1. Masatoshi Suzuki, *Aspects of the screw function corresponding to the Riemann
   zeta-function*, **arXiv:2206.03682v4**, 30 May 2023, Theorem 1.2,
   equations (1.4), (1.8), and Proposition 3.1;
   [edition](https://arxiv.org/html/2206.03682v4),
   [published DOI](https://doi.org/10.1112/jlms.12785).
   The normalized zeta-associated function is `g=-Psi`; its global screw property
   is equivalent to RH. The anchored-kernel formula and differentiation bridge motivate
   this file's consumer, but the analytic equivalence is not formalized here.
2. Masatoshi Suzuki, *Weil's quadratic form via the screw function*,
   **arXiv:2606.09096v4**, 15 November 2026, equations (1.5)-(1.8), Theorem 1.1;
   [edition](https://arxiv.org/abs/2606.09096v4).
   The paper constructs an operator realization with explicit domains and projections.
   It does not license assuming global Weil positivity as an operational premise.

The originally supplied `arXiv:2608.19047v1` is Wong et al.'s *Eureka:
Task-Conditioned Meta-Agent Orchestration for Scientific Discovery*, not a Suzuki
paper. It is not used as a mathematical source for any declaration in this file.

## Remaining obligations

The focused formal checks are parsing/elaboration of this exact file on the declared
pins, fresh kernel checking of the emitted declarations, and a transitive axiom audit.
The mathematical integration still requires the actual complex Weil source, its
admissible test domain, source-bound enclosure and tail estimates, and a proof that
the observer retains the signed readout. The finite matrix constructions establish
neither continuum positivity nor positivity over arbitrarily large support intervals.
Machine refinement and scheduler fairness are separate mathematical obligations.
