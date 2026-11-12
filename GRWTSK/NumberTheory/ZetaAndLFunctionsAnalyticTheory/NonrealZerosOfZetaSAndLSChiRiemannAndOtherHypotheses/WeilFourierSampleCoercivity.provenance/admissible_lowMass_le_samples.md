# Whole-window Fourier mass from finite samples and physical support

Author: grwtsk contributors. Version 1, 2026-11-11 America/Los_Angeles.
Declaration: `GRWTSK.NumberTheory.WeilFourierSampleCoercivity.admissible_lowMass_le_samples`.
Source: [WeilFourierSampleCoercivity.lean](../WeilFourierSampleCoercivity.lean).
Analytical companion: [WeilFourierSampleCoercivity.md](../WeilFourierSampleCoercivity.md).
Coordination: math#1801, scope comment 6817699521.

## Exact statement and hypotheses

For a canonical admissible complex f supported in [-A,A], A>0, U>0 and m>=1, its mass on [-U,U] is at most the exact midpoint sampleMass plus massLeakage*M0. massLeakage=4*A^2*U^2/(pi*m).

```lean
theorem admissible_lowMass_le_samples {f : ℝ → ℂ} (hf : Admissible f)
    {A U : ℝ} (hA : 0 < A) (hU : 0 < U)
    (hsupport : ∀ x, x ∉ Icc (-A) A → f x = 0)
    (m : ℕ) (hm : 0 < m) :
    (∫ t in Icc (-U) U, spectrumWeight (plusFourier f) t) ≤
      sampleMass f U m + massLeakage A U m * (∫ x : ℝ, ‖f x‖ ^ 2)
```

## Primary analytical argument

Use the existing physical support inequalities L0^2<=2*A*M0 and Lx<=A*L0, and the existing actual-spectrum Lipschitz estimate. This proves |w(s)-w(t)|<=(2*A^2*M0/pi)*|s-t|. On every cell of length h=2*U/m integrate the uniform distance bound h/2, then sum adjacent intervals. The total error is m*(2*A^2*M0/pi)*h^2/2, exactly massLeakage*M0. Continuity supplies integrability on each cell.

## Consumer and source return

The negative low-mass term in the actual archimedean floor is controlled with the correct inequality direction. This is WSFC-v1-2 and the direct analytic supplier of admissible_archimedean_sample_lower.

## Individual provenance and comparison

This declaration is a source-local consequence, not a claimed direct formalization
of Yoshida's paper. Originality UNASSESSED; no novelty claim. Source inspected at
`grwtsk/math@1135f59fbcee3bb4ac4d1c0a8b276cb0b739b572`. Lean
`leanprover/lean4:v4.34.1`; Mathlib
`d13f23b723b8a846827a245b89c10fc7d3f11612`.
The actual-digamma series chain returns to `Complex.digamma`; its classical
comparison is NIST DLMF 5.7.6, https://dlmf.nist.gov/5.7.E6 . The exact local
input declarations are `centered_tail_enclosure`, `centered_bounds`,
`admissible_spectral_integrability`, `admissible_zeroth_moment`,
`admissible_spectrumWeight_sub_bound`, `admissible_supported_moment_bounds`
and `spectral_eq_baseline_add_centered`, as applicable in the literal proof.
Companion section 1 records their source blobs. The whole-cell argument is
adapted from the local private helper in `WeilFourierQuadrature`, not an
independently verified second proof. Mathlib's upstream authorship and
Apache-2.0 licensing remain unchanged; this local source is MIT.

The 2026-11-11 comparison includes Suzuki, arXiv:2606.09096v3, section 1.1,
p.2 (finite-codimensional positivity and its Yoshida Lemma 3 attribution),
and the supplied Bombieri 2000 introduction. Yoshida's original lemma was
not directly retrieved. No corpus-wide duplicate or priority conclusion is
inferred from incomplete searches. This record maps the local derivation;
it does not reclassify it as an external adaptation or a new theorem in the literature.

## Hostile cases and evidence

No samples alone enclose a cell. The formula requires m>0 and uses real mesh m cast explicitly. High modulation can increase derivative energy without affecting this mass-relative modulus. There is no assumption that a basis is orthonormal.

SOURCE_PROOF_CANDIDATE. Elaboration, full dependency build, fresh kernel
replay, transitive axiom audit, independent analytical review, and numerical
functional certification: NOT_RUN, including imported local candidates.
Source-text scans and exact scalar algebra are not Lean acceptance. Full
prime/gamma/pole assembly and zero-side source verification remain distinct
from the proved estimate, and the complete all-test sign is still open in
this development. No RH/GRH conclusion is asserted.
