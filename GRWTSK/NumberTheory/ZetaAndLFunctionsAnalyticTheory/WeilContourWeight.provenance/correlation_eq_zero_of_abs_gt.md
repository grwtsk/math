# `GRWTSK.NumberTheory.WeilQuadraticForm.SourcePrimeCorrelation.correlation_eq_zero_of_abs_gt`

Local attribution: grwtsk contributors. Date: 2026-11-11.
Status: SOURCE_PROOF_CANDIDATE; novelty UNASSESSED.
Lean v4.34.1; Mathlib `d13f23b723b8a846827a245b89c10fc7d3f11612`; inspection base `d29f7681352f5847c4aac3391e2f9b9d325c32fc`.
Coordination: [math#1801](https://github.com/grwtsk/math/issues/1801).

## Exact source statement

Maintained path: [`WeilContourWeight.lean`](../WeilContourWeight.lean#L46).
Source SHA-256 `d777f87e2d1090aa369dd05884fb8b64d6bbda3385e3873c79bb0499deb1c732`; Git blob `aa53350b401764c081a0559833d7f840a5ecc847`.

```lean
theorem correlation_eq_zero_of_abs_gt (f : ℝ → ℂ) (A : ℝ)
    (hs : ∀ t, A < |t| → f t = 0) {r : ℝ} (hr : 2 * A < |r|) :
    correlation f r = 0
```

## Method, consumer and provenance

Two support constraints imply |r|<=2A; outside this range the literal correlation integrand is zero.

Consumer: Compact support supplier on both tails.

This is a local consequence/adaptation at the pinned source, not a claim that an
upstream paper states this exact Lean declaration. Complete reasoning and boundary
checks are in [README.md](README.md). No assumptions are silently discharged by
publication. Novelty is separate from verification.

grwtsk contributors, [GRWTSK/NumberTheory/ZetaAndLFunctionsAnalyticTheory/WeilCorrelationFourier.lean](https://github.com/grwtsk/math/blob/d29f7681352f5847c4aac3391e2f9b9d325c32fc/GRWTSK/NumberTheory/ZetaAndLFunctionsAnalyticTheory/WeilCorrelationFourier.lean), `integrable_correlation_fourier_integrand; fourier_correlation_eq_reflected_product; zeta_pole_correlation`; revision `d29f7681352f5847c4aac3391e2f9b9d325c32fc`, Git blob `8b2afb9be022253be047c4e47cbd42d51134dee1`. MIT. Existing local candidate; not independent external provenance or proof acceptance.

Required unexecuted exact-source query:

```lean
#print axioms GRWTSK.NumberTheory.WeilQuadraticForm.SourcePrimeCorrelation.correlation_eq_zero_of_abs_gt
```

Axiom output, elaboration, kernel replay and independent review: NOT_RUN.
The remaining full arithmetic explicit formula, contour-edge bounds, arithmetic
positivity and varying-test joint-margin obligations are not conclusions here.
