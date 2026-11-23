/-
Copyright (c) 2026 grwtsk contributors. MIT.
Authors: grwtsk contributors.
-/
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.XiToeplitzHilbertPolyaCriterion
import GRWTSK.FunctionsOfAComplexVariable.LogarithmicPrincipalPart
import Mathlib.Analysis.Analytic.Order
import Mathlib.MeasureTheory.Integral.IntervalIntegral.FundThmCalculus

/-!
# Local multiplicity layers for the original xi function

Jet energies detect the simultaneous vanishing of the derivatives up to
the specified order. The selected derivative order and its successive
differences give the multiplicity layers in the divisor measures. A radial
integral checks the normalization of the elementary planar approximate identity.
-/

noncomputable section

namespace GRWTSK.NumberTheory.XiJetDivisorMeasures

open Set Filter MeasureTheory
open scoped Topology

open GRWTSK.NumberTheory.XiToeplitzHilbertPolyaCriterion

/-- Squared norms of the first derivatives, starting with order zero. -/
def jetEnergy (f : ℂ → ℂ) (k : ℕ) (z : ℂ) : ℝ :=
  ∑ j ∈ Finset.range k, ‖iteratedDeriv j f z‖ ^ 2

theorem jetEnergy_eq_zero_iff {f : ℂ → ℂ} {z : ℂ} (hf : AnalyticAt ℂ f z) (k : ℕ) :
    jetEnergy f k z = 0 ↔ (k : ℕ∞) ≤ analyticOrderAt f z := by
  rw [jetEnergy, Finset.sum_eq_zero_iff_of_nonneg (fun _ _ => sq_nonneg _),
    natCast_le_analyticOrderAt_iff_iteratedDeriv_eq_zero hf]
  simp

/-- The zero order of the k-th derivative, kept only if all lower derivatives vanish. -/
def selectedOrder (f : ℂ → ℂ) (k : ℕ) (z : ℂ) : ℕ :=
  if jetEnergy f k z = 0 then (analyticOrderAt (iteratedDeriv k f) z).toNat else 0

theorem selectedOrder_eq_sub {f : ℂ → ℂ} {z : ℂ} (hf : AnalyticAt ℂ f z)
    {m : ℕ} (hm : analyticOrderAt f z = m) (k : ℕ) : selectedOrder f k z = m - k := by
  by_cases hk : k ≤ m
  · have hj : jetEnergy f k z = 0 := (jetEnergy_eq_zero_iff hf k).mpr (hm ▸ by exact_mod_cast hk)
    rw [selectedOrder, ite_eq_left hj]
    by_cases hzero : m = 0
    · obtain rfl : k = 0 := by omega
      simp [hm, hzero]
    · rw [iteratedDeriv_eq_iterate, analyticOrderAt_iterated_deriv hf hm.symm hzero hk]
      exact ENat.toNat_natCast _
  · have hj : jetEnergy f k z ≠ 0 := by
      intro hzero
      have hle := (jetEnergy_eq_zero_iff hf k).mp hzero
      rw [hm] at hle
      exact hk (by exact_mod_cast hle)
    simp [selectedOrder, hj, Nat.sub_eq_zero_of_le (by omega : m ≤ k)]

private theorem analytic_xi : AnalyticOnNhd ℂ sourceXiOnLine Set.univ := by
  have hd : Differentiable ℂ sourceXi := by
    unfold sourceXi
    have hc := differentiable_completedZeta₀
    fun_prop
  have h : Differentiable ℂ sourceXiOnLine := by
    unfold sourceXiOnLine
    fun_prop
  exact h.differentiableOn.analyticOnNhd isOpen_univ

theorem xi_order_finite (z : ℂ) : analyticOrderAt sourceXiOnLine z ≠ ⊤ := by
  let w : ℂ := Complex.I / 2
  have hw : sourceXiOnLine w ≠ 0 := by
    have h0 : 1 / 2 + Complex.I * w = 0 := by
      dsimp [w]; rw [← mul_div_assoc, Complex.I_mul_I]; ring
    rw [sourceXiOnLine, h0]
    norm_num [sourceXi]
  apply analytic_xi.analyticOrderAt_ne_top_of_isPreconnected isPreconnected_univ
    (mem_univ w) (mem_univ z)
  rw [(analytic_xi w (mem_univ _)).analyticOrderAt_eq_zero.mpr hw]
  simp

/-- Each layer contributes one dimension exactly when its order is below
the analytic multiplicity of the actual xi function at the point. -/
theorem xi_layer_weight (z : ℂ) (k : ℕ) :
    selectedOrder sourceXiOnLine k z - selectedOrder sourceXiOnLine (k+1) z =
      if k < (analyticOrderAt sourceXiOnLine z).toNat then 1 else 0 := by
  have hm := (ENat.natCast_toNat (xi_order_finite z)).symm
  rw [selectedOrder_eq_sub (analytic_xi z (mem_univ z)) hm,
    selectedOrder_eq_sub (analytic_xi z (mem_univ z)) hm]
  split <;> omega

/-- Second-derivative ratio, interpreted by punctured limits at common zeros. -/
def multiplicityRatio (f : ℂ → ℂ) (z : ℂ) : ℂ :=
  (deriv f z)^2 / ((deriv f z)^2 - f z * deriv (deriv f) z)

