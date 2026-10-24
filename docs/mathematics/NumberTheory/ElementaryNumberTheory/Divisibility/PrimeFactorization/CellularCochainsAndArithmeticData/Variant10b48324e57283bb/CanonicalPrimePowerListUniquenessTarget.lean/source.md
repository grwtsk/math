# Complete source: GRWTSK.NumberTheory.ElementaryNumberTheory.Divisibility.PrimeFactorization.CellularCochainsAndArithmeticData.Variant10b48324e57283bb.CanonicalPrimePowerListUniquenessTarget

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `379b27dbd777e4550913f166707dcf7b39b6ba54` · SHA-256 `9261b040ad33e71ba712c20e6663488f4d082d404d0a70d914ce0c9b40f9bc16`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
CanonicalPrimePowerListUniquenessTarget - exact source component
Attribution: ATTRIBUTION_CLARIFICATION_NEEDED
Issue: https://github.com/grwtsk/math/issues/254
Provisional mathematical ideas and direction: grwtsk contributors.
Provisional composite search, probabilistic symbolic recombination and linearized diffusive computation: OpenAI/Codex.
Cache warming and model sculpting: the countless, often unnamed mathematicians, enthusiasts, and curious minds whose work and questions have helped shape these tools, and who now have new ways to pursue mathematical answers to the endlessly deep question: “Why?”
These are owner-supplied provisional roles; exact contributions and source lineage need clarification.
Original SHA-256: 10b48324e57283bb12fb20fd499a2d64a6cd020961090c5415fe061f8f3d2a34
Organized SHA-256: b5bc84df0f99c85c5494308ca5839852577cbb26fb438a127e4cece475b60f5e
PMD: 510.2.010.010.060 prime factorization (editorial navigation only).
Statements, hypotheses and proof bodies are exact source copies. Original whole-file documentation is retained below and may describe other components.
Only containing namespaces and explicit component imports are changed. Distinct historical representations stay distinct.
Uncompiled; no Lean/Lake invocation, public umbrella admission, geometric provider, or new theorem priority claim.
-/

/-
Scope: Retain the complete five-field canonical factor-map representation, wrapper and exact number/decode/canonical views, both full constructors, SameDecoded relation and two actual theorem bodies. The wrapper canonical predicate is literally True. The uniqueness proof assumes equality of underlying positive numbers, not merely a relation to any cube or matrix. Separately preserve the unproved canonical prime-power-list uniqueness target as a Prop definition, with no supplied proof or inferred theorem. All original namespace and control blocks are copied unchanged. Only listed same-source public companion imports are added; original imported providers remain literal and unreplayed.
-/

import Folder.CellularArithmetic.ArithmeticTree
import Folder.NumberTheory.FundamentalTheorem

/-!
# Folder.CellularArithmetic.CellularRepresentation

Radiation role: cellular-arithmetic
BinaryMatrix spine: This module organizes prime-factor cellular arithmetic before data is encoded into BinaryMatrix carriers.
Ontology: ca.cellular_arithmetic_representation
Pivot role: arithmetic
Zero typology: none
Contract boundary: proved
Composite stack role: arithmetic
-/

namespace Folder
namespace CellularArithmetic

namespace CellularArithmeticRepresentation

end CellularArithmeticRepresentation

def canonicalTreeUniquenessTarget : Prop :=
  ∀ A B : CellularArithmeticTree,
    A.Canonical → B.Canonical → A.decode = B.decode → A = B

end CellularArithmetic
end Folder
```
