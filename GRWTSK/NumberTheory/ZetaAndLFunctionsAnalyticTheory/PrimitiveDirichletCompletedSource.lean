/-
Copyright (c) 2026 grwtsk contributors. Released under the MIT license.
Authors: grwtsk contributors
-/
import GRWTSK.FunctionsOfAComplexVariable.CriticalReflection
import Mathlib.Analysis.Analytic.Order
import Mathlib.NumberTheory.LSeries.Nonvanishing

/-!
# Completed sources for primitive Dirichlet characters

Retain a positive conductor and the actual primitive Mathlib character, including
its dual and archimedean factor. Mathlib puts the conductor power in the
functional equation; the conductor-normalized completion absorbs it. The
conductor-one branch uses the completed zeta function with both pole terms.

Inside the open strip the reciprocal gamma factor is holomorphic and nonzero.
Consequently completion preserves the full analytic order. The functional
equation transports this order between a character and its dual by the affine
map `s ↦ 1 - s`, whose derivative never vanishes. In particular the equation
retains real zeros in the strip as well as nonreal zeros.
-/

set_option autoImplicit false

noncomputable section

open Complex Filter
open scoped ComplexConjugate Topology

namespace GRWTSK.NumberTheory

/-- Positive modulus, actual character, and evidence that the modulus is its conductor. -/
structure PrimitiveDirichletSource (q : ℕ) [NeZero q] where
  character : DirichletCharacter ℂ q
  isPrimitive : character.IsPrimitive

namespace PrimitiveDirichletSource

variable {q : ℕ} [NeZero q]

theorem conductor_eq (source : PrimitiveDirichletSource q) :
    source.character.conductor = q := source.isPrimitive

/-- The unique primitive source at conductor one. -/
def zeta : PrimitiveDirichletSource 1 :=
  ⟨1, DirichletCharacter.isPrimitive_one_level_one⟩

/-- The source paired with `source` by the functional equation. -/
def dual (source : PrimitiveDirichletSource q) : PrimitiveDirichletSource q where
  character := source.character⁻¹
  isPrimitive := by
    rw [DirichletCharacter.isPrimitive_def, DirichletCharacter.conductor_inv]
    exact source.isPrimitive

@[simp] theorem dual_dual (source : PrimitiveDirichletSource q) : source.dual.dual = source := by
  cases source
  simp [dual]

