# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.MathematicalLogic.PropositionalLogic.TruthTables.NandGateExpressions.Variant692bc8380d51d5d1.NegationConjunctionDisjunction

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `7abd1ddde558071524783fdd565ed7e5919aef22` · SHA-256 `013ffa237a32ee4a3fe4321c02d405997151fd4dd2a12b5f64a500a0226d95fd`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
NegationConjunctionDisjunction — Three complete NAND gate encodings and exact evaluation proofs by Boolean cases; no general formula compiler or functional-completeness theorem is asserted.
Attribution: ATTRIBUTION_CLARIFICATION_NEEDED
Issue: https://github.com/grwtsk/math/issues/254
Provisional mathematical ideas and direction: grwtsk contributors.
Provisional composite search, probabilistic symbolic recombination and linearized diffusive computation: OpenAI/Codex.
Cache warming and model sculpting: the countless, often unnamed mathematicians, enthusiasts, and curious minds whose work and questions have helped shape these tools, and who now have new ways to pursue mathematical answers to the endlessly deep question: “Why?”
These are owner-supplied provisional roles; exact contributions and source lineage need clarification.
Original SHA-256: 692bc8380d51d5d166bca3014398d62e38ea0c6fe212af623bb572e5d6aa62dc
Organized SHA-256: 05e5df2ce8e51990bf05f0e1e920ba1e2553b483ac33b3849cd2602b0a19cf49
PMD: 510.0.020.010.020 truth tables (editorial navigation only).
Statements, hypotheses and proof bodies are exact source copies. Original whole-file documentation is retained below and may describe other components.
Only containing namespaces and explicit component imports are changed. Distinct historical representations stay distinct.
Uncompiled; no Lean/Lake invocation, public umbrella admission, geometric provider, or new theorem priority claim.
-/

import GRWTSK.FoundationsLogicAndTypeTheory.MathematicalLogic.PropositionalLogic.FormulasAndValuations.NandSyntaxAndEvaluation.Variant692bc8380d51d5d1.SyntaxAndEvaluation

import Folder.Boolean.Semantics

/-!
# Folder.Boolean.NAND

Radiation role: boolean-linear-analysis
BinaryMatrix spine: This module contains auxiliary Boolean, linear, or analytic mathematics adjacent to the BinaryMatrix spine.
Ontology: boolean.nand
Pivot role: none
Zero typology: none
Contract boundary: definition
Composite stack role: infrastructure
-/


open Folder
open Folder.Boolean
open GRWTSK.FoundationsLogicAndTypeTheory.MathematicalLogic.PropositionalLogic.FormulasAndValuations.NandSyntaxAndEvaluation.Variant692bc8380d51d5d1

namespace GRWTSK.FoundationsLogicAndTypeTheory.MathematicalLogic.PropositionalLogic.TruthTables.NandGateExpressions.Variant692bc8380d51d5d1

def nandNot (x : NandExpr) : NandExpr :=
  NandExpr.nand x x

def nandAnd (x y : NandExpr) : NandExpr :=
  nandNot (NandExpr.nand x y)

def nandOr (x y : NandExpr) : NandExpr :=
  NandExpr.nand (nandNot x) (nandNot y)

@[simp]
theorem eval_nandNot (x : NandExpr) (ρ : Env) :
    (nandNot x).eval ρ = ! x.eval ρ := by
  cases hx : x.eval ρ <;> simp [nandNot, hx]

@[simp]
theorem eval_nandAnd (x y : NandExpr) (ρ : Env) :
    (nandAnd x y).eval ρ = (x.eval ρ && y.eval ρ) := by
  cases hx : x.eval ρ <;> cases hy : y.eval ρ <;>
    simp [nandAnd, nandNot, hx, hy]

@[simp]
theorem eval_nandOr (x y : NandExpr) (ρ : Env) :
    (nandOr x y).eval ρ = (x.eval ρ || y.eval ρ) := by
  cases hx : x.eval ρ <;> cases hy : y.eval ρ <;>
    simp [nandOr, nandNot, hx, hy]


end GRWTSK.FoundationsLogicAndTypeTheory.MathematicalLogic.PropositionalLogic.TruthTables.NandGateExpressions.Variant692bc8380d51d5d1
```
