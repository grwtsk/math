# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Graph.Variantb056e027dde8489fde7922b09fa9cbc45444e1492c5c5c3973d7d8879e04f958

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `4f799fb51d6bca32c268cc5e1c452cec7b8d7b2f` · SHA-256 `df414ef82261d95d579d7ed707e2f5980a86bdbb40c217eb8756713012c7d2dd`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.CanonicalFiber.Variant806dd7274436d5aa59f84c974dc12dc1097d4ce779302f3c02795eafc6ff9ade","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"806dd7274436d5aa59f84c974dc12dc1097d4ce779302f3c02795eafc6ff9ade","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Foundations.Unclassified.SourceCorpus.CanonicalFiber.Variant806dd7274436d5aa59f84c974dc12dc1097d4ce779302f3c02795eafc6ff9ade","mathematical_subject":"Foundations.Unclassified","original_sha256":"806dd7274436d5aa59f84c974dc12dc1097d4ce779302f3c02795eafc6ff9ade","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Head/Think_retired/formal/Quarantine/SourceOverlap/formal/Think/SourceTree/Legacy/RadoProjectedModularHeatflow/Graph.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["lake_or_runtime_control","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Think.Pipeline.Basic


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.CanonicalFiber.Variant806dd7274436d5aa59f84c974dc12dc1097d4ce779302f3c02795eafc6ff9ade

set_option autoImplicit false

namespace Think.RadoProjectedModularHeatflow

inductive CanonicalFiber where
  | pipelineCenter
  | pipelinePhase
  | poleFamily
  | residueAlgebra
  | sourceTreeGeometry
  | targetBoundary
  | finiteWitness
  | modularCarrier
  | researchCorpus
  | validationShell
  | braidConformance
  | buildShell
deriving DecidableEq, Repr

inductive SourceEdgeKind where
  | parentChild
  | aggregator
  | phasePoleCorrespondence
  | targetWitnessMirror
  | modularWaveBridge
  | validationCoverage
  | researchTopicReference
deriving DecidableEq, Repr

structure SourceVertex where
  path : String
  fiber : CanonicalFiber
  heat : Nat
  weight : Nat
  residueClass : String
deriving DecidableEq, Repr

structure SourceEdge where
  source : String
  target : String
  kind : SourceEdgeKind
deriving DecidableEq, Repr

def buildShellExcluded (path : String) : Bool :=
  path = "formal/.lake"

theorem lake_is_excluded :
    buildShellExcluded "formal/.lake" = true := by
  rfl

end Think.RadoProjectedModularHeatflow
```
