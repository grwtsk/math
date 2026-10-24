# Complete source: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.Basic.Variant27590dd8d505c01504e608f9155dc0d0ebe848864d519bf5df6389ba34e881cc

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `1bb41772f559cbe71c3f0ac266fbafb494ac3ef9` · SHA-256 `27590dd8d505c01504e608f9155dc0d0ebe848864d519bf5df6389ba34e881cc`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Surface.Boolean.Matrix.Basic

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
