# Complete source: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.Multivariate.Variant687199774d17e243ab8facd2e715e30417554c1e41698320f121bda318013cc1

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `cad701468a61b58d62eb4d3e58322acb98f331c1` · SHA-256 `a33bb784ed9b12799b36fc56fc67d288f1cd143830189e83e836049784df3300`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: CategoriesAndHomologicalAlgebra.CategoryTheory
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.MvFunctor.Variant9b860d45504539feda9e2132f389afd6c737f0994c69c522e4240d823f9b7dfe","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"9b860d45504539feda9e2132f389afd6c737f0994c69c522e4240d823f9b7dfe","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Foundations.NumbersAndBasicStructures.SourceCorpus.MvFunctor.Variant9b860d45504539feda9e2132f389afd6c737f0994c69c522e4240d823f9b7dfe","mathematical_subject":"Foundations.NumbersAndBasicStructures","original_sha256":"9b860d45504539feda9e2132f389afd6c737f0994c69c522e4240d823f9b7dfe","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/October/30/ooi/FEATURES/.lake/packages/mathlib/Mathlib/Control/Functor/Multivariate.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2018 Jeremy Avigad. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Jeremy Avigad, Mario Carneiro, Simon Hudon
-/
import Mathlib.Data.Fin.Fin2
import Mathlib.Data.TypeVec


namespace GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.MvFunctor.Variant9b860d45504539feda9e2132f389afd6c737f0994c69c522e4240d823f9b7dfe

#align_import control.functor.multivariate from "leanprover-community/mathlib"@"008205aa645b3f194c1da47025c5f110c8406eab"

/-!

Functors between the category of tuples of types, and the category Type

Features:

`MvFunctor n` : the type class of multivariate functors
`f <$$> x`    : notation for map

-/


universe u v w

open MvFunctor

/-- Multivariate functors, i.e. functor between the category of type vectors
and the category of Type -/
class MvFunctor {n : ℕ} (F : TypeVec n → Type*) where
  /-- Multivariate map, if `f : α ⟹ β` and `x : F α` then `f <$$> x : F β`. -/
  map : ∀ {α β : TypeVec n}, α ⟹ β → F α → F β
#align mvfunctor MvFunctor

/-- Multivariate map, if `f : α ⟹ β` and `x : F α` then `f <$$> x : F β` -/
scoped[MvFunctor] infixr:100 " <$$> " => MvFunctor.map

variable {n : ℕ}

namespace MvFunctor

variable {α β γ : TypeVec.{u} n} {F : TypeVec.{u} n → Type v} [MvFunctor F]

/-- predicate lifting over multivariate functors -/
def LiftP {α : TypeVec n} (P : ∀ i, α i → Prop) (x : F α) : Prop :=
  ∃ u : F (fun i => Subtype (P i)), (fun i => @Subtype.val _ (P i)) <$$> u = x
#align mvfunctor.liftp MvFunctor.LiftP

