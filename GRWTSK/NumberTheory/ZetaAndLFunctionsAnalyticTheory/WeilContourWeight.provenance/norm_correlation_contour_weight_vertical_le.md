# `GRWTSK.NumberTheory.WeilQuadraticForm.SourcePrimeCorrelation.norm_correlation_contour_weight_vertical_le`

Local attribution: grwtsk contributors. Date: 2026-11-11.
Status: SOURCE_PROOF_CANDIDATE; novelty UNASSESSED.
Lean v4.34.1; Mathlib `d13f23b723b8a846827a245b89c10fc7d3f11612`; inspection base `d29f7681352f5847c4aac3391e2f9b9d325c32fc`.
Coordination: [math#1801](https://github.com/grwtsk/math/issues/1801).

## Exact source statement

Maintained path: [`WeilContourWeight.lean`](../WeilContourWeight.lean#L149).
Source SHA-256 `d777f87e2d1090aa369dd05884fb8b64d6bbda3385e3873c79bb0499deb1c732`; Git blob `aa53350b401764c081a0559833d7f840a5ecc847`.

```lean
theorem norm_correlation_contour_weight_vertical_le (f : ℝ → ℂ) (A : ℝ) (hA : 0 ≤ A)
    (hf : Admissible f) (hs : tsupport f ⊆ Icc (-A) A) (sigma t : ℝ) :
    ‖∫ r : ℝ, correlation f r *
      Complex.exp ((((sigma : ℂ) + Complex.I * (t : ℂ)) - 1 / 2) * (r : ℂ))‖ ≤
      (derivativeL1Cost f 1 ^ 2 * Real.exp (A * |sigma - 1 / 2|) ^ 2) * (1 + t ^ 2)⁻¹
```

## Method, consumer and provenance

Take k=1 and compare (1+|t|)^2 with 1+t^2; retain every real height.

Consumer: Integrable whole-line Cauchy majorant.

This is a local consequence/adaptation at the pinned source, not a claim that an
upstream paper states this exact Lean declaration. Complete reasoning and boundary
checks are in [README.md](README.md). No assumptions are silently discharged by
publication. Novelty is separate from verification.

grwtsk contributors, [GRWTSK/NumberTheory/ZetaAndLFunctionsAnalyticTheory/WeilCorrelationDecay.lean](https://github.com/grwtsk/math/blob/d29f7681352f5847c4aac3391e2f9b9d325c32fc/GRWTSK/NumberTheory/ZetaAndLFunctionsAnalyticTheory/WeilCorrelationDecay.lean), `norm_fourier_correlation_le_decay`; revision `d29f7681352f5847c4aac3391e2f9b9d325c32fc`, Git blob `2f6fad1e0a7011c751ffd2d366cd72c30f636d83`. MIT. Existing local candidate; not independent external provenance or proof acceptance.

David Loeffler, [Mathlib/Analysis/SpecialFunctions/ImproperIntegrals.lean](https://github.com/leanprover-community/mathlib4/blob/d13f23b723b8a846827a245b89c10fc7d3f11612/Mathlib/Analysis/SpecialFunctions/ImproperIntegrals.lean), `integrable_inv_one_add_sq; integral_univ_inv_one_add_sq`; revision `d13f23b723b8a846827a245b89c10fc7d3f11612`, Git blob `e5944768a5833e19d8da7f7c5b7ad77e65fcfe0c`. Apache-2.0. Pinned primary implementation.

Required unexecuted exact-source query:

```lean
#print axioms GRWTSK.NumberTheory.WeilQuadraticForm.SourcePrimeCorrelation.norm_correlation_contour_weight_vertical_le
```

Axiom output, elaboration, kernel replay and independent review: NOT_RUN.
The remaining full arithmetic explicit formula, contour-edge bounds, arithmetic
positivity and varying-test joint-margin obligations are not conclusions here.
