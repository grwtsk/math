# Complete source: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.Const.Variantb16d13273a40d5e2c1fcb711fea116283466f21e8f06842327903677e628c5e2

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `9efa7d74aeeb70c556a0739646abb76b6f483a05` · SHA-256 `c61a5c94254e44116869c32212dbe064666ad002c736ca4a85aee07b2bce5508`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: CategoriesAndHomologicalAlgebra.CategoryTheory
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.Const.Variantceed726e0f5c3c720523a0e06403b28ad10460ca2be65fd85b52ac57e1e680fa","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"ceed726e0f5c3c720523a0e06403b28ad10460ca2be65fd85b52ac57e1e680fa","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Algebra.CategoryTheory.SourceCorpus.Const.Variantceed726e0f5c3c720523a0e06403b28ad10460ca2be65fd85b52ac57e1e680fa","mathematical_subject":"Algebra.CategoryTheory","original_sha256":"ceed726e0f5c3c720523a0e06403b28ad10460ca2be65fd85b52ac57e1e680fa","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/October/30/ooi/FEATURES/.lake/packages/mathlib/Mathlib/Data/QPF/Multivariate/Constructions/Const.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2020 Simon Hudon All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Simon Hudon
-/
import Mathlib.Control.Functor.Multivariate
import Mathlib.Data.QPF.Multivariate.Basic


namespace GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.Const.Variantceed726e0f5c3c720523a0e06403b28ad10460ca2be65fd85b52ac57e1e680fa

#align_import data.qpf.multivariate.constructions.const from "leanprover-community/mathlib"@"dc6c365e751e34d100e80fe6e314c3c3e0fd2988"

/-!
# Constant functors are QPFs

Constant functors map every type vectors to the same target type. This
is a useful device for constructing data types from more basic types
that are not actually functorial. For instance `Const n Nat` makes
`Nat` into a functor that can be used in a functor-based data type
specification.
-/


universe u

namespace MvQPF

open MvFunctor

variable (n : ℕ)

/-- Constant multivariate functor -/
@[nolint unusedArguments]
def Const (A : Type*) (_v : TypeVec.{u} n) : Type _ := A
#align mvqpf.const MvQPF.Const

instance Const.inhabited {A α} [Inhabited A] : Inhabited (Const n A α) := ⟨(default : A)⟩
#align mvqpf.const.inhabited MvQPF.Const.inhabited

namespace Const

open MvFunctor MvPFunctor

variable {n} {A : Type u} {α β : TypeVec.{u} n} (f : α ⟹ β)

/-- Constructor for constant functor -/
protected def mk (x : A) : (Const n A) α := x
#align mvqpf.const.mk MvQPF.Const.mk

/-- Destructor for constant functor -/
protected def get (x : (Const n A) α) : A := x
#align mvqpf.const.get MvQPF.Const.get

@[simp]
protected theorem mk_get (x : (Const n A) α) : Const.mk (Const.get x) = x := rfl
#align mvqpf.const.mk_get MvQPF.Const.mk_get

@[simp]
protected theorem get_mk (x : A) : Const.get (Const.mk x : Const n A α) = x := rfl
#align mvqpf.const.get_mk MvQPF.Const.get_mk

/-- `map` for constant functor -/
protected def map : (Const n A) α → (Const n A) β := fun x => x
#align mvqpf.const.map MvQPF.Const.map

instance MvFunctor : MvFunctor (Const n A) where map _f := Const.map

theorem map_mk (x : A) : f <$$> Const.mk x = Const.mk x := rfl
#align mvqpf.const.map_mk MvQPF.Const.map_mk

theorem get_map (x : (Const n A) α) : Const.get (f <$$> x) = Const.get x := rfl
#align mvqpf.const.get_map MvQPF.Const.get_map

instance mvqpf : @MvQPF _ (Const n A) MvQPF.Const.MvFunctor where
  P := MvPFunctor.const n A
  abs x := MvPFunctor.const.get x
  repr x := MvPFunctor.const.mk n x
  abs_repr := fun _ => const.get_mk _
  abs_map := fun _ => const.get_map _
#align mvqpf.const.mvqpf MvQPF.Const.mvqpf

end Const

end MvQPF

```
