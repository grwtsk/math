# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Qq.Variant43a2426b46be5146f07ef0004827c07e9a66ce026d16455cb6ebb409baf55729

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `1659104039d2f2abe7f5dc916e38e7bbe59a21a9` · SHA-256 `43a2426b46be5146f07ef0004827c07e9a66ce026d16455cb6ebb409baf55729`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

````lean
/-
Copyright (c) 2023 Kim Morrison. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Kim Morrison, Alex J. Best, Yaël Dillies
-/
import Mathlib.Init
import Qq

/-!
# Extra `Qq` helpers

This file contains some additional functions for using the quote4 library more conveniently.
-/

open Lean Elab Tactic Meta

namespace Qq

/-- Variant of `inferTypeQ` that yields a type in `Type u` rather than `Sort u`.
Throws an error if the type is a `Prop` or if it's otherwise not possible to represent
the universe as `Type u` (for example due to universe level metavariables). -/
-- See https://leanprover.zulipchat.com/#narrow/stream/287929-mathlib4/topic/Using.20.60QQ.60.20when.20you.20only.20have.20an.20.60Expr.60/near/303349037
def inferTypeQ' (e : Expr) : MetaM ((u : Level) × (α : Q(Type $u)) × Q($α)) := do
  let α ← inferType e
  let .sort u ← whnf (← inferType α) | throwError "not a type{indentExpr α}"
  let some v := (← instantiateLevelMVars u).dec | throwError "not a Type{indentExpr e}"
  pure ⟨v, α, e⟩

theorem QuotedDefEq.rfl {u : Level} {α : Q(Sort u)} {a : Q($α)} : @QuotedDefEq u α a a := ⟨⟩

/-- Return a local declaration whose type is definitionally equal to `sort`.

This is a Qq version of `Lean.Meta.findLocalDeclWithType?` -/
def findLocalDeclWithTypeQ? {u : Level} (sort : Q(Sort u)) : MetaM (Option Q($sort)) := do
  let some fvarId ← findLocalDeclWithType? q($sort) | return none
  return some <| .fvar fvarId

/-- Returns a proof of `p : Prop` using `decide p`.

This is a Qq version of `Lean.Meta.mkDecideProof`. -/
def mkDecideProofQ (p : Q(Prop)) : MetaM Q($p) := mkDecideProof p

/-- Join a list of elements of type `α` into a container `β`.

Usually `β` is `q(Multiset α)` or `q(Finset α)` or `q(Set α)`.

As an example
```lean
mkSetLiteralQ q(Finset ℝ) (List.range 4 |>.map fun n : ℕ ↦ q($n•π))
```
produces the expression `{0 • π, 1 • π, 2 • π, 3 • π} : Finset ℝ`.
-/
def mkSetLiteralQ {u v : Level} {α : Q(Type u)} (β : Q(Type v))
    (elems : List Q($α))
    (_ : Q(EmptyCollection $β) := by exact q(inferInstance))
    (_ : Q(Singleton $α $β) := by exact q(inferInstance))
    (_ : Q(Insert $α $β) := by exact q(inferInstance)) :
    Q($β) :=
  match elems with
  | [] => q(∅)
  | [x] => q({$x})
  | x :: xs => q(Insert.insert $x $(mkSetLiteralQ β xs))

end Qq
````