private theorem finite_logDeriv {f : ℂ → ℂ} {a : ℂ} {n : ℕ}
    (hf : AnalyticAt ℂ f a) (hn : analyticOrderAt f a = n) :
    Tendsto (fun z => (z-a) * logDeriv f z) (𝓝[≠] a) (𝓝 (n : ℂ)) ∧
      ∀ᶠ z in 𝓝[≠] a, f z ≠ 0 := by
  obtain ⟨g, hg, hg0, heq⟩ := hf.analyticOrderAt_eq_natCast.mp hn
  have heq' : f =ᶠ[𝓝[≠] a] fun z => (z-a) ^ (n : ℤ) * g z := by
    simpa only [zpow_natCast, smul_eq_mul, Filter.EventuallyEq] using heq.filter_mono nhdsWithin_le_nhds
  refine ⟨?_, ?_⟩
  · simpa only [Int.cast_natCast] using
      GRWTSK.FunctionsOfAComplexVariable.LogarithmicPrincipalPart.tendsto_mul_logDeriv
        (n : ℤ) hg hg0 heq'
  · have hnz := (hg.continuousAt.ne_iff_eventually_ne continuousAt_const).mp hg0
    filter_upwards [heq', hnz.filter_mono nhdsWithin_le_nhds, self_mem_nhdsWithin]
      with z hz hgz hza
    rw [hz]
    exact mul_ne_zero (zpow_ne_zero _ (sub_ne_zero.mpr hza)) hgz

private theorem ratio_identity (a b c t : ℂ) (ha : a ≠ 0) (hb : b ≠ 0) (ht : t ≠ 0) :
    (t*(b/a))/(t*(b/a)-t*(c/b)) = b^2/(b^2-a*c) := by
  have he : t*(b/a)-t*(c/b) = t*(b^2-a*c)/(a*b) := by field_simp
  rw [he]
  by_cases hd : b^2-a*c = 0
  · simp [hd]
  · field_simp

/-- At every zero of positive finite order the same rational expression
in the first two derivatives tends to its actual analytic multiplicity. -/
theorem multiplicityRatio_tendsto {f : ℂ → ℂ} {a : ℂ} (hf : AnalyticAt ℂ f a)
    {n : ℕ} (hn : analyticOrderAt f a = (n : ℕ∞) + 1) :
    Tendsto (multiplicityRatio f) (𝓝[≠] a) (𝓝 ((n : ℂ) + 1)) := by
  obtain ⟨hfL, hfn⟩ := finite_logDeriv hf (n := n+1) (by simpa using hn)
  obtain ⟨hdL, hdn⟩ := finite_logDeriv hf.deriv (analyticOrderAt_deriv_of_pos hf hn)
  have hdiff := hfL.sub hdL
  have hd : ((n+1 : ℕ) : ℂ) - n ≠ 0 := by simp
  have hh := hfL.div hdiff hd
  have hc : ((n+1 : ℕ) : ℂ) / (((n+1 : ℕ) : ℂ) - n) = n+1 := by simp
  rw [hc] at hh
  apply hh.congr'
  filter_upwards [hfn, hdn, self_mem_nhdsWithin] with z hz hdz hza
  exact ratio_identity _ _ _ _ hz hdz (sub_ne_zero.mpr hza)

/-- Exact radial mass of the planar regularizer after the substitution
t = radial coordinate to the power 2m in the monomial model. -/
theorem radial_mass (ε R : ℝ) (hε : 0 < ε) (hR : 0 ≤ R) :
    ∫ t in (0 : ℝ)..R, ε^2 / (ε^2 + t)^2 = R / (ε^2 + R) := by
  have hpos (t : ℝ) (ht : t ∈ Set.uIcc 0 R) : 0 < ε^2 + t := by
    rw [Set.uIcc_of_le hR] at ht
    exact add_pos_of_pos_of_nonneg (sq_pos_of_pos hε) ht.1
  have hd (t : ℝ) (ht : t ∈ Set.uIcc 0 R) :
      HasDerivAt (fun s : ℝ => s / (ε^2 + s)) (ε^2 / (ε^2+t)^2) t := by
    have hh : HasDerivAt (fun s : ℝ => s / (ε^2 + s))
        ((1*(ε^2+t)-t*(0+1))/(ε^2+t)^2) t :=
      (hasDerivAt_id t).div ((hasDerivAt_const t (ε^2)).add (hasDerivAt_id t))
        (hpos t ht).ne'
    convert hh using 1
    ring
  have hc : ContinuousOn (fun t : ℝ => ε^2 / (ε^2 + t)^2) (Set.uIcc 0 R) :=
    continuousOn_const.div ((continuousOn_const.add continuousOn_id).pow 2)
      (fun t ht => pow_ne_zero _ (hpos t ht).ne')
  simpa using intervalIntegral.integral_eq_sub_of_hasDerivAt hd hc.intervalIntegrable

theorem radial_mass_tendsto_one (R : ℝ) (hR : 0 < R) :
    Tendsto (fun ε : ℝ => R / (ε^2 + R)) (𝓝 0) (𝓝 1) := by
  have hc : ContinuousAt (fun ε : ℝ => R / (ε^2 + R)) 0 := by fun_prop (disch := positivity)
  simpa [hR.ne'] using hc.tendsto

/-- The critical strip and zero-free radius make the signed reciprocal
square uniformly positive relative to the reciprocal squared modulus. -/
theorem reciprocal_square_lower (x y : ℝ) (hy : y^2 ≤ 1/4)
    (hr : 9/4 ≤ x^2+y^2) :
    (7/9) / (x^2+y^2) ≤ (x^2-y^2)/(x^2+y^2)^2 := by
  have hp : 0 < x^2+y^2 := by linarith
  rw [le_div_iff₀ (sq_pos_of_pos hp), show (x^2+y^2)^2 = (x^2+y^2)*(x^2+y^2) by ring,
    ← mul_assoc, div_mul_cancel₀ _ hp.ne']
  linarith

end GRWTSK.NumberTheory.XiJetDivisorMeasures
