/- Copyright (c) 2026 grwtsk contributors. MIT. -/
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.XiAnchorInverseSquareSummability
import Mathlib.Topology.Algebra.InfiniteSum.TsumUniformlyOn

/-!
# Normal convergence of the actual ξ genus-one logarithmic series

The index is the divisor support of the actual completed ξ, with the full
analytic order at each distinct complex point as its weight. On a compact set,
the combined correction `1/(s-ρ) + 1/ρ` is uniformly inverse-square at large
absolute height. The previously proved summability of the two-sided strict
anchor tail bounds its norm there. The closed head is finite, so the
Weierstrass test gives local uniform summability off the divisor.
-/

set_option autoImplicit false

noncomputable section

open Filter Set

namespace GRWTSK.NumberTheory.SpectralProductDivisorReturn

open GRWTSK.NumberTheory.Zeta.CompletedQuotientSource
open GRWTSK.RiemannHypothesis.CanonicalZeroDivisor (bounded_zero_set_finite)

/-- The actual support, indexed by full complex location. -/
abbrev XiZero := {ρ : ℂ // xi ρ = 0}

/-- The weighted logarithmic derivative of one genus-one factor. -/
def xiGenusOneLogTerm (ρ : XiZero) (s : ℂ) : ℂ :=
  (analyticOrderNatAt xi ρ.val : ℂ) * ((s - ρ.val)⁻¹ + ρ.val⁻¹)

private theorem xiStrictAnchorMajorant_summable :
    Summable (fun ρ : XiZero => (xiStrictZeroTail 3).indicator xiAnchorOrderTerm ρ.val) := by
  have hT : Real.exp 1 ≤ (3 : ℝ) := Real.exp_one_lt_three.le
  have hs := (xiPositiveTail_inverseSquare_summable_and_bound (T := 3) (by norm_num)).1
  have htail : Summable (xiAnchorOrderTerm ∘ (Subtype.val : xiStrictZeroTail 3 → ℂ)) :=
    (xiStrictTail_hasSum_paired hT hs).summable
  have h := (summable_subtype_iff_indicator (s := xiStrictZeroTail 3)).mp htail
  change Summable (((xiStrictZeroTail 3).indicator xiAnchorOrderTerm) ∘
    (Subtype.val : XiZero → ℂ))
  exact h.comp_injective Subtype.val_injective

private theorem xiGenusOneLogTerm_norm_le {R : ℝ} (hR : 0 ≤ R) {s : ℂ} (hs : ‖s‖ ≤ R)
    (ρ : XiZero) (hheight : max 3 (2 * R) < |ρ.val.im|) :
    ‖xiGenusOneLogTerm ρ s‖ ≤ (4 * R) * xiAnchorOrderTerm ρ.val := by
  let y := |ρ.val.im|
  have hy3 : (3 : ℝ) < y := (le_max_left _ _).trans_lt hheight
  have hy0 : 0 < y := by linarith
  have hyR : 2 * R < y := (le_max_right _ _).trans_lt hheight
  have hyr : y ≤ ‖ρ.val‖ := Complex.abs_im_le_norm _
  have hdiff : y / 2 ≤ ‖s - ρ.val‖ := by
    have htriangle : ‖ρ.val‖ ≤ ‖s‖ + ‖s - ρ.val‖ := by
      convert norm_sub_le s (s - ρ.val) using 2
      ring
    linarith
  have hρ0 : ρ.val ≠ 0 := norm_pos_iff.mp (hy0.trans_le hyr)
  have hsρ : s - ρ.val ≠ 0 := norm_pos_iff.mp (by linarith : 0 < ‖s - ρ.val‖)
  have hfrac : (s - ρ.val)⁻¹ + ρ.val⁻¹ = s / ((s - ρ.val) * ρ.val) := by
    field_simp
    ring
  have hden : y ^ 2 / 2 ≤ ‖s - ρ.val‖ * ‖ρ.val‖ := by
    calc
      _ = (y / 2) * y := by ring
      _ ≤ _ := mul_le_mul hdiff hyr hy0.le (norm_nonneg _)
  have hkernel : ‖(s - ρ.val)⁻¹ + ρ.val⁻¹‖ ≤ (2 * R) / y ^ 2 := by
    rw [hfrac, norm_div, norm_mul]
    calc
      _ ≤ R / (y ^ 2 / 2) := div_le_div₀ hR hs (by positivity) hden
      _ = _ := by ring
  let a := 2 - ρ.val.re
  obtain ⟨hl, hr⟩ := ((xi_eq_zero_iff_nontrivialZetaZero ρ.val).mp ρ.property).mem_critical_strip
  have ha : 1 ≤ a := by dsimp [a]; linarith
  have ha2 : a ≤ 2 := by dsimp [a]; linarith
  have hweight : 1 / (2 * y ^ 2) ≤ xiAnchorWeight ρ.val := by
    have he : y ^ 2 = ρ.val.im ^ 2 := sq_abs _
    rw [xiAnchorWeight, ← he]
    change 1 / (2 * y ^ 2) ≤ a / (a ^ 2 + y ^ 2)
    apply (div_le_div_iff₀ (by positivity) (by positivity)).mpr
    have hasq : a ^ 2 ≤ 2 ^ 2 := (sq_le_sq₀ (by linarith) (by norm_num)).mpr ha2
    have hysq : (2 : ℝ) ^ 2 ≤ y ^ 2 := (sq_le_sq₀ (by norm_num) hy0.le).mpr (by linarith)
    calc
      1 * (a ^ 2 + y ^ 2) ≤ 2 * y ^ 2 := by linarith
      _ ≤ a * (2 * y ^ 2) := le_mul_of_one_le_left (by positivity) ha
  rw [xiGenusOneLogTerm, norm_mul, Complex.norm_natCast]
  calc
    _ ≤ (analyticOrderNatAt xi ρ.val : ℝ) * ((2 * R) / y ^ 2) :=
      mul_le_mul_of_nonneg_left hkernel (Nat.cast_nonneg _)
    _ = (4 * R) * ((analyticOrderNatAt xi ρ.val : ℝ) * (1 / (2 * y ^ 2))) := by ring
    _ ≤ _ := mul_le_mul_of_nonneg_left
      (mul_le_mul_of_nonneg_left hweight (Nat.cast_nonneg _)) (by positivity)

/-- The genus-one logarithmic series on the exact ξ divisor is locally
uniformly summable on the open zero-free domain. -/
theorem xiGenusOneLogTerm_summableLocallyUniformlyOn :
    SummableLocallyUniformlyOn xiGenusOneLogTerm {s | xi s ≠ 0} := by
  have hopen : IsOpen {s | xi s ≠ 0} :=
    isOpen_ne.preimage differentiable_xi.continuous
  apply SummableLocallyUniformlyOn.of_locally_bounded_eventually hopen
  intro K _ hK
  obtain ⟨r, hr⟩ := hK.isBounded.exists_norm_le
  let R := max 0 r
  let H := max 3 (2 * R)
  have hR : 0 ≤ R := le_max_left _ _
  have hhead : {ρ : XiZero | |ρ.val.im| ≤ H}.Finite := by
    apply (bounded_zero_set_finite H).of_injOn
      (f := fun ρ : XiZero => ρ.val)
    · intro ρ hρ
      exact ⟨(xi_eq_zero_iff_nontrivialZetaZero ρ.val).mp ρ.property, hρ⟩
    · exact Subtype.val_injective.injOn
  refine ⟨fun ρ => (4 * R) * (xiStrictZeroTail 3).indicator xiAnchorOrderTerm ρ.val,
    xiStrictAnchorMajorant_summable.mul_left _, ?_⟩
  filter_upwards [hhead.eventually_cofinite_notMem] with ρ hρ
  intro s hs
  have hh : H < |ρ.val.im| := lt_of_not_ge hρ
  have hm : ρ.val ∈ xiStrictZeroTail 3 := ⟨ρ.property, (le_max_left _ _).trans_lt hh⟩
  rw [Set.indicator_of_mem hm]
  exact xiGenusOneLogTerm_norm_le hR ((hr s hs).trans (le_max_right _ _)) ρ hh

end GRWTSK.NumberTheory.SpectralProductDivisorReturn
