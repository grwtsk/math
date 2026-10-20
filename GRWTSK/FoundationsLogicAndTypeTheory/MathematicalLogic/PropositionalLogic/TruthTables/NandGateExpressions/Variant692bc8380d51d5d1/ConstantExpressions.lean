/-
ConstantExpressions — Exact true/false expression constructions using variable0 and nandNot, with both supplied proof bodies valid for every original Env. No assumption on rho0 is added.
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

import GRWTSK.FoundationsLogicAndTypeTheory.MathematicalLogic.PropositionalLogic.TruthTables.NandGateExpressions.Variant692bc8380d51d5d1.NegationConjunctionDisjunction

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

def nandTrue : NandExpr :=
  NandExpr.nand (NandExpr.var 0) (nandNot (NandExpr.var 0))

def nandFalse : NandExpr :=
  nandNot nandTrue

@[simp]
theorem eval_nandTrue (ρ : Env) :
    nandTrue.eval ρ = true := by
  cases h : ρ 0 <;> simp [nandTrue, nandNot, h]

@[simp]
theorem eval_nandFalse (ρ : Env) :
    nandFalse.eval ρ = false := by
  simp [nandFalse]


end GRWTSK.FoundationsLogicAndTypeTheory.MathematicalLogic.PropositionalLogic.TruthTables.NandGateExpressions.Variant692bc8380d51d5d1
