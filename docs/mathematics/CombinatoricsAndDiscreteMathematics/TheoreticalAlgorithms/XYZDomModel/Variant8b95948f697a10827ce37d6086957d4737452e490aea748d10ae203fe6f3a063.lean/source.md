# Complete source: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.XYZDomModel.Variant8b95948f697a10827ce37d6086957d4737452e490aea748d10ae203fe6f3a063

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `bbc54a10170827c9d898923ecdcddd0cc2203e6d` · SHA-256 `8b95948f697a10827ce37d6086957d4737452e490aea748d10ae203fe6f3a063`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
module

public import Presentation.Transport.Projection
public import Surface.Core.XYZ.Transport

/-!
# Pure DOM commit adapter for XYZ transport

This module is the XYZ compatibility facade over the payload-neutral
`Presentation.Transport` projection model.  The model retains the exact
`RevisionedXYZ` admitted by the verifier; raw XYZ channels are only a derived
view.  Consequently there is no parallel `Nat` revision register and no DOM
field that can become an independent color-state authority.

`commitAdmitted` still rechecks the race-sensitive source snapshot and target
revision immediately before projection.  The definitions are pure finite
models: they do not claim that a browser performed the modeled mutation.
-/

public section

namespace Presentation.XYZDomModel

open Surface.Core.Transport
open Surface.Core.XYZ

variable {Host EdgeId : Type*}
variable [Fintype Host] [DecidableEq Host]
variable [Fintype EdgeId] [DecidableEq EdgeId]

/-- Derived browser-facing fields.  The authoritative value remains the exact
`RevisionedXYZ` stored on the generic projection node. -/
@[surface_novel]
structure XYZDomView where
  xRaw : Int
  yRaw : Int
  zRaw : Int
deriving DecidableEq, Repr

@[expose] def xyzDomProjectionAdapter :
    Presentation.Transport.ProjectionAdapter
      (FixedXYZ xyzFormatV1) XYZDomView where
  render value :=
    { xRaw := value.x.raw
      yRaw := value.y.raw
      zRaw := value.z.raw }

/-- XYZ DOM nodes and models are exact instances of the generic admitted
publication projection substrate. -/
abbrev DomNode :=
  Presentation.Transport.ProjectionNode (FixedXYZ xyzFormatV1) XYZDomView

abbrev DomModel :=
  Presentation.Transport.PresentationModel (FixedXYZ xyzFormatV1) XYZDomView

/-! Compatibility accessors for the historical DOM-facing API. -/

@[expose] def DomNode.revision
    (node : DomNode) : Surface.Core.Transport.Revision :=
  node.admitted.revision

@[expose] def DomNode.xRaw (node : DomNode) : Int := node.view.xRaw

@[expose] def DomNode.yRaw (node : DomNode) : Int := node.view.yRaw

@[expose] def DomNode.zRaw (node : DomNode) : Int := node.view.zRaw

@[expose] def DomModel.publishedRevision
    (model : DomModel) : Option Surface.Core.Transport.Revision :=
  model.published.map Revisioned.revision

@[expose] def targetHostCode
    (admitted : AdmittedProposal Host EdgeId) : Nat :=
  admitted.contract.hostCode.code admitted.edge.target

@[expose] def preparedPublication
    (admitted : AdmittedProposal Host EdgeId) :
    Presentation.Transport.PreparedPublication (FixedXYZ xyzFormatV1) where
  targetHostCode := targetHostCode admitted
  sourceSnapshotHash := admitted.snapshot.snapshotHash
  expectedTargetRevision? :=
    admitted.register.current.map Revisioned.revision
  incoming := admitted.output
  admittedByVerifier := true

/-- Replace one addressed node through the generic deterministic adapter. -/
@[expose] def DomNode.withRevisionedXYZ
    (node : DomNode) (value : RevisionedXYZ xyzFormatV1) : DomNode :=
  Presentation.Transport.ProjectionNode.withPublication
    xyzDomProjectionAdapter node value

/-- Canonical finite-model node for an admitted empty target register. -/
@[expose] def DomNode.fromRevisionedXYZ
    (hostCode : Nat) (value : RevisionedXYZ xyzFormatV1) : DomNode where
  stableNodeId := hostCode
  hostCode := hostCode
  admitted := value
  view := xyzDomProjectionAdapter.render value.value

/-- Project an already-admitted value.  This is the XYZ specialization of the
generic accepted-publication projection and retains the exact payload and
revision. -/
@[expose] def applyAdmittedProjection
    (model : DomModel) (admitted : AdmittedProposal Host EdgeId) : DomModel :=
  Presentation.Transport.projectAccepted xyzDomProjectionAdapter model
    (preparedPublication admitted)

