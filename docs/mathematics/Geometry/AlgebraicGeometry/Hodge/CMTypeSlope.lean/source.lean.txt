/- Copyright (c) 2026 grwtsk contributors. MIT.
Human mathematical direction: grwtsk contributors.
Formalization assistance: OpenAI.
External manuscript source:
openai/math@1581d4cbdd69a0faf34b2089614fe2a814316a6a,
The rational Hodge conjecture for CM abelian varieties,
build/sections/05c-cm-types.tex, eq:cm-sign-to-hodge-type.
This file formalizes only the rational arithmetic identity relating the sign,
valuation, and slope parameter. -/
import GRWTSK.AlgebraicGeometry.Hodge.CMFourBalance

set_option autoImplicit false

namespace GRWTSK.AlgebraicGeometry.Hodge.CMTypeSlope

open CMFourBalance

/-- The slope parameter used in the manuscript's active Hodge calculation. -/
def slopeFromValuation (nu : ℚ) : ℚ :=
  (1 / 2 : ℚ) - (1 / 3 : ℚ) * nu

/-- The valuation/sign identity forces the slope to be the elementary sign
selector `(1+v)/2`. -/
theorem slope_eq_signSelector
    {v : ℤ} (hv : IsSign v) {nu : ℚ}
    (hnu : nu = -(3 / 2 : ℚ) * (v : ℚ)) :
    slopeFromValuation nu = ((1 : ℚ) + (v : ℚ)) / 2 := by
  rcases hv with rfl | rfl <;>
    norm_num [slopeFromValuation] at hnu ⊢

/-- Positive CM sign gives pure slope one. -/
theorem slope_eq_one_of_positive
    {nu : ℚ} (hnu : nu = -(3 / 2 : ℚ)) :
    slopeFromValuation nu = 1 := by
  norm_num [slopeFromValuation] at hnu ⊢

/-- Negative CM sign gives pure slope zero. -/
theorem slope_eq_zero_of_negative
    {nu : ℚ} (hnu : nu = (3 / 2 : ℚ)) :
    slopeFromValuation nu = 0 := by
  norm_num [slopeFromValuation] at hnu ⊢

/-- Exact two-case slope conclusion from a CM sign and the selected valuation
identity. -/
theorem slope_zero_or_one_of_sign
    {v : ℤ} (hv : IsSign v) {nu : ℚ}
    (hnu : nu = -(3 / 2 : ℚ) * (v : ℚ)) :
    slopeFromValuation nu = 0 ∨ slopeFromValuation nu = 1 := by
  rcases hv with rfl | rfl
  · exact Or.inr (by norm_num [slopeFromValuation] at hnu ⊢)
  · exact Or.inl (by norm_num [slopeFromValuation] at hnu ⊢)

end GRWTSK.AlgebraicGeometry.Hodge.CMTypeSlope
