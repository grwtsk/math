# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Projection.Variant2598b849cfebd3f6fb66b5c75b45bc5e478b124241adbeda82a3818b334bfa1b

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `33baae54f9249c1ff274b28d69b9e68a484a8b17` · SHA-256 `2598b849cfebd3f6fb66b5c75b45bc5e478b124241adbeda82a3818b334bfa1b`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
module

public import Presentation.Transport.Model

/-!
# Pure admitted-publication projection

Verification, state rechecks, register classification, and rendering are
ordered. Every rejection branch returns the exact input model.
-/

public section

namespace Presentation.Transport

open Surface.Core.Transport

universe u v

@[expose] def ProjectionNode.withPublication
    {Payload : Type u} {View : Type v}
    (adapter : ProjectionAdapter Payload View)
    (node : ProjectionNode Payload View)
    (incoming : Revisioned Payload) : ProjectionNode Payload View where
  stableNodeId := node.stableNodeId
  hostCode := node.hostCode
  admitted := incoming
  view := adapter.render incoming.value

@[expose] def projectAccepted
    {Payload : Type u} {View : Type v}
    (adapter : ProjectionAdapter Payload View)
    (model : PresentationModel Payload View)
    (publication : PreparedPublication Payload) :
    PresentationModel Payload View :=
  let targetExists := model.nodes.any (fun node ↦
    node.hostCode == publication.targetHostCode)
  let updated := model.nodes.map (fun node ↦
    if node.hostCode = publication.targetHostCode then
      node.withPublication adapter publication.incoming
    else node)
  let nodes := if targetExists then updated else
    updated ++ [{
      stableNodeId := publication.targetHostCode
      hostCode := publication.targetHostCode
      admitted := publication.incoming
      view := adapter.render publication.incoming.value
    }]
  { nodes := nodes
    published := some publication.incoming
    sourceSnapshotHash := model.sourceSnapshotHash }

@[expose] def publicationMerge
    {Payload : Type u} {View : Type v} [DecidableEq Payload]
    (model : PresentationModel Payload View)
    (publication : PreparedPublication Payload) : MergeDecision Payload :=
  merge ⟨model.payloadAt? publication.targetHostCode⟩ publication.incoming

@[expose] def processPublication
    {Payload : Type u} {View : Type v} [DecidableEq Payload]
    (adapter : ProjectionAdapter Payload View)
    (model : PresentationModel Payload View)
    (publication : PreparedPublication Payload) :
    PublicationResult Payload View :=
  if publication.admittedByVerifier ≠ true then
    ⟨.verifierRejected, model⟩
  else if model.sourceSnapshotHash ≠ publication.sourceSnapshotHash then
    ⟨.sourceSnapshotRace, model⟩
  else if model.revisionAt? publication.targetHostCode ≠
      publication.expectedTargetRevision? then
    ⟨.targetRevisionRace, model⟩
  else
    match publicationMerge model publication with
    | .accepted _ => ⟨.applied, projectAccepted adapter model publication⟩
    | .replay _ => ⟨.replay, model⟩
    | .stale _ _ => ⟨.stale, model⟩
    | .conflict _ _ => ⟨.sameRevisionConflict, model⟩

@[surface_novel, surface_published]
theorem projection_preserves_payload_identity_reference
    {Payload : Type u} {View : Type v}
    (adapter : ProjectionAdapter Payload View)
    (model : PresentationModel Payload View)
    (publication : PreparedPublication Payload) :
    (projectAccepted adapter model publication).published =
      some publication.incoming := by
  rfl

@[surface_novel, surface_published]
theorem projection_preserves_transport_revision
    {Payload : Type u} {View : Type v}
    (adapter : ProjectionAdapter Payload View)
    (model : PresentationModel Payload View)
    (publication : PreparedPublication Payload) :
    (projectAccepted adapter model publication).published.map
        Revisioned.revision = some publication.incoming.revision := by
  rfl

@[surface_novel, surface_published]
theorem rejectedPublication_leavesPresentationModelUnchanged
    {Payload : Type u} {View : Type v} [DecidableEq Payload]
    (adapter : ProjectionAdapter Payload View)
    (model : PresentationModel Payload View)
    (publication : PreparedPublication Payload)
    (rejected : publication.admittedByVerifier ≠ true) :
    (processPublication adapter model publication).model = model := by
  simp [processPublication, rejected]

@[surface_novel, surface_published]
theorem sourceSnapshotRace_leavesPresentationModelUnchanged
    {Payload : Type u} {View : Type v} [DecidableEq Payload]
    (adapter : ProjectionAdapter Payload View)
    (model : PresentationModel Payload View)
    (publication : PreparedPublication Payload)
    (admitted : publication.admittedByVerifier = true)
    (race : model.sourceSnapshotHash ≠ publication.sourceSnapshotHash) :
    (processPublication adapter model publication).model = model := by
  simp [processPublication, admitted, race]

@[surface_novel, surface_published]
theorem stalePublication_leavesPresentationModelUnchanged
    {Payload : Type u} {View : Type v} [DecidableEq Payload]
    (adapter : ProjectionAdapter Payload View)
    (model : PresentationModel Payload View)
    (publication : PreparedPublication Payload)
    (admitted : publication.admittedByVerifier = true)
    (sameSnapshot : model.sourceSnapshotHash = publication.sourceSnapshotHash)
    (sameTarget : model.revisionAt? publication.targetHostCode =
      publication.expectedTargetRevision?)
    (current : Revisioned Payload)
    (stale : publicationMerge model publication =
      .stale current publication.incoming) :
    (processPublication adapter model publication).model = model := by
  simp only [processPublication, admitted, sameSnapshot, sameTarget, ne_eq,
    not_true_eq_false, if_false]
  rw [stale]

@[surface_novel, surface_published]
theorem sameRevisionConflict_leavesPresentationModelUnchanged
    {Payload : Type u} {View : Type v} [DecidableEq Payload]
    (adapter : ProjectionAdapter Payload View)
    (model : PresentationModel Payload View)
    (publication : PreparedPublication Payload)
    (admitted : publication.admittedByVerifier = true)
    (sameSnapshot : model.sourceSnapshotHash = publication.sourceSnapshotHash)
    (sameTarget : model.revisionAt? publication.targetHostCode =
      publication.expectedTargetRevision?)
    (current : Revisioned Payload)
    (conflict : publicationMerge model publication =
      .conflict current publication.incoming) :
    (processPublication adapter model publication).model = model := by
  simp only [processPublication, admitted, sameSnapshot, sameTarget, ne_eq,
    not_true_eq_false, if_false]
  rw [conflict]

end Presentation.Transport
```
