-- corpus-organization-transform:v1
-- Mathematical subject: CombinatoricsAndDiscreteMathematics
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CombinatoricsAndDiscreteMathematics.CellGraph.Variantdb67f9e459960a4bbedd7ec88af11dd9dc4a3809522da1411495b38186fd692e","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"db67f9e459960a4bbedd7ec88af11dd9dc4a3809522da1411495b38186fd692e","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Combinatorics.FiniteCombinatorics.SourceCorpus.CellGraph.Variantdb67f9e459960a4bbedd7ec88af11dd9dc4a3809522da1411495b38186fd692e","mathematical_subject":"Combinatorics.FiniteCombinatorics","original_sha256":"db67f9e459960a4bbedd7ec88af11dd9dc4a3809522da1411495b38186fd692e","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/08/10/TestProject/Graph.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Folder.Carrier.Grid

/-!
# Folder.Spectral.Graph

Radiation role: spectral-heat
BinaryMatrix spine: This module supports spectral fields, heat contracts, residuals, energy, or quantization downstream of BinaryMatrix carriers.
Ontology: spectral.graph
Pivot role: spectral
Zero typology: spectral
Contract boundary: definition
Composite stack role: field
-/



namespace GRWTSK.CombinatoricsAndDiscreteMathematics.CellGraph.Variantdb67f9e459960a4bbedd7ec88af11dd9dc4a3809522da1411495b38186fd692e

namespace Folder
namespace Spectral

open Carrier

structure CellGraph (s : GridShape) where
  Adj : Cell s → Cell s → Prop
  symm : Std.Symm Adj
  irrefl : Std.Irrefl Adj
  finite_neighbors : ∀ c, Fintype {d : Cell s // Adj c d}

namespace CellGraph

noncomputable def gridEdgeGraph (s : GridShape) : CellGraph s where
  Adj := Carrier.EdgeAdjacent
  symm := by
    exact ⟨fun _ _ => Carrier.edgeAdjacent_symm⟩
  irrefl := by
    exact ⟨fun a => Carrier.edgeAdjacent_irrefl a⟩
  finite_neighbors := by
    classical
    intro c
    infer_instance

end CellGraph

export CellGraph (gridEdgeGraph)

end Spectral
end Folder
