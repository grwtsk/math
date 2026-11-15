/- Copyright (c) 2026 grwtsk contributors. MIT. -/
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.XiAnchorStrictTail
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses.CompletedQuotientSource
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses.RiemannZeroSymmetry

/-!
# The actual strict ξ tail as a paired sum

The index sets are the complete zero predicates of the pole-cleared
`CompletedQuotientSource.xi` in the specified height ranges. Reflection
transports analytic order and sends the strict positive tail to the strict
negative tail. This supplies the divisor reindexing of math#1805.
The inverse-square summability input, its lower enclosure, and the
Hadamard identity for the full anchor remain separate.
-/

set_option autoImplicit false

noncomputable section

open scoped Topology

namespace GRWTSK.NumberTheory.SpectralProductDivisorReturn

open GRWTSK.NumberTheory.Zeta.CompletedQuotientSource
open GRWTSK.RiemannHypothesis (NontrivialZetaZero)

/-- Every actual positive-height zero strictly above the cutoff. -/
def xiPositiveZeroTail (T : ℝ) : Set ℂ := {ρ | xi ρ = 0 ∧ T < ρ.im}

/-- Every actual zero strictly outside the closed head, on either side. -/
def xiStrictZeroTail (T : ℝ) : Set ℂ := {ρ | xi ρ = 0 ∧ T < |ρ.im|}

/-- The analytic order of the original completed function at a positive representative. -/
def xiPositiveTailOrder (T : ℝ) (ρ : xiPositiveZeroTail T) : ℕ :=
  analyticOrderNatAt xi ρ.val

/-- The actual analytic-order weighted summand in the arithmetic coordinate. -/
def xiAnchorOrderTerm (ρ : ℂ) : ℝ :=
  (analyticOrderNatAt xi ρ : ℝ) * xiAnchorWeight ρ

theorem xiAnalyticOrderAt_ne_top (ρ : ℂ) : analyticOrderAt xi ρ ≠ ⊤ := by
  have ha : AnalyticOnNhd ℂ xi Set.univ := fun s _ => differentiable_xi.analyticAt s
  have hzero : analyticOrderAt xi (0 : ℂ) = 0 :=
    (differentiable_xi.analyticAt 0).analyticOrderAt_eq_zero.mpr (by simp)
  exact ha.analyticOrderAt_ne_top_of_isPreconnected isPreconnected_univ
    (Set.mem_univ (0 : ℂ)) (Set.mem_univ ρ) (hzero ▸ ENat.zero_ne_top)

theorem xiAnalyticOrderNatAt_pos {ρ : ℂ} (hρ : xi ρ = 0) :
    0 < analyticOrderNatAt xi ρ := by
  have horder := Nat.cast_analyticOrderNatAt (xiAnalyticOrderAt_ne_top ρ)
  have hne : analyticOrderAt xi ρ ≠ 0 :=
    analyticOrderAt_ne_zero.mpr ⟨differentiable_xi.analyticAt ρ, hρ⟩
  by_contra! h
  rw [Nat.eq_zero_of_le_zero h, Nat.cast_zero] at horder
  exact hne horder.symm

/-- The functional equation preserves the full analytic order of the actual ξ. -/
theorem xiAnalyticOrderAt_one_sub (ρ : ℂ) :
    analyticOrderAt xi (1 - ρ) = analyticOrderAt xi ρ := by
  have ha : AnalyticAt ℂ (fun z : ℂ => 1 - z) ρ := by fun_prop
  have hd : deriv (fun z : ℂ => 1 - z) ρ ≠ 0 := by
    rw [deriv_const_sub_id]
    norm_num
  have h := analyticOrderAt_comp_of_deriv_ne_zero (f := xi) ha hd
  have heq : xi ∘ (fun z : ℂ => 1 - z) = xi := funext xi_one_sub
  rw [heq] at h
  exact h.symm

