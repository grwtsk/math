/-
Copyright (c) 2026 grwtsk contributors.
Released under the MIT license as described in the repository LICENSE.
-/
import Mathlib.Analysis.Analytic.Order
import Mathlib.Analysis.Complex.RemovableSingularity
import Mathlib.Analysis.SpecialFunctions.Trigonometric.Basic
import Mathlib.Analysis.SpecialFunctions.Trigonometric.Deriv
import Mathlib.Data.Int.Interval
import Mathlib.Tactic.FieldSimp
import Mathlib.Tactic.NormNum
import Mathlib.Tactic.Ring

/-!
The finite expression is from Connes, Consani and Moscovici, *Zeta Spectral
Triples*, arXiv:2511.22755v1, Proposition 5.9, equation (5.25), and
Theorem 5.10(ii), equation (5.27). https://arxiv.org/html/2511.22755v1#S5.SS6

The lattice and denominator agree with the formula hypothesis of
XiDeterminantStripReturn.cutoffs_of_ccm_fourier_strip_limit. The exact local
orders can be used in the finite candidate zero inventory for
XiDeterminantValueCollar.count_eq_completed_zeta_of_value_collar. The finite
expression and the convergence toward the completed zeta are separate inputs.
-/

set_option autoImplicit false

open Filter
open scoped BigOperators Classical Topology

namespace GRWTSK.NumberTheory.Zeta.XiDeterminantStripReturn

