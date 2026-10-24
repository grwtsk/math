# Complete source: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.Enumeration.Variantc8d1daf84f45110509aa8de0dc9b9b9adade93073c6e5f6a2d7c6e70b1ba3758

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `ae281c67078e24b830ab7cdf7f34c7256b9dbd29` · SHA-256 `c8d1daf84f45110509aa8de0dc9b9b9adade93073c6e5f6a2d7c6e70b1ba3758`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Boolean.Formula.Eval

namespace Boolean

universe u

namespace Valuation

/-- Override one atom in a Boolean valuation. -/
def set [DecidableEq α]
    (ν : Valuation α)
    (a : α)
    (b : Bool) :
    Valuation α :=
  fun x => if x = a then b else ν x

@[simp] theorem set_self [DecidableEq α]
    (ν : Valuation α)
    (a : α)
    (b : Bool) :
    set ν a b a = b := by
  simp [set]

theorem set_of_ne [DecidableEq α]
    (ν : Valuation α)
    {a x : α}
    (h : x ≠ a)
    (b : Bool) :
    set ν a b x = ν x := by
  simp [set, h]

end Valuation

namespace Formula

/--
A Boolean-valued operation depends only on the listed atoms when valuations
that agree on those atoms produce the same result.
-/
def DependsOn (vars : List α) (f : Valuation α → Bool) : Prop :=
  ∀ ν μ : Valuation α, (∀ a, a ∈ vars → ν a = μ a) → f ν = f μ

/-- One finite assignment row for a listed variable family. -/
abbrev Assignment (α : Type u) :=
  List (α × Bool)

namespace Assignment

/-- Interpret an assignment row as a valuation, using `default` off the row. -/
def valuation [DecidableEq α]
    (default : Valuation α) :
    Formula.Assignment α → Valuation α
  | [] => default
  | (a, b) :: rest => Valuation.set (valuation default rest) a b

end Assignment

/-- Enumerate all Boolean assignments for a finite variable list. -/
def assignments : List α → List (Formula.Assignment α)
  | [] => [[]]
  | a :: vars =>
      (assignments vars).flatMap
        (fun row => [[(a, false)] ++ row, [(a, true)] ++ row])

/-- Enumerate the valuations induced by all finite assignments. -/
def valuations [DecidableEq α]
    (default : Valuation α)
    (vars : List α) :
    List (Valuation α) :=
  (assignments vars).map (Formula.Assignment.valuation default)

/-- Enumerate canonical finite truth-table rows for a Boolean-valued operation. -/
def truthRows [DecidableEq α]
    (default : Valuation α)
    (vars : List α)
    (f : Valuation α → Bool) :
    List (Valuation α × Bool) :=
  (valuations default vars).map (fun ν => (ν, f ν))

/--
Turn a Boolean point indexed by `Fin n` into a valuation over named variables.
Atoms outside the indexed family use `default`.
-/
def valuationOfPoint [DecidableEq α]
    {n : Nat}
    (var : Fin n → α)
    (default : Valuation α)
    (point : Fin n → Bool) :
    Valuation α :=
  fun a =>
    match (List.finRange n).find? (fun i => var i = a) with
    | some i => point i
    | none => default a

end Formula

end Boolean
```
