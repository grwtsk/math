# Every complex coefficient vector, with dependent families allowed

Author: grwtsk contributors. Version 1, 2026-11-11 America/Los_Angeles.
Local declaration: `GRWTSK.NumberTheory.WeilFourierSupportQuadrature.finite_family_midpoint_enclosure`.
Source: [WeilFourierSupportQuadrature.lean](../WeilFourierSupportQuadrature.lean).
Analytical companion: [sections 1--7](../WeilFourierSupportQuadrature.md).
Coordination: math#1801, scope comment 6817068740.

## Typed statement and retained scope

For any finite index type, family of canonical admissible complex tests with common window [-A,A], and EVERY coefficient vector c, obtain the same source-bound enclosure for the actual f_c=sum_i c_i*phi_i. No orthonormality, linear independence, nonzero mass or eigenvalue gap is assumed.

```lean
theorem finite_family_midpoint_enclosure {ι : Type*} [Fintype ι]
    (phi : ι → ℝ → ℂ) (hphi : ∀ i, Admissible (phi i))
    {A : ℝ} (hA : 0 < A)
    (hsupport : ∀ i x, x ∉ Icc (-A) A → phi i x = 0)
    (q : ℕ) (hq : 1 ≤ q) {sigma T : ℝ} (hsigma : 0 < sigma) (hT : 0 < T)
    (N m : ℕ) (hm : 0 < m) (c : ι → ℂ) :
    let f : ℝ → ℂ := fun x => ∑ i, c i * phi i x
    let estimate := baseline q sigma * (∫ x : ℝ, ‖f x‖ ^ 2) +
      coreMidpoint sigma N f T m
    let error := massGridCoefficient sigma A T N m * (∫ x : ℝ, ‖f x‖ ^ 2)
    estimate - error ≤ spectralFunctional q sigma (spectrumWeight (plusFourier f)) ∧
      spectralFunctional q sigma (spectrumWeight (plusFourier f)) ≤
        estimate + error + tailBudget sigma N f T
```

## Primary derivation, provenance and comparison

Pointwise zero extension of each generator makes the finite combination vanish outside the common interval. ContDiff.sum and multiplication by complex constants preserve smooth order infinity. HasCompactSupport.intro on the actual compact interval supplies compact support. Apply the proved supported midpoint theorem to this same combination. Its mass and derivative energy remain actual integrals, not the Euclidean norm of c.

This is a local elementary consequence, not an attributed external paper theorem.
Parent source: grwtsk/math@7fd7181a0a62c5c1e9e2607d4f5b2e22f020da0c; actual imported
WeilFourierQuadrature blob `be5e3afa9925623c322d60518aab08a99d3e5e14`,
WeilFourierMoments blob `aa20033bb58f9f99ed31e71f33e0a1a2af08136f`,
ArchimedeanMomentBounds blob `72d24ec6c700c124fcf09d6632f2f56d1010fb66`.
Lean `leanprover/lean4:v4.34.1`; Mathlib
`d13f23b723b8a846827a245b89c10fc7d3f11612`.
Upstream Mathlib authorship and Apache-2.0 licensing are unchanged; this local
source remains MIT. Exact whole-cell and Fourier-moment arguments and their
individual source provenance are retained, not independently reproved here.
The 2026-11-11 comparison is limited to the inspected local chain and relevant
Mathlib APIs; it is not a corpus-wide prior-art or duplicate audit. Originality
UNASSESSED; no novelty claim or independent verification claim.

## Consumer and return

Companion WFSQ-v1-3 constructs actual Hermitian entries and proves their Loewner order from this all-vector estimate. WFSQ-v1-4--5 give written complete-form continuity/density and conditional all-window exhaustion. Those statements have no Lean declaration here, and finite positivity is still unsupplied.

## Falsification and remaining obligations

The family (phi,i*phi) has a nonzero coefficient null vector (1,i); the argument uses no Gram inverse. Positive values on coordinate vectors alone fail for Hermitian [[1,i],[-i,1/2]], whose value at (1,i) is -1/2. This exact algebra is a hostile example, not a Weil counterexample.

SOURCE_PROOF_CANDIDATE. Elaboration, dependency build, fresh kernel replay,
transitive axiom audit, independent analytical review and numerical functional
certification: NOT_RUN, including imported local candidates. Publication and
source-text/algebra checks are not formal acceptance. Full source convention
identification, signed-zero explicit formula/detection and the all-test,
all-window arithmetic prime--gamma--pole sign inequality remain separate.
