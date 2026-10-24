# Complete source: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.Basic.Variant283a566caeb54f1d154a6d02745b29f7cf5906796835744b3e088d63a5347da4

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `35ef1b46111255c51ad11bc3b88c7fbf2b000e03` · SHA-256 `bc2daa3f96d364ab3b991c94116c4ffe8546bdb602e097ecc102f38cc15f83c9`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.FormulaTree.Variant27590dd8d505c01504e608f9155dc0d0ebe848864d519bf5df6389ba34e881cc","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"27590dd8d505c01504e608f9155dc0d0ebe848864d519bf5df6389ba34e881cc","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.DataStructures.SourceCorpus.FormulaTree.Variant27590dd8d505c01504e608f9155dc0d0ebe848864d519bf5df6389ba34e881cc","mathematical_subject":"Computation.DataStructures","original_sha256":"27590dd8d505c01504e608f9155dc0d0ebe848864d519bf5df6389ba34e881cc","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/07/21/Surface/formal/.surface/overlays/session:2e628ee6531784ebd1c16c0e/workspace/Surface/Boolean/Syntax/Basic.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Surface.Boolean.Matrix.Basic


namespace GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.FormulaTree.Variant27590dd8d505c01504e608f9155dc0d0ebe848864d519bf5df6389ba34e881cc

namespace Surface.Boolean

universe u

/-!
Boolean expression trees are hierarchical representations of Boolean formulae.

This module defines the core tree syntax, evaluation, compilation into `Formula`,
and basic size/list constructors.
-/

/-- Boolean expression trees with NAND kept as a primitive structural operator. -/
inductive FormulaTree (α : Type u) : Type u where
  | var : α → FormulaTree α
  | falsum : FormulaTree α
  | truth : FormulaTree α
  | neg : FormulaTree α → FormulaTree α
  | conj : FormulaTree α → FormulaTree α → FormulaTree α
  | disj : FormulaTree α → FormulaTree α → FormulaTree α
  | impl : FormulaTree α → FormulaTree α → FormulaTree α
  | eqv : FormulaTree α → FormulaTree α → FormulaTree α
  | nand : FormulaTree α → FormulaTree α → FormulaTree α
deriving Repr, DecidableEq

/-- Bottom-up evaluation of a Boolean expression tree. -/
def FormulaTree.eval (ν : Valuation α) : FormulaTree α → Bool
  | .var a => ν a
  | .falsum => false
  | .truth => true
  | .neg p => !(FormulaTree.eval ν p)
  | .conj p q => FormulaTree.eval ν p && FormulaTree.eval ν q
  | .disj p q => FormulaTree.eval ν p || FormulaTree.eval ν q
  | .impl p q => !(FormulaTree.eval ν p) || FormulaTree.eval ν q
  | .eqv p q => FormulaTree.eval ν p == FormulaTree.eval ν q
  | .nand p q => !(FormulaTree.eval ν p && FormulaTree.eval ν q)

/-- Forget NAND as a primitive and compile a Boolean tree into `Formula`. -/
def FormulaTree.toFormula : FormulaTree α → Formula α
  | .var a => .var a
  | .falsum => .falsum
  | .truth => .truth
  | .neg p => .neg (FormulaTree.toFormula p)
  | .conj p q => .conj (FormulaTree.toFormula p) (FormulaTree.toFormula q)
  | .disj p q => .disj (FormulaTree.toFormula p) (FormulaTree.toFormula q)
  | .impl p q => .impl (FormulaTree.toFormula p) (FormulaTree.toFormula q)
  | .eqv p q => .eqv (FormulaTree.toFormula p) (FormulaTree.toFormula q)
  | .nand p q => .neg (.conj (FormulaTree.toFormula p) (FormulaTree.toFormula q))

@[simp] theorem FormulaTree.eval_toFormula
    (ν : Valuation α)
    (p : FormulaTree α) :
    Formula.eval ν (FormulaTree.toFormula p) = FormulaTree.eval ν p := by
  induction p with
  | var a => rfl
  | falsum => rfl
  | truth => rfl
  | neg p ih => simp [FormulaTree.toFormula, FormulaTree.eval, ih]
  | conj p q ihp ihq => simp [FormulaTree.toFormula, FormulaTree.eval, ihp, ihq]
  | disj p q ihp ihq => simp [FormulaTree.toFormula, FormulaTree.eval, ihp, ihq]
  | impl p q ihp ihq => simp [FormulaTree.toFormula, FormulaTree.eval, ihp, ihq]
  | eqv p q ihp ihq => simp [FormulaTree.toFormula, FormulaTree.eval, ihp, ihq]
  | nand p q ihp ihq => simp [FormulaTree.toFormula, FormulaTree.eval, ihp, ihq]

/-- Number of syntax nodes in a Boolean tree. -/
def FormulaTree.nodeCount : FormulaTree α → Nat
  | .var _ => 1
  | .falsum => 1
  | .truth => 1
  | .neg p => FormulaTree.nodeCount p + 1
  | .conj p q => FormulaTree.nodeCount p + FormulaTree.nodeCount q + 1
  | .disj p q => FormulaTree.nodeCount p + FormulaTree.nodeCount q + 1
  | .impl p q => FormulaTree.nodeCount p + FormulaTree.nodeCount q + 1
  | .eqv p q => FormulaTree.nodeCount p + FormulaTree.nodeCount q + 1
  | .nand p q => FormulaTree.nodeCount p + FormulaTree.nodeCount q + 1

/-- Build an n-ary conjunction as a right-nested binary tree. -/
def FormulaTree.conjList : List (FormulaTree α) → FormulaTree α
  | [] => .truth
  | p :: ps => .conj p (FormulaTree.conjList ps)

/-- Build an n-ary disjunction as a right-nested binary tree. -/
def FormulaTree.disjList : List (FormulaTree α) → FormulaTree α
  | [] => .falsum
  | p :: ps => .disj p (FormulaTree.disjList ps)

end Surface.Boolean
```
