# Return to the existing true baseline/sample certificate consumer

Author: grwtsk contributors. Version 1, 2026-11-11 America/Los_Angeles.
Local declaration: `GRWTSK.NumberTheory.WeilFourierSupportQuadrature.admissible_supported_sample_enclosure`.
Source: [WeilFourierSupportQuadrature.lean](../WeilFourierSupportQuadrature.lean).
Analytical companion: [sections 1--7](../WeilFourierSupportQuadrature.md).
Coordination: math#1801, scope comment 6817068740.

## Typed statement and retained scope

The actual baseline error |beta*M0-B|<=eta and each actual finite core sample error |g_N(t_j)-v_j|<=e_j remain explicit. All supported-test and positive parameter hypotheses are retained. The result is Rhat-E<=actual arch<=Rhat+E+d*M1, E=eta+epsilon*M0+h*sum e_j.

```lean
theorem admissible_supported_sample_enclosure (q : ℕ) (hq : 1 ≤ q)
    {sigma A T : ℝ} (hsigma : 0 < sigma) (hA : 0 < A) (hT : 0 < T)
    (N : ℕ) {f : ℝ → ℂ} (hf : Admissible f)
    (hsupport : ∀ x, x ∉ Icc (-A) A → f x = 0)
    (m : ℕ) (hm : 0 < m) (B eta : ℝ) (v e : ℕ → ℝ)
    (hbaseline : |baseline q sigma * (∫ x : ℝ, ‖f x‖ ^ 2) - B| ≤ eta)
    (hvalues : ∀ j < m,
      |core sigma N f (-T + (j : ℝ) * (2 * T / (m : ℝ)) + T / (m : ℝ)) - v j| ≤ e j) :
    let estimate := B + (2 * T / (m : ℝ)) * (∑ j ∈ Finset.range m, v j)
    let error := eta +
      massGridCoefficient sigma A T N m * (∫ x : ℝ, ‖f x‖ ^ 2) +
      (2 * T / (m : ℝ)) * (∑ j ∈ Finset.range m, e j)
    estimate - error ≤ spectralFunctional q sigma (spectrumWeight (plusFourier f)) ∧
      spectralFunctional q sigma (spectrumWeight (plusFourier f)) ≤
        estimate + error + tailBudget sigma N f T
```

## Primary derivation, provenance and comparison

Invoke the existing admissible_archimedean_sample_enclosure without changing any sample, baseline or actual functional. Bound its gridBudget by the proved mass-relative coefficient. The old lower endpoint can only decrease and the upper endpoint can only increase. No separate convergence, interpolation accuracy or baseline sign premise is introduced.

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

Certified evaluations of a represented test or finite family may discharge these computational hypotheses; the companion section 3 explains the necessary all-complex-vector matrix control. No such evaluation is performed here.

## Falsification and remaining obligations

Arbitrarily shrinking a claimed sample tolerance does not prove the actual sample premise. The infinite derivative-energy remainder survives unchanged. Baseline error and sample error are never conflated with quadrature error. This is not universal certificate existence or complete Weil positivity.

SOURCE_PROOF_CANDIDATE. Elaboration, dependency build, fresh kernel replay,
transitive axiom audit, independent analytical review and numerical functional
certification: NOT_RUN, including imported local candidates. Publication and
source-text/algebra checks are not formal acceptance. Full source convention
identification, signed-zero explicit formula/detection and the all-test,
all-window arithmetic prime--gamma--pole sign inequality remain separate.
