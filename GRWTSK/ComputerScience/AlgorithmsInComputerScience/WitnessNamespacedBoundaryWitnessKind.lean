-- corpus-organization-transform:v1
-- Mathematical subject: CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.BoundaryWitnessKind.Variantebd291e3ac3e31efd473d5aee9921ddb70c93d53ce15d9fb8dced3f0689d0af5","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"ebd291e3ac3e31efd473d5aee9921ddb70c93d53ce15d9fb8dced3f0689d0af5","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.DataStructures.SourceCorpus.BoundaryWitnessKind.Variantebd291e3ac3e31efd473d5aee9921ddb70c93d53ce15d9fb8dced3f0689d0af5","mathematical_subject":"Computation.DataStructures","original_sha256":"ebd291e3ac3e31efd473d5aee9921ddb70c93d53ce15d9fb8dced3f0689d0af5","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Head/Think_retired/formal/Quarantine/SourceOverlap/formal/Think/SourceTree/Legacy/RadoProjectedModularHeatflow/MemoryCore/Witness.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Think.SourceTree.Legacy.RadoProjectedModularHeatflow.MemoryCore.Consolidation


namespace GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.BoundaryWitnessKind.Variantebd291e3ac3e31efd473d5aee9921ddb70c93d53ce15d9fb8dced3f0689d0af5

set_option autoImplicit false

namespace Think.RadoProjectedModularHeatflow.MemoryCore

inductive BoundaryWitnessKind where
  | entityResolution
  | temporalInvalidation
  | workflowNovelty
  | proceduralExploration
  | sourceResidue
  | refusalSupport
deriving DecidableEq, Repr

structure BoundaryWitness where
  witness : MemoryVertex
  kind : BoundaryWitnessKind
  connectsTo : List MemoryVertex
  avoids : List MemoryVertex
  targetTreeNode : Nat
  coefficientTarget : Nat -> Int
  bridgeSide : witness.side = BoundarySide.bridge
  witnessKind : witness.kind = MemoryKind.witness

def BoundaryWitness.insertedForResidue (w : BoundaryWitness) (R : BoundaryResidue) : Prop :=
  w.targetTreeNode = R.treeNode

theorem boundary_witness_is_bridge (w : BoundaryWitness) :
    w.witness.side = BoundarySide.bridge :=
  w.bridgeSide

end Think.RadoProjectedModularHeatflow.MemoryCore
