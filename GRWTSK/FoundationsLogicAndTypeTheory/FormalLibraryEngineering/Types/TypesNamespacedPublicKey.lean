-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Key.Variantc2964c861300247b99afb068c5c77046c8f746b8881e9cfb81e63195ba3d3773","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"c2964c861300247b99afb068c5c77046c8f746b8881e9cfb81e63195ba3d3773","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.LeanMetaprogramming.SourceCorpus.Key.Variantc2964c861300247b99afb068c5c77046c8f746b8881e9cfb81e63195ba3d3773","mathematical_subject":"Computation.LeanMetaprogramming","original_sha256":"c2964c861300247b99afb068c5c77046c8f746b8881e9cfb81e63195ba3d3773","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/source-capsule/t-001-v1-export-v1/toolchain/src/lean/Lean/Meta/DiscrTree/Types.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2019 Microsoft Corporation. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Leonardo de Moura
-/
module
prelude
public import Lean.Expr

namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Key.Variantc2964c861300247b99afb068c5c77046c8f746b8881e9cfb81e63195ba3d3773

public section
namespace Lean.Meta
/-! See file `DiscrTree.lean` for the actual implementation and documentation. -/
namespace DiscrTree
/--
Discrimination tree key. See `DiscrTree`
-/
inductive Key where
  | star  : Key
  | other : Key
  | lit   : Literal → Key
  | fvar  : FVarId → Nat → Key
  | const : Name → Nat → Key
  | arrow : Key
  | proj  : Name → Nat → Nat → Key
  deriving Inhabited, BEq, Repr

protected def Key.hash : Key → UInt64
  | .const n a   => mixHash 5237 $ mixHash (hash n) (hash a)
  | .fvar n a    => mixHash 3541 $ mixHash (hash n) (hash a)
  | .lit v       => mixHash 1879 $ hash v
  | .star        => 7883
  | .other       => 2411
  | .arrow       => 17
  | .proj s i a  =>  mixHash (hash a) $ mixHash (hash s) (hash i)

instance : Hashable Key := ⟨Key.hash⟩

/--
Discrimination tree trie. See `DiscrTree`.
-/
inductive Trie (α : Type) where
  | node (vs : Array α) (children : Array (Key × Trie α)) : Trie α

end DiscrTree

open DiscrTree

/-!
Notes regarding term reduction at the `DiscrTree` module.

- In `simp`, we want to have `simp` theorem such as
```
@[simp] theorem liftOn_mk (a : α) (f : α → γ) (h : ∀ a₁ a₂, r a₁ a₂ → f a₁ = f a₂) :
    Quot.liftOn (Quot.mk r a) f h = f a := rfl
```
If we enable `iota`, then the lhs is reduced to `f a`.
Note that when retrieving terms, we may also disable `beta` and `zeta` reduction.
See issue https://github.com/leanprover/lean4/issues/2669

- During type class resolution, we often want to reduce types using even `iota` and projection reduction.
Example:
```
inductive Ty where
  | int
  | bool

@[reducible] def Ty.interp (ty : Ty) : Type :=
  Ty.casesOn (motive := fun _ => Type) ty Int Bool

def test {a b c : Ty} (f : a.interp → b.interp → c.interp) (x : a.interp) (y : b.interp) : c.interp :=
  f x y

def f (a b : Ty.bool.interp) : Ty.bool.interp :=
  -- We want to synthesize `BEq Ty.bool.interp` here, and it will fail
  -- if we do not reduce `Ty.bool.interp` to `Bool`.
  test (.==.) a b
```
-/

/--
Discrimination trees. It is an index from terms to values of type `α`.
-/
structure DiscrTree (α : Type) where
  root : PersistentHashMap Key (Trie α) := {}

end Lean.Meta
