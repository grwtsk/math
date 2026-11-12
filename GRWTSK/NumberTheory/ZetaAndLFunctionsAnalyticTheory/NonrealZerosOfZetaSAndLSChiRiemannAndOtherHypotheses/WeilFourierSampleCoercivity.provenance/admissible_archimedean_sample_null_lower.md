# Every exact sample-null complex test has the derived lower floor

Author: grwtsk contributors. Version 1, 2026-11-11 America/Los_Angeles.
Declaration: `GRWTSK.NumberTheory.WeilFourierSampleCoercivity.admissible_archimedean_sample_null_lower`.
Source: [WeilFourierSampleCoercivity.lean](../WeilFourierSampleCoercivity.lean).
Analytical companion: [WeilFourierSampleCoercivity.md](../WeilFourierSampleCoercivity.md).
Coordination: math#1801, scope comment 6817699521.

## Exact statement and hypotheses

With the same geometric parameters and support hypotheses, require F_f(t_j)=0 at every one of the m actual midpoint nodes. Then arch(f)>=[beta+S*(1-alpha)]*M0 for every such test.

```lean
theorem admissible_archimedean_sample_null_lower (q : ℕ) (hq : 1 ≤ q)
    {sigma A U : ℝ} (hsigma : 0 < sigma) (hA : 0 < A) (hU : 0 < U)
    (N : ℕ) {f : ℝ → ℂ} (hf : Admissible f)
    (hsupport : ∀ x, x ∉ Icc (-A) A → f x = 0) (m : ℕ) (hm : 0 < m)
    (hzero : ∀ j < m,
      plusFourier f (-U + (j : ℝ) * (2 * U / (m : ℝ)) + (2 * U / (m : ℝ)) / 2) = 0) :
    (baseline q sigma + partialSum sigma (U / 2) N * (1 - massLeakage A U m)) *
        (∫ x : ℝ, ‖f x‖ ^ 2) ≤
      spectralFunctional q sigma (spectrumWeight (plusFourier f))
```

## Primary analytical argument

Unfold the existing midpoint sum and spectrumWeight. Each true Fourier zero makes its norm-square summand zero. The sum and sampleMass therefore vanish exactly. Substitute in the all-test source lower bound. The companion separately constructs nonzero smooth sample-null tests by a finite constant-coefficient differential operator; that construction is not a new Lean declaration.

## Consumer and source return

admissible_archimedean_sample_null_cap_lower supplies a finite checkable lower floor. The written arithmetic consumer uses it on the kernel of the actual finite Fourier evaluation map, not merely on a selected coefficient grid.

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

Approximate or rounded zeros cannot replace hzero. The zero test is permitted but the written construction also supplies nonzero tests. Positivity on this kernel does not control coupling to a complementary finite-dimensional space.

SOURCE_PROOF_CANDIDATE. Elaboration, full dependency build, fresh kernel
replay, transitive axiom audit, independent analytical review, and numerical
functional certification: NOT_RUN, including imported local candidates.
Source-text scans and exact scalar algebra are not Lean acceptance. Full
prime/gamma/pole assembly and zero-side source verification remain distinct
from the proved estimate, and the complete all-test sign is still open in
this development. No RH/GRH conclusion is asserted.
