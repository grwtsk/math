-- corpus-organization-transform:v1
-- Mathematical subject: Topology.GeneralTopology
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Topology.GeneralTopology.ActualCountConstant.Variant986a7e580d510ff3988217133fc663de5679666dc462bd86205861fa679811e3","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"986a7e580d510ff3988217133fc663de5679666dc462bd86205861fa679811e3","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Topology.GeneralTopology.SourceCorpus.ActualCountConstant.Variant986a7e580d510ff3988217133fc663de5679666dc462bd86205861fa679811e3","mathematical_subject":"Topology.GeneralTopology","original_sha256":"986a7e580d510ff3988217133fc663de5679666dc462bd86205861fa679811e3","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/rh16-tandem-01a1149a/decoder-audit/current-replay/ActualLogarithmicTail.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import ActualPositiveCount
import SourceLogarithmicTail

/-!
Source-specific #326 assembly: the sharper count is obtained from actual Zeta23
unit-window counting via the slot-preserving dictionary. A fixed constant precedes
all real radii and heights. This supplies no retained signed-head witness or RH.
Research direction grwtsk contributors; formal assembly OpenAI Codex.
-/

namespace GRWTSK.Topology.GeneralTopology.ActualCountConstant.Variant986a7e580d510ff3988217133fc663de5679666dc462bd86205861fa679811e3

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
