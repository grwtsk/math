# An explicit reciprocal-cap floor on the sample-null sector

Author: grwtsk contributors. Version 1, 2026-11-11 America/Los_Angeles.
Declaration: `GRWTSK.NumberTheory.WeilFourierSampleCoercivity.admissible_archimedean_sample_null_cap_lower`.
Source: [WeilFourierSampleCoercivity.lean](../WeilFourierSampleCoercivity.lean).
Analytical companion: [WeilFourierSampleCoercivity.md](../WeilFourierSampleCoercivity.md).
Coordination: math#1801, scope comment 6817699521.

## Exact statement and hypotheses

Add U>=2*(sigma+N) and massLeakage<=1/2 to the exact sample-null hypotheses. For every such test, arch(f)>=(beta+H_N/4)*M0. Neither beta nor the final coefficient is assumed positive.

```lean
theorem admissible_archimedean_sample_null_cap_lower (q : ℕ) (hq : 1 ≤ q)
    {sigma A U : ℝ} (hsigma : 0 < sigma) (hA : 0 < A) (hU : 0 < U)
    (N : ℕ) (hfrequency : 2 * (sigma + (N : ℝ)) ≤ U)
    {f : ℝ → ℂ} (hf : Admissible f)
    (hsupport : ∀ x, x ∉ Icc (-A) A → f x = 0) (m : ℕ) (hm : 0 < m)
    (hmesh : massLeakage A U m ≤ 1 / 2)
    (hzero : ∀ j < m,
      plusFourier f (-U + (j : ℝ) * (2 * U / (m : ℝ)) + (2 * U / (m : ℝ)) / 2) = 0) :
    (baseline q sigma + reciprocalCap sigma N / 4) * (∫ x : ℝ, ‖f x‖ ^ 2) ≤
      spectralFunctional q sigma (spectrumWeight (plusFourier f))
```

## Primary analytical argument

The rational term estimate supplies S>=H_N/2. Nonnegativity of S and 1-alpha>=1/2 imply S*(1-alpha)>=S/2>=H_N/4. Multiply by the actual nonnegative mass and apply the sample-null lower bound. The companion gives finite parameter choices for the actual parity parameters using H_(2^k)>=1+k/2.

## Consumer and source return

The written complete-form theorem chooses H_N/4>=V-beta+mu, where V includes all prime powers and the sharp negative part of both zeta poles. This proves Q>=mu*M0 on the sample kernel for any fixed window, character and mu>0, while leaving all-test positivity unresolved.

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

An upper bound on H_N would not supply this premise. Coarse sampling alpha>1/2 is not covered. N=0 cannot supply an arbitrarily high floor. Constants and the sample count may grow enormously with the window; no uniform all-window algorithm or full certificate-existence theorem follows.

SOURCE_PROOF_CANDIDATE. Elaboration, full dependency build, fresh kernel
replay, transitive axiom audit, independent analytical review, and numerical
functional certification: NOT_RUN, including imported local candidates.
Source-text scans and exact scalar algebra are not Lean acceptance. Full
prime/gamma/pole assembly and zero-side source verification remain distinct
from the proved estimate, and the complete all-test sign is still open in
this development. No RH/GRH conclusion is asserted.
