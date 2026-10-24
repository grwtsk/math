import ActualPositiveCount
import SourceLogarithmicTail

/-!
Source-specific #326 assembly: the sharper count is obtained from actual Zeta23
unit-window counting via the slot-preserving dictionary. A fixed constant precedes
all real radii and heights. This supplies no retained signed-head witness or RH.
Research direction grwtsk contributors; formal assembly OpenAI Codex.
-/
set_option autoImplicit false
noncomputable section
namespace ContinuousResearch.ActualLogarithmicTail

open Set Filter
open scoped Topology
open FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.ZeroObject
open ContinuousResearch.SourceZeroTail ContinuousResearch.LogarithmicTail
open ContinuousResearch.SourceLogarithmicTail

/-- Fixed independently of both resolution and arithmetic/source radius. -/
def actualCountConstant : ℝ := Classical.choose ActualPositiveCount.actual_positiveCountBound

theorem actualCountConstant_bound : PositiveCountBound actualCountConstant :=
  Classical.choose_spec ActualPositiveCount.actual_positiveCountBound

def actualTailConstant : ℝ := logarithmicConstant actualCountConstant

theorem actualTailConstant_pos : 0 < actualTailConstant :=
  logarithmicConstant_pos actualCountConstant_bound

/-- Unconditional occurrence sixth moment, with both signs and all slots. -/
theorem actual_sixth_moment {T : ℝ} (hT : 2≤T) :
    (∑' o : HeightTail T, sixthWeight o.val) ≤
      (8064/961:ℝ)*actualCountConstant*Real.log T/T^5 :=
  actual_sixth_tail_bound actualCountConstant_bound hT

/-- The same fixed constant controls all three actual omitted source budgets. -/
theorem actual_source_tail_budgets {A T : ℝ} (hA : 1≤A) (hT : 2≤T) :
    (∑' o : HeightTail T, ‖normalizedTransform A (shiftedValue o.val)^2‖) ≤
      actualTailConstant*A^(-9:ℝ)*Real.exp A*Real.log T/T^5 ∧
    (∑' o : HeightTail T, (normalizedTransform A (shiftedValue o.val)).im^2) ≤
      actualTailConstant*A^(-9:ℝ)*Real.exp A*Real.log T/T^5 ∧
    tailError A T ≤ actualTailConstant*A^(-9:ℝ)*Real.exp A*Real.log T/T^5 :=
  ⟨actual_norm_square_tail_bound actualCountConstant_bound hA hT,
    (actual_im_square_tail_bound actualCountConstant_bound hA hT).2,
    actual_tail_error_bound actualCountConstant_bound hA hT⟩

/-- Exact ∃fixedK-before-∀realA,T quantifier order for the source decoder. -/
theorem exists_uniform_source_tail_constant :
    ∃ K : ℝ, 0<K ∧ ∀ A : ℝ, 1≤A → ∀ T : ℝ, 2≤T →
      tailError A T≤K*A^(-9:ℝ)*Real.exp A*Real.log T/T^5 :=
  ⟨actualTailConstant, actualTailConstant_pos,
    fun _ hA _ hT => (actual_source_tail_budgets hA hT).2.2⟩

/-- Source error and literal signed full/head error share one joint real path. -/
theorem actual_joint_uniform {R A : ℝ} (hR : baseRadius≤R) (hRA : R≤A) :
    tailError A (fifthHeight A)≤(actualTailConstant/5)*R^(-8:ℝ) ∧
    |signedFull A-signedHead A (fifthHeight A)|≤(actualTailConstant/5)*R^(-8:ℝ) :=
  ⟨fifthHeight_uniform actualCountConstant_bound hR hRA,
    (signed_truncation_error (fifthHeight_admissible (hR.trans hRA)).1).trans
      (fifthHeight_uniform actualCountConstant_bound hR hRA)⟩

theorem actual_joint_tendsto_zero :
    Tendsto (fun A : ℝ => tailError A (fifthHeight A)) atTop (𝓝 0) :=
  fifthHeight_tendsto_zero actualCountConstant_bound

/-- Its signed witness stays a premise; density supplies only the omitted error. -/
theorem actual_head_upper_transfers {R D : ℝ} (hR : baseRadius≤R)
    (hhead : ∀ A : ℝ, R≤A → signedHead A (fifthHeight A)≤D) :
    ∀ A : ℝ, R≤A → signedFull A≤D+(actualTailConstant/5)*R^(-8:ℝ) :=
  head_upper_transfers actualCountConstant_bound hR hhead

theorem actual_full_upper_transfers {R D : ℝ} (hR : baseRadius≤R)
    (hfull : ∀ A : ℝ, R≤A → signedFull A≤D) :
    ∀ A : ℝ, R≤A → signedHead A (fifthHeight A)≤D+(actualTailConstant/5)*R^(-8:ℝ) :=
  full_upper_transfers actualCountConstant_bound hR hfull

#print axioms actualCountConstant
#print axioms actualCountConstant_bound
#print axioms actualTailConstant
#print axioms actualTailConstant_pos
#print axioms actual_sixth_moment
#print axioms actual_source_tail_budgets
#print axioms exists_uniform_source_tail_constant
#print axioms actual_joint_uniform
#print axioms actual_joint_tendsto_zero
#print axioms actual_head_upper_transfers
#print axioms actual_full_upper_transfers
end ContinuousResearch.ActualLogarithmicTail
