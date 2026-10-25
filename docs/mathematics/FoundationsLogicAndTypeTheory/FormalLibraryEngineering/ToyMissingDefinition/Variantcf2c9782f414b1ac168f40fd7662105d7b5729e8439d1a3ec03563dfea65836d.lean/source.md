# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.ToyMissingDefinition.Variantcf2c9782f414b1ac168f40fd7662105d7b5729e8439d1a3ec03563dfea65836d

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `2712b685cd3e816f11363fd0a8d843ae38bdb8d1` · SHA-256 `216afe0163fb2ba071a30562abeb0b07ee010155686a07641d81ed2a502a2431`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.ToyMissingDefinitionResidue.Variante71ee2aa7cac13374c22b48e1edb4b6953d3782cf4066c8e1ab3962893a0bbf2","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"e71ee2aa7cac13374c22b48e1edb4b6953d3782cf4066c8e1ab3962893a0bbf2","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Foundations.Unclassified.SourceCorpus.ToyMissingDefinitionResidue.Variante71ee2aa7cac13374c22b48e1edb4b6953d3782cf4066c8e1ab3962893a0bbf2","mathematical_subject":"Foundations.Unclassified","original_sha256":"e71ee2aa7cac13374c22b48e1edb4b6953d3782cf4066c8e1ab3962893a0bbf2","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Head/Think_retired/formal/Quarantine/SourceOverlap/formal/Think/Transfers/Examples/ToyMissingDefinition.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Think.Imports.NonsettlingAuthorityReceipt
import Think.Targets.ExternalResidues
import Think.Transfers.ResidueState


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.ToyMissingDefinitionResidue.Variante71ee2aa7cac13374c22b48e1edb4b6953d3782cf4066c8e1ab3962893a0bbf2

set_option autoImplicit false

namespace Think.Transfers.Examples.ToyMissingDefinition

def toyMissingDefinitionResidue : FWR.Residue :=
  { target := FWR.Target.ExternalAuthorityBoundary
    atomId := "toy.missingDefinition"
    kind := FWR.ResidueKind.missingDefinition
    blocks := "toy statement surface has not been typed"
    clearsBy := "local imported theorem plus adapter" }

theorem toy_local_statement : True := by
  trivial

def toyMissingDefinitionObligation :
    Think.Transfers.ResidueObligation toyMissingDefinitionResidue :=
  { localClaim := True
    target := FWR.Target.ExternalAuthorityBoundary
    targetMatches := rfl
    kind := FWR.ResidueKind.missingDefinition
    kindMatches := rfl
    atomId := "toy.missingDefinition"
    atomMatches := rfl
    blocks := "toy statement surface has not been typed"
    blocksMatches := rfl
    clearsBy := "local imported theorem plus adapter"
    clearsByMatches := rfl }

def toyImportCandidate :
    Think.Targets.ImportPlan.TargetImportCandidate :=
  { target := FWR.Target.ExternalAuthorityBoundary
    atomId := "toy.missingDefinition"
    residueKind := FWR.ResidueKind.missingDefinition
    plannedAuthority := Think.Imports.AuthorityLevel.adaptedTheorem
    status := Think.Targets.ImportPlan.ImportCandidateStatus.definitionSurface
    finalTargetRetained := true
    note := "toy candidate for a local missing-definition clearance" }

def toyCandidateResidueObligation :
    Think.Transfers.CandidateResidueObligation
      toyImportCandidate
      toyMissingDefinitionResidue :=
  { obligation := toyMissingDefinitionObligation
    candidateTargetMatches := rfl
    candidateAtomMatches := rfl
    candidateKindMatches := rfl
    candidateRetainsFinal := rfl }

theorem toy_imported_theorem : True := by
  trivial

def toyImportedTheorem : Think.Imports.ImportedTheorem :=
  { theoremId := "toy.true"
    sourceModule := "Think.Transfers.Examples.ToyMissingDefinition"
    theoremName :=
      "Think.Transfers.Examples.ToyMissingDefinition.toy_imported_theorem"
    importedProp := True
    proof := toy_imported_theorem }

