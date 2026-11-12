# An actual centered-digamma lower floor from squared-frequency order

Author: grwtsk contributors. Version 1, 2026-11-11 America/Los_Angeles.
Declaration: `GRWTSK.NumberTheory.WeilArchimedeanFloor.partialSum_le_centered_of_sq_le`.
Source: [WeilArchimedeanFloor.lean](../WeilArchimedeanFloor.lean).
Analytical companion: [WeilFourierSampleCoercivity.md](../WeilFourierSampleCoercivity.md).
Coordination: math#1801, scope comment 6817699521.

## Exact statement and hypotheses

For positive sigma and arbitrary real y,z with y^2<=z^2, every natural N gives S_N(sigma,y)<=C(sigma,z). The true centered digamma, not a model, is the target.

```lean
theorem partialSum_le_centered_of_sq_le {sigma y z : ℝ}
    (hsigma : 0 < sigma) (hyz : y ^ 2 ≤ z ^ 2) (N : ℕ) :
    partialSum sigma y N ≤ centered sigma z
```

## Primary analytical argument

For every s>0 subtract the two rational terms exactly: d_s(z)-d_s(y)=s*(z^2-y^2)/[(s^2+z^2)*(s^2+y^2)]. Positivity of both denominator factors and of the numerator proves termwise monotonicity. Sum all N terms and compose with the existing actual-source centered_tail_enclosure. There is no change of Fourier sign or frequency scale.

## Consumer and source return

The actual-frequency lower bound in admissible_archimedean_lower_of_lowMass uses y=U/2 and z=t/2 whenever t is outside [-U,U]. This is the pointwise supplier of WSFC-v1-1.

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

Square ordering is essential; signed ordering y<=z is insufficient when both are negative. Sigma>0 separates denominators from zero. N=0 yields a zero lower floor, not a sign theorem for the full uncentered multiplier.

SOURCE_PROOF_CANDIDATE. Elaboration, full dependency build, fresh kernel
replay, transitive axiom audit, independent analytical review, and numerical
functional certification: NOT_RUN, including imported local candidates.
Source-text scans and exact scalar algebra are not Lean acceptance. Full
prime/gamma/pole assembly and zero-side source verification remain distinct
from the proved estimate, and the complete all-test sign is still open in
this development. No RH/GRH conclusion is asserted.
