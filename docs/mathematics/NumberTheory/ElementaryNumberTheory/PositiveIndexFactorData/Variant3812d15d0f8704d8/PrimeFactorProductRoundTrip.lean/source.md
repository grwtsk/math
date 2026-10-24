# Complete source: GRWTSK.NumberTheory.ElementaryNumberTheory.PositiveIndexFactorData.Variant3812d15d0f8704d8.PrimeFactorProductRoundTrip

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `b71eb946913080c87de7530d0509c267c339ff8c` · SHA-256 `aae6dd59406161bb9a13fa6b298d8ef5610a508cf3ab45e566861a0e6569725d`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
PrimeFactorProductRoundTrip — individually reviewed exact source
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

/- Exact original-provider factorization and prime-power product equals the entire original positive logicalLayer. Positivity and exact qualified proof call retained; no factor-tree uniqueness or codec theorem. -/

import Folder.NumberTheory.FundamentalTheorem

import GRWTSK.NumberTheory.ElementaryNumberTheory.PositiveIndexFactorData.Variant3812d15d0f8704d8.PositiveIndexData

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

def FactorTreeLayerIndex.factorMap
    (i : FactorTreeLayerIndex) : Nat →₀ Nat :=
  NumberTheory.FactorizationMap i.asPositiveNat


theorem factorTreeLayerIndex_decodes
    (i : FactorTreeLayerIndex) :
    NumberTheory.factorProduct i.factorMap = i.logicalLayer :=
  NumberTheory.factorProduct_factorization i.asPositiveNat


end GRWTSK.NumberTheory.ElementaryNumberTheory.PositiveIndexFactorData.Variant3812d15d0f8704d8
```
