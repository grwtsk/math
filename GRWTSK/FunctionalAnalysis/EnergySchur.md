# Energy-space Riesz correction and Schur residual

Local attribution: grwtsk contributors.
Owner: [EnergySchur.lean](EnergySchur.lean).
Namespace: `GRWTSK.FunctionalAnalysis.EnergySchur`.
Subjects: MSC2020 46C05, 47A07; arithmetic consumer 11M06.
Coordination: [math#1837](https://github.com/grwtsk/math/issues/1837).

## Exact mathematical objects

Let E be a complete real or complex Hilbert space whose inner product is the
coercive CORE ENERGY, not the original ambient physical inner product. Let V
be a normed space over the same scalar field. The arithmetic application has
finite-dimensional V, but these identities do not require finite dimension.

The input C: V -> (continuous dual of E) is conjugate-linear and continuous.
The value C(v)(w) is q(v,w), using inner products conjugate-linear in the first
variable. Thus it is the conjugate of the user's b(w,v); its real part is the
same. No character phase is erased.

Mathlib's conjugate-linear Riesz isometry `InnerProductSpace.toDual` has a
conjugate-linear inverse. Composing that inverse with C constructs a LINEAR
continuous map K. Its identity is <K v,w>_E=C(v)(w).
The squared energy norm of K v is exactly the squared norm of C(v) in the
energy dual. The diagonal value d(v) is kept signed.

Define

    energy(w,v) = ||w||_E^2 + 2 Re C(v)(w) + d(v),
    schur(v) = d(v) - ||K v||_E^2.

Expanding ||K v+w||_E^2 proves the full identity

    energy(w,v) = ||K v+w||_E^2 + schur(v).

Testing w=-K v proves the reverse implication; hence whole-form positivity is
equivalent to positivity of schur on V. This does not require a numerical bound
on K. It does require the complete energy-space realization and the bounded
mixed functional; neither is inferred from an arbitrary physical L2 space.

For a continuous linear trial map X:V->E define the ACTUAL residual

    r_v = C(v) - toDual(X v),
    trial(v) = energy(-X v,v).

Riesz isometry gives ||r_v||_(E*)=||K v-X v||_E. Applying the same square
completion at -X v gives

    trial(v) = schur(v) + ||r_v||_(E*)^2.

Thus the trial value is an UPPER bound, not a lower bound. Certified functions
lower(v)<=trial(v) and ||r_v||^2<=budget(v) imply

    lower(v)-budget(v) <= schur(v).

The sufficient finite sign is budget(v)<=lower(v) FOR EVERY retained vector.
When lower and budget are quadratic, the matrix order retains their complete
mixed entries. Sampled vectors do not suffice. An observed trial value pays its
one-sided observation error before subtraction of the residual allowance.

## Declaration-level correspondence

These are local consequences of the inspected canonical Mathlib Riesz API,
not claims to have re-formalized the general operator-matrix paper below.

| Declaration | Exact content and dependency |
| --- | --- |
| `correction` | Constructs K from `InnerProductSpace.toDual` at the pinned Mathlib revision. |
| `correction_inner` | Uses `toDual_symm_apply`; retains the source conjugate-linear convention. |
| `toDual_correction` | The inverse Riesz identity for the same C(v). |
| `correction_unique` | Uniqueness by `ext_inner_right`, not an assumed solver property. |
| `correction_norm` | Exact Riesz isometry, not a physical L2 operator-norm bound. |
| `mixed_bound` | Cauchy--Schwarz in the actual core energy norm. |
| `energy`, `schur` | Definitions of the signed coupled and eliminated values. Arbitrary d is not asserted to be a Hermitian quadratic form. |
| `square_completion` | Direct use of pinned `norm_add_sq` plus the Riesz identity. |
| `energy_at_minimum` | The admissible minimizing core vector -K v. |
| `nonnegative_iff` | Exact sign equivalence; no finite-certificate existence claim. |
| `residual`, `residual_eq_toDual_sub` | Defines the true dual residual and identifies its Riesz vector. |
| `residual_norm` | Exact dual energy of the correction error. |
| `trial`, `trial_identity` | Source trial value and the positive trial overestimate. |
| `schur_eq_trial_sub_residual`, `schur_le_trial` | Exact subtraction and the correct one-sided order. |
| `schur_lower_of_trial`, `schur_nonneg_of_trial` | Directional lower enclosure and its sufficient sign. |
| `schur_nonneg_of_observed` | Includes observation error before the whole dual residual. |
| `schur_nonneg_of_scalar_budget` | Optional sufficient scalar estimate; the baseline lower bound mu may have either sign. |

The maintained arithmetic consumer is
[WeilShiftedSchurReturn.lean](../NumberTheory/ZetaAndLFunctionsAnalyticTheory/WeilShiftedSchurReturn.lean).
Its `hsource` quantifies every input of the original odd literal domain. A
positive model, norm comparison, or finite-trial identity alone cannot fill it.
The original real bilinear and ambient-norm estimates in
[SchurResidualEnclosure.lean](../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/SchurResidualEnclosure.lean)
and [RankOneResidualCertificate.lean](../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/RankOneResidualCertificate.lean)
remain reusable separate results; this increment does not replace their API.

## Prior-art comparison and hostile checks

Inspected November 18, 2026:

- Mathlib `Analysis/InnerProductSpace/Dual.lean`, revision
  `d13f23b723b8a846827a245b89c10fc7d3f11612`, blob
  `a68d5b79b9188228581993555c0bf14f2edb9697`: `toDual`,
  `toDual_symm_apply`, `continuousLinearMapOfBilin`.
- The same revision's `Analysis/InnerProductSpace/Basic.lean`, blob
  `75aac879ab48e009bb05b5a71a189750e85382e9`: `norm_add_sq`.
- M. Kraus, M. Langer and C. Tretter, *Variational principles and eigenvalue
  estimates for unbounded block operator matrices and applications*, May 19,
  2003 preprint, Section 2, equations (2.1)--(2.2) and Proposition 2.2;
  published J. Comput. Appl. Math. 171 (2004), 311--334.
  [Author-hosted preprint](https://mkraus.mathematik.uni-mainz.de/klt-19-5-03.pdf).
  This is a domain-discipline comparison, not a dependency imported as an axiom
  or an assertion that its general sectorial representation theorem was ported.

Primary proof is the Riesz construction and a norm-square expansion. The
variational identity inf_w energy(w,v)=schur(v) is a second description of the
same argument, not independent proof evidence. A hostile real test is
energy(w,v)=w^2+4wv+v^2: the trial X=0 has positive value v^2, whereas the
exact Schur form is -3v^2. Omitting the residual reverses the conclusion.
Another check is A=diag(1,M^2), B=(0,M): the weighted coupling is 1 although
the coarse ||B||^2/min-spectrum bound is M^2. No novelty claim is made.

## Evidence and unresolved suppliers

Source base: `grwtsk/math@e5cf12adb8ccc6ae40f03a174a260f846e27d774`.
Lean `leanprover/lean4:v4.34.1`; Mathlib revision as above. Pins and root imports
are unchanged. This is a **SOURCE_PROOF_CANDIDATE**. Elaboration, exact expected
signatures, fresh kernel replay, transitive axiom audit, full import-closure
replay and independent mathematical review: **NOT_RUN**. Prior-art completeness:
**UNASSESSED**. Static source inspection is not any of these checks.

Not supplied: a new closed-form API for the actual maximal Weil domain, the
source-specific finite projection and energy norm, a computable reference
spectral cutoff, a whole-domain residual bound for the arithmetic source, a
passing stage sign, or accepted certificates at all/cofinally many stages.
These are OPEN mathematical constructions, distinct from unrun verification.
