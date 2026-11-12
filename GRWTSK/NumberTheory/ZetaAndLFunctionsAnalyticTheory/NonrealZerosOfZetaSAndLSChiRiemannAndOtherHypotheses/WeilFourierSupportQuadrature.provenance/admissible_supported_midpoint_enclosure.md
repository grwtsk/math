# WFSQ-v1-2: actual-source midpoint enclosure relative to mass

Author: grwtsk contributors. Version 1, 2026-11-11 America/Los_Angeles.
Local declaration: `GRWTSK.NumberTheory.WeilFourierSupportQuadrature.admissible_supported_midpoint_enclosure`.
Source: [WeilFourierSupportQuadrature.lean](../WeilFourierSupportQuadrature.lean).
Analytical companion: [sections 1--7](../WeilFourierSupportQuadrature.md).
Coordination: math#1801, scope comment 6817068740.

## Typed statement and retained scope

Retain q>=1, sigma>0, A>0, T>0, all N, m>=1 and the canonical complex supported test. The exact uncentered spectralFunctional lies between R-epsilon*M0 and R+epsilon*M0+tailBudget. The complete baseline may be negative.

```lean
theorem admissible_supported_midpoint_enclosure (q : ℕ) (hq : 1 ≤ q)
    {sigma A T : ℝ} (hsigma : 0 < sigma) (hA : 0 < A) (hT : 0 < T)
    (N : ℕ) {f : ℝ → ℂ} (hf : Admissible f)
    (hsupport : ∀ x, x ∉ Icc (-A) A → f x = 0)
    (m : ℕ) (hm : 0 < m) :
    let estimate := baseline q sigma * (∫ x : ℝ, ‖f x‖ ^ 2) +
      coreMidpoint sigma N f T m
    let error := massGridCoefficient sigma A T N m * (∫ x : ℝ, ‖f x‖ ^ 2)
    estimate - error ≤ spectralFunctional q sigma (spectrumWeight (plusFourier f)) ∧
      spectralFunctional q sigma (spectrumWeight (plusFourier f)) ≤
        estimate + error + tailBudget sigma N f T
```

## Primary derivation, provenance and comparison

The private grid lemma multiplies the proved coreSlope estimate by the nonnegative 2*T^2/m. Apply WeilFourierQuadrature.admissible_archimedean_midpoint_enclosure to the same test and parameters. Enlarge only its gridBudget to epsilon*M0. Leave tailBudget=d*M1 one-sided and unchanged; elementary inequalities give both endpoints.

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

finite_family_midpoint_enclosure and the actual matrix construction in the companion section 3. The latter is WRITTEN, not an additional Lean theorem.

## Falsification and remaining obligations

High modulation can make M1 unbounded at fixed M0, so d*M1 is retained. q=1 covers the archimedean zeta component without dropping its poles. No midpoint value is used as a whole-cell enclosure, and no sign of R is inferred.

SOURCE_PROOF_CANDIDATE. Elaboration, dependency build, fresh kernel replay,
transitive axiom audit, independent analytical review and numerical functional
certification: NOT_RUN, including imported local candidates. Publication and
source-text/algebra checks are not formal acceptance. Full source convention
identification, signed-zero explicit formula/detection and the all-test,
all-window arithmetic prime--gamma--pole sign inequality remain separate.
