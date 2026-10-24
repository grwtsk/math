# Complete source: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.XYZDomModel.Variant521083dc18b9bc50946f76d4fde2158c689ed0b4cd0d79b4ef591f16804356b1

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `c56f8430c3020f368f5772bfce226c0761d224f7` · SHA-256 `521083dc18b9bc50946f76d4fde2158c689ed0b4cd0d79b4ef591f16804356b1`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
module

public import Surface.Core.XYZ.Transport

/-!
# Pure DOM commit model for XYZ transport

This module is the theorem-facing firewall in front of browser mutation.  It
models only a finite list of nodes and deterministic replacement by stable
host code.  It does not import a browser API and it does not claim that a
browser performed the modeled mutation.

`commitAdmitted` consumes only a proof-bearing admission and rechecks the
race-sensitive current state before applying it.  `commitAfterRecheck` exposes
the same gate as an `Option` for runtime adapters that need an explicit refusal
signal.  Both compare the source-snapshot hash and target-register revision
with the exact state against which verification ran.
-/

public section

namespace Presentation.XYZDomModel

open Surface.Core.XYZ

@[surface_novel]
structure DomNode where
  stableNodeId : Nat
  hostCode : Nat
  revision : Nat
  xRaw : Int
  yRaw : Int
  zRaw : Int
deriving DecidableEq, Repr

@[surface_novel]
structure DomModel where
  nodes : List DomNode
  publishedRevision : Nat
  sourceSnapshotHash : Hash256
deriving DecidableEq, Repr

variable {Host EdgeId : Type*}
variable [Fintype Host] [DecidableEq Host]
variable [Fintype EdgeId] [DecidableEq EdgeId]

@[expose] def targetHostCode
    (admitted : AdmittedProposal Host EdgeId) : Nat :=
  admitted.contract.hostCode.code admitted.edge.target

/-- Replace the presentation fields of one already-addressed DOM-model node.
Its stable identity and protocol host address cannot be changed by a color
proposal. -/
@[expose] def DomNode.withRevisionedXYZ
    (node : DomNode) (value : RevisionedXYZ xyzFormatV1) : DomNode where
  stableNodeId := node.stableNodeId
  hostCode := node.hostCode
  revision := value.revision.val
  xRaw := value.value.x.raw
  yRaw := value.value.y.raw
  zRaw := value.value.z.raw

/-- Canonical finite-model node used when a verified empty target register has
not yet been projected.  The contract's injective host code is also the new
stable node identifier. -/
@[expose] def DomNode.fromRevisionedXYZ
    (hostCode : Nat) (value : RevisionedXYZ xyzFormatV1) : DomNode where
  stableNodeId := hostCode
  hostCode := hostCode
  revision := value.revision.val
  xRaw := value.value.x.raw
  yRaw := value.value.y.raw
  zRaw := value.value.z.raw

/-- Commit a value that has already crossed the complete proof-bearing
verification boundary.  The source-snapshot hash is preserved: Lean does not
manufacture a new SHA-256 digest after a presentation write.  All existing
projections of the target host are updated.  If verification observed an empty
target register and no projection exists yet, one canonical target node is
appended before publication. -/
@[expose] def applyAdmittedProjection
    (model : DomModel) (admitted : AdmittedProposal Host EdgeId) : DomModel :=
  let targetCode := targetHostCode admitted
  let targetExists := model.nodes.any fun node ↦ node.hostCode == targetCode
  let updated := model.nodes.map fun node ↦
    if node.hostCode = targetCode then
      node.withRevisionedXYZ admitted.output
    else
      node
  let committedNodes :=
    if targetExists then updated
    else updated ++ [DomNode.fromRevisionedXYZ targetCode admitted.output]
  { nodes := committedNodes
    publishedRevision := admitted.output.revision.val
    sourceSnapshotHash := model.sourceSnapshotHash }

@[surface_novel, surface_published]
theorem applyAdmittedProjection_publishes_output_revision
    (model : DomModel) (admitted : AdmittedProposal Host EdgeId) :
    (applyAdmittedProjection model admitted).publishedRevision =
      admitted.output.revision.val := by
  rfl

@[surface_novel, surface_published]
theorem applyAdmittedProjection_preserves_sourceSnapshotHash
    (model : DomModel) (admitted : AdmittedProposal Host EdgeId) :
    (applyAdmittedProjection model admitted).sourceSnapshotHash =
      model.sourceSnapshotHash := by
  rfl

