# Complete source: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.Model.Variant95b6ff9aa2d9b2d3ce47a1914cabd4430e3fd137e9a0fae3f8c3e8cc683eed22

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `716e302750cfadb84b51e7cc80ccc93b3fa29e70` · SHA-256 `f53c6aa74614724b71ca2f597806673cdf27daf78175913e133d68c1a5042e34`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.ProjectionNode.Variant56fb9ff37cc9ca0ca5033589c32e0951066c67396d3b629b480526daab4701cb","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"56fb9ff37cc9ca0ca5033589c32e0951066c67396d3b629b480526daab4701cb","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.DataStructures.SourceCorpus.ProjectionNode.Variant56fb9ff37cc9ca0ca5033589c32e0951066c67396d3b629b480526daab4701cb","mathematical_subject":"Computation.DataStructures","original_sha256":"56fb9ff37cc9ca0ca5033589c32e0951066c67396d3b629b480526daab4701cb","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/07/21/Surface/formal/.surface/overlays/session:dd72b57dce63c25b6a039856/workspace/lib/Presentation/Transport/Model.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
module

public import Surface.Core.Transport

/-!
# Generic presentation model for admitted transport values

The model stores the exact revisioned payload alongside its derived view.
Presentation rendering therefore cannot become a parallel state authority.
-/


namespace GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.ProjectionNode.Variant56fb9ff37cc9ca0ca5033589c32e0951066c67396d3b629b480526daab4701cb

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
