-- corpus-organization-transform:v1
-- Mathematical subject: CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.BoundaryMemorySystem.Variantcbdf6d39296c872d54d708a1663ea685bf63cbb8d5d0bb9a84e78e914f1d57bf","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"cbdf6d39296c872d54d708a1663ea685bf63cbb8d5d0bb9a84e78e914f1d57bf","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.DataStructures.SourceCorpus.BoundaryMemorySystem.Variantcbdf6d39296c872d54d708a1663ea685bf63cbb8d5d0bb9a84e78e914f1d57bf","mathematical_subject":"Computation.DataStructures","original_sha256":"cbdf6d39296c872d54d708a1663ea685bf63cbb8d5d0bb9a84e78e914f1d57bf","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Head/Think_retired/formal/Quarantine/SourceOverlap/formal/Think/SourceTree/Legacy/RadoProjectedModularHeatflow/MemoryCore/InnerOuter.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Think.SourceTree.Legacy.RadoProjectedModularHeatflow.MemoryCore.ToolGraph


namespace GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.BoundaryMemorySystem.Variantcbdf6d39296c872d54d708a1663ea685bf63cbb8d5d0bb9a84e78e914f1d57bf

set_option autoImplicit false

namespace Think.RadoProjectedModularHeatflow.MemoryCore

structure BoundaryMemorySystem where
  activeVertices : List MemoryVertex
  projectedTreeNodes : List Nat
  projection : MemoryVertex -> Nat
  innerBoundary : List MemoryVertex
  bridgeBoundary : List MemoryVertex
  outerBoundary : List MemoryVertex
  temporalEdges : List TemporalEdge
  toolGraph : HybridEpisodicProceduralMemory
  symmetryLabel : String

def BoundaryMemorySystem.boundaryOf (_M : BoundaryMemorySystem) (v : MemoryVertex) :
    BoundarySide :=
  v.side

structure InnerOuterRepresentative where
  inner : MemoryVertex
  outer : MemoryVertex
  innerSide : inner.side = BoundarySide.inner
  outerSide : outer.side = BoundarySide.outer
  sameResidueClass : inner.residueClass = outer.residueClass

def InnerOuterRepresentative.weightSymmetric (r : InnerOuterRepresentative) : Prop :=
  r.inner.weight = r.outer.weight

end Think.RadoProjectedModularHeatflow.MemoryCore
