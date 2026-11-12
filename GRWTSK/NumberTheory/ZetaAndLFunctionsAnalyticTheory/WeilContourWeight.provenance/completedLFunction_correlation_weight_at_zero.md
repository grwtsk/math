# `GRWTSK.NumberTheory.WeilQuadraticForm.SourcePrimeCorrelation.completedLFunction_correlation_weight_at_zero`

Local attribution: grwtsk contributors. Date: 2026-11-11.
Status: SOURCE_PROOF_CANDIDATE; novelty UNASSESSED.
Lean v4.34.1; Mathlib `d13f23b723b8a846827a245b89c10fc7d3f11612`; inspection base `d29f7681352f5847c4aac3391e2f9b9d325c32fc`.
Coordination: [math#1801](https://github.com/grwtsk/math/issues/1801).

## Exact source statement

Maintained path: [`WeilContourWeight.lean`](../WeilContourWeight.lean#L194).
Source SHA-256 `d777f87e2d1090aa369dd05884fb8b64d6bbda3385e3873c79bb0499deb1c732`; Git blob `aa53350b401764c081a0559833d7f840a5ecc847`.

```lean
theorem completedLFunction_correlation_weight_at_zero {N : ℕ} [NeZero N]
    (chi : DirichletCharacter ℂ N) (rho : CriticalStripZero chi)
    (f : ℝ → ℂ) (A : ℝ) (hA : 0 ≤ A) (hf : Integrable f volume)
    (hs : ∀ t, A < |t| → f t = 0) :
    let W := fun s : ℂ => ∫ r : ℝ, correlation f r * Complex.exp ((s - 1 / 2) * (r : ℂ))
    Tendsto (fun s => (s - rho.1) * (W s * logDeriv (DirichletCharacter.completedLFunction chi) s))
      (𝓝[≠] rho.1) (𝓝 ((zeroMultiplicity chi rho : ℂ) * W rho.1))
```

## Method, consumer and provenance

Supply continuity of the actual entire weight to the existing source-weighted logarithmic zero limit.

Consumer: Original multiplicity times W(rho), retaining full complex locations.

This is a local consequence/adaptation at the pinned source, not a claim that an
upstream paper states this exact Lean declaration. Complete reasoning and boundary
checks are in [README.md](README.md). No assumptions are silently discharged by
publication. Novelty is separate from verification.

Patrick Massot, [Mathlib/Analysis/Calculus/ParametricIntegral.lean](https://github.com/leanprover-community/mathlib4/blob/d13f23b723b8a846827a245b89c10fc7d3f11612/Mathlib/Analysis/Calculus/ParametricIntegral.lean), `hasDerivAt_integral_of_dominated_loc_of_deriv_le`; revision `d13f23b723b8a846827a245b89c10fc7d3f11612`, Git blob `c7937b328d3ab054a967d37f82132612a3ce83e6`. Apache-2.0. Pinned primary implementation.

grwtsk contributors, [GRWTSK/NumberTheory/ZetaAndLFunctionsAnalyticTheory/WeilCorrelationFourier.lean](https://github.com/grwtsk/math/blob/d29f7681352f5847c4aac3391e2f9b9d325c32fc/GRWTSK/NumberTheory/ZetaAndLFunctionsAnalyticTheory/WeilCorrelationFourier.lean), `integrable_correlation_fourier_integrand; fourier_correlation_eq_reflected_product; zeta_pole_correlation`; revision `d29f7681352f5847c4aac3391e2f9b9d325c32fc`, Git blob `8b2afb9be022253be047c4e47cbd42d51134dee1`. MIT. Existing local candidate; not independent external provenance or proof acceptance.

grwtsk contributors, [GRWTSK/NumberTheory/ZetaAndLFunctionsAnalyticTheory/DirichletLogarithmicResidues.lean](https://github.com/grwtsk/math/blob/d29f7681352f5847c4aac3391e2f9b9d325c32fc/GRWTSK/NumberTheory/ZetaAndLFunctionsAnalyticTheory/DirichletLogarithmicResidues.lean), `completedLFunction_weighted_logDeriv_at_zero; completedZeta_weighted_logDeriv_at_zero; completedZeta_weighted_logDeriv_at_one`; revision `d29f7681352f5847c4aac3391e2f9b9d325c32fc`, Git blob `030b82615f57a78889166f708867ded84fae96d0`. MIT. Existing local candidate; not independent external provenance or proof acceptance.

Required unexecuted exact-source query:

```lean
#print axioms GRWTSK.NumberTheory.WeilQuadraticForm.SourcePrimeCorrelation.completedLFunction_correlation_weight_at_zero
```

Axiom output, elaboration, kernel replay and independent review: NOT_RUN.
The remaining full arithmetic explicit formula, contour-edge bounds, arithmetic
positivity and varying-test joint-margin obligations are not conclusions here.