/-- A deterministic commit always has a concrete target projection, including
the verified-empty-register case in which the projection is appended. -/
@[surface_novel, surface_published]
theorem applyAdmittedProjection_target_present
    (model : DomModel) (admitted : AdmittedProposal Host EdgeId) :
    ∃ node ∈ (applyAdmittedProjection model admitted).nodes,
      node.hostCode = targetHostCode admitted := by
  by_cases targetExists :
      model.nodes.any (fun node ↦ node.hostCode == targetHostCode admitted) = true
  · rcases List.any_eq_true.mp targetExists with
      ⟨node, nodeMember, nodeCode⟩
    have nodeCodeEq : node.hostCode = targetHostCode admitted :=
      beq_iff_eq.mp nodeCode
    let updatedNode := node.withRevisionedXYZ admitted.output
    have updatedMember : updatedNode ∈ model.nodes.map (fun current ↦
        if current.hostCode = targetHostCode admitted then
          current.withRevisionedXYZ admitted.output
        else
          current) := by
      apply List.mem_map.mpr
      exact ⟨node, nodeMember, by simp [updatedNode, nodeCodeEq]⟩
    refine ⟨updatedNode, ?_, ?_⟩
    · simpa [applyAdmittedProjection, targetExists] using updatedMember
    · simp [updatedNode, DomNode.withRevisionedXYZ, nodeCodeEq]
  · have targetMissing :
        model.nodes.any
          (fun node ↦ node.hostCode == targetHostCode admitted) = false := by
      cases result : model.nodes.any
          (fun node ↦ node.hostCode == targetHostCode admitted) with
      | false => rfl
      | true => exact False.elim (targetExists result)
    let appended := DomNode.fromRevisionedXYZ
      (targetHostCode admitted) admitted.output
    refine ⟨appended, ?_, ?_⟩
    · simp [applyAdmittedProjection, targetMissing, appended]
    · rfl

/-! ## Runtime verification/commit race firewall -/

/-- The revision currently represented at a stable host code.  A missing node
is distinct from a node at revision zero. -/
@[expose] def DomModel.revisionAt?
    (model : DomModel) (targetHostCode : Nat) : Option Nat :=
  (model.nodes.find? fun node ↦ node.hostCode == targetHostCode).map
    DomNode.revision

/-- The target-register revision observed by the verifier.  An empty register
must still be empty immediately before commit. -/
@[expose] def verifiedTargetRevision?
    (admitted : AdmittedProposal Host EdgeId) : Option Nat :=
  admitted.register.current.map fun value ↦ value.revision.val

/-- Exact current-state predicate required immediately before a runtime commit.
It compares both race-sensitive coordinates: the source snapshot and the
target register revision.  `none = none` is a legitimate match for an empty
verified register; `commitAdmitted` then creates the first finite projection
instead of publishing a revision with no corresponding node. -/
@[expose] def precommitStateMatches
    (model : DomModel) (admitted : AdmittedProposal Host EdgeId) : Prop :=
  model.sourceSnapshotHash = admitted.snapshot.snapshotHash ∧
    model.revisionAt? (targetHostCode admitted) =
      verifiedTargetRevision? admitted

instance (model : DomModel) (admitted : AdmittedProposal Host EdgeId) :
    Decidable (precommitStateMatches model admitted) := by
  unfold precommitStateMatches
  infer_instance

/-- The runtime-facing pure transaction.  A source or target race produces
`none`; no post-verification mutation is modeled in that branch. -/
@[expose] def commitAfterRecheck
    (model : DomModel) (admitted : AdmittedProposal Host EdgeId) :
    Option DomModel :=
  if precommitStateMatches model admitted then
    some (applyAdmittedProjection model admitted)
  else
    none

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

/-- Required deterministic commit entry point.  It cannot bypass the current
state recheck: any race preserves the input model. -/
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
      admitted.output.revision.val := by
  rw [commitAdmitted_of_precommitStateMatches model admitted hmatches]
  exact applyAdmittedProjection_publishes_output_revision model admitted

@[surface_novel, surface_published]
theorem commitAdmitted_preserves_sourceSnapshotHash
    (model : DomModel) (admitted : AdmittedProposal Host EdgeId) :
    (commitAdmitted model admitted).sourceSnapshotHash =
      model.sourceSnapshotHash := by
  by_cases hmatches : precommitStateMatches model admitted
  · rw [commitAdmitted_of_precommitStateMatches model admitted hmatches]
    exact applyAdmittedProjection_preserves_sourceSnapshotHash model admitted
  · rw [commitAdmitted_of_precommitStateMismatch model admitted hmatches]

/-- Rejection is represented before mutation.  A proof-bearing admission is
still committed only when its verification-time source and target coordinates
match the current model immediately before commit. -/
@[expose] def handleVerificationResult
    (model : DomModel) (result : VerificationResult Host EdgeId) : DomModel :=
  match result with
  | .admitted admitted => commitAdmitted model admitted
  | .rejected _ => model

@[surface_novel, surface_published]
theorem rejectedProposal_leavesDomModelUnchanged
    (model : DomModel) (reason : ProposalRejection) :
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