private theorem xi_zero_in_strip_of_im_ne_zero {ρ : ℂ}
    (hρ : xi ρ = 0) (him : ρ.im ≠ 0) : 0 < ρ.re ∧ ρ.re < 1 := by
  have h0 : ρ ≠ 0 := fun h => him (h ▸ Complex.zero_im)
  have h1 : ρ ≠ 1 := fun h => him (h ▸ Complex.one_im)
  have hf := xi_eq_completed ρ h0 h1
  rw [hρ] at hf
  have hcompleted : completedRiemannZeta ρ = 0 :=
    (mul_eq_zero.mp hf.symm).resolve_left
      (mul_ne_zero (mul_ne_zero (by norm_num) h0) (sub_ne_zero.mpr h1))
  have hζ : riemannZeta ρ = 0 := by rw [riemannZeta_def_of_ne_zero h0, hcompleted, zero_div]
  have hnontrivial : NontrivialZetaZero ρ := by
    refine ⟨hζ, ?_, h1⟩
    rintro ⟨n, rfl⟩
    exact him (by simp [Complex.mul_im])
  exact hnontrivial.mem_critical_strip

private def xiTailReflection : ℂ ≃ ℂ where
  toFun := fun z => 1 - z
  invFun := fun z => 1 - z
  left_inv := by intro z; ring
  right_inv := by intro z; ring

private def xiReflectedAnchorOrderTerm (ρ : ℂ) : ℝ :=
  (analyticOrderNatAt xi ρ : ℝ) * xiAnchorWeight (1 - ρ)

private theorem xiReflectedAnchorOrderTerm_one_sub (ρ : ℂ) :
    xiReflectedAnchorOrderTerm (1 - ρ) = xiAnchorOrderTerm ρ := by
  have hreflect : 1 - (1 - ρ) = ρ := by ring
  have horder := congrArg ENat.toNat (xiAnalyticOrderAt_one_sub ρ)
  change analyticOrderNatAt xi (1 - ρ) = analyticOrderNatAt xi ρ at horder
  simp only [xiReflectedAnchorOrderTerm, xiAnchorOrderTerm, hreflect, horder]

private theorem xiStrictTail_indicator_split {T : ℝ} (hT : 0 ≤ T) :
    (xiStrictZeroTail T).indicator xiAnchorOrderTerm =
      (xiPositiveZeroTail T).indicator xiAnchorOrderTerm +
        ((xiPositiveZeroTail T).indicator xiReflectedAnchorOrderTerm ∘ xiTailReflection) := by
  classical
  funext ρ
  have him : (1 - ρ).im = -ρ.im := by simp [Complex.sub_im]
  simp only [Pi.add_apply, Function.comp_apply, xiStrictZeroTail, xiPositiveZeroTail,
    xiTailReflection, Equiv.coe_fn_mk, Set.indicator_apply, Set.mem_ofPred_eq,
    xi_one_sub, him, xiReflectedAnchorOrderTerm_one_sub]
  by_cases hzero : xi ρ = 0
  · by_cases hpos : 0 ≤ ρ.im
    · have hnegative : ¬ T < -ρ.im := by linarith
      simp [hzero, abs_of_nonneg hpos, hnegative]
    · have hnegative : ρ.im < 0 := lt_of_not_ge hpos
      have hpositive : ¬ T < ρ.im := by linarith
      simp [hzero, abs_of_neg hnegative, hpositive]
  · simp [hzero]

