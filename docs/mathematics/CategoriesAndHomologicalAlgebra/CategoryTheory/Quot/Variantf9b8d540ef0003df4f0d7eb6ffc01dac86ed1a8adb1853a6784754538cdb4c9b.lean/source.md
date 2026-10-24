# Complete source: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.Quot.Variantf9b8d540ef0003df4f0d7eb6ffc01dac86ed1a8adb1853a6784754538cdb4c9b

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `84af5796e558dc0927aa142fa6d9fd7d19d1bff4` · SHA-256 `3d3c2e03d91e63486b838520719d90b989c87b34fb09463bfaa474ed70530715`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: CategoriesAndHomologicalAlgebra.CategoryTheory
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.QuotientQPF.Variant98faa96fa0f04cf055b2b5aab583e576208926d8beeb862e4f0d8286f25c67a4","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"98faa96fa0f04cf055b2b5aab583e576208926d8beeb862e4f0d8286f25c67a4","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Algebra.CategoryTheory.SourceCorpus.QuotientQPF.Variant98faa96fa0f04cf055b2b5aab583e576208926d8beeb862e4f0d8286f25c67a4","mathematical_subject":"Algebra.CategoryTheory","original_sha256":"98faa96fa0f04cf055b2b5aab583e576208926d8beeb862e4f0d8286f25c67a4","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/October/30/ooi/spectral-proof-of-RH/lean/mathlib4/Mathlib/Data/QPF/Multivariate/Constructions/Quot.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2018 Jeremy Avigad. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Jeremy Avigad, Simon Hudon
-/
import Mathlib.Data.QPF.Multivariate.Basic

/-!
# The quotient of QPF is itself a QPF

The quotients are here defined using a surjective function and
its right inverse. They are very similar to the `abs` and `repr`
functions found in the definition of `MvQPF`
-/



namespace GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.QuotientQPF.Variant98faa96fa0f04cf055b2b5aab583e576208926d8beeb862e4f0d8286f25c67a4

universe u

open MvFunctor

namespace MvQPF

variable {n : ℕ}
variable {F : TypeVec.{u} n → Type u}

section repr

variable [q : MvQPF F]
variable {G : TypeVec.{u} n → Type u} [MvFunctor G]
variable {FG_abs : ∀ {α}, F α → G α}
variable {FG_repr : ∀ {α}, G α → F α}

/-- If `F` is a QPF then `G` is a QPF as well. Can be used to
construct `MvQPF` instances by transporting them across
surjective functions -/
def quotientQPF (FG_abs_repr : ∀ {α} (x : G α), FG_abs (FG_repr x) = x)
    (FG_abs_map : ∀ {α β} (f : α ⟹ β) (x : F α), FG_abs (f <$$> x) = f <$$> FG_abs x) :
    MvQPF G where
  P := q.P
  abs p := FG_abs (abs p)
  repr x := repr (FG_repr x)
  abs_repr x := by rw [abs_repr, FG_abs_repr]
  abs_map f p := by rw [abs_map, FG_abs_map]

end repr

section Rel

variable (R : ∀ ⦃α⦄, F α → F α → Prop)

/-- Functorial quotient type -/
def Quot1 (α : TypeVec n) :=
  Quot (@R α)

instance Quot1.inhabited {α : TypeVec n} [Inhabited <| F α] : Inhabited (Quot1 R α) :=
  ⟨Quot.mk _ default⟩

section

variable [MvFunctor F] (Hfunc : ∀ ⦃α β⦄ (a b : F α) (f : α ⟹ β), R a b → R (f <$$> a) (f <$$> b))

/-- `map` of the `Quot1` functor -/
def Quot1.map ⦃α β⦄ (f : α ⟹ β) : Quot1.{u} R α → Quot1.{u} R β :=
  Quot.lift (fun x : F α => Quot.mk _ (f <$$> x : F β)) fun a b h => Quot.sound <| Hfunc a b _ h

/-- `mvFunctor` instance for `Quot1` with well-behaved `R` -/
def Quot1.mvFunctor : MvFunctor (Quot1 R) where map := @Quot1.map _ _ R _ Hfunc

end

section

variable [q : MvQPF F] (Hfunc : ∀ ⦃α β⦄ (a b : F α) (f : α ⟹ β), R a b → R (f <$$> a) (f <$$> b))

/-- `Quot1` is a QPF -/
noncomputable def relQuot : @MvQPF _ (Quot1 R) :=
  @quotientQPF n F q _ (MvQPF.Quot1.mvFunctor R Hfunc) (fun x => Quot.mk _ x)
    Quot.out (fun _x => Quot.out_eq _) fun _f _x => rfl

end

end Rel

end MvQPF
```