@[surface_novel, surface_published]
theorem applyAdmittedProjection_publishes_output_revision
    (model : DomModel) (admitted : AdmittedProposal Host EdgeId) :
    (applyAdmittedProjection model admitted).publishedRevision =
      some admitted.output.revision := by
  rfl

@[surface_novel, surface_published]
theorem applyAdmittedProjection_preserves_payload_identity_reference
    (model : DomModel) (admitted : AdmittedProposal Host EdgeId) :
    (applyAdmittedProjection model admitted).published =
      some admitted.output := by
  rfl

@[surface_novel, surface_published]
theorem applyAdmittedProjection_preserves_sourceSnapshotHash
    (model : DomModel) (admitted : AdmittedProposal Host EdgeId) :
    (applyAdmittedProjection model admitted).sourceSnapshotHash =
      model.sourceSnapshotHash := by
  rfl

/-- A deterministic accepted projection always contains the target node. -/
@[surface_novel, surface_published]
theorem applyAdmittedProjection_target_present
    (model : DomModel) (admitted : AdmittedProposal Host EdgeId) :
    ∃ node ∈ (applyAdmittedProjection model admitted).nodes,
      node.hostCode = targetHostCode admitted := by
  by_cases targetExists :
      model.nodes.any (fun node ↦
        node.hostCode == targetHostCode admitted) = true
  · rcases List.any_eq_true.mp targetExists with
      ⟨node, nodeMember, nodeCode⟩
    have nodeCodeEq : node.hostCode = targetHostCode admitted :=
      beq_iff_eq.mp nodeCode
    let updatedNode := DomNode.withRevisionedXYZ node admitted.output
    have updatedMember : updatedNode ∈ model.nodes.map (fun current ↦
        if current.hostCode = targetHostCode admitted then
          DomNode.withRevisionedXYZ current admitted.output
        else current) := by
      apply List.mem_map.mpr
      exact ⟨node, nodeMember, by simp [updatedNode, nodeCodeEq]⟩
    refine ⟨updatedNode, ?_, ?_⟩
    · simpa [applyAdmittedProjection,
        Presentation.Transport.projectAccepted, preparedPublication,
        targetExists, DomNode.withRevisionedXYZ] using updatedMember
    · simp [updatedNode, DomNode.withRevisionedXYZ, nodeCodeEq,
        Presentation.Transport.ProjectionNode.withPublication]
  · have targetMissing :
        model.nodes.any (fun node ↦
          node.hostCode == targetHostCode admitted) = false := by
      cases result : model.nodes.any (fun node ↦
          node.hostCode == targetHostCode admitted) with
      | false => rfl
      | true => exact False.elim (targetExists result)
    let appended := DomNode.fromRevisionedXYZ
      (targetHostCode admitted) admitted.output
    refine ⟨appended, ?_, ?_⟩
    · simp [applyAdmittedProjection,
        Presentation.Transport.projectAccepted, preparedPublication,
        targetMissing, appended, DomNode.fromRevisionedXYZ]
    · rfl

/-! ## Runtime verification/commit race firewall -/

@[expose] def DomModel.revisionAt?
    (model : DomModel) (targetHostCode : Nat) :
    Option Surface.Core.Transport.Revision :=
  Presentation.Transport.PresentationModel.revisionAt? model targetHostCode

@[expose] def verifiedTargetRevision?
    (admitted : AdmittedProposal Host EdgeId) :
    Option Surface.Core.Transport.Revision :=
  admitted.register.current.map Revisioned.revision

/-- Exact current-state predicate required immediately before a runtime commit. -/
@[expose] def precommitStateMatches
    (model : DomModel) (admitted : AdmittedProposal Host EdgeId) : Prop :=
  model.sourceSnapshotHash = admitted.snapshot.snapshotHash ∧
    model.revisionAt? (targetHostCode admitted) =
      verifiedTargetRevision? admitted

instance (model : DomModel) (admitted : AdmittedProposal Host EdgeId) :
    Decidable (precommitStateMatches model admitted) := by
  unfold precommitStateMatches
  infer_instance

@[expose] def commitAfterRecheck
    (model : DomModel) (admitted : AdmittedProposal Host EdgeId) :
    Option DomModel :=
  if precommitStateMatches model admitted then
    some (applyAdmittedProjection model admitted)
  else none

@[surface_novel, surface_published]
theorem commitAfterRecheck_eq_some_iff
    (model : DomModel) (admitted : AdmittedProposal Host EdgeId) :
    commitAfterRecheck model admitted =
        some (applyAdmittedProjection model admitted) ↔
      precommitStateMatches model admitted := by
  simp [commitAfterRecheck]

@[surface_novel, surface_published]
theorem sourceSnapshotRace_preventsCommit
    (model : DomModel) (admitted : AdmittedProposal Host EdgeId)
    (changed : model.sourceSnapshotHash ≠ admitted.snapshot.snapshotHash) :
    commitAfterRecheck model admitted = none := by
  simp [commitAfterRecheck, precommitStateMatches, changed]

