-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.TemporalEdgeKind.Variantab3421db192b3d6c17f7a4e026bef8e4a2396287ee1b8e34701b0fb6f9e0d014","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"ab3421db192b3d6c17f7a4e026bef8e4a2396287ee1b8e34701b0fb6f9e0d014","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Foundations.Unclassified.SourceCorpus.TemporalEdgeKind.Variantab3421db192b3d6c17f7a4e026bef8e4a2396287ee1b8e34701b0fb6f9e0d014","mathematical_subject":"Foundations.Unclassified","original_sha256":"ab3421db192b3d6c17f7a4e026bef8e4a2396287ee1b8e34701b0fb6f9e0d014","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Head/Think_retired/formal/Quarantine/SourceOverlap/formal/Think/SourceTree/Legacy/RadoProjectedModularHeatflow/MemoryCore/TemporalKG.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["lake_or_runtime_control","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Think.SourceTree.Legacy.RadoProjectedModularHeatflow.MemoryCore.Fact


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.TemporalEdgeKind.Variantab3421db192b3d6c17f7a4e026bef8e4a2396287ee1b8e34701b0fb6f9e0d014

set_option autoImplicit false

namespace Think.RadoProjectedModularHeatflow.MemoryCore

inductive TemporalEdgeKind where
  | episodeToGist
  | episodeToFact
  | factToEntity
  | entityToCommunity
  | invalidates
deriving DecidableEq, Repr

structure TemporalEdge where
  source : MemoryVertex
  target : MemoryVertex
  kind : TemporalEdgeKind
  validAt? : Option String
  invalidAt? : Option String
  transactionAt? : Option String
deriving DecidableEq, Repr

def TemporalEdge.invalidated (e : TemporalEdge) : Bool :=
  e.invalidAt?.isSome

def invalidationPreservesHistory (oldEdge newEdge : TemporalEdge) : Prop :=
  oldEdge.kind = TemporalEdgeKind.invalidates ->
    oldEdge.source.id ≠ newEdge.source.id ∨ oldEdge.target.id ≠ newEdge.target.id ∨
      oldEdge.transactionAt? ≠ newEdge.transactionAt?

theorem invalidated_iff_has_invalid_time (e : TemporalEdge) :
    e.invalidated = true ↔ e.invalidAt?.isSome = true := by
  rfl

end Think.RadoProjectedModularHeatflow.MemoryCore
