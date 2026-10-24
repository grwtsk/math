-- corpus-organization-transform:v1
-- Mathematical subject: CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.ModuleId.Variant15e18cca29980ab240930ada79e7b91862649febec7d6cd4a6e373465fd3742f","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"15e18cca29980ab240930ada79e7b91862649febec7d6cd4a6e373465fd3742f","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.DataStructures.SourceCorpus.ModuleId.Variant15e18cca29980ab240930ada79e7b91862649febec7d6cd4a6e373465fd3742f","mathematical_subject":"Computation.DataStructures","original_sha256":"15e18cca29980ab240930ada79e7b91862649febec7d6cd4a6e373465fd3742f","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/08/10/TestProject/ReferenceGraph.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["lake_or_runtime_control","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Folder.Basic

/-!
# Folder.Presentation.ReferenceGraph

Radiation role: presentation-reference-graph
BinaryMatrix spine: This module stores reference edges used to order document views derived from BinaryMatrixStream archives.
Ontology: presentation.reference_graph
Pivot role: none
Zero typology: none
Contract boundary: definition
Composite stack role: presentation
-/


namespace GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.ModuleId.Variant15e18cca29980ab240930ada79e7b91862649febec7d6cd4a6e373465fd3742f

namespace Folder
namespace Presentation

structure ModuleId where
  name : String
deriving DecidableEq, Repr

structure DeclarationId where
  moduleName : String
  name : String
deriving DecidableEq, Repr

inductive ReferenceKind where
  | import
  | theoremUse
  | definitionUse
  | namespaceMention
  | docMention
  | theoremWrapper
deriving DecidableEq, Repr

structure ReferenceEdge where
  source : ModuleId
  target : ModuleId
  kind : ReferenceKind
  weight : Nat
deriving DecidableEq, Repr

structure ReferenceGraph where
  modules : List ModuleId
  edges : List ReferenceEdge
deriving DecidableEq, Repr

def inboundWeight
    (G : ReferenceGraph)
    (M : ModuleId) : Nat :=
  (G.edges.filter (fun e => e.target = M)).foldl
    (fun acc e => acc + e.weight) 0

def outboundWeight
    (G : ReferenceGraph)
    (M : ModuleId) : Nat :=
  (G.edges.filter (fun e => e.source = M)).foldl
    (fun acc e => acc + e.weight) 0

end Presentation
end Folder