/-- Fill a retained pole against its simple sine zero and compute the exact
analytic order with an arbitrary analytic prefactor. Continuity fixes the
assigned central value. The order lives in the extended natural numbers. -/
theorem ccm_retained_node_value_and_order (L : ℝ) (N : ℕ) (a : ℤ → ℂ)
    (D P : ℂ → ℂ) (j : ℤ) (hL : 0 < L) :
    let S := Finset.Icc (-(N : ℤ)) (N : ℤ)
    let x := fun k : ℤ => (k : ℂ) * (2 * Real.pi / L : ℝ)
    let R := fun z : ℂ => ∑ k ∈ S.erase j, a k / (z - x k)
    let sine := fun z : ℂ => Complex.sin (z * (L : ℂ) / 2)
    let U := dslope sine (x j)
    let G := fun z : ℂ => a j + (z - x j) * R z
    j ∈ S →
    AnalyticAt ℂ P (x j) →
    ContinuousAt D (x j) →
    (D =ᶠ[𝓝[≠] (x j)] fun z => P z * sine z * ∑ k ∈ S, a k / (z - x k)) →
    (D =ᶠ[𝓝 (x j)] P * U * G) ∧
    AnalyticAt ℂ D (x j) ∧
    D (x j) = P (x j) * (((-1 : ℂ) ^ j) * ((L : ℂ) / 2)) * a j ∧
    analyticOrderAt D (x j) = analyticOrderAt P (x j) +
      (if a j = 0 then 1 + analyticOrderAt R (x j) else 0) ∧
    (analyticOrderAt D (x j) = ⊤ ↔ analyticOrderAt P (x j) = ⊤ ∨
      (a j = 0 ∧ analyticOrderAt R (x j) = ⊤)) := by
  intro S x R sine U G hj hP hD hformula
  have hL0 : (L : ℂ) ≠ 0 := by exact_mod_cast hL.ne'
  have hspacing : 0 < 2 * Real.pi / L := div_pos (mul_pos (by norm_num) Real.pi_pos) hL
  have hx : Function.Injective x := by
    have hspacing0 : ((2 * Real.pi / L : ℝ) : ℂ) ≠ 0 := by exact_mod_cast hspacing.ne'
    intro k l hkl
    change (k : ℂ) * ((2 * Real.pi / L : ℝ) : ℂ) =
      (l : ℂ) * ((2 * Real.pi / L : ℝ) : ℂ) at hkl
    exact_mod_cast mul_right_cancel₀ hspacing0 hkl
  have harg : x j * (L : ℂ) / 2 = (j : ℂ) * (Real.pi : ℂ) := by
    simp only [x, Complex.ofReal_div, Complex.ofReal_mul, Complex.ofReal_ofNat]
    field_simp [hL0]
  have hsineZero : sine (x j) = 0 := by
    change Complex.sin (x j * (L : ℂ) / 2) = 0
    rw [harg, Complex.sin_int_mul_pi]
  have hcos : Complex.cos ((j : ℂ) * (Real.pi : ℂ)) = (-1 : ℂ) ^ j := by
    simpa only [Complex.ofReal_cos, Complex.ofReal_mul, Complex.ofReal_intCast,
      Complex.ofReal_zpow, Complex.ofReal_neg, Complex.ofReal_one] using
      congrArg (fun r : ℝ => (r : ℂ)) (Real.cos_int_mul_pi j)
  have hsineDeriv (z : ℂ) :
      HasDerivAt sine (Complex.cos (z * (L : ℂ) / 2) * ((L : ℂ) / 2)) z := by
    simpa only [sine, Function.comp_def] using
      (Complex.hasDerivAt_sin (z * (L : ℂ) / 2)).comp z
        ((hasDerivAt_mul_const (x := z) (L : ℂ)).div_const (2 : ℂ))
  have hsineDiff : Differentiable ℂ sine := fun z => (hsineDeriv z).differentiableAt
  have hU : AnalyticAt ℂ U (x j) := by
    have hdiff : DifferentiableOn ℂ U Set.univ :=
      (Complex.differentiableOn_dslope
        (show Set.univ ∈ 𝓝 (x j) from univ_mem)).mpr hsineDiff.differentiableOn
    exact (differentiableOn_univ.mp hdiff).analyticAt _
  have hUValue : U (x j) = (-1 : ℂ) ^ j * ((L : ℂ) / 2) := by
    change dslope sine (x j) (x j) = _
    rw [dslope_same, (hsineDeriv (x j)).deriv, harg, hcos]
  have hUnz : U (x j) ≠ 0 := by
    rw [hUValue]
    exact mul_ne_zero (zpow_ne_zero j (by norm_num)) (div_ne_zero hL0 (by norm_num))
  have hR : AnalyticAt ℂ R (x j) := by
    change AnalyticAt ℂ (fun z => ∑ k ∈ S.erase j, a k / (z - x k)) (x j)
    refine Finset.analyticAt_fun_sum _ fun k hk => ?_
    have hdenom : x j - x k ≠ 0 :=
      sub_ne_zero.mpr fun h => (Finset.ne_of_mem_erase hk) (hx h).symm
    exact (analyticAt_const (v := a k)).div
      (show AnalyticAt ℂ (fun z => z - x k) (x j) by fun_prop) hdenom
  let t : ℂ → ℂ := fun z => z - x j
  have ht : AnalyticAt ℂ t (x j) := by dsimp only [t]; fun_prop
  have hG : AnalyticAt ℂ G (x j) := (analyticAt_const (v := a j)).add (ht.mul hR)
  have hfilled : AnalyticAt ℂ (P * U * G) (x j) := (hP.mul hU).mul hG
  have hpunctured : D =ᶠ[𝓝[≠] (x j)] P * U * G := by
    have haway : ∀ᶠ z in 𝓝[≠] (x j), z ≠ x j := by
      change ({x j}ᶜ : Set ℂ) ∈ 𝓝[≠] (x j)
      exact self_mem_nhdsWithin
    filter_upwards [hformula, haway] with z hz hzj
    have hne : z - x j ≠ 0 := sub_ne_zero.mpr hzj
    have hsplit : (∑ k ∈ S, a k / (z - x k)) = R z + a j / (z - x j) :=
      (Finset.sum_erase_add S (fun k => a k / (z - x k)) hj).symm
    have hsine : sine z = (z - x j) * U z := by
      simpa only [U, smul_eq_mul, hsineZero, sub_zero] using
        (sub_smul_dslope sine (x j) z).symm
    change D z = P z * sine z * (∑ k ∈ S, a k / (z - x k)) at hz
    change D z = P z * U z * (a j + (z - x j) * R z)
    rw [hz, hsplit, hsine]
    field_simp [hne]
    ring
  have heq : D =ᶠ[𝓝 (x j)] P * U * G :=
    (hD.eventuallyEq_nhds_iff_eventuallyEq_nhdsNE hfilled.continuousAt).mp hpunctured
  have hGValue : G (x j) = a j := by simp [G]
  have hGOrder : analyticOrderAt G (x j) =
      (if a j = 0 then 1 + analyticOrderAt R (x j) else 0) := by
    by_cases ha : a j = 0
    · have hG_eq : G = t * R := by
        funext z
        change a j + (z - x j) * R z = (z - x j) * R z
        rw [ha, zero_add]
      rw [ite_eq_left ha, hG_eq, analyticOrderAt_mul ht hR]
      simp only [t, analyticOrderAt_id_sub_const_self]
    · rw [ite_eq_right ha]
      exact hG.analyticOrderAt_eq_zero.mpr (by rw [hGValue]; exact ha)
  have hUOrder : analyticOrderAt U (x j) = 0 := hU.analyticOrderAt_eq_zero.mpr hUnz
  have horder : analyticOrderAt D (x j) = analyticOrderAt P (x j) +
      (if a j = 0 then 1 + analyticOrderAt R (x j) else 0) := by
    rw [analyticOrderAt_congr heq, analyticOrderAt_mul (hP.mul hU) hG,
      analyticOrderAt_mul hP hU, hUOrder, add_zero, hGOrder]
  refine ⟨heq, hfilled.congr heq.symm, ?_, horder, ?_⟩
  · calc
      D (x j) = P (x j) * U (x j) * G (x j) := heq.self_of_nhds
      _ = P (x j) * (((-1 : ℂ) ^ j) * ((L : ℂ) / 2)) * a j := by rw [hUValue, hGValue]
  · by_cases ha : a j = 0 <;> simp [horder, ha]

