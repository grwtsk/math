# Complete source: GRWTSK.CombinatoricsAndDiscreteMathematics.GraphTheory.BasicGraphTheory.FiniteGridGraphs.Variantdb67f9e459960a4b.GridEdgeConstruction

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `047f2903d50a157793045c6cdc559a25738343fa` · SHA-256 `01d92c8ba478bb2ebc092f599bf45e1e20dbb217b9d50c0ee438cc3d96cb6445`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
GridEdgeConstruction — individually reviewed exact source
Attribution: ATTRIBUTION_CLARIFICATION_NEEDED
Issue: https://github.com/grwtsk/math/issues/254
Provisional mathematical ideas and direction: grwtsk contributors.
Provisional composite search, probabilistic symbolic recombination and linearized diffusive computation: OpenAI/Codex.
Cache warming and model sculpting: the countless, often unnamed mathematicians, enthusiasts, and curious minds whose work and questions have helped shape these tools, and who now have new ways to pursue mathematical answers to the endlessly deep question: “Why?”
These are owner-supplied provisional roles; exact contributions and source lineage need clarification.
Original SHA-256: db67f9e459960a4bbedd7ec88af11dd9dc4a3809522da1411495b38186fd692e
Organized SHA-256: aa3934c1cb7943240c1778e8b1a21f65309fd6881a311137170afd5eb79debd5
PMD: 510.7.030.010 basic graph theory (editorial navigation only).
Statements, hypotheses and proof bodies are exact source copies. Original whole-file documentation is retained below and may describe other components.
Only containing namespaces and explicit component imports are changed. Distinct historical representations stay distinct.
Uncompiled; no Lean/Lake invocation, public umbrella admission, geometric provider, or new theorem priority claim.
-/

/- Exact grid-edge relation construction with all source symmetry, irreflexivity and finite-neighbor proof terms; relies on unchanged Carrier provider and the complete same-source graph record. -/

import GRWTSK.CombinatoricsAndDiscreteMathematics.GraphTheory.BasicGraphTheory.FiniteGridGraphs.Variantdb67f9e459960a4b.SymmetricIrreflexiveRelationData

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


namespace GRWTSK.CombinatoricsAndDiscreteMathematics.GraphTheory.BasicGraphTheory.FiniteGridGraphs.Variantdb67f9e459960a4b

open Folder

open Carrier

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
end GRWTSK.CombinatoricsAndDiscreteMathematics.GraphTheory.BasicGraphTheory.FiniteGridGraphs.Variantdb67f9e459960a4b
```