def toyMissingDefinitionAdapter :
    Think.Transfers.TransferAdapter
      toyMissingDefinitionObligation.localClaim
      toyImportedTheorem.importedProp where
  bridge := by
    intro h
    exact h

def toyMissingDefinitionClearance :
    Think.Transfers.ClearsResidue toyMissingDefinitionResidue :=
  Think.Compact.importedTheoremAdapterClearance
    toyMissingDefinitionResidue
    toyImportCandidate
    toyCandidateResidueObligation
    toyImportedTheorem
    toyMissingDefinitionAdapter
    (by decide)
    (by decide)

def toyInitialState : Think.Transfers.ResidueState :=
  { active := [toyMissingDefinitionResidue]
    cleared := [] }

def toyActiveClearance :
    Think.Transfers.ActiveClearance
      toyInitialState
      toyMissingDefinitionResidue :=
  { active := by simp [toyInitialState]
    clearance := toyMissingDefinitionClearance }

def toyClearedState : Think.Transfers.ResidueState :=
  Think.Transfers.applyActiveClearance
    toyInitialState
    toyMissingDefinitionResidue
    toyActiveClearance

def toyMissingDefinitionReceipt :
    Think.Imports.NonsettlingAuthorityReceipt :=
  Think.Compact.importedTheoremAdapterReceipt
    toyMissingDefinitionResidue
    toyMissingDefinitionClearance

theorem toyMissingDefinition_proves_local_obligation :
    toyMissingDefinitionObligation.localClaim := by
  exact
    Think.Transfers.clearsResidue_proves_local_obligation
      toyMissingDefinitionResidue
      toyMissingDefinitionClearance

theorem toyMissingDefinition_applyClearance_clears_exact_residue :
    toyMissingDefinitionResidue ∈ toyClearedState.cleared := by
  exact
    Think.Transfers.applyActiveClearance_clears_exact_residue
      toyInitialState
      toyMissingDefinitionResidue
      toyActiveClearance

theorem toyMissingDefinition_applyClearance_removes_active_residue :
    toyMissingDefinitionResidue ∉ toyClearedState.active := by
  exact
    Think.Transfers.applyActiveClearance_removes_exact_active_residue
      toyInitialState
      toyMissingDefinitionResidue
      toyActiveClearance

theorem toyMissingDefinition_was_active_before_clearance :
    toyMissingDefinitionResidue ∈ toyInitialState.active := by
  exact
    Think.Transfers.applyActiveClearance_requires_active
      toyInitialState
      toyMissingDefinitionResidue
      toyActiveClearance

theorem toyMissingDefinition_not_conjectural :
    toyMissingDefinitionResidue.kind ≠ FWR.ResidueKind.conjecturalAtom := by
  exact toyMissingDefinitionClearance.nonconjectural

theorem toyMissingDefinition_not_replacementOverclaim :
    toyMissingDefinitionResidue.kind ≠
      FWR.ResidueKind.replacementOverclaim := by
  exact toyMissingDefinitionClearance.notReplacementOverclaim

theorem toyMissingDefinitionReceipt_clears_named_residue :
    toyMissingDefinitionReceipt.receipt.clearsResidues =
      ["toy.missingDefinition"] := by
  rfl

theorem toyMissingDefinitionReceipt_forbidsTargetSettlement :
    toyMissingDefinitionReceipt.receipt.forbidsTargetSettlement = true := by
  exact toyMissingDefinitionReceipt.forbids

theorem toyMissingDefinition_active_clearance_preserves_nonsettlement :
    toyActiveClearance.clearance.doesNotSettleTarget = true := by
  exact
    Think.Transfers.clearsResidue_does_not_settle_target
      toyMissingDefinitionResidue
      toyActiveClearance.clearance

theorem toyMissingDefinitionReceipt_has_boundary_residue
    (P : Prop) :
    (toyMissingDefinitionReceipt.receipt.targetBoundaryCheck
      P toyMissingDefinitionResidue).hasResidue = true := by
  exact
    Think.Imports.NonsettlingAuthorityReceipt.nonsettling_receipt_has_boundary_residue
      toyMissingDefinitionReceipt P toyMissingDefinitionResidue

end Think.Transfers.Examples.ToyMissingDefinition
```
