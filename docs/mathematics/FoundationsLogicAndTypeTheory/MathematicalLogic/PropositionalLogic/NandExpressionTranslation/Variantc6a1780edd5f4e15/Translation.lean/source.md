# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.MathematicalLogic.PropositionalLogic.NandExpressionTranslation.Variantc6a1780edd5f4e15.Translation

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `3d7eee5ad77e6bb4ce3d75d69ef492073ccc435c` · SHA-256 `09fab19e016d3abc0fd064b25a92ab6c1f252219bec5ff7974b2db5992becfa5`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Exact structural translation of Boolean expressions into NAND expressions
Attribution: ATTRIBUTION_CLARIFICATION_NEEDED
Issue: https://github.com/grwtsk/math/issues/254
Provisional mathematical ideas and direction: grwtsk contributors.
Provisional composite search, probabilistic symbolic recombination and linearized diffusive computation: OpenAI/Codex.
Cache warming and model sculpting: the countless, often unnamed mathematicians, enthusiasts, and curious minds whose work and questions have helped shape these tools, and who now have new ways to pursue mathematical answers to the endlessly deep question: “Why?”
These are owner-supplied provisional roles; exact contributions and source lineage need clarification.
Original SHA-256: c6a1780edd5f4e1585094f9f89d354979e310e43b9e3431d84f5f0ef600dcead
Organized SHA-256: 8d557ccea5e08849fd65fd6a8075288d8f3d08fe8c9d390a3d380d0fe2c30af9
PMD: 510.0.020.010 propositional logic (editorial navigation only).
Statements, hypotheses and proof bodies are exact source copies. Original whole-file documentation is retained below and may describe other components.
Only containing namespaces and explicit component imports are changed. Distinct historical representations stay distinct.
Uncompiled; no Lean/Lake invocation, public umbrella admission, geometric provider, or new theorem priority claim.
-/


/- Complete original seven-case recursive translation only, with all exact imported constructors/combinators. The historical BoolExpr/NandExpr environment remains unresolved; no provider alias, syntax replacement or circuit-size bound is introduced. -/

import Folder.Boolean.NAND

/-!
# Folder.Boolean.Completeness

Radiation role: boolean-linear-analysis
BinaryMatrix spine: This module contains auxiliary Boolean, linear, or analytic mathematics adjacent to the BinaryMatrix spine.
Ontology: boolean.completeness
Pivot role: none
Zero typology: none
Contract boundary: definition
Composite stack role: infrastructure
-/


open Folder
open Folder.Boolean

namespace GRWTSK.FoundationsLogicAndTypeTheory.MathematicalLogic.PropositionalLogic.NandExpressionTranslation.Variantc6a1780edd5f4e15

def compileToNand : BoolExpr → NandExpr
  | .var n => .var n
  | .tru => nandTrue
  | .fls => nandFalse
  | .not e => nandNot (compileToNand e)
  | .and a b => nandAnd (compileToNand a) (compileToNand b)
  | .or a b => nandOr (compileToNand a) (compileToNand b)
  | .xor a b => nandXor (compileToNand a) (compileToNand b)

end GRWTSK.FoundationsLogicAndTypeTheory.MathematicalLogic.PropositionalLogic.NandExpressionTranslation.Variantc6a1780edd5f4e15
```
