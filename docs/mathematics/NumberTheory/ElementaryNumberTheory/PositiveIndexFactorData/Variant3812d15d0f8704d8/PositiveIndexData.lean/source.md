# Complete source: GRWTSK.NumberTheory.ElementaryNumberTheory.PositiveIndexFactorData.Variant3812d15d0f8704d8.PositiveIndexData

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `c14c5d5eecc019a337f19d81f723d13359b4e500` · SHA-256 `8babd9c968dc82e9a8a8f56144a23212a03ad21941fa0e089cad3a16bb9aa505`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
PositiveIndexData — individually reviewed exact source
Attribution: ATTRIBUTION_CLARIFICATION_NEEDED
Issue: https://github.com/grwtsk/math/issues/254
Provisional mathematical ideas and direction: grwtsk contributors.
Provisional composite search, probabilistic symbolic recombination and linearized diffusive computation: OpenAI/Codex.
Cache warming and model sculpting: the countless, often unnamed mathematicians, enthusiasts, and curious minds whose work and questions have helped shape these tools, and who now have new ways to pursue mathematical answers to the endlessly deep question: “Why?”
These are owner-supplied provisional roles; exact contributions and source lineage need clarification.
Original SHA-256: 3812d15d0f8704d8674831aae5cc7fd2b9d91a13c4a3cd0eaf159cb68fc2a159
Organized SHA-256: cdbacf03a938405f9eb68cb28d5ee6894413c03039c374fadc2375b5a08e6b23
PMD: 510.2.010 elementary number theory (editorial navigation only).
Statements, hypotheses and proof bodies are exact source copies. Original whole-file documentation is retained below and may describe other components.
Only containing namespaces and explicit component imports are changed. Distinct historical representations stay distinct.
Uncompiled; no Lean/Lake invocation, public umbrella admission, geometric provider, or new theorem priority claim.
-/

/- Whole strictly positive natural index and exact original-provider PositiveNat conversion; no zero case, tree, codec or matrix construction is added. -/

import Folder.NumberTheory.FundamentalTheorem

/-!
# Folder.Archive.FactorTreeIndex

Radiation role: archive-indexing
BinaryMatrix spine: This module labels logical payload BinaryMatrixStream layers by prime-factor arithmetic indices.
Ontology: archive.factor_tree_index
Pivot role: arithmetic
Zero typology: none
Contract boundary: proved
Composite stack role: arithmetic
-/

namespace GRWTSK.NumberTheory.ElementaryNumberTheory.PositiveIndexFactorData.Variant3812d15d0f8704d8

open Folder

structure FactorTreeLayerIndex where
  logicalLayer : Nat
  positive : 0 < logicalLayer


def FactorTreeLayerIndex.asPositiveNat
    (i : FactorTreeLayerIndex) :
    NumberTheory.PositiveNat :=
  ⟨i.logicalLayer, i.positive⟩


end GRWTSK.NumberTheory.ElementaryNumberTheory.PositiveIndexFactorData.Variant3812d15d0f8704d8
```
