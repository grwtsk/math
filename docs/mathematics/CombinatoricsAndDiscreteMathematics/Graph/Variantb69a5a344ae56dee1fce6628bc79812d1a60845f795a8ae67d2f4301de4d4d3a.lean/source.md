# Complete source: GRWTSK.CombinatoricsAndDiscreteMathematics.Graph.Variantb69a5a344ae56dee1fce6628bc79812d1a60845f795a8ae67d2f4301de4d4d3a

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `3790f1de4a11db6f6b617799fcd6dc230967a4b7` · SHA-256 `c638847770c2d8c6270c88f2392f037434c96f08ae960bbbc2512dc0a491018b`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
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
```
