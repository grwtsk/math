/- Copyright (c) 2026 grwtsk contributors. MIT. -/
import Mathlib.MeasureTheory.Constructions.UnitInterval
import Mathlib.MeasureTheory.Function.ContinuousMapDense
import Mathlib.MeasureTheory.Function.L2Space
import Mathlib.Topology.ContinuousMap.Weierstrass
import Mathlib.Tactic

/-!
# Square-integrable pairings on the unit interval

Weierstrass approximation and density of continuous functions in `L²` make the
monomial tests sufficient for an eventually square-bounded family. The
approximation error is uniform in the family index by Cauchy–Schwarz.
-/

set_option autoImplicit false

open Filter MeasureTheory
open scoped Topology BigOperators unitInterval Polynomial RealInnerProductSpace

noncomputable section

namespace GRWTSK.MeasureAndIntegration.UnitIntervalPolynomialPairings

private abbrev L2I := Lp ℝ 2 (volume : Measure I)

private def polynomialLp (P : ℝ[X]) : L2I :=
  ContinuousMap.toLp 2 volume ℝ (P.toContinuousMapOn _)

private theorem denseRange_polynomialLp : DenseRange polynomialLp := by
  let p : ℝ[X] → C(I, ℝ) := Polynomial.toContinuousMapOnAlgHom I
  have hp : DenseRange p := by
    intro f
    change f ∈ closure (Set.range (Polynomial.toContinuousMapOnAlgHom I))
    rw [← polynomialFunctions_coe, ← Subalgebra.topologicalClosure_coe]
    exact continuousMap_mem_polynomialFunctions_closure 0 1 f
  exact (ContinuousMap.toLp_denseRange ℝ (volume : Measure I) ℝ
    (p := 2) (by norm_num)).comp hp (ContinuousLinearMap.continuous _)

