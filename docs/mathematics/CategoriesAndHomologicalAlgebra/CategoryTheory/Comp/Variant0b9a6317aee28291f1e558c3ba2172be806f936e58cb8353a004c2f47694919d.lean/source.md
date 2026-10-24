# Complete source: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.Comp.Variant0b9a6317aee28291f1e558c3ba2172be806f936e58cb8353a004c2f47694919d

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `0726629da36eac89ef9db0659ed4bd22c21b81f3` · SHA-256 `052ff4204f045fbe8bf3d33c3298f38c9c50dd063f45e574b68ceaf7b2342f0f`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: CategoriesAndHomologicalAlgebra.CategoryTheory
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.Comp.Variantf7ab99254d9f87c90dd4fa6a007ae192dacc5090509f7dfcf5d34be75e8272c3","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"f7ab99254d9f87c90dd4fa6a007ae192dacc5090509f7dfcf5d34be75e8272c3","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Algebra.CategoryTheory.SourceCorpus.Comp.Variantf7ab99254d9f87c90dd4fa6a007ae192dacc5090509f7dfcf5d34be75e8272c3","mathematical_subject":"Algebra.CategoryTheory","original_sha256":"f7ab99254d9f87c90dd4fa6a007ae192dacc5090509f7dfcf5d34be75e8272c3","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/October/30/ooi/spectral-proof-of-RH/lean/mathlib4/Mathlib/Data/QPF/Multivariate/Constructions/Comp.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2018 Jeremy Avigad. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Jeremy Avigad, Simon Hudon
-/
import Mathlib.Data.PFunctor.Multivariate.Basic
import Mathlib.Data.QPF.Multivariate.Basic

/-!
# The composition of QPFs is itself a QPF

We define composition between one `n`-ary functor and `n` `m`-ary functors
and show that it preserves the QPF structure
-/



namespace GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.Comp.Variantf7ab99254d9f87c90dd4fa6a007ae192dacc5090509f7dfcf5d34be75e8272c3

universe u

namespace MvQPF

open MvFunctor

variable {n m : ℕ} (F : TypeVec.{u} n → Type*) (G : Fin2 n → TypeVec.{u} m → Type u)

/-- Composition of an `n`-ary functor with `n` `m`-ary
functors gives us one `m`-ary functor -/
def Comp (v : TypeVec.{u} m) : Type _ :=
  F fun i : Fin2 n ↦ G i v

namespace Comp

open MvFunctor MvPFunctor

variable {F G} {α β : TypeVec.{u} m} (f : α ⟹ β)

instance [I : Inhabited (F fun i : Fin2 n ↦ G i α)] : Inhabited (Comp F G α) := I

/-- Constructor for functor composition -/
protected def mk (x : F fun i ↦ G i α) : Comp F G α := x

/-- Destructor for functor composition -/
protected def get (x : Comp F G α) : F fun i ↦ G i α := x

@[simp]
protected theorem mk_get (x : Comp F G α) : Comp.mk (Comp.get x) = x := rfl

@[simp]
protected theorem get_mk (x : F fun i ↦ G i α) : Comp.get (Comp.mk x) = x := rfl

section
variable [MvFunctor F] [∀ i, MvFunctor <| G i]

/-- map operation defined on a vector of functors -/
protected def map' : (fun i : Fin2 n ↦ G i α) ⟹ fun i : Fin2 n ↦ G i β := fun _i ↦ map f

/-- The composition of functors is itself functorial -/
protected def map : (Comp F G) α → (Comp F G) β :=
  (map fun _i ↦ map f : (F fun i ↦ G i α) → F fun i ↦ G i β)

instance : MvFunctor (Comp F G) where map f := Comp.map f

theorem map_mk (x : F fun i ↦ G i α) :
    f <$$> Comp.mk x = Comp.mk ((fun i (x : G i α) ↦ f <$$> x) <$$> x) := rfl

theorem get_map (x : Comp F G α) :
    Comp.get (f <$$> x) = (fun i (x : G i α) ↦ f <$$> x) <$$> Comp.get x := rfl

end

instance [MvQPF F] [∀ i, MvQPF <| G i] : MvQPF (Comp F G) where
  P := MvPFunctor.comp (P F) fun i ↦ P <| G i
  abs := Comp.mk ∘ (map fun _ ↦ abs) ∘ abs ∘ MvPFunctor.comp.get
  repr {α} := MvPFunctor.comp.mk ∘ repr ∘
              (map fun i ↦ (repr : G i α → (fun i : Fin2 n ↦ Obj (P (G i)) α) i)) ∘ Comp.get
  abs_repr := by
    intros
    simp +unfoldPartialApp only [Function.comp_def, comp.get_mk, abs_repr,
      map_map, TypeVec.comp, MvFunctor.id_map', Comp.mk_get]
  abs_map := by
    intros
    simp only [(· ∘ ·)]
    rw [← abs_map]
    simp +unfoldPartialApp only [comp.get_map, map_map, TypeVec.comp,
      abs_map, map_mk]

end Comp

end MvQPF
```
