# Complete source: GRWTSK.CombinatoricsAndDiscreteMathematics.GraphTheory.SpectralGraphTheory.OrientedFiniteGraphEnergy.Variant095db63c5a49f882.NeighborAndTotalSums

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `5c4c15dbf8e53799d6a112dd3b277e5653b497f0` · SHA-256 `9bd4230e73a91ff2d043da3c0a4b70cd8b5045ba77c07a30a4f8a015016537bc`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
NeighborAndTotalSums — individually reviewed exact source
Attribution: ATTRIBUTION_CLARIFICATION_NEEDED
Issue: https://github.com/grwtsk/math/issues/254
Provisional mathematical ideas and direction: grwtsk contributors.
Provisional composite search, probabilistic symbolic recombination and linearized diffusive computation: OpenAI/Codex.
Cache warming and model sculpting: the countless, often unnamed mathematicians, enthusiasts, and curious minds whose work and questions have helped shape these tools, and who now have new ways to pursue mathematical answers to the endlessly deep question: “Why?”
These are owner-supplied provisional roles; exact contributions and source lineage need clarification.
Original SHA-256: 095db63c5a49f882cca19c6aee4c9fa287e3a6450b7313eef2b024b0817fffb9
Organized SHA-256: cf6798c6c78ddd3b1436623b014c51bc892f72b717a5cdc08b184286fb1a0f73
PMD: 510.7.030.080 spectral graph theory (editorial navigation only).
Statements, hypotheses and proof bodies are exact source copies. Original whole-file documentation is retained below and may describe other components.
Only containing namespaces and explicit component imports are changed. Distinct historical representations stay distinct.
Uncompiled; no Lean/Lake invocation, public umbrella admission, geometric provider, or new theorem priority claim.
-/

/- Exact sums over supplied neighbor Fintypes and all grid cells, preserving the oriented-edge convention and original positivity proofs; no connectedness or graph-size premise added. -/

import GRWTSK.Analysis.RealAnalysis.RealFunctions.FiniteSquaredDifferences.Variant095db63c5a49f882.EdgeChannelSum

import Folder.Spectral.Graph
import Folder.Spectral.Tensor

/-!
# Folder.Spectral.Energy

Radiation role: spectral-heat
BinaryMatrix spine: This module supports spectral fields, heat contracts, residuals, energy, or quantization downstream of BinaryMatrix carriers.
Ontology: spectral.energy
Pivot role: spectral
Zero typology: spectral
Contract boundary: definition
Composite stack role: field
-/


namespace GRWTSK.CombinatoricsAndDiscreteMathematics.GraphTheory.SpectralGraphTheory.OrientedFiniteGraphEnergy.Variant095db63c5a49f882

open Folder
open Folder.Spectral

open Carrier

open GRWTSK.Analysis.RealAnalysis.RealFunctions.FiniteSquaredDifferences.Variant095db63c5a49f882
noncomputable def cellEnergy {s : GridShape} {k : Nat}
    (G : CellGraph s)
    (X : SpectralTensor s k)
    (c : Cell s) :
    ℝ := by
  classical
  letI := G.finite_neighbors c
  exact ∑ d : {d : Cell s // G.Adj c d}, edgeChannelEnergy X c d.1

/--
Oriented graph energy: each undirected edge contributes twice, once per
orientation. This keeps the finite sum simple and is enough for positivity.
-/
noncomputable def energy {s : GridShape} {k : Nat}
    (G : CellGraph s)
    (X : SpectralTensor s k) :
    ℝ :=
  ∑ c : Cell s, cellEnergy G X c

theorem cellEnergy_nonneg {s : GridShape} {k : Nat}
    (G : CellGraph s)
    (X : SpectralTensor s k)
    (c : Cell s) :
    0 ≤ cellEnergy G X c := by
  classical
  unfold cellEnergy
  letI := G.finite_neighbors c
  exact Finset.sum_nonneg fun d _ => edgeChannelEnergy_nonneg X c d.1

theorem energy_nonneg {s : GridShape} {k : Nat}
    (G : CellGraph s)
    (X : SpectralTensor s k) :
    0 ≤ energy G X := by
  classical
  unfold energy
  exact Finset.sum_nonneg fun c _ => cellEnergy_nonneg G X c

end GRWTSK.CombinatoricsAndDiscreteMathematics.GraphTheory.SpectralGraphTheory.OrientedFiniteGraphEnergy.Variant095db63c5a49f882
```
