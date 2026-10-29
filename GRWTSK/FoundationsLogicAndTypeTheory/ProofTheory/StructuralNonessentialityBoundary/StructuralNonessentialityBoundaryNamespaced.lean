-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.ProofTheory
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.ProofTheory.DecorativeExpression.Variantb46c71f8b16fdb8fcb3ba065fdf55661423ce6538f10b6caac4db892f8297d9e","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"b46c71f8b16fdb8fcb3ba065fdf55661423ce6538f10b6caac4db892f8297d9e","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Logic.ProofTheory.SourceCorpus.DecorativeExpression.Variantb46c71f8b16fdb8fcb3ba065fdf55661423ce6538f10b6caac4db892f8297d9e","mathematical_subject":"Logic.ProofTheory","original_sha256":"b46c71f8b16fdb8fcb3ba065fdf55661423ce6538f10b6caac4db892f8297d9e","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/08/22/Reflexive/docs/theorem-transfer/audits/internal-lean-semantic-correction-cycle-7/reproductions/02_structural_nonessentiality_boundary.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import FCRS.TheoremTransfer.MultiSourceExample


namespace GRWTSK.FoundationsLogicAndTypeTheory.ProofTheory.DecorativeExpression.Variantb46c71f8b16fdb8fcb3ba065fdf55661423ce6538f10b6caac4db892f8297d9e

namespace FCRS.TheoremTransfer.Cycle7.StructuralNonessentiality

open FCRS.TheoremTransfer.MultiSourceExample

/--
Both exact source leaves are present, but the root rule deliberately ignores
their proof objects. This is accepted structural coverage and is not presented
as counterfactual logical essentiality by the repaired API or documentation.
-/
def decorativeExpression : MultiSourceInferenceExpression Bool
    (fun index =>
      (sourceTranslation index).mapProposition (sourceTheorem index).proposition)
    (True ∧ True) :=
  .inference
    (PremiseIndex := Bool)
    (premiseProposition := fun _ => True)
    (version "cycle-7-decorative-rule")
    (fun index => .source index)
    (fun _proofs => ⟨True.intro, True.intro⟩)

/-- A full record update succeeds only after rebuilding the dependent joins. -/
def decorativeDerivation : MultiSourceTheoremTransferDerivation
    targetVersion targetAssumptions targetScope := {
  derivation with
  jointInferenceArtifact := version "cycle-7-structural-only-inference"
  jointInferenceExpression := decorativeExpression
  derivedProofObjectExact := by intros; rfl
  sourceLeafDependency := fun index => {
    expressionUsesSource := ⟨index, rfl⟩
    dependency := match index with
      | false => .left
      | true => .right
  }
  edgeKindExact := by intro index; cases index <;> rfl
  bridgeArtifactExact := by intro index; cases index <;> rfl
  evidenceArtifactExact := by intro index; cases index <;> rfl
}

theorem decorative_expression_covers_both :
    decorativeDerivation.jointInferenceExpression.UsesSource false ∧
      decorativeDerivation.jointInferenceExpression.UsesSource true := by
  exact ⟨decorativeDerivation.sourceLeafCoverage false,
    decorativeDerivation.sourceLeafCoverage true⟩

theorem decorative_expression_keeps_exact_fan_in :
    ∃ left right : decorativeDerivation.SourceIndex,
      left ≠ right ∧
      decorativeDerivation.sourceNode left ≠ decorativeDerivation.sourceNode right := by
  obtain ⟨left, right, distinct, nodeDistinct, _, _⟩ :=
    decorativeDerivation.hasDistinctFanIn
  exact ⟨left, right, distinct, nodeDistinct⟩

#check decorativeDerivation
#check decorative_expression_covers_both
#check decorative_expression_keeps_exact_fan_in

end FCRS.TheoremTransfer.Cycle7.StructuralNonessentiality
