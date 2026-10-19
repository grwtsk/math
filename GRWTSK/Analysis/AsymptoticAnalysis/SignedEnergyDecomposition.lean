import Mathlib.NumberTheory.LSeries.RiemannZeta
import GRWTSK.Analysis.InnerProductSpace.MoebiusResponseGramExpansion
import GRWTSK.NumberTheory.Moebius.DiagonalEnergyBound
import Mathlib.Analysis.SpecialFunctions.ImproperIntegrals

/-! Source-exact conditional assembly for the attached Euler–Möbius program.
The decomposition is a proof field about the literal complete ordered cross
energy. No Bessel kernel, signed settlement, or P04 theorem is assumed globally.
The elementary tail lemmas are independent of an unconstructed source adapter.
-/
noncomputable section
open MeasureTheory Set
namespace EulerP04RH

inductive TransformRoute
  | reciprocalZeta | logarithmicDerivative
  deriving DecidableEq, Repr

structure ExactDecomposition where
  route : TransformRoute
  rightLine : ℝ
  rightLine_gt_one : 1 < rightLine
  head : ℝ → ℝ → ℝ
  tail : ℝ → ℝ → ℝ
  residual : ℝ → ℝ → ℝ
  sourceIdentity : ∀ T H : ℝ, 0 ≤ T → 1 ≤ H →
    PPNCP04.crossEnergy T = head H T+tail H T+residual H T

def signedSettlement (D : ExactDecomposition) (height : ℝ → ℝ) (T : ℝ) : ℝ :=
  D.head (height T) T+D.residual (height T) T

def RightLineTailBound (D : ExactDecomposition) (height : ℝ → ℝ) : Prop :=
  PPNCP04.PolynomialBound (fun T => |D.tail (height T) T|)

def SignedSettlementBound (D : ExactDecomposition) (height : ℝ → ℝ) : Prop :=
  PPNCP04.PolynomialBound (signedSettlement D height)

/-- BMID + an actual all-real tail bound + signed joint settlement imply P04.
No absolute-value bound is required of the head or residual separately. -/
theorem assembly_implies_literal_P04 (D : ExactDecomposition) (height : ℝ → ℝ)
    (height_valid : ∀ T : ℝ, 0 ≤ T → 1 ≤ height T)
    (tail_bound : RightLineTailBound D height)
    (settlement_bound : SignedSettlementBound D height) : PPNCP04.P04 := by
  obtain ⟨C_T,r_T,hCT,hrT,hTail⟩ := tail_bound
  obtain ⟨C_S,r_S,hCS,hrS,hSigned⟩ := settlement_bound
  refine ⟨C_T+C_S,max r_T r_S,add_nonneg hCT hCS,
    le_trans hrT (le_max_left _ _),?_⟩
  intro T hT
  have hb : 1 ≤ 1+T := by linarith
  have ht := (le_abs_self (D.tail (height T) T)).trans (hTail T hT)
  have hs := hSigned T hT
  have htp := Real.rpow_le_rpow_of_exponent_le hb (le_max_left r_T r_S)
  have hsp := Real.rpow_le_rpow_of_exponent_le hb (le_max_right r_T r_S)
  have hi := D.sourceIdentity T (height T) hT (height_valid T hT)
  dsimp [signedSettlement] at hs
  calc
    PPNCP04.crossEnergy T ≤ C_T*(1+T)^r_T+C_S*(1+T)^r_S := by linarith
    _ ≤ C_T*(1+T)^(max r_T r_S)+C_S*(1+T)^(max r_T r_S) :=
      add_le_add (mul_le_mul_of_nonneg_left htp hCT)
        (mul_le_mul_of_nonneg_left hsp hCS)
    _ = _ := by ring

def TransformRouteConstruction : Prop :=
  ∃ (D : ExactDecomposition) (height : ℝ → ℝ),
    (∀ T : ℝ, 0 ≤ T → 1 ≤ height T) ∧
      RightLineTailBound D height ∧ SignedSettlementBound D height

theorem transform_route_implies_P04 (h : TransformRouteConstruction) : PPNCP04.P04 := by
  obtain ⟨D,height,hH,hTail,hSigned⟩ := h
  exact assembly_implies_literal_P04 D height hH hTail hSigned

/-- The improper majorant has a computed integral, not a zero-valued fallback. -/
theorem right_tail_majorant {A m H : ℝ} (hm : 1 < m) (hH : 0 < H) :
    IntegrableOn (fun t : ℝ => A*t^(-m)) (Ioi H) ∧
      (∫ t : ℝ in Ioi H, A*t^(-m)) = A*H^(1-m)/(m-1) := by
  have hi := (integrableOn_Ioi_rpow_of_lt (a := -m) (by linarith) hH).const_mul A
  refine ⟨hi,?_⟩
  rw [integral_const_mul, integral_Ioi_rpow_of_lt (by linarith : -m < -1) hH]
  rw [show -m+1 = 1-m by ring]
  have hm0 : m-1 ≠ 0 := by linarith
  have hm1 : 1-m ≠ 0 := by linarith
  field_simp [hm0,hm1]
  ring

/-- A measurable right-line integrand dominated by an integrable power tail
is genuinely integrable; this prevents misuse of an undefined integral. -/
theorem right_tail_bound {F : ℝ → ℂ} {A m H : ℝ}
    (hm : 1 < m) (hH : 0 < H)
    (hF : AEStronglyMeasurable F (volume.restrict (Ioi H)))
    (majorant : ∀ t ∈ Ioi H, ‖F t‖ ≤ A*t^(-m)) :
    IntegrableOn F (Ioi H) ∧
      ‖∫ t : ℝ in Ioi H, F t‖ ≤ A*H^(1-m)/(m-1) := by
  obtain ⟨hi,heq⟩ := right_tail_majorant (A := A) hm hH
  have hae : ∀ᵐ t ∂volume.restrict (Ioi H), ‖F t‖ ≤ A*t^(-m) := by
    filter_upwards [ae_restrict_mem measurableSet_Ioi] with t ht
    exact majorant t ht
  refine ⟨hi.mono' hF hae,?_⟩
  rw [← heq]
  exact norm_integral_le_of_norm_le hi hae

/-- Exact height cancellation for the cited external A-scale tail profile.
This scalar identity asserts no adapter from that residual to CCC. -/
theorem external_height_cancellation (K α A : ℝ) :
    K*Real.exp (α*A)/(A^9*(Real.exp (α*A/5))^5) = K/A^9 := by
  rw [← Real.exp_nat_mul]
  norm_num only [Nat.cast_ofNat]
  rw [show (5:ℝ)*(α*A/5) = α*A by ring]
  have he : Real.exp (α*A) ≠ 0 := (Real.exp_pos _).ne'
  by_cases hA : A = 0
  · simp [hA]
  · field_simp

def AnalyticClosureConstruction : Prop := PPNCP04.P04 → _root_.RiemannHypothesis

/-- Terminal OR-branch consumer with the unproved analytic adapter visible.
This theorem is an implication, not a proof of either construction input. -/
theorem assembled_route_implies_literal_RH (route : TransformRouteConstruction)
    (analytic : AnalyticClosureConstruction) : _root_.RiemannHypothesis :=
  analytic (transform_route_implies_P04 route)

end EulerP04RH

#print axioms EulerP04RH.assembly_implies_literal_P04
#print axioms EulerP04RH.right_tail_bound
#print axioms EulerP04RH.assembled_route_implies_literal_RH
