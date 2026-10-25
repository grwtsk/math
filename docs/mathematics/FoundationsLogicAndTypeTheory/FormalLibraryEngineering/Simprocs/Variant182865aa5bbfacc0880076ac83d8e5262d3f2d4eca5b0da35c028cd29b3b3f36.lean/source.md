# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Simprocs.Variant182865aa5bbfacc0880076ac83d8e5262d3f2d4eca5b0da35c028cd29b3b3f36

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `6991c50ac19d74710a3b2161de3f5f055ccf00fd` · SHA-256 `182865aa5bbfacc0880076ac83d8e5262d3f2d4eca5b0da35c028cd29b3b3f36`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Lean.Meta.Eval
import Lean.Parser.Command
import Mathlib.Data.Nat.Count
import Mathlib.Algebra.Group.Nat.Even

/-
This file defines the `count_ofNat` simproc, which simplifies `Nat.count` expressions where the range is a literal.
-/

open Lean Meta in
unsafe def evalNatExpr (e : Expr) : MetaM (Option Nat) := do
  let ty ← inferType e
  let .const ``Nat _ := ty | return none
  let val ← Lean.Meta.evalExpr Nat (mkConst ``Nat) e
  return some val

open Lean Meta in
simproc_decl count_ofNat (Nat.count _ _) := fun e => do
  let some val ← unsafe evalNatExpr e | return .continue
  let result := mkNatLit val
  let proof ← mkDecideProof (← mkEq e result)
  return .done { expr := result, proof? := some proof }

lemma count_201_true_eq_201 : Nat.count (fun _ ↦ True) 201 = 201 := by
  simp only [count_ofNat]

lemma count_even_201_eq_101 : Nat.count Even 201 = 101 := by
  simp only [count_ofNat]

lemma count_even_2010_eq_1010 : Nat.count Even 2010 = 1005 := by
  simp only [count_ofNat]

/-- info: 'count_even_201_eq_101' depends on axioms: [propext, Classical.choice, Quot.sound] -/
#guard_msgs in
#print axioms count_even_201_eq_101
```
