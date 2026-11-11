/-
Copyright (c) 2026 grwtsk contributors.
Released under the MIT license as described in the file LICENSE.
Authors: grwtsk contributors
-/
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.DirichletLFunctionRightBounds
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.DirichletZeroJensen

/-!
# Unconditional right-circle growth and uniform Jensen normalization

MSC2020: 11M26, 11M41, 30C15.

The actual Dirichlet coefficient estimate gives norm(L(chi,s)) <= 7/4 and
norm(L(chi,s)) >= 1/4 on Re(s)>=2, uniformly in character and positive level.
For every H>=2, the part Re(s)>=2 of the EXISTING outer Jensen circle therefore
satisfies norm(poleClearedLFunction chi s) <= 8*H <= exp(8*H).
Only the complementary Re(s)<2 circle estimate is left as a quantitative input.
No circle maximum or unspecified compact-bound supplier is used.

The independent right-half-plane module contains the substantive infinite-tail
estimate. This module applies it to the existing pole-cleared source and count,
then to the unchanged full-complex correlation. The count constants no longer
contain an unestimated value of L(chi,2). The complementary circle growth remains
UNPROVED, so the all-height count and correlation conclusions remain conditional.
This does not prove the full explicit formula, positivity, RH or GRH, and does
not remove any pole or character-duality term from a Weil formula.

Exact-source provenance and complete analytical argument:
DirichletZeroJensenGrowthBounds.provenance/. Coordination: grwtsk/math#1801.
SOURCE_PROOF_CANDIDATE. Elaboration, kernel replay, transitive axiom audit and
independent review NOT_RUN. Novelty UNASSESSED. Imported candidates retain status.
-/

set_option autoImplicit false
noncomputable section

open Set Metric MeasureTheory
open GRWTSK.NumberTheory.DirichletRightBounds

namespace GRWTSK.NumberTheory.WeilNegativeWitness

variable {N : ℕ} [NeZero N]

/-- Actual-source right-half-plane bound after pole clearing; no pole lies here. -/
theorem poleClearedLFunction_norm_le_right (chi : DirichletCharacter ℂ N)
    {s : ℂ} (hs : 2 ≤ s.re) :
    ‖poleClearedLFunction chi s‖ ≤ (7 / 4 : ℝ) * ‖s - 1‖ := by
  have hs1 : s ≠ 1 := by
    intro h
    subst s
    norm_num at hs
  rw [poleClearedLFunction_of_ne chi hs1, norm_mul]
  simpa only [mul_comm] using
    mul_le_mul_of_nonneg_left (norm_LFunction_bounds chi hs).2 (norm_nonneg (s - 1))

/-- The entire right-hand part of every outer Jensen circle has a linear bound. -/
theorem poleClearedLFunction_norm_le_right_circle (chi : DirichletCharacter ℂ N)
    (H : ℝ) (hH : 2 ≤ H) {s : ℂ}
    (hs : s ∈ sphere (2 : ℂ) (2 * (H + 2))) (hRe : 2 ≤ s.re) :
    ‖poleClearedLFunction chi s‖ ≤ 8 * H := by
  have hd : ‖s - 2‖ = 2 * (H + 2) := by
    simpa only [mem_sphere, dist_eq_norm] using hs
  have hp : ‖s - 1‖ ≤ 2 * (H + 2) + 1 := by
    calc
      ‖s - 1‖ = ‖(s - 2) + 1‖ := by congr 1; ring
      _ ≤ ‖s - 2‖ + ‖(1 : ℂ)‖ := norm_add_le _ _
      _ = 2 * (H + 2) + 1 := by rw [hd, norm_one]
  have hb := poleClearedLFunction_norm_le_right chi hRe
  linarith

/-- An explicit all-height exponential envelope for the right-hand circle part. -/
theorem poleClearedLFunction_right_circle_growth (chi : DirichletCharacter ℂ N)
    (H : ℝ) (hH : 2 ≤ H) {s : ℂ}
    (hs : s ∈ sphere (2 : ℂ) (2 * (H + 2))) (hRe : 2 ≤ s.re) :
    ‖poleClearedLFunction chi s‖ ≤ Real.exp (8 * H) := by
  apply (poleClearedLFunction_norm_le_right_circle chi H hH hs hRe).trans
  have h := Real.add_one_le_exp (8 * H)
  linarith

/-- The missing supplier is restricted to Re(s)<2. The other circle part is
proved above. Constants are displayed, and the quantifiers remain all-height. -/
theorem circle_growth_of_left_circle_growth (chi : DirichletCharacter ℂ N)
    (C L : ℝ) (hC : 0 ≤ C) (hL : 0 ≤ L)
    (hleft : ∀ H : ℝ, 2 ≤ H → ∀ s ∈ sphere (2 : ℂ) (2 * (H + 2)), s.re < 2 →
      ‖poleClearedLFunction chi s‖ ≤ Real.exp (C * H * (Real.log H + L)))
    (H : ℝ) (hH : 2 ≤ H) {s : ℂ}
    (hs : s ∈ sphere (2 : ℂ) (2 * (H + 2))) :
    ‖poleClearedLFunction chi s‖ ≤
      Real.exp ((C + 8) * H * (Real.log H + (L + 1))) := by
  have hH0 : 0 ≤ H := by linarith
  have hlog : 0 ≤ Real.log H := Real.log_nonneg (by linarith)
  have hB : 1 ≤ Real.log H + (L + 1) := by linarith
  by_cases hRe : 2 ≤ s.re
  · apply (poleClearedLFunction_right_circle_growth chi H hH hs hRe).trans
    apply Real.exp_le_exp.mpr
    calc
      8 * H ≤ (C + 8) * H := mul_le_mul_of_nonneg_right (by linarith) hH0
      _ ≤ (C + 8) * H * (Real.log H + (L + 1)) :=
        le_mul_of_one_le_right (mul_nonneg (by linarith) hH0) hB
  · apply (hleft H hH s hs (lt_of_not_ge hRe)).trans
    apply Real.exp_le_exp.mpr
    calc
      C * H * (Real.log H + L) ≤ C * H * (Real.log H + (L + 1)) :=
        mul_le_mul_of_nonneg_left (by linarith) (mul_nonneg hC hH0)
      _ ≤ (C + 8) * H * (Real.log H + (L + 1)) :=
        mul_le_mul_of_nonneg_right
          (mul_le_mul_of_nonneg_right (by linarith : C ≤ C + 8) hH0)
          (by linarith)

