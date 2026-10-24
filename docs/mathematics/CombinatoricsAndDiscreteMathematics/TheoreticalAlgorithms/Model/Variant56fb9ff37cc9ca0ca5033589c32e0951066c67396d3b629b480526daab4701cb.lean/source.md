# Complete source: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.Model.Variant56fb9ff37cc9ca0ca5033589c32e0951066c67396d3b629b480526daab4701cb

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `91d403539bc5b50333a3c801c2f293970155a38d` · SHA-256 `56fb9ff37cc9ca0ca5033589c32e0951066c67396d3b629b480526daab4701cb`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
module

public import Surface.Core.Transport

/-!
# Generic presentation model for admitted transport values

The model stores the exact revisioned payload alongside its derived view.
Presentation rendering therefore cannot become a parallel state authority.
-/

public section

namespace Presentation.Transport

open Surface.Core.Transport

universe u v

@[surface_novel]
structure ProjectionNode (Payload : Type u) (View : Type v) where
  stableNodeId : Nat
  hostCode : Nat
  admitted : Revisioned Payload
  view : View
deriving DecidableEq, Repr

@[surface_novel]
structure PresentationModel (Payload : Type u) (View : Type v) where
  nodes : List (ProjectionNode Payload View)
  published : Option (Revisioned Payload)
  sourceSnapshotHash : Hash256
deriving DecidableEq, Repr

@[expose] def PresentationModel.payloadAt?
    {Payload : Type u} {View : Type v}
    (model : PresentationModel Payload View) (hostCode : Nat) :
    Option (Revisioned Payload) :=
  (model.nodes.find? (fun node ↦ node.hostCode == hostCode)).map
    ProjectionNode.admitted

@[expose] def PresentationModel.revisionAt?
    {Payload : Type u} {View : Type v}
    (model : PresentationModel Payload View) (hostCode : Nat) :
    Option Revision :=
  (model.payloadAt? hostCode).map Revisioned.revision

@[surface_novel]
structure ProjectionAdapter (Payload : Type u) (View : Type v) where
  render : Payload → View

@[surface_novel]
structure PreparedPublication (Payload : Type u) where
  targetHostCode : Nat
  sourceSnapshotHash : Hash256
  expectedTargetRevision? : Option Revision
  incoming : Revisioned Payload
  admittedByVerifier : Bool
deriving DecidableEq, Repr

@[surface_novel]
inductive PublicationStatus
  | applied
  | replay
  | verifierRejected
  | sourceSnapshotRace
  | targetRevisionRace
  | stale
  | sameRevisionConflict
deriving DecidableEq, Repr

@[surface_novel]
structure PublicationResult (Payload : Type u) (View : Type v) where
  status : PublicationStatus
  model : PresentationModel Payload View
deriving DecidableEq, Repr

end Presentation.Transport
```
