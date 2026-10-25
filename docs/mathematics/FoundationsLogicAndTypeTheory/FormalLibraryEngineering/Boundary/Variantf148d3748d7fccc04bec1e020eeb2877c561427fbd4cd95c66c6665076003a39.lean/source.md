# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Boundary.Variantf148d3748d7fccc04bec1e020eeb2877c561427fbd4cd95c66c6665076003a39

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `b187c51fa197ee48c2fb9d26e023632493855e48` · SHA-256 `546d98b89e51710f48c3cb29e3bbbcf1f4383161d85a9939f1158f7e671242c0`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.BoundarySide.Variantf32c87fad94b6c1a96174a9c0c41513d30e4244896a74e050b2fe63a05fc900f","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"f32c87fad94b6c1a96174a9c0c41513d30e4244896a74e050b2fe63a05fc900f","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Foundations.Unclassified.SourceCorpus.BoundarySide.Variantf32c87fad94b6c1a96174a9c0c41513d30e4244896a74e050b2fe63a05fc900f","mathematical_subject":"Foundations.Unclassified","original_sha256":"f32c87fad94b6c1a96174a9c0c41513d30e4244896a74e050b2fe63a05fc900f","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Head/Think_retired/formal/Quarantine/SourceOverlap/formal/Think/SourceTree/Legacy/RadoProjectedModularHeatflow/MemoryCore/Boundary.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Think.Pipeline.Basic


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.BoundarySide.Variantf32c87fad94b6c1a96174a9c0c41513d30e4244896a74e050b2fe63a05fc900f

set_option autoImplicit false

namespace Think.RadoProjectedModularHeatflow.MemoryCore

inductive BoundarySide where
  | inner
  | bridge
  | outer
deriving DecidableEq, Repr

def BoundarySide.polarity : BoundarySide -> Int
  | .inner => -1
  | .bridge => 0
  | .outer => 1

def BoundarySide.isStable : BoundarySide -> Bool
  | .outer => true
  | _ => false

theorem inner_polarity :
    BoundarySide.inner.polarity = -1 := by
  rfl

theorem bridge_polarity :
    BoundarySide.bridge.polarity = 0 := by
  rfl

theorem outer_polarity :
    BoundarySide.outer.polarity = 1 := by
  rfl

inductive BoundaryFlow where
  | consolidation
  | recall
  | abstraction
  | projection
deriving DecidableEq, Repr

structure BoundaryFlowReport where
  targetMemory : Int
  consolidated : Int
  recalled : Int
deriving DecidableEq, Repr

def BoundaryFlowReport.residue (r : BoundaryFlowReport) : Int :=
  r.targetMemory - r.consolidated - r.recalled

def BoundaryFlowReport.closed (r : BoundaryFlowReport) : Prop :=
  r.residue = 0

def BoundaryFlowReport.acceptable (r : BoundaryFlowReport)
    (ledgered : Prop) : Prop :=
  r.closed ∨ ledgered

theorem boundaryFlowReport_zero_closed
    (target consolidated recalled : Int)
    (h : target = consolidated + recalled) :
    ({ targetMemory := target
       consolidated := consolidated
       recalled := recalled } : BoundaryFlowReport).closed := by
  simp [BoundaryFlowReport.closed, BoundaryFlowReport.residue, h]
  omega

end Think.RadoProjectedModularHeatflow.MemoryCore
```