/-- The existing all-circle count now has a character-independent centre constant.
Growth parameters C,L may still depend on the character unless separately controlled. -/
theorem heightCount_le_of_circle_growth_uniform_center (chi : DirichletCharacter ℂ N)
    (hprim : chi.IsPrimitive) (C L : ℝ) (hC : 0 ≤ C) (hL : 0 ≤ L)
    (hgrowth : ∀ H : ℝ, 2 ≤ H → ∀ s ∈ sphere (2 : ℂ) (2 * (H + 2)),
      ‖poleClearedLFunction chi s‖ ≤ Real.exp (C * H * (Real.log H + L)))
    (H : ℝ) (hH : 2 ≤ H) :
    (heightCount chi hprim H : ℝ) ≤
      ((C + Real.log 4) / Real.log 2) * H * (Real.log H + (L + 1)) := by
  have hb := abs_log_norm_LFunction_le chi (s := (2 : ℂ)) (by norm_num)
  have hlog : 0 ≤ Real.log H := Real.log_nonneg (by linarith)
  apply (heightCount_le_of_circle_growth chi hprim C L hC hL hgrowth H hH).trans
  apply mul_le_mul_of_nonneg_right _ (by linarith)
  apply mul_le_mul_of_nonneg_right _ (by linarith)
  exact div_le_div_of_nonneg_right (by linarith) (Real.log_pos (by norm_num)).le

/-- Original source count from the remaining complementary-circle estimate only.
The source norm at the Jensen centre has been estimated, not left as a parameter. -/
theorem heightCount_le_of_left_circle_growth (chi : DirichletCharacter ℂ N)
    (hprim : chi.IsPrimitive) (C L : ℝ) (hC : 0 ≤ C) (hL : 0 ≤ L)
    (hleft : ∀ H : ℝ, 2 ≤ H → ∀ s ∈ sphere (2 : ℂ) (2 * (H + 2)), s.re < 2 →
      ‖poleClearedLFunction chi s‖ ≤ Real.exp (C * H * (Real.log H + L)))
    (H : ℝ) (hH : 2 ≤ H) :
    (heightCount chi hprim H : ℝ) ≤
      ((C + 8 + Real.log 4) / Real.log 2) * H * (Real.log H + (L + 2)) := by
  have hg : ∀ T : ℝ, 2 ≤ T → ∀ s ∈ sphere (2 : ℂ) (2 * (T + 2)),
      ‖poleClearedLFunction chi s‖ ≤
        Real.exp ((C + 8) * T * (Real.log T + (L + 1))) :=
    fun T hT s hs => circle_growth_of_left_circle_growth chi C L hC hL hleft T hT hs
  have hc := heightCount_le_of_circle_growth_uniform_center chi hprim
    (C + 8) (L + 1) (by linarith) (by linarith) hg H hH
  convert hc using 1 <;> ring

/-- Return to the unchanged multiplicity-weighted, full-complex source correlation.
The complementary all-height growth supplier is still explicit and unproved. -/
theorem summable_primitive_correlation_of_left_circle_growth
    (chi : DirichletCharacter ℂ N) (hprim : chi.IsPrimitive)
    (C L : ℝ) (hC : 0 ≤ C) (hL : 0 ≤ L)
    (hleft : ∀ H : ℝ, 2 ≤ H → ∀ s ∈ sphere (2 : ℂ) (2 * (H + 2)), s.re < 2 →
      ‖poleClearedLFunction chi s‖ ≤ Real.exp (C * H * (Real.log H + L)))
    (f : ℝ → ℂ) (A : ℝ) (hA : 0 ≤ A) (hf : Admissible f)
    (hs : tsupport f ⊆ Icc (-A) A) (k : ℕ) (hk : 1 ≤ k) :
    Summable (fun rho : CriticalStripZero chi => ‖(zeroMultiplicity chi rho : ℂ) *
      ∫ r : ℝ, WeilQuadraticForm.SourcePrimeCorrelation.correlation f r *
        Complex.exp (Complex.I * spectralCoordinate rho.1 * (r : ℂ))‖) := by
  have hl2 : 0 < Real.log 2 := Real.log_pos (by norm_num)
  have hl4 : 0 ≤ Real.log 4 := Real.log_nonneg (by norm_num)
  exact summable_primitive_correlation_of_heightCount chi hprim
    ((C + 8 + Real.log 4) / Real.log 2) (L + 2)
    (div_nonneg (by linarith) hl2.le) (by linarith)
    (heightCount_le_of_left_circle_growth chi hprim C L hC hL hleft)
    f A hA hf hs k hk

end GRWTSK.NumberTheory.WeilNegativeWitness