private theorem inner_toLp_eq {u v : I → ℝ}
    (hu : MemLp u 2 volume) (hv : MemLp v 2 volume) :
    ⟪hu.toLp u, hv.toLp v⟫ = ∫ x : I, u x * v x := by
  rw [L2.inner_def]
  apply integral_congr_ae
  filter_upwards [hu.coeFn_toLp, hv.coeFn_toLp] with x hx hy
  rw [hx, hy, RCLike.inner_apply']
  rfl

private theorem norm_sq_toLp_eq {u : I → ℝ} (hu : MemLp u 2 volume) :
    ‖hu.toLp u‖ ^ 2 = ∫ x : I, u x ^ 2 := by
  rw [← real_inner_self_eq_norm_sq, inner_toLp_eq hu hu]
  simp_rw [pow_two]

private theorem inner_polynomialLp_eq (P : ℝ[X]) {u : I → ℝ} (hu : MemLp u 2 volume) :
    ⟪polynomialLp P, hu.toLp u⟫ = ∫ x : I, P.eval (x : ℝ) * u x := by
  rw [L2.inner_def]
  apply integral_congr_ae
  have hp := ContinuousMap.coeFn_toLp (p := 2) (𝕜 := ℝ) (μ := (volume : Measure I))
    (P.toContinuousMapOn I)
  filter_upwards [hp, hu.coeFn_toLp] with x hx hy
  rw [show polynomialLp P x = P.eval (x : ℝ) from hx, hy, RCLike.inner_apply']
  rfl

private theorem integrable_monomial_mul (k : ℕ) {u : I → ℝ} (hu : MemLp u 2 volume) :
    Integrable (fun x : I => (x : ℝ) ^ k * u x) volume := by
  have hm : MemLp (fun x : I => (x : ℝ) ^ k) 2 volume :=
    (continuous_subtype_val.pow k).memLp_of_hasCompactSupport (HasCompactSupport.of_compactSpace _)
  apply (L2.integrable_inner (𝕜 := ℝ) (hm.toLp _) (hu.toLp _)).congr
  filter_upwards [hm.coeFn_toLp, hu.coeFn_toLp] with x hx hy
  rw [hx, hy, RCLike.inner_apply']
  rfl

private theorem integral_polynomial_mul (P : ℝ[X]) {u : I → ℝ} (hu : MemLp u 2 volume) :
    (∫ x : I, P.eval (x : ℝ) * u x) =
      ∑ k ∈ Finset.range (P.natDegree + 1),
        P.coeff k * ∫ x : I, (x : ℝ) ^ k * u x := by
  simp_rw [Polynomial.eval_eq_sum_range, Finset.sum_mul, mul_assoc]
  rw [integral_finsetSum]
  · simp_rw [integral_const_mul]
  · intro k _
    exact (integrable_monomial_mul k hu).const_mul _

/-- Convergence against monomials extends to all square-integrable tests for a
family with an eventual uniform square-integral bound. -/
theorem tendsto_integral_mul_of_monomials {α : Type*} {l : Filter α}
    {f : α → I → ℝ} {g h : I → ℝ} {C : ℝ}
    (hf : ∀ᶠ T in l, MemLp (f T) 2 volume) (hg : MemLp g 2 volume) (hh : MemLp h 2 volume)
    (hbound : ∀ᶠ T in l, (∫ x : I, f T x ^ 2) ≤ C)
    (hmoments : ∀ k : ℕ, Tendsto (fun T => ∫ x : I, (x : ℝ) ^ k * f T x) l
      (𝓝 (∫ x : I, (x : ℝ) ^ k * g x))) :
    Tendsto (fun T => ∫ x : I, h x * f T x) l (𝓝 (∫ x : I, h x * g x)) := by
  classical
  let F (T : α) : L2I := if hT : MemLp (f T) 2 volume then hT.toLp (f T) else 0
  let G := hg.toLp g
  let H := hh.toLp h
  have hPoly (P : ℝ[X]) :
      Tendsto (fun T => ⟪polynomialLp P, F T⟫) l (𝓝 ⟪polynomialLp P, G⟫) := by
    have hp := tendsto_finsetSum (Finset.range (P.natDegree + 1))
      (fun k _ => (hmoments k).const_mul (P.coeff k))
    dsimp only [G]
    rw [inner_polynomialLp_eq P hg, integral_polynomial_mul P hg]
    apply hp.congr'
    filter_upwards [hf] with T hT
    simp only [F, dite_eq_left hT, inner_polynomialLp_eq P hT, integral_polynomial_mul P hT]
  have hF : ∀ᶠ T in l, ‖F T‖ ≤ |C| + 1 := by
    filter_upwards [hf, hbound] with T hT hTbound
    simp only [F, dite_eq_left hT]
    have hs : ‖hT.toLp (f T)‖ ^ 2 ≤ |C| :=
      (norm_sq_toLp_eq hT).trans_le (hTbound.trans (le_abs_self C))
    nlinarith [sq_nonneg (‖hT.toLp (f T)‖ - 1), norm_nonneg (hT.toLp (f T)), abs_nonneg C]
  let B : ℝ := |C| + 1 + ‖G‖
  have hB : 0 < B := by dsimp [B]; positivity
  have hdiff : ∀ᶠ T in l, ‖F T - G‖ ≤ B :=
    hF.mono fun T hT => (norm_sub_le _ _).trans (add_le_add hT le_rfl)
  have hlim : Tendsto (fun T => ⟪H, F T⟫) l (𝓝 ⟪H, G⟫) := by
    rw [Metric.tendsto_nhds]
    intro ε hε
    obtain ⟨P, hp⟩ := denseRange_polynomialLp.exists_dist_lt H (div_pos (half_pos hε) hB)
    rw [dist_eq_norm] at hp
    have eventuallyPoly := (Metric.tendsto_nhds.mp (hPoly P)) (ε / 2) (half_pos hε)
    filter_upwards [hdiff, eventuallyPoly] with T hT hPolyT
    rw [dist_eq_norm] at hPolyT ⊢
    rw [← inner_sub_right] at hPolyT ⊢
    have he : ‖⟪H - polynomialLp P, F T - G⟫‖ < ε / 2 := by
      calc
        _ ≤ ‖H - polynomialLp P‖ * ‖F T - G‖ := norm_inner_le_norm _ _
        _ ≤ ‖H - polynomialLp P‖ * B := mul_le_mul_of_nonneg_left hT (norm_nonneg _)
        _ < ε / 2 := (lt_div_iff₀ hB).1 hp
    have hid : ⟪H, F T - G⟫ =
        ⟪H - polynomialLp P, F T - G⟫ + ⟪polynomialLp P, F T - G⟫ := by
      rw [← inner_add_left, sub_add_cancel]
    rw [hid]
    exact (norm_add_le _ _).trans_lt (by linarith)
  have htarget : ⟪H, G⟫ = ∫ x : I, h x * g x := inner_toLp_eq hh hg
  rw [htarget] at hlim
  refine hlim.congr' ?_
  filter_upwards [hf] with T hT
  simp only [F, dite_eq_left hT]
  exact inner_toLp_eq hh hT

end GRWTSK.MeasureAndIntegration.UnitIntervalPolynomialPairings