/-- Reindex the actual both-sign strict ξ tail by positive representatives.
Inverse-square summability is required on the actual positive tail. The proof
derives summability of the both-sign anchor series and identifies its sum. -/
theorem xiStrictTail_hasSum_paired {T : ℝ} (hT : Real.exp 1 ≤ T)
    (hsquare : Summable (xiInverseSquareTailTerm (xiPositiveTailOrder T))) :
    HasSum (fun ρ : xiStrictZeroTail T => xiAnchorOrderTerm ρ.val)
      (∑' ρ : xiPositiveZeroTail T, xiPairedAnchorTailTerm (xiPositiveTailOrder T) ρ) := by
  classical
  have hTpos : 0 < T := (Real.exp_pos 1).trans_le hT
  have hregion (ρ : xiPositiveZeroTail T) :
      0 < ρ.val.re ∧ ρ.val.re < 1 ∧ T < ρ.val.im := by
    have hγ : T < ρ.val.im := ρ.property.2
    have hstrip := xi_zero_in_strip_of_im_ne_zero ρ.property.1 (hTpos.trans hγ).ne'
    exact ⟨hstrip.1, hstrip.2, hγ⟩
  have hpair : Summable (xiPairedAnchorTailTerm (xiPositiveTailOrder T)) :=
    (xiPairedAnchorTail_bounds (xiPositiveZeroTail T) (xiPositiveTailOrder T)
      hT hregion hsquare).1
  have hterms (ρ : xiPositiveZeroTail T) :
      xiAnchorOrderTerm ρ.val + xiReflectedAnchorOrderTerm ρ.val =
        xiPairedAnchorTailTerm (xiPositiveTailOrder T) ρ := by
    exact (mul_add _ _ _).symm
  have hnonneg (ρ : xiPositiveZeroTail T) :
      0 ≤ xiAnchorOrderTerm ρ.val ∧ 0 ≤ xiReflectedAnchorOrderTerm ρ.val := by
    obtain ⟨hleft, hright, _⟩ := hregion ρ
    have h1 : 0 ≤ 2 - ρ.val.re := by linarith
    have h2 : 0 ≤ 2 - (1 - ρ.val).re := by
      simp only [Complex.sub_re, Complex.one_re]
      linarith
    exact ⟨mul_nonneg (Nat.cast_nonneg _) (div_nonneg h1 (by positivity)),
      mul_nonneg (Nat.cast_nonneg _) (div_nonneg h2 (by positivity))⟩
  have hpos : Summable (fun ρ : xiPositiveZeroTail T => xiAnchorOrderTerm ρ.val) :=
    Summable.of_nonneg_of_le (fun ρ => (hnonneg ρ).1)
      (fun ρ => (le_add_of_nonneg_right (hnonneg ρ).2).trans_eq (hterms ρ)) hpair
  have hneg : Summable (fun ρ : xiPositiveZeroTail T => xiReflectedAnchorOrderTerm ρ.val) :=
    Summable.of_nonneg_of_le (fun ρ => (hnonneg ρ).2)
      (fun ρ => (le_add_of_nonneg_left (hnonneg ρ).1).trans_eq (hterms ρ)) hpair
  have hpositive : HasSum ((xiPositiveZeroTail T).indicator xiAnchorOrderTerm)
      (∑' ρ : xiPositiveZeroTail T, xiAnchorOrderTerm ρ.val) :=
    hasSum_subtype_iff_indicator.mp hpos.hasSum
  have hnegative :
      HasSum ((xiPositiveZeroTail T).indicator xiReflectedAnchorOrderTerm ∘ xiTailReflection)
        (∑' ρ : xiPositiveZeroTail T, xiReflectedAnchorOrderTerm ρ.val) :=
    xiTailReflection.hasSum_iff.mpr (hasSum_subtype_iff_indicator.mp hneg.hasSum)
  have htotal :
      (∑' ρ : xiPositiveZeroTail T, xiPairedAnchorTailTerm (xiPositiveTailOrder T) ρ) =
        (∑' ρ : xiPositiveZeroTail T, xiAnchorOrderTerm ρ.val) +
          (∑' ρ : xiPositiveZeroTail T, xiReflectedAnchorOrderTerm ρ.val) :=
    ((hpos.hasSum.add hneg.hasSum).congr_fun (fun ρ => (hterms ρ).symm)).tsum_eq
  have hfull : HasSum ((xiStrictZeroTail T).indicator xiAnchorOrderTerm)
      (∑' ρ : xiPositiveZeroTail T, xiPairedAnchorTailTerm (xiPositiveTailOrder T) ρ) := by
    rw [xiStrictTail_indicator_split hTpos.le, htotal]
    exact hpositive.add hnegative
  exact hasSum_subtype_iff_indicator.mpr hfull

end GRWTSK.NumberTheory.SpectralProductDivisorReturn
