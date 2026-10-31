/-
Copyright (c) 2026 grwtsk contributors. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
-/
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.PrimePrimitiveFinitePrefix

/-!
# The actual negative tail and its finite-prefix Mellin correction

Integrability is supplied by the summable actual norm integrals. The tail split
retains its sign and the literal primitive. No eventual nonnegativity, Landau
abscissa theorem or analytic continuation is assumed or proved here.
Compilation, fresh kernel replay, transitive axiom audit: NOT_RUN.
-/

set_option autoImplicit false
open MeasureTheory Set Filter
open scoped Topology ENNReal BigOperators
namespace GRWTSK.NumberTheory.PrimePrimitiveMellin
open GRWTSK.NumberTheory.PrimePowerCorrection

/-- The actual occurrence sum is integrable, not merely assigned a totalized integral. -/
theorem cutoffAtom_tsum_integrable {s : ℂ} (hs : 1 / 2 < s.re) :
    Integrable (fun x : ℝ => ∑' n : {n : ℕ // 2 ≤ n}, cutoffAtom n.val s x) := by
  let F : {n : ℕ // 2 ≤ n} → ℝ → ℂ := fun n => cutoffAtom n.val s
  have hi : ∀ n, Integrable (F n) := fun n => cutoffAtom_integrable n.val n.property hs
  have he : ∀ n, ∫⁻ x : ℝ, ‖F n x‖ₑ = ‖∫ x : ℝ, ‖F n x‖‖ₑ := by
    intro n
    dsimp [enorm]
    rw [lintegral_coe_eq_integral _ (hi n).norm, coe_nnreal_eq, coe_nnnorm,
      Real.norm_of_nonneg (integral_nonneg (fun x => norm_nonneg (F n x)))]
    simp only [coe_nnnorm]
  have ht : (∑' n, ∫⁻ x : ℝ, ‖F n x‖ₑ) ≠ ∞ := by
    rw [funext he]
    exact ENNReal.tsum_coe_ne_top_iff_summable.2 <|
      NNReal.summable_coe.1 (cutoffAtom_norm_integrals_summable hs).abs
  have hm : ∀ n, AEMeasurable (fun x => ‖F n x‖ₑ) := fun n => (hi n).1.enorm
  have ha : ∀ᵐ x : ℝ, Summable (fun n => ‖F n x‖) := by
    have hlt : ∀ᵐ x : ℝ, (∑' n, ‖F n x‖ₑ) < ∞ := by
      apply ae_lt_top' (AEMeasurable.tsum hm)
      rwa [lintegral_tsum hm]
    exact hlt.mono (fun x hx => tsum_enorm_ne_top_iff_summable_norm.1 hx.ne)
  have hsm : AEStronglyMeasurable (fun x : ℝ => ∑' n, F n x) := by
    apply aestronglyMeasurable_of_tendsto_ae (atTop : Filter (Finset {n : ℕ // 2 ≤ n}))
      (fun t => (integrable_finsetSum t (fun n _ => hi n)).1)
    exact ha.mono (fun x hx => hx.of_norm.hasSum)
  refine ⟨hsm, hasFiniteIntegral_iff_enorm.mpr ?_⟩
  calc
    (∫⁻ x : ℝ, ‖∑' n, F n x‖ₑ) ≤ ∫⁻ x : ℝ, ∑' n, ‖F n x‖ₑ :=
      lintegral_mono (fun x => enorm_tsum_le_tsum_enorm)
    _ = ∑' n, ∫⁻ x : ℝ, ‖F n x‖ₑ := lintegral_tsum hm
    _ < ∞ := ht.lt_top

/-- The floor identity transports integrability to the unchanged literal formula. -/
theorem realPrimePrimitiveFormula_mellin_integrable {s : ℂ} (hs : 1 / 2 < s.re) :
    IntegrableOn (fun x : ℝ => (realPrimePrimitiveFormula x : ℂ) *
      (x : ℂ) ^ (-s - 1)) (Ioi (1 : ℝ)) := by
  apply (cutoffAtom_tsum_integrable hs).integrableOn.congr_fun _ measurableSet_Ioi
  intro x hx
  simpa only [finitePrimePrimitive_eq_real_formula] using
    cutoffAtom_tsum_eq_floor (zero_lt_one.trans hx) s

/-- Removing the compact prefix reverses sign when passing to the negative tail. -/
theorem negativeTail_mellin_split {R : ℝ} (hR : 1 ≤ R)
    {s : ℂ} (hs : 1 / 2 < s.re) :
    (∫ x : ℝ in Ioi R, -(realPrimePrimitiveFormula x : ℂ) *
      (x : ℂ) ^ (-s - 1)) =
      finitePrefixCorrection R s -
        LSeries centeredPrimeCoefficient (s + 1 / 2) / (s * (s + 1 / 2)) := by
  have hi := realPrimePrimitiveFormula_mellin_integrable hs
  have hp := hi.mono_set (show Ioc (1 : ℝ) R ⊆ Ioi 1 from fun x hx => hx.1)
  have ht := hi.mono_set (show Ioi R ⊆ Ioi (1 : ℝ) from fun x hx => hR.trans_lt hx)
  have hd : Disjoint (Ioc (1 : ℝ) R) (Ioi R) := by
    apply Set.disjoint_left.mpr
    intro x hx hy
    exact (not_lt_of_ge hx.2) hy
  have hu := setIntegral_union hd measurableSet_Ioi hp ht
  rw [Ioc_union_Ioi_eq_Ioi hR, integral_realPrimePrimitiveFormula_prefix hR,
    mellin_realPrimePrimitiveFormula hs] at hu
  calc
    _ = -(∫ x : ℝ in Ioi R, (realPrimePrimitiveFormula x : ℂ) *
        (x : ℂ) ^ (-s - 1)) := by
      simp only [neg_mul, integral_neg]
    _ = _ := by linear_combination hu

end GRWTSK.NumberTheory.PrimePrimitiveMellin
