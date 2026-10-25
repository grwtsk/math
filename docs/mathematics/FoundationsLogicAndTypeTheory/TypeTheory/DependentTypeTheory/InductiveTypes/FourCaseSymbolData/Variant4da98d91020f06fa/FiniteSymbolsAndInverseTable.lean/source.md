# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.TypeTheory.DependentTypeTheory.InductiveTypes.FourCaseSymbolData.Variant4da98d91020f06fa.FiniteSymbolsAndInverseTable

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `aa96c888b18bea9533ca1c4ecd4296f8272364c2` · SHA-256 `d80d8bac28b441d4518c0f879fcb7b3a37f28a1d93f8d22f4085847e0578c0b5`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
FiniteSymbolsAndInverseTable — individually reviewed exact source
Attribution: ATTRIBUTION_CLARIFICATION_NEEDED
Issue: https://github.com/grwtsk/math/issues/254
Provisional mathematical ideas and direction: grwtsk contributors.
Provisional composite search, probabilistic symbolic recombination and linearized diffusive computation: OpenAI/Codex.
Cache warming and model sculpting: the countless, often unnamed mathematicians, enthusiasts, and curious minds whose work and questions have helped shape these tools, and who now have new ways to pursue mathematical answers to the endlessly deep question: “Why?”
These are owner-supplied provisional roles; exact contributions and source lineage need clarification.
Original SHA-256: 4da98d91020f06faa960642ef3e0bf3f7ac4dcb8ffa83abd5d029491af75dbbf
Organized SHA-256: 0df77535f4c9c5c8d4502994f9f8bb51e86a8c56e730f55ff05766e18fdda80e
PMD: 510.0.070.020.050 inductive types (editorial navigation only).
Statements, hypotheses and proof bodies are exact source copies. Original whole-file documentation is retained below and may describe other components.
Only containing namespaces and explicit component imports are changed. Distinct historical representations stay distinct.
Uncompiled; no Lean/Lake invocation, public umbrella admission, geometric provider, or new theorem priority claim.
-/

/- Complete four-constructor RectSpin and exact self-valued inverse table, with original DecidableEq/Repr derivation retained. There is no composition, geometric action, V4 identification, group law or inverse-action theorem in this source. -/

import Folder.Basic

/-!
# Folder.Archive.Spin

Radiation role: archive-symmetry
BinaryMatrix spine: This module names finite matrix spins used by symbolic BinaryMatrix archive references.
Ontology: archive.spin
Pivot role: none
Zero typology: none
Contract boundary: proved
Composite stack role: carrier
-/

namespace GRWTSK.FoundationsLogicAndTypeTheory.TypeTheory.DependentTypeTheory.InductiveTypes.FourCaseSymbolData.Variant4da98d91020f06fa


inductive RectSpin where
  | id
  | flipRows
  | flipCols
  | rotate180
deriving DecidableEq, Repr


namespace RectSpin

def inverse : RectSpin → RectSpin
  | id => id
  | flipRows => flipRows
  | flipCols => flipCols
  | rotate180 => rotate180


end RectSpin

end GRWTSK.FoundationsLogicAndTypeTheory.TypeTheory.DependentTypeTheory.InductiveTypes.FourCaseSymbolData.Variant4da98d91020f06fa
```
