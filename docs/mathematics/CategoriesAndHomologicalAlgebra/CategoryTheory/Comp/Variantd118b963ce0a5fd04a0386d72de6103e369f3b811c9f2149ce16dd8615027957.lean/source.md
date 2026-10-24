# Complete source: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.Comp.Variantd118b963ce0a5fd04a0386d72de6103e369f3b811c9f2149ce16dd8615027957

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `8c82351adb5cb5a7883224158267026f26887a31` · SHA-256 `a9b7e8aa5e220c41a7d94100fd00b7b1f2b4b52b75979d56065d285918da043e`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: CategoriesAndHomologicalAlgebra.CategoryTheory
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.Comp.Variant0b4895d0a199fbff07981c647fa181734430f488846ad96a9933c3ccceaf37d8","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"0b4895d0a199fbff07981c647fa181734430f488846ad96a9933c3ccceaf37d8","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Algebra.CategoryTheory.SourceCorpus.Comp.Variant0b4895d0a199fbff07981c647fa181734430f488846ad96a9933c3ccceaf37d8","mathematical_subject":"Algebra.CategoryTheory","original_sha256":"0b4895d0a199fbff07981c647fa181734430f488846ad96a9933c3ccceaf37d8","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/October/30/ooi/FEATURES/.lake/packages/mathlib/Mathlib/Data/QPF/Multivariate/Constructions/Comp.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2018 Jeremy Avigad. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Jeremy Avigad, Simon Hudon
-/
import Mathlib.Data.PFunctor.Multivariate.Basic
import Mathlib.Data.QPF.Multivariate.Basic


namespace GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.Comp.Variant0b4895d0a199fbff07981c647fa181734430f488846ad96a9933c3ccceaf37d8

#align_import data.qpf.multivariate.constructions.comp from "leanprover-community/mathlib"@"dc6c365e751e34d100e80fe6e314c3c3e0fd2988"

/-!
# The composition of QPFs is itself a QPF

We define composition between one `n`-ary functor and `n` `m`-ary functors
and show that it preserves the QPF structure
-/


universe u

namespace MvQPF

open MvFunctor

variable {n m : ℕ} (F : TypeVec.{u} n → Type*) [fF : MvFunctor F] [q : MvQPF F]
  (G : Fin2 n → TypeVec.{u} m → Type u) [fG : ∀ i, MvFunctor <| G i] [q' : ∀ i, MvQPF <| G i]

/-- Composition of an `n`-ary functor with `n` `m`-ary
functors gives us one `m`-ary functor -/
def Comp (v : TypeVec.{u} m) : Type _ :=
  F fun i : Fin2 n ↦ G i v
#align mvqpf.comp MvQPF.Comp

namespace Comp

open MvFunctor MvPFunctor

variable {F G} {α β : TypeVec.{u} m} (f : α ⟹ β)

instance [I : Inhabited (F fun i : Fin2 n ↦ G i α)] : Inhabited (Comp F G α) := I

/-- Constructor for functor composition -/
protected def mk (x : F fun i ↦ G i α) : (Comp F G) α := x
#align mvqpf.comp.mk MvQPF.Comp.mk

/-- Destructor for functor composition -/
protected def get (x : (Comp F G) α) : F fun i ↦ G i α := x
#align mvqpf.comp.get MvQPF.Comp.get

@[simp]
protected theorem mk_get (x : (Comp F G) α) : Comp.mk (Comp.get x) = x := rfl
#align mvqpf.comp.mk_get MvQPF.Comp.mk_get

@[simp]
protected theorem get_mk (x : F fun i ↦ G i α) : Comp.get (Comp.mk x) = x := rfl
#align mvqpf.comp.get_mk MvQPF.Comp.get_mk

/-- map operation defined on a vector of functors -/
protected def map' : (fun i : Fin2 n ↦ G i α) ⟹ fun i : Fin2 n ↦ G i β := fun _i ↦ map f
#align mvqpf.comp.map' MvQPF.Comp.map'

/-- The composition of functors is itself functorial -/
protected def map : (Comp F G) α → (Comp F G) β :=
  (map fun _i ↦ map f : (F fun i ↦ G i α) → F fun i ↦ G i β)
#align mvqpf.comp.map MvQPF.Comp.map

instance : MvFunctor (Comp F G) where map := Comp.map

theorem map_mk (x : F fun i ↦ G i α) :
    f <$$> Comp.mk x = Comp.mk ((fun i (x : G i α) ↦ f <$$> x) <$$> x) := rfl
#align mvqpf.comp.map_mk MvQPF.Comp.map_mk

theorem get_map (x : Comp F G α) :
    Comp.get (f <$$> x) = (fun i (x : G i α) ↦ f <$$> x) <$$> Comp.get x := rfl
#align mvqpf.comp.get_map MvQPF.Comp.get_map

instance : MvQPF (Comp F G) where
  P := MvPFunctor.comp (P F) fun i ↦ P <| G i
  abs := Comp.mk ∘ (map fun i ↦ abs) ∘ abs ∘ MvPFunctor.comp.get
  repr {α} := MvPFunctor.comp.mk ∘ repr ∘
              (map fun i ↦ (repr : G i α → (fun i : Fin2 n ↦ Obj (P (G i)) α) i)) ∘ Comp.get
  abs_repr := by intros; simp only [(· ∘ ·), comp.get_mk, abs_repr, map_map,
                                    TypeVec.comp, MvFunctor.id_map', Comp.mk_get]
  abs_map := by intros; simp only [(· ∘ ·)]; rw [← abs_map]
                simp only [comp.get_map, map_map, TypeVec.comp, abs_map, map_mk]

end Comp

end MvQPF
```
