-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.ProofTheory
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.ProofTheory.LeaflessExpression.Variant73cff5a4f47fc51466e6ae67996483e6690eb37d38ae4f78532a628d675c87e2","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"73cff5a4f47fc51466e6ae67996483e6690eb37d38ae4f78532a628d675c87e2","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Logic.ProofTheory.SourceCorpus.LeaflessExpression.Variant73cff5a4f47fc51466e6ae67996483e6690eb37d38ae4f78532a628d675c87e2","mathematical_subject":"Logic.ProofTheory","original_sha256":"73cff5a4f47fc51466e6ae67996483e6690eb37d38ae4f78532a628d675c87e2","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/08/22/Reflexive/docs/theorem-transfer/audits/internal-lean-semantic-correction-cycle-7/reproductions/01_leaf_and_join_rejection_boundaries.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import FCRS.TheoremTransfer.MultiSourceExample


namespace GRWTSK.FoundationsLogicAndTypeTheory.ProofTheory.LeaflessExpression.Variant73cff5a4f47fc51466e6ae67996483e6690eb37d38ae4f78532a628d675c87e2

namespace FCRS.TheoremTransfer.Cycle7.LeafAndJoinBoundaries

open FCRS.TheoremTransfer.MultiSourceExample

/-- A leafless constant rule is a well-typed expression, but covers no source. -/
def leaflessExpression : MultiSourceInferenceExpression Bool
    (fun index =>
      (sourceTranslation index).mapProposition (sourceTheorem index).proposition)
    (True ∧ True) :=
  .inference
    (PremiseIndex := Empty)
    (premiseProposition := fun index => nomatch index)
    (version "cycle-7-leafless")
    (fun index => nomatch index)
    (fun _proofs => ⟨True.intro, True.intro⟩)

theorem leafless_uses_no_source (index : Bool) :
    ¬ leaflessExpression.UsesSource index := by
  simp only [leaflessExpression, MultiSourceInferenceExpression.UsesSource]
  intro emptyIndex
  exact nomatch emptyIndex

/-- Both child positions duplicate the left source; the right source is absent. -/
def duplicateLeftExpression : MultiSourceInferenceExpression Bool
    (fun index =>
      (sourceTranslation index).mapProposition (sourceTheorem index).proposition)
    (True ∧ True) :=
  .inference
    (PremiseIndex := Bool)
    (premiseProposition := fun _ => True)
    (version "cycle-7-duplicate-left")
    (fun _ => .source false)
    (fun _proofs => ⟨True.intro, True.intro⟩)

theorem duplicate_left_omits_right :
    ¬ duplicateLeftExpression.UsesSource true := by
  simp [duplicateLeftExpression, MultiSourceInferenceExpression.UsesSource]

/-- A record update cannot retain coverage fields after installing no leaves. -/
example : True := by
  fail_if_success
    let _bad : MultiSourceTheoremTransferDerivation
        targetVersion targetAssumptions targetScope := {
      derivation with
      jointInferenceExpression := leaflessExpression
    }
  trivial

/-- Duplicating one source cannot satisfy the other source's coverage field. -/
example : True := by
  fail_if_success
    let _bad : MultiSourceTheoremTransferDerivation
        targetVersion targetAssumptions targetScope := {
      derivation with
      jointInferenceExpression := duplicateLeftExpression
    }
  trivial

/-- A leaf with the wrong source index cannot inhabit a different proposition. -/
def variedSourceProposition : Bool → targetTheory.Proposition
  | false => True
  | true => False

example : True := by
  fail_if_success
    let _wrongProposition : MultiSourceInferenceExpression Bool
        variedSourceProposition True := .source true
  trivial

/-- A witness for the right leaf cannot certify occurrence of the left index. -/
example : True := by
  fail_if_success
    let _swappedUse : jointInferenceExpression.UsesSource false := ⟨true, rfl⟩
  trivial

/-- The right graph edge cannot be installed as the left source's joined edge. -/
example : True := by
  fail_if_success
    let _swappedEdge : MultiSourceLeafDependency jointInferenceExpression
        dependencyGraph (fun index => FanInNode.source index) FanInNode.target
        false := {
      expressionUsesSource := ⟨false, rfl⟩
      dependency := .right
    }
  trivial

/-- A stale record cannot permute source nodes away from their exact joins. -/
example : True := by
  fail_if_success
    let _swappedNodes : MultiSourceTheoremTransferDerivation
        targetVersion targetAssumptions targetScope := {
      derivation with
      sourceNode := fun index => FanInNode.source (!index)
    }
  trivial

end FCRS.TheoremTransfer.Cycle7.LeafAndJoinBoundaries
