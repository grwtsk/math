# Actual archimedean lower coercivity with a finite-sample correction

Author: grwtsk contributors. Version 1, 2026-11-11 America/Los_Angeles.
Declaration: `GRWTSK.NumberTheory.WeilFourierSampleCoercivity.admissible_archimedean_sample_lower`.
Source: [WeilFourierSampleCoercivity.lean](../WeilFourierSampleCoercivity.lean).
Analytical companion: [WeilFourierSampleCoercivity.md](../WeilFourierSampleCoercivity.md).
Coordination: math#1801, scope comment 6817699521.

## Exact statement and hypotheses

For q>=1, sigma,A,U>0, N>=0, m>=1 and every canonical complex f supported in [-A,A], arch(f)>=[beta+S*(1-alpha)]*M0-S*D, with S=S_N(sigma,U/2), alpha=massLeakage and D=sampleMass.

```lean
theorem admissible_archimedean_sample_lower (q : ℕ) (hq : 1 ≤ q)
    {sigma A U : ℝ} (hsigma : 0 < sigma) (hA : 0 < A) (hU : 0 < U)
    (N : ℕ) {f : ℝ → ℂ} (hf : Admissible f)
    (hsupport : ∀ x, x ∉ Icc (-A) A → f x = 0) (m : ℕ) (hm : 0 < m) :
    (baseline q sigma + partialSum sigma (U / 2) N * (1 - massLeakage A U m)) *
        (∫ x : ℝ, ‖f x‖ ^ 2) -
      partialSum sigma (U / 2) N * sampleMass f U m ≤
        spectralFunctional q sigma (spectrumWeight (plusFourier f))
```

## Primary analytical argument

Combine the integrated actual-digamma lower bound with the proved whole-window mass upper bound. Since S>=0, multiplying the latter by -S reverses the inequality. Exact real algebra gives the stated coefficient. All quantitative hypotheses are geometric or actual source parameters; no positivity or unexplained test regularity supplier is introduced.

## Consumer and source return

This is WSFC-v1-3. The written complete-source theorem WSFC-v1-4 retains all prime powers and both pole orientations and supplies Q>=[beta+S*(1-alpha)-V]*M0-S*D. The canonical all-test sign and zero-localization consumers remain unfulfilled.

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

Small approximation errors alone do not imply a positive coefficient. A negative baseline is retained. D is the true nonnegative sample energy; rounded values need their own error bounds. No derivative upper bound, positivity shift, or zero-location assumption is used.

SOURCE_PROOF_CANDIDATE. Elaboration, full dependency build, fresh kernel
replay, transitive axiom audit, independent analytical review, and numerical
functional certification: NOT_RUN, including imported local candidates.
Source-text scans and exact scalar algebra are not Lean acceptance. Full
prime/gamma/pole assembly and zero-side source verification remain distinct
from the proved estimate, and the complete all-test sign is still open in
this development. No RH/GRH conclusion is asserted.