@[surface_novel, surface_published]
theorem targetRevisionRace_preventsCommit
    (model : DomModel) (admitted : AdmittedProposal Host EdgeId)
    (changed :
      model.revisionAt? (targetHostCode admitted) ≠
        verifiedTargetRevision? admitted) :
    commitAfterRecheck model admitted = none := by
  simp [commitAfterRecheck, precommitStateMatches, changed]

@[expose] def commitAdmitted
    (model : DomModel) (admitted : AdmittedProposal Host EdgeId) : DomModel :=
  (commitAfterRecheck model admitted).getD model

@[surface_novel, surface_published]
theorem commitAdmitted_of_precommitStateMatches
    (model : DomModel) (admitted : AdmittedProposal Host EdgeId)
    (hmatches : precommitStateMatches model admitted) :
    commitAdmitted model admitted = applyAdmittedProjection model admitted := by
  simp [commitAdmitted, commitAfterRecheck, hmatches]

@[surface_novel, surface_published]
theorem commitAdmitted_of_precommitStateMismatch
    (model : DomModel) (admitted : AdmittedProposal Host EdgeId)
    (mismatch : ¬ precommitStateMatches model admitted) :
    commitAdmitted model admitted = model := by
  simp [commitAdmitted, commitAfterRecheck, mismatch]

@[surface_novel, surface_published]
theorem commitAdmitted_target_present
    (model : DomModel) (admitted : AdmittedProposal Host EdgeId)
    (hmatches : precommitStateMatches model admitted) :
    ∃ node ∈ (commitAdmitted model admitted).nodes,
      node.hostCode = targetHostCode admitted := by
  rw [commitAdmitted_of_precommitStateMatches model admitted hmatches]
  exact applyAdmittedProjection_target_present model admitted

@[surface_novel, surface_published]
theorem commitAdmitted_publishes_output_revision
    (model : DomModel) (admitted : AdmittedProposal Host EdgeId)
    (hmatches : precommitStateMatches model admitted) :
    (commitAdmitted model admitted).publishedRevision =
      some admitted.output.revision := by
  rw [commitAdmitted_of_precommitStateMatches model admitted hmatches]
  exact applyAdmittedProjection_publishes_output_revision model admitted

@[surface_novel, surface_published]
theorem commitAdmitted_preserves_payload_identity_reference
    (model : DomModel) (admitted : AdmittedProposal Host EdgeId)
    (hmatches : precommitStateMatches model admitted) :
    (commitAdmitted model admitted).published = some admitted.output := by
  rw [commitAdmitted_of_precommitStateMatches model admitted hmatches]
  exact applyAdmittedProjection_preserves_payload_identity_reference
    model admitted

@[surface_novel, surface_published]
theorem commitAdmitted_preserves_sourceSnapshotHash
    (model : DomModel) (admitted : AdmittedProposal Host EdgeId) :
    (commitAdmitted model admitted).sourceSnapshotHash =
      model.sourceSnapshotHash := by
  by_cases hmatches : precommitStateMatches model admitted
  · rw [commitAdmitted_of_precommitStateMatches model admitted hmatches]
    exact applyAdmittedProjection_preserves_sourceSnapshotHash model admitted
  · rw [commitAdmitted_of_precommitStateMismatch model admitted hmatches]

@[expose] def handleVerificationResult
    (model : DomModel) (result : VerificationResult Host EdgeId) : DomModel :=
  match result with
  | .admitted admitted => commitAdmitted model admitted
  | .rejected _ => model

@[surface_novel, surface_published]
theorem rejectedProposal_leavesDomModelUnchanged
    (model : DomModel) (reason : Surface.Core.XYZ.ProposalRejection) :
    handleVerificationResult (Host := Host) (EdgeId := EdgeId) model
      (.rejected reason) = model := by
  rfl

@[surface_novel, surface_published]
theorem admittedSourceSnapshotRace_leavesDomModelUnchanged
    (model : DomModel) (admitted : AdmittedProposal Host EdgeId)
    (changed : model.sourceSnapshotHash ≠ admitted.snapshot.snapshotHash) :
    handleVerificationResult model (.admitted admitted) = model := by
  simp [handleVerificationResult, commitAdmitted, commitAfterRecheck,
    precommitStateMatches, changed]

@[surface_novel, surface_published]
theorem admittedTargetRevisionRace_leavesDomModelUnchanged
    (model : DomModel) (admitted : AdmittedProposal Host EdgeId)
    (changed :
      model.revisionAt? (targetHostCode admitted) ≠
        verifiedTargetRevision? admitted) :
    handleVerificationResult model (.admitted admitted) = model := by
  simp [handleVerificationResult, commitAdmitted, commitAfterRecheck,
    precommitStateMatches, changed]

end Presentation.XYZDomModel
```