/-- The unscaled finite Fourier expression with each sine quotient filled at
its node by the derivative. In (5.25) the prefactor is `2 / √L`. -/
noncomputable def ccmFourierExtension (L : ℝ) (N : ℕ) (a : ℤ → ℂ) (z : ℂ) : ℂ :=
  ∑ k ∈ Finset.Icc (-(N : ℤ)) (N : ℤ),
    a k * dslope (fun w : ℂ => Complex.sin (w * (L : ℂ) / 2))
      ((k : ℂ) * (2 * Real.pi / L : ℝ)) z

/-- The filled finite expression is entire. -/
theorem analyticAt_ccmFourierExtension (L : ℝ) (N : ℕ) (a : ℤ → ℂ) (z : ℂ) :
    AnalyticAt ℂ (ccmFourierExtension L N a) z := by
  unfold ccmFourierExtension
  refine Finset.analyticAt_fun_sum _ fun k _ => (analyticAt_const (v := a k)).mul ?_
  have hsine : Differentiable ℂ (fun w : ℂ => Complex.sin (w * (L : ℂ) / 2)) :=
    Complex.differentiable_sin.comp ((differentiable_id.mul_const (L : ℂ)).div_const 2)
  have hdivided : DifferentiableOn ℂ
      (dslope (fun w : ℂ => Complex.sin (w * (L : ℂ) / 2))
        ((k : ℂ) * (2 * Real.pi / L : ℝ))) Set.univ :=
    (Complex.differentiableOn_dslope (show Set.univ ∈ 𝓝 _ from univ_mem)).mpr
      hsine.differentiableOn
  exact (differentiableOn_univ.mp hdivided).analyticAt z

