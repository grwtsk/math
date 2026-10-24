# Complete source: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.Const.Variant75f95af4ed8da6c535c33e55d9415817c393058713e90502f8041bf7b55fc49b

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `233732d6944d569c908994a860106520a5be9563` · SHA-256 `eca0bd23a273fa374484922dd3c84b0a81463685dff9aa35ec67760cd8c8d7b4`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: CategoriesAndHomologicalAlgebra.CategoryTheory
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.Const.Variantcf7a10a4e51c0dda7873822cd00c7a65ad2a9ca0ae1d1f7f03e0dc0dce5328c9","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"cf7a10a4e51c0dda7873822cd00c7a65ad2a9ca0ae1d1f7f03e0dc0dce5328c9","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Algebra.CategoryTheory.SourceCorpus.Const.Variantcf7a10a4e51c0dda7873822cd00c7a65ad2a9ca0ae1d1f7f03e0dc0dce5328c9","mathematical_subject":"Algebra.CategoryTheory","original_sha256":"cf7a10a4e51c0dda7873822cd00c7a65ad2a9ca0ae1d1f7f03e0dc0dce5328c9","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/October/30/ooi/spectral-proof-of-RH/lean/mathlib4/Mathlib/Data/QPF/Multivariate/Constructions/Const.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2020 Simon Hudon. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Simon Hudon
-/
import Mathlib.Control.Functor.Multivariate
import Mathlib.Data.QPF.Multivariate.Basic

/-!
# Constant functors are QPFs

Constant functors map every type vectors to the same target type. This
is a useful device for constructing data types from more basic types
that are not actually functorial. For instance `Const n Nat` makes
`Nat` into a functor that can be used in a functor-based data type
specification.
-/



namespace GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.Const.Variantcf7a10a4e51c0dda7873822cd00c7a65ad2a9ca0ae1d1f7f03e0dc0dce5328c9

universe u

namespace MvQPF

open MvFunctor

variable (n : ℕ)

/-- Constant multivariate functor -/
@[nolint unusedArguments]
def Const (A : Type*) (_v : TypeVec.{u} n) : Type _ := A

instance Const.inhabited {A α} [Inhabited A] : Inhabited (Const n A α) := ⟨(default : A)⟩

namespace Const

open MvFunctor MvPFunctor

variable {n} {A : Type u} {α β : TypeVec.{u} n} (f : α ⟹ β)

/-- Constructor for constant functor -/
protected def mk (x : A) : Const n A α := x

/-- Destructor for constant functor -/
protected def get (x : Const n A α) : A := x

@[simp]
protected theorem mk_get (x : Const n A α) : Const.mk (Const.get x) = x := rfl

@[simp]
protected theorem get_mk (x : A) : Const.get (Const.mk x : Const n A α) = x := rfl

/-- `map` for constant functor -/
protected def map : Const n A α → Const n A β := fun x => x

instance MvFunctor : MvFunctor (Const n A) where map _f := Const.map

theorem map_mk (x : A) : f <$$> Const.mk x = Const.mk x := rfl

theorem get_map (x : (Const n A) α) : Const.get (f <$$> x) = Const.get x := rfl

instance mvqpf : @MvQPF _ (Const n A) where
  P := MvPFunctor.const n A
  abs x := MvPFunctor.const.get x
  repr x := MvPFunctor.const.mk n x
  abs_repr := fun _ => const.get_mk _
  abs_map := fun _ => const.get_map _

end Const

end MvQPF
```
