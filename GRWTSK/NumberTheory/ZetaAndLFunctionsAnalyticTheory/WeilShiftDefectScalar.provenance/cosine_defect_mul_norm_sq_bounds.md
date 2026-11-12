# WSD-v1-02: cosine_defect_mul_norm_sq_bounds

Declaration:
GRWTSK.NumberTheory.WeilQuadraticForm.ShiftDefectScalar.cosine_defect_mul_norm_sq_bounds
Maintained file: ../WeilShiftDefectScalar.lean
Candidate Git blob: 438681653c3cbd75a37b9936f3a3cb4fe50ff1be
Source attribution: grwtsk contributors; 2026-11-12.
MSC2020 primary 42A38.

Literal declaration:
~~~lean
theorem cosine_defect_mul_norm_sq_bounds (x : ℝ) (z : ℂ) :
    0 ≤ (x ^ 2 - 2 * (1 - Real.cos x)) * ‖z‖ ^ 2 ∧
      (x ^ 2 - 2 * (1 - Real.cos x)) * ‖z‖ ^ 2 ≤
        (x ^ 4 / 12) * ‖z‖ ^ 2
~~~

Proof: multiply both sides of WSD-v1-01 by the
nonnegative squared norm of arbitrary complex z.
Complex phases are unrestricted; no spectral ordinate
projection, absolute-value replacement of the Weil
zero pairing or new positivity premise is used.

Consumer: pointwise Plancherel integrand for H²
translation defect in WeilH1SourceContinuity.md II.
The missing source correspondence is the exact
Fourier normalization and integral evaluation, not
the scalar inequality. Real mathematical novelty
and independent review are not claimed.

Source: WSD-v1-01 and its pinned Mathlib
trigonometric suppliers. SOURCE_PROOF_CANDIDATE;
elaboration, complete build, kernel replay,
axiom audit, numerical certification and independent
review NOT_RUN; novelty UNASSESSED.