/-- Off the retained lattice the entire extension has the same formula used
in the strip cutoff theorem. -/
theorem ccmFourierExtension_eq_of_off_nodes (L : ℝ) (N : ℕ) (a : ℤ → ℂ)
    (hL : 0 < L) (z : ℂ)
    (hz : ∀ k ∈ Finset.Icc (-(N : ℤ)) (N : ℤ),
      z ≠ (k : ℂ) * (2 * Real.pi / L : ℝ)) :
    ccmFourierExtension L N a z =
      Complex.sin (z * (L : ℂ) / 2) * ∑ k ∈ Finset.Icc (-(N : ℤ)) (N : ℤ),
        a k / (z - (k : ℂ) * (2 * Real.pi / L : ℝ)) := by
  classical
  unfold ccmFourierExtension
  rw [Finset.mul_sum]
  refine Finset.sum_congr rfl fun k hk => ?_
  let x : ℂ := (k : ℂ) * (2 * Real.pi / L : ℝ)
  have hL0 : (L : ℂ) ≠ 0 := by exact_mod_cast hL.ne'
  have harg : x * (L : ℂ) / 2 = (k : ℂ) * (Real.pi : ℂ) := by
    simp only [x, Complex.ofReal_div, Complex.ofReal_mul, Complex.ofReal_ofNat]
    field_simp [hL0]
  have hsine : Complex.sin (x * (L : ℂ) / 2) = 0 := by
    rw [harg, Complex.sin_int_mul_pi]
  have hne : z - x ≠ 0 := sub_ne_zero.mpr (hz k hk)
  change a k * dslope (fun w : ℂ => Complex.sin (w * (L : ℂ) / 2)) x z =
    Complex.sin (z * (L : ℂ) / 2) * (a k / (z - x))
  have hfactor := sub_smul_dslope (fun w : ℂ => Complex.sin (w * (L : ℂ) / 2)) x z
  rw [smul_eq_mul, hsine, sub_zero] at hfactor
  generalize dslope (fun w : ℂ => Complex.sin (w * (L : ℂ) / 2)) x z = q at hfactor ⊢
  rw [← hfactor]
  field_simp [hne]

/-- The entire extension itself has the expected retained samples and their
analytic orders. A vanished coefficient can leave a zero of order greater
than one. -/
theorem ccmFourierExtension_at_retained_node (L : ℝ) (N : ℕ) (a : ℤ → ℂ)
    (hL : 0 < L) (j : ℤ) (hj : j ∈ Finset.Icc (-(N : ℤ)) (N : ℤ)) :
    let x := fun k : ℤ => (k : ℂ) * (2 * Real.pi / L : ℝ)
    let R := fun z : ℂ => ∑ k ∈ (Finset.Icc (-(N : ℤ)) (N : ℤ)).erase j, a k / (z - x k)
    ccmFourierExtension L N a (x j) = (-1 : ℂ) ^ j * ((L : ℂ) / 2) * a j ∧
    analyticOrderAt (ccmFourierExtension L N a) (x j) =
      (if a j = 0 then 1 + analyticOrderAt R (x j) else 0) := by
  intro x R
  let S := Finset.Icc (-(N : ℤ)) (N : ℤ)
  have hspacing : 0 < 2 * Real.pi / L := div_pos (mul_pos (by norm_num) Real.pi_pos) hL
  have hspacing0 : ((2 * Real.pi / L : ℝ) : ℂ) ≠ 0 := by exact_mod_cast hspacing.ne'
  have hx : Function.Injective x := by
    intro k l hkl
    change (k : ℂ) * ((2 * Real.pi / L : ℝ) : ℂ) =
      (l : ℂ) * ((2 * Real.pi / L : ℝ) : ℂ) at hkl
    exact_mod_cast mul_right_cancel₀ hspacing0 hkl
  have hnear : ∀ᶠ z in 𝓝[≠] (x j), ∀ k ∈ S, z ≠ x k := by
    refine (Filter.eventually_all_finset S).2 fun k _ => ?_
    by_cases hk : k = j
    · subst k
      change ({x j}ᶜ : Set ℂ) ∈ 𝓝[≠] (x j)
      exact self_mem_nhdsWithin
    · exact eventually_ne_nhdsWithin (hx.ne (fun h => hk h.symm))
  have hD := analyticAt_ccmFourierExtension L N a (x j)
  have hfilled := ccm_retained_node_value_and_order L N a (ccmFourierExtension L N a)
    (fun _ => 1) j hL hj analyticAt_const hD.continuousAt (by
      filter_upwards [hnear] with z hz
      simpa only [one_mul] using ccmFourierExtension_eq_of_off_nodes L N a hL z hz)
  have hone : analyticOrderAt (fun _ : ℂ => (1 : ℂ))
      ((j : ℂ) * (2 * Real.pi / L : ℝ)) = 0 :=
    analyticAt_const.analyticOrderAt_eq_zero.mpr one_ne_zero
  exact ⟨by simpa only [one_mul] using hfilled.2.2.1,
    by simpa only [hone, zero_add] using hfilled.2.2.2.1⟩

end GRWTSK.NumberTheory.Zeta.XiDeterminantStripReturn