/-- At every residue, including nonunits, the dual retains the conjugate phase. -/
theorem dual_character_apply (source : PrimitiveDirichletSource q) (a : ZMod q) :
    source.dual.character a = conj (source.character a) :=
  (MulChar.star_apply' source.character a).symm

@[simp] theorem dual_even_iff (source : PrimitiveDirichletSource q) :
    source.dual.character.Even ↔ source.character.Even := by
  simp only [dual, DirichletCharacter.Even, MulChar.inv_apply_eq_inv', inv_eq_one]

@[simp] theorem dual_odd_iff (source : PrimitiveDirichletSource q) :
    source.dual.character.Odd ↔ source.character.Odd := by
  simp only [dual, DirichletCharacter.Odd, MulChar.inv_apply_eq_inv', inv_eq_iff_eq_inv,
    inv_neg, inv_one]

abbrev lFunction (source : PrimitiveDirichletSource q) : ℂ → ℂ :=
  source.character.LFunction

abbrev gammaFactor (source : PrimitiveDirichletSource q) : ℂ → ℂ :=
  source.character.gammaFactor

@[simp] theorem gammaFactor_dual (source : PrimitiveDirichletSource q) :
    source.dual.gammaFactor = source.gammaFactor := by
  funext s
  rcases source.character.even_or_odd with he | ho
  · exact ((source.dual_even_iff.mpr he).gammaFactor_def s).trans (he.gammaFactor_def s).symm
  · exact ((source.dual_odd_iff.mpr ho).gammaFactor_def s).trans (ho.gammaFactor_def s).symm

abbrev rootNumber (source : PrimitiveDirichletSource q) : ℂ :=
  source.character.rootNumber

abbrev completed (source : PrimitiveDirichletSource q) : ℂ → ℂ :=
  source.character.completedLFunction

/-- The convention with the factor `q^(s/2)` included in the completed function. -/
def conductorCompleted (source : PrimitiveDirichletSource q) (s : ℂ) : ℂ :=
  (q : ℂ) ^ (s / 2) * source.completed s

@[simp] theorem lFunction_mod_one (source : PrimitiveDirichletSource 1) :
    source.lFunction = riemannZeta := DirichletCharacter.LFunction_modOne_eq

@[simp] theorem completed_mod_one (source : PrimitiveDirichletSource 1) :
    source.completed = completedRiemannZeta := DirichletCharacter.completedLFunction_modOne_eq

@[simp] theorem conductorCompleted_mod_one (source : PrimitiveDirichletSource 1) :
    source.conductorCompleted = completedRiemannZeta := by
  funext s
  simp [conductorCompleted]

@[simp] theorem rootNumber_mod_one (source : PrimitiveDirichletSource 1) :
    source.rootNumber = 1 := source.character.rootNumber_modOne

@[simp] theorem gammaFactor_mod_one (source : PrimitiveDirichletSource 1) :
    source.gammaFactor = Gammaℝ := by
  have hEven : source.character.Even := by
    change source.character (-1) = 1
    rw [Subsingleton.elim (-1 : ZMod 1) 1, map_one]
  funext s
  exact hEven.gammaFactor_def s

/-- The conductor-one completion explicitly contains both polar contributions. -/
theorem conductorCompleted_mod_one_pole_terms (source : PrimitiveDirichletSource 1) (s : ℂ) :
    source.conductorCompleted s = completedRiemannZeta₀ s - 1 / s - 1 / (1 - s) := by
  rw [conductorCompleted_mod_one, completedRiemannZeta_eq]

/-- The functional equation in Mathlib's convention retains the conductor power. -/
theorem completed_one_sub (source : PrimitiveDirichletSource q) (s : ℂ) :
    source.completed (1 - s) = (q : ℂ) ^ (s - 1 / 2) * source.rootNumber *
      source.dual.completed s := source.isPrimitive.completedLFunction_one_sub s

private theorem conductor_cast_ne_zero : (q : ℂ) ≠ 0 := Nat.cast_ne_zero.mpr (NeZero.ne q)

/-- The functional equation in the conductor-normalized convention. -/
theorem conductorCompleted_one_sub (source : PrimitiveDirichletSource q) (s : ℂ) :
    source.conductorCompleted (1 - s) = source.rootNumber * source.dual.conductorCompleted s := by
  rw [conductorCompleted, completed_one_sub, conductorCompleted]
  have hexponent : (1 - s) / 2 + (s - 1 / 2) = s / 2 := by ring
  rw [← hexponent, cpow_add _ _ (conductor_cast_ne_zero (q := q))]
  ring

/-- Nonvanishing at `2` forces the root number in the functional equation to be nonzero. -/
theorem rootNumber_ne_zero (source : PrimitiveDirichletSource q) : source.rootNumber ≠ 0 := by
  have hn : source.lFunction 2 ≠ 0 :=
    source.character.LFunction_ne_zero_of_one_le_re (Or.inr (by norm_num)) (by norm_num)
  have hc : source.completed 2 ≠ 0 := by
    intro hz
    apply hn
    change source.character.LFunction 2 = 0
    rw [source.character.LFunction_eq_completed_div_gammaFactor 2 (Or.inl (by norm_num))]
    change source.completed 2 / source.gammaFactor 2 = 0
    simp [hz]
  intro hz
  have he := source.completed_one_sub (-1)
  rw [show (1 : ℂ) - -1 = 2 by norm_num, hz, mul_zero, zero_mul] at he
  exact hc he

/-- The Archimedean factor is nonzero throughout the positive half-plane. -/
theorem gammaFactor_ne_zero (source : PrimitiveDirichletSource q) {s : ℂ} (hs : 0 < s.re) :
    source.gammaFactor s ≠ 0 := by
  change source.character.gammaFactor s ≠ 0
  rcases source.character.even_or_odd with he | ho
  · rw [he.gammaFactor_def]
    exact Gammaℝ_ne_zero_of_re_pos hs
  · rw [ho.gammaFactor_def]
    apply Gammaℝ_ne_zero_of_re_pos
    simpa using add_pos hs one_pos

/-- Completion preserves the zero predicate in the positive half-plane. -/
theorem completed_eq_zero_iff (source : PrimitiveDirichletSource q) {s : ℂ} (hs : 0 < s.re) :
    source.completed s = 0 ↔ source.lFunction s = 0 := by
  have hs₀ : s ≠ 0 := by rintro rfl; simp at hs
  change source.completed s = 0 ↔ source.character.LFunction s = 0
  rw [DirichletCharacter.LFunction_eq_completed_div_gammaFactor _ _ (Or.inl hs₀)]
  change source.completed s = 0 ↔ source.completed s / source.gammaFactor s = 0
  rw [div_eq_zero_iff, or_iff_left (source.gammaFactor_ne_zero hs)]

/-- The normalized completion has the same zeros as the L-function on the strip. -/
theorem conductorCompleted_eq_zero_iff (source : PrimitiveDirichletSource q) {s : ℂ}
    (hs : 0 < s.re) : source.conductorCompleted s = 0 ↔ source.lFunction s = 0 := by
  have hPow : (q : ℂ) ^ (s / 2) ≠ 0 :=
    cpow_ne_zero_iff.mpr (Or.inl (conductor_cast_ne_zero (q := q)))
  rw [conductorCompleted, mul_eq_zero, or_iff_right hPow, source.completed_eq_zero_iff hs]

/-- Open-strip zeros reflect with the dual character. -/
theorem lFunction_zero_reflection_iff (source : PrimitiveDirichletSource q) {s : ℂ}
    (hs₀ : 0 < s.re) (hs₁ : s.re < 1) :
    source.lFunction (1 - s) = 0 ↔ source.dual.lFunction s = 0 := by
  have hr : 0 < (1 - s).re := by simpa using sub_pos.mpr hs₁
  rw [← source.conductorCompleted_eq_zero_iff hr, ← source.dual.conductorCompleted_eq_zero_iff hs₀,
    source.conductorCompleted_one_sub, mul_eq_zero, or_iff_right source.rootNumber_ne_zero]

/-- The completion used in the dual equation is holomorphic away from its two possible poles. -/
private theorem analyticAt_completed (source : PrimitiveDirichletSource q) {s : ℂ}
    (hs₀ : s ≠ 0) (hs₁ : s ≠ 1) : AnalyticAt ℂ source.completed s := by
  let domain : Set ℂ := {z | z ≠ 0 ∧ z ≠ 1}
  have hOpen : IsOpen domain :=
    (isOpen_ne : IsOpen {z : ℂ | z ≠ 0}).inter (isOpen_ne : IsOpen {z : ℂ | z ≠ 1})
  refine DifferentiableOn.analyticAt (s := domain) (fun z hz ↦ ?_) (hOpen.mem_nhds ⟨hs₀, hs₁⟩)
  exact (source.character.differentiableAt_completedLFunction z
    (Or.inl hz.1) (Or.inl hz.2)).differentiableWithinAt

private theorem differentiable_inv_gammaFactor (source : PrimitiveDirichletSource q) :
    Differentiable ℂ (fun z ↦ (source.gammaFactor z)⁻¹) := by
  rcases source.character.even_or_odd with he | ho
  · simpa only [he.gammaFactor_def] using differentiable_Gammaℝ_inv
  · simp only [gammaFactor, ho.gammaFactor_def]
    exact differentiable_Gammaℝ_inv.comp (differentiable_id.add_const (1 : ℂ))

/-- Both completions preserve vanishing order at every point of the open strip. -/
theorem analyticOrderAt_completed_eq (source : PrimitiveDirichletSource q) {s : ℂ}
    (hs₀ : 0 < s.re) (hs₁ : s.re < 1) :
    analyticOrderAt source.conductorCompleted s = analyticOrderAt source.completed s ∧
      analyticOrderAt source.completed s = analyticOrderAt source.lFunction s := by
  have h₀ : s ≠ 0 := by rintro rfl; simp at hs₀
  have h₁ : s ≠ 1 := by rintro rfl; simp at hs₁
  have hc := source.analyticAt_completed h₀ h₁
  constructor
  · have hPow : Differentiable ℂ (fun z : ℂ ↦ (q : ℂ) ^ (z / 2)) :=
      (differentiable_id.div_const 2).const_cpow (Or.inl conductor_cast_ne_zero)
    change analyticOrderAt ((fun z : ℂ ↦ (q : ℂ) ^ (z / 2)) * source.completed) s = _
    rw [analyticOrderAt_mul (hPow.analyticAt s) hc,
      (hPow.analyticAt s).analyticOrderAt_eq_zero.mpr (cpow_ne_zero_iff.mpr
        (Or.inl conductor_cast_ne_zero)), zero_add]
  · let invGamma : ℂ → ℂ := fun z ↦ (source.gammaFactor z)⁻¹
    have ha : AnalyticAt ℂ invGamma s := source.differentiable_inv_gammaFactor.analyticAt s
    have hn : invGamma s ≠ 0 := inv_ne_zero (source.gammaFactor_ne_zero hs₀)
    have he : source.lFunction =ᶠ[𝓝 s] source.completed * invGamma := by
      filter_upwards [(isOpen_ne : IsOpen {z : ℂ | z ≠ 0}).mem_nhds h₀] with z hz
      exact (source.character.LFunction_eq_completed_div_gammaFactor z (Or.inl hz)).trans
        (div_eq_mul_inv _ _)
    rw [analyticOrderAt_congr he, analyticOrderAt_mul hc ha,
      ha.analyticOrderAt_eq_zero.mpr hn, add_zero]

/-- The reflection transports multiplicity to the actual dual source. -/
theorem analyticOrderAt_conductorCompleted_one_sub (source : PrimitiveDirichletSource q) {s : ℂ}
    (hs₀ : 0 < s.re) (hs₁ : s.re < 1) :
    analyticOrderAt source.conductorCompleted (1 - s) =
      analyticOrderAt source.dual.conductorCompleted s := by
  let reflect : ℂ → ℂ := fun z ↦ 1 - z
  have hReflection :
      analyticOrderAt (source.conductorCompleted ∘ reflect) s =
        analyticOrderAt source.conductorCompleted (1 - s) := by
    have hDeriv : HasDerivAt reflect (-1) s := by
      exact (hasDerivAt_id s).const_sub (1 : ℂ)
    exact analyticOrderAt_comp_of_deriv_ne_zero (by unfold reflect; fun_prop)
      (by rw [hDeriv.deriv]; norm_num)
  rw [← hReflection]
  have hEq : source.conductorCompleted ∘ reflect =
      (fun _ : ℂ ↦ source.rootNumber) * source.dual.conductorCompleted := by
    funext z
    exact source.conductorCompleted_one_sub z
  have h₀ : s ≠ 0 := by rintro rfl; simp at hs₀
  have h₁ : s ≠ 1 := by rintro rfl; simp at hs₁
  have hPow : Differentiable ℂ (fun z : ℂ ↦ (q : ℂ) ^ (z / 2)) :=
    (differentiable_id.div_const 2).const_cpow (Or.inl conductor_cast_ne_zero)
  have hDual : AnalyticAt ℂ source.dual.conductorCompleted s :=
    (hPow.analyticAt s).mul (source.dual.analyticAt_completed h₀ h₁)
  have hConst : AnalyticAt ℂ (fun _ : ℂ ↦ source.rootNumber) s := analyticAt_const
  rw [hEq, analyticOrderAt_mul hConst hDual,
    hConst.analyticOrderAt_eq_zero.mpr source.rootNumber_ne_zero, zero_add]

/-- The ordinary L-function of the dual has exactly the reflected multiplicity. -/
theorem analyticOrderAt_lFunction_one_sub (source : PrimitiveDirichletSource q) {s : ℂ}
    (hs₀ : 0 < s.re) (hs₁ : s.re < 1) :
    analyticOrderAt source.lFunction (1 - s) = analyticOrderAt source.dual.lFunction s := by
  have hr₀ : 0 < (1 - s).re := by simpa using sub_pos.mpr hs₁
  have hr₁ : (1 - s).re < 1 := by simp; linarith
  have hLeft := source.analyticOrderAt_completed_eq hr₀ hr₁
  have hRight := source.dual.analyticOrderAt_completed_eq hs₀ hs₁
  rw [← hLeft.2, ← hLeft.1, source.analyticOrderAt_conductorCompleted_one_sub hs₀ hs₁,
    hRight.1, hRight.2]

/-- Critical reflection preserves the ordinate and moves every point off the critical line.
This geometric obstruction to ordinate-only observations applies to arbitrary complex points. -/
theorem criticalReflection_ordinate_collision {s : ℂ} (hs : s.re ≠ (1 / 2 : ℝ)) :
    (GRWTSK.RiemannHypothesis.criticalReflection s).im = s.im ∧
      GRWTSK.RiemannHypothesis.criticalReflection s ≠ s := by
  change (1 - conj s).im = s.im ∧ 1 - conj s ≠ s
  refine ⟨by simp, fun heq ↦ hs ?_⟩
  have hre := congrArg Complex.re heq
  simp at hre
  linarith

end PrimitiveDirichletSource

end GRWTSK.NumberTheory
