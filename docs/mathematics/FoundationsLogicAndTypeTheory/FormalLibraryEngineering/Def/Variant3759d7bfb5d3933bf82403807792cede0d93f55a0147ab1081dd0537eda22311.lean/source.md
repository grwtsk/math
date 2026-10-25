# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Def.Variant3759d7bfb5d3933bf82403807792cede0d93f55a0147ab1081dd0537eda22311

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `6c01d358af396f36b7b5b1cb97c43dd684334ab7` · SHA-256 `f2602d48e52642d14c13322727eeeb0a94d4c9493259705eec743a14d3ea245a`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Impl.Variant64398a4c86a7c8d39b50f296a9e7569bd0fe009620b09c9476fd67263468f028","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"64398a4c86a7c8d39b50f296a9e7569bd0fe009620b09c9476fd67263468f028","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Foundations.NumbersAndBasicStructures.SourceCorpus.Impl.Variant64398a4c86a7c8d39b50f296a9e7569bd0fe009620b09c9476fd67263468f028","mathematical_subject":"Foundations.NumbersAndBasicStructures","original_sha256":"64398a4c86a7c8d39b50f296a9e7569bd0fe009620b09c9476fd67263468f028","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/source-capsule/t-001-v1-export-v1/toolchain/src/lean/Std/Data/DTreeMap/Internal/Def.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","scope_end_name_mismatch","uncompiled_organization"],"structural_qualification":"structural_issues_retained_uncompiled","transform_version":"1"}
/-
Copyright (c) 2024 Lean FRO, LLC. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Markus Himmel
-/
module

prelude
public import Init.Data.SInt.Basic


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Impl.Variant64398a4c86a7c8d39b50f296a9e7569bd0fe009620b09c9476fd67263468f028

@[expose] public section

/-!
# Low-level implementation of the size-bounded tree

This file contains the basic definition implementing the functionality of the size-bounded trees.
-/

set_option autoImplicit false
set_option linter.all true

universe u v

namespace Std.DTreeMap.Internal

/-- (Implementation detail) The actual inductive type for the size-balanced tree data structure. -/
inductive Impl (α : Type u) (β : α → Type v) where
  /-- (Implementation detail) -/
  | inner (size : Nat) (k : α) (v : β k) (l r : Impl α β)
  /-- (Implementation detail) -/
  | leaf
deriving Inhabited

/-- The "delta" parameter of the size-bounded tree. Controls how imbalanced the tree can be. -/
@[inline, Std.Internal.tree_tac]
def delta : Nat := 3

/-- The "ratio" parameter of the size-bounded tree. Controls how aggressive the rebalancing
operations are. -/
@[inline, Std.Internal.tree_tac, implicit_reducible]
def ratio : Nat := 2

variable {α : Type u} {β : α → Type v}

namespace Impl

/-!
## `size`

In contrast to other functions, `size` is defined here because it is required to define the
`Balanced` predicate (see `Std.Data.DTreeMap.Internal.Balanced`).
-/

/-- The size information stored in the tree. -/
@[inline, implicit_reducible]
def size : Impl α β → Nat
  | inner sz _ _ _ _ => sz
  | leaf => 0

@[Std.Internal.tree_tac] theorem size_leaf : (Impl.leaf : Impl α β).size = 0 := rfl
@[Std.Internal.tree_tac] theorem size_inner {sz k v l r} : (Impl.inner sz k v l r : Impl α β).size = sz := rfl

/-!
## `toListModel`

`toListModel` is defined here because it is required to define the `Ordered` predicate.
-/

/--
Flattens a tree into a list of key-value pairs. This function is defined for verification
purposes and should not be executed because it is very inefficient.
-/
def toListModel : Impl α β → List ((a : α) × β a)
  | .leaf => []
  | .inner _ k v l r => l.toListModel ++ ⟨k, v⟩ :: r.toListModel

@[simp] theorem toListModel_leaf : (.leaf : Impl α β).toListModel = [] := rfl
@[simp] theorem toListModel_inner {sz k v l r} :
  (.inner sz k v l r : Impl α β).toListModel = l.toListModel ++ ⟨k, v⟩ :: r.toListModel := rfl

/--
  Computes the size of the tree. Used for verification of iterators.
-/
def treeSize : Internal.Impl α β → Nat
  | .leaf => 0
  | .inner _ _ _ l r => 1 + l.treeSize + treeSize r

end Std.DTreeMap.Internal.Impl
```
