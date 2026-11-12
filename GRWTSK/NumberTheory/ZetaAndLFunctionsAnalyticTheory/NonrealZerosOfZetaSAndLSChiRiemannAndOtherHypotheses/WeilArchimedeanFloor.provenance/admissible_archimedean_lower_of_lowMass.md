# Integrated lower bound for the actual uncentered archimedean source

Author: grwtsk contributors. Version 1, 2026-11-11 America/Los_Angeles.
Declaration: `GRWTSK.NumberTheory.WeilArchimedeanFloor.admissible_archimedean_lower_of_lowMass`.
Source: [WeilArchimedeanFloor.lean](../WeilArchimedeanFloor.lean).
Analytical companion: [WeilFourierSampleCoercivity.md](../WeilFourierSampleCoercivity.md).
Coordination: math#1801, scope comment 6817699521.

## Exact statement and hypotheses

For q>=1, sigma>0, U>0, every natural N and every canonical admissible complex f, arch(f)>=(beta+S)*M0-S*integral_[-U,U]w, where S=S_N(sigma,U/2). No support radius, low-mass certificate or derivative-energy bound is assumed.

```lean
theorem admissible_archimedean_lower_of_lowMass (q : ℕ) (hq : 1 ≤ q)
    {sigma U : ℝ} (hsigma : 0 < sigma) (hU : 0 < U)
    (N : ℕ) {f : ℝ → ℂ} (hf : Admissible f) :
    (baseline q sigma + partialSum sigma (U / 2) N) *
        (∫ x : ℝ, ‖f x‖ ^ 2) -
      partialSum sigma (U / 2) N *
        (∫ t in Icc (-U) U, spectrumWeight (plusFourier f) t) ≤
      spectralFunctional q sigma (spectrumWeight (plusFourier f))
```

## Primary analytical argument

Obtain genuine zeroth and second spectral integrability and Plancherel from the unchanged test. The true centered multiplier is nonnegative inside the window and at least S outside by squared-frequency monotonicity. Thus S*w-S*1_window*w<=w*C pointwise. Both sides are integrable, so integrate, subtract legitimate integrals, and add the exact signed baseline. The result is for spectralFunctional itself.

## Consumer and source return

admissible_archimedean_sample_lower discharges the low-mass quantity by the explicit support-derived midpoint estimate; no independent spectrum is supplied. Companion WSFC-v1-1 and equations (2),(5),(7) return to the full arithmetic form.

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

One cannot upper-bound the unbounded actual multiplier by S. The finite window charge is necessary for low-frequency tests. The baseline may be negative, and the conductor-one gamma component is included without deleting either zeta pole.

SOURCE_PROOF_CANDIDATE. Elaboration, full dependency build, fresh kernel
replay, transitive axiom audit, independent analytical review, and numerical
functional certification: NOT_RUN, including imported local candidates.
Source-text scans and exact scalar algebra are not Lean acceptance. Full
prime/gamma/pole assembly and zero-side source verification remain distinct
from the proved estimate, and the complete all-test sign is still open in
this development. No RH/GRH conclusion is asserted.
