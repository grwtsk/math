# A finite reciprocal-sum lower floor at an explicit frequency

Author: grwtsk contributors. Version 1, 2026-11-11 America/Los_Angeles.
Declaration: `GRWTSK.NumberTheory.WeilArchimedeanFloor.half_reciprocalCap_le_partialSum`.
Source: [WeilArchimedeanFloor.lean](../WeilArchimedeanFloor.lean).
Analytical companion: [WeilFourierSampleCoercivity.md](../WeilFourierSampleCoercivity.md).
Coordination: math#1801, scope comment 6817699521.

## Exact statement and hypotheses

For sigma>0 and N>=0, U>=2*(sigma+N) implies H_N/2<=S_N(sigma,U/2). No actual-digamma asymptotic or numerical estimate is assumed.

```lean
theorem half_reciprocalCap_le_partialSum {sigma U : ℝ}
    (hsigma : 0 < sigma) (N : ℕ)
    (hU : 2 * (sigma + (N : ℝ)) ≤ U) :
    reciprocalCap sigma N / 2 ≤ partialSum sigma (U / 2) N
```

## Primary analytical argument

For n<N set s=sigma+n>0 and y=U/2. The frequency condition implies y>=s, so y^2>=s^2. Clearing positive denominators proves d_s(y)>=1/(2*s). Sum every term and use distributivity of division by 2. The companion later uses harmonic dyadic blocks to choose N; that existence argument is written only.

## Consumer and source return

admissible_archimedean_sample_null_cap_lower uses this explicit finite inequality together with massLeakage<=1/2. The written complete-form consumer sets the resulting archimedean floor above its full prime and negative-pole mass budget.

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

The factor 1/2 cannot be dropped at y=s, where equality holds for one term. For N=0 both sums are zero. Increasing N while keeping an insufficient U does not satisfy the theorem.

SOURCE_PROOF_CANDIDATE. Elaboration, full dependency build, fresh kernel
replay, transitive axiom audit, independent analytical review, and numerical
functional certification: NOT_RUN, including imported local candidates.
Source-text scans and exact scalar algebra are not Lean acceptance. Full
prime/gamma/pole assembly and zero-side source verification remain distinct
from the proved estimate, and the complete all-test sign is still open in
this development. No RH/GRH conclusion is asserted.
