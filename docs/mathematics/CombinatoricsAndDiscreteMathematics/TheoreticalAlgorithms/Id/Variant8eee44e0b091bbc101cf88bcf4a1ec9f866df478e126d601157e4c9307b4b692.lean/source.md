# Complete source: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.Id.Variant8eee44e0b091bbc101cf88bcf4a1ec9f866df478e126d601157e4c9307b4b692

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `d5d5f92651197170fc0abdd5d63000ee32e6ac11` · SHA-256 `8eee44e0b091bbc101cf88bcf4a1ec9f866df478e126d601157e4c9307b4b692`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

````lean
/-
Copyright (c) 2017 Microsoft Corporation. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Sebastian Ullrich

The identity Monad.
-/
module

prelude
public import Init.Control.MonadAttach

public section

universe u

/--
The identity function on types, used primarily for its `Monad` instance.

The identity monad is useful together with monad transformers to construct monads for particular
purposes. Additionally, it can be used with `do`-notation in order to use control structures such as
local mutability, `for`-loops, and early returns in code that does not otherwise use monads.

Examples:
```lean example
def containsFive (xs : List Nat) : Bool := Id.run do
  for x in xs do
    if x == 5 then return true
  return false
```

```lean example
#eval containsFive [1, 3, 5, 7]
```
```output
true
```
-/
@[expose, implicit_reducible] def Id (type : Type u) : Type u := type

namespace Id

@[always_inline]
instance : Monad Id where
  pure x := x
  bind x f := f x
  map f x := f x

/--
The identity monad has a `bind` operator.
-/
@[instance_reducible]
def hasBind : Bind Id :=
  inferInstance

/--
Runs a computation in the identity monad.

This function is the identity function. Because its parameter has type `Id α`, it causes
`do`-notation in its arguments to use the `Monad Id` instance.
-/
@[always_inline, inline, expose, implicit_reducible]
protected def run (x : Id α) : α := x

instance [OfNat α n] : OfNat (Id α) n :=
  inferInstanceAs (OfNat α n)

instance {m : Type u → Type v} [Pure m] : MonadLiftT Id m where
  monadLift x := pure x.run

instance : MonadAttach Id where
  CanReturn x a := x.run = a
  attach x := pure ⟨x.run, rfl⟩

instance : LawfulMonadAttach Id where
  map_attach := rfl
  canReturn_map_imp := by
    intro _ _ x _ h
    cases h
    exact x.run.2

end Id

/-- Turn a collection with a pure `ForIn` instance into an array. -/
def ForIn.toArray {α : Type u} [inst : ForIn Id ρ α] (xs : ρ) : Array α :=
  ForIn.forIn xs Array.empty (fun a acc => pure (.yield (acc.push a))) |> Id.run

/-- Turn a collection with a pure `ForIn` instance into a list. -/
def ForIn.toList {α : Type u} [ForIn Id ρ α] (xs : ρ) : List α :=
  ForIn.toArray xs |>.toList
````