/-- relational lifting over multivariate functors -/
def LiftR {α : TypeVec n} (R : ∀ {i}, α i → α i → Prop) (x y : F α) : Prop :=
  ∃ u : F (fun i => { p : α i × α i // R p.fst p.snd }),
    (fun i (t : { p : α i × α i // R p.fst p.snd }) => t.val.fst) <$$> u = x ∧
      (fun i (t : { p : α i × α i // R p.fst p.snd }) => t.val.snd) <$$> u = y
#align mvfunctor.liftr MvFunctor.LiftR

/-- given `x : F α` and a projection `i` of type vector `α`, `supp x i` is the set
of `α.i` contained in `x` -/
def supp {α : TypeVec n} (x : F α) (i : Fin2 n) : Set (α i) :=
  { y : α i | ∀ ⦃P⦄, LiftP P x → P i y }
#align mvfunctor.supp MvFunctor.supp

theorem of_mem_supp {α : TypeVec n} {x : F α} {P : ∀ ⦃i⦄, α i → Prop} (h : LiftP P x) (i : Fin2 n) :
    ∀ y ∈ supp x i, P y := fun _y hy => hy h
#align mvfunctor.of_mem_supp MvFunctor.of_mem_supp

end MvFunctor



/-- laws for `MvFunctor` -/
class LawfulMvFunctor {n : ℕ} (F : TypeVec n → Type*) [MvFunctor F] : Prop where
  /-- `map` preserved identities, i.e., maps identity on `α` to identity on `F α` -/
  id_map : ∀ {α : TypeVec n} (x : F α), TypeVec.id <$$> x = x
  /-- `map` preserves compositions -/
  comp_map :
    ∀ {α β γ : TypeVec n} (g : α ⟹ β) (h : β ⟹ γ) (x : F α), (h ⊚ g) <$$> x = h <$$> g <$$> x
#align is_lawful_mvfunctor LawfulMvFunctor

open Nat TypeVec

namespace MvFunctor

export LawfulMvFunctor (comp_map)

open LawfulMvFunctor

variable {α β γ : TypeVec.{u} n}

variable {F : TypeVec.{u} n → Type v} [MvFunctor F]

variable (P : α ⟹ «repeat» n Prop) (R : α ⊗ α ⟹ «repeat» n Prop)

/-- adapt `MvFunctor.LiftP` to accept predicates as arrows -/
def LiftP' : F α → Prop :=
  MvFunctor.LiftP fun i x => ofRepeat <| P i x
#align mvfunctor.liftp' MvFunctor.LiftP'


/-- adapt `MvFunctor.LiftR` to accept relations as arrows -/
def LiftR' : F α → F α → Prop :=
  MvFunctor.LiftR @fun i x y => ofRepeat <| R i <| TypeVec.prod.mk _ x y
#align mvfunctor.liftr' MvFunctor.LiftR'

variable [LawfulMvFunctor F]

@[simp]
theorem id_map (x : F α) : TypeVec.id <$$> x = x :=
  LawfulMvFunctor.id_map x
#align mvfunctor.id_map MvFunctor.id_map

@[simp]
theorem id_map' (x : F α) : (fun _i a => a) <$$> x = x :=
  id_map x
#align mvfunctor.id_map' MvFunctor.id_map'

theorem map_map (g : α ⟹ β) (h : β ⟹ γ) (x : F α) : h <$$> g <$$> x = (h ⊚ g) <$$> x :=
  Eq.symm <| comp_map _ _ _
#align mvfunctor.map_map MvFunctor.map_map

section LiftP'

variable (F)

theorem exists_iff_exists_of_mono {P : F α → Prop} {q : F β → Prop}
                                  (f : α ⟹ β) (g : β ⟹ α)
                                  (h₀ : f ⊚ g = TypeVec.id)
                                  (h₁ : ∀ u : F α, P u ↔ q (f <$$> u)) :
      (∃ u : F α, P u) ↔ ∃ u : F β, q u := by
  constructor <;> rintro ⟨u, h₂⟩
  · refine ⟨f <$$> u, ?_⟩
    apply (h₁ u).mp h₂
  · refine ⟨g <$$> u, ?_⟩
    apply (h₁ _).mpr _
    simp only [MvFunctor.map_map, h₀, LawfulMvFunctor.id_map, h₂]
#align mvfunctor.exists_iff_exists_of_mono MvFunctor.exists_iff_exists_of_mono

variable {F}

theorem LiftP_def (x : F α) : LiftP' P x ↔ ∃ u : F (Subtype_ P), subtypeVal P <$$> u = x :=
  exists_iff_exists_of_mono F _ _ (toSubtype_of_subtype P) (by simp [MvFunctor.map_map])
#align mvfunctor.liftp_def MvFunctor.LiftP_def

theorem LiftR_def (x y : F α) :
    LiftR' R x y ↔
      ∃ u : F (Subtype_ R),
        (TypeVec.prod.fst ⊚ subtypeVal R) <$$> u = x ∧
          (TypeVec.prod.snd ⊚ subtypeVal R) <$$> u = y :=
  exists_iff_exists_of_mono _ _ _ (toSubtype'_of_subtype' R)
    (by simp only [map_map, comp_assoc, subtypeVal_toSubtype']; simp [comp])
#align mvfunctor.liftr_def MvFunctor.LiftR_def

end LiftP'

end MvFunctor

open Nat

namespace MvFunctor

open TypeVec

section LiftPLastPredIff

variable {F : TypeVec.{u} (n + 1) → Type*} [MvFunctor F] [LawfulMvFunctor F] {α : TypeVec.{u} n}

open MvFunctor

variable {β : Type u}

variable (pp : β → Prop)

private def f :
    ∀ n α,
      (fun i : Fin2 (n + 1) => { p_1 // ofRepeat (PredLast' α pp i p_1) }) ⟹ fun i : Fin2 (n + 1) =>
        { p_1 : (α ::: β) i // PredLast α pp p_1 }
  | _, α, Fin2.fs i, x =>
    ⟨x.val, cast (by simp only [PredLast]; erw [const_iff_true]) x.property⟩
  | _, α, Fin2.fz, x => ⟨x.val, x.property⟩

private def g :
    ∀ n α,
      (fun i : Fin2 (n + 1) => { p_1 : (α ::: β) i // PredLast α pp p_1 }) ⟹ fun i : Fin2 (n + 1) =>
        { p_1 // ofRepeat (PredLast' α pp i p_1) }
  | _, α, Fin2.fs i, x =>
    ⟨x.val, cast (by simp only [PredLast]; erw [const_iff_true]) x.property⟩
  | _, α, Fin2.fz, x => ⟨x.val, x.property⟩

theorem LiftP_PredLast_iff {β} (P : β → Prop) (x : F (α ::: β)) :
    LiftP' (PredLast' _ P) x ↔ LiftP (PredLast _ P) x := by
  dsimp only [LiftP, LiftP']
  apply exists_iff_exists_of_mono F (f _ n α) (g _ n α)
  · ext i ⟨x, _⟩
    cases i <;> rfl
  · intros
    rw [MvFunctor.map_map]
    dsimp [(· ⊚ ·)]
    suffices (fun i => Subtype.val) = (fun i x => (MvFunctor.f P n α i x).val)
      by rw[this];
    ext i ⟨x, _⟩
    cases i <;> rfl
#align mvfunctor.liftp_last_pred_iff MvFunctor.LiftP_PredLast_iff

open Function

variable (rr : β → β → Prop)

private def f' :
    ∀ n α,
      (fun i : Fin2 (n + 1) =>
          { p_1 : _ × _ // ofRepeat (RelLast' α rr i (TypeVec.prod.mk _ p_1.fst p_1.snd)) }) ⟹
        fun i : Fin2 (n + 1) => { p_1 : (α ::: β) i × _ // RelLast α rr p_1.fst p_1.snd }
  | _, α, Fin2.fs i, x =>
    ⟨x.val, cast (by simp only [RelLast]; erw [repeatEq_iff_eq]) x.property⟩
  | _, α, Fin2.fz, x => ⟨x.val, x.property⟩

private def g' :
    ∀ n α,
      (fun i : Fin2 (n + 1) => { p_1 : (α ::: β) i × _ // RelLast α rr p_1.fst p_1.snd }) ⟹
        fun i : Fin2 (n + 1) =>
        { p_1 : _ × _ // ofRepeat (RelLast' α rr i (TypeVec.prod.mk _ p_1.1 p_1.2)) }
  | _, α, Fin2.fs i, x =>
    ⟨x.val, cast (by simp only [RelLast]; erw [repeatEq_iff_eq]) x.property⟩
  | _, α, Fin2.fz, x => ⟨x.val, x.property⟩

theorem LiftR_RelLast_iff (x y : F (α ::: β)) :
    LiftR' (RelLast' _ rr) x y ↔ LiftR (RelLast (i := _) _ rr) x y := by
  dsimp only [LiftR, LiftR']
  apply exists_iff_exists_of_mono F (f' rr _ _) (g' rr _ _)
  · ext i ⟨x, _⟩ : 2
    cases i <;> rfl
  · intros
    simp [MvFunctor.map_map, (· ⊚ ·)]
    -- porting note: proof was
    -- rw [MvFunctor.map_map, MvFunctor.map_map, (· ⊚ ·), (· ⊚ ·)]
    -- congr <;> ext i ⟨x, _⟩ <;> cases i <;> rfl
    suffices  (fun i t => t.val.fst) = ((fun i x => (MvFunctor.f' rr n α i x).val.fst))
            ∧ (fun i t => t.val.snd) = ((fun i x => (MvFunctor.f' rr n α i x).val.snd))
    by  rcases this with ⟨left, right⟩
        rw[left, right];
    constructor <;> ext i ⟨x, _⟩ <;> cases i <;> rfl
#align mvfunctor.liftr_last_rel_iff MvFunctor.LiftR_RelLast_iff

end LiftPLastPredIff

end MvFunctor
```
