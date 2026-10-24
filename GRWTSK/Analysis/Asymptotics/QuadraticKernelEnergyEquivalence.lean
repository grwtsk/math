import GRWTSK.Analysis.HarmonicAnalysis.FourierAnalysis.ReciprocalZetaQuadraticKernel

/-! Exact location of the remaining arithmetic obligation in the concrete
right-line model. Once source identification and the polynomial tail are
proved, signed head-plus-diagonal settlement is equivalent to literal P04.
This equivalence does not produce either arithmetic estimate.
-/
noncomputable section
namespace EulerP04RH.ConcreteSettlement
open ConcreteRightLine

theorem signed_head_return {c : ℝ} (identified : Identification c)
    {T : ℝ} (hT : 0 ≤ T) (H : ℝ) :
    head c H T-PPNCP04.diagonal T = PPNCP04.crossEnergy T-tail c H T := by
  rw [tail,(identified T hT).2.2.2,PPNCP04.energy_eq_diagonal_add_cross]
  ring

/-- No generic packet, transform, or tail estimate solves this signed block. -/
theorem signed_settlement_iff_literal_P04 {c : ℝ} (hc : 1 < c)
    (height : ℝ → ℝ) (heightValid : ∀ T : ℝ, 0 ≤ T → 1 ≤ height T)
    (identified : Identification c) (tailBound : TailBudget c height) :
    SignedHeadResidueBudget c height ↔ PPNCP04.P04 := by
  constructor
  · exact concrete_route_implies_literal_P04 hc height heightValid identified tailBound
  · rintro ⟨C_X,r_X,hCX,hrX,hCross⟩
    obtain ⟨C_T,r_T,hCT,hrT,hTail⟩ := tailBound
    refine ⟨C_X+C_T,max r_X r_T,add_nonneg hCX hCT,
      le_trans hrX (le_max_left _ _),?_⟩
    intro T hT
    have hb : 1 ≤ 1+T := by linarith
    have ht := (neg_le_abs (tail c (height T) T)).trans (hTail T hT)
    have hx := hCross T hT
    have hxp := Real.rpow_le_rpow_of_exponent_le hb (le_max_left r_X r_T)
    have htp := Real.rpow_le_rpow_of_exponent_le hb (le_max_right r_X r_T)
    change head c (height T) T-PPNCP04.diagonal T ≤ (C_X+C_T)*(1+T)^(max r_X r_T)
    rw [signed_head_return identified hT]
    calc
      PPNCP04.crossEnergy T-tail c (height T) T ≤
          C_X*(1+T)^r_X+C_T*(1+T)^r_T := by linarith
      _ ≤ C_X*(1+T)^(max r_X r_T)+C_T*(1+T)^(max r_X r_T) :=
        add_le_add (mul_le_mul_of_nonneg_left hxp hCX)
          (mul_le_mul_of_nonneg_left htp hCT)
      _ = _ := by ring

end EulerP04RH.ConcreteSettlement

#print axioms EulerP04RH.ConcreteSettlement.signed_settlement_iff_literal_P04
