# Complete source: GRWTSK.Algebra.RingTheory.GroupLike.Variant9c394a28bee2617fd587084739adfbe68b5c7de288f6948aab267ccc31b3b075

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `98baa3a10b601d3fec09a684ff644d2d1663735d` · SHA-256 `0c4863e9118bf37fa568e63dffc0738a08fc0dda3196b80bfe6d0f5d887bf594`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: Algebra.RingTheory
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Algebra.RingTheory.IsGroupLikeElem.Variantd49d77066658d105761576977877ef21956565017f4612a289e4580a439adad4","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"d49d77066658d105761576977877ef21956565017f4612a289e4580a439adad4","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Foundations.MixedSubjects.SourceCorpus.IsGroupLikeElem.Variantd49d77066658d105761576977877ef21956565017f4612a289e4580a439adad4","mathematical_subject":"Foundations.MixedSubjects","original_sha256":"d49d77066658d105761576977877ef21956565017f4612a289e4580a439adad4","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/rh16-games-packets/external/replay/.lake/packages/mathlib/Mathlib/RingTheory/Coalgebra/GroupLike.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2025 Yaël Dillies, Michał Mrugała. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Yaël Dillies, Michał Mrugała
-/
module

public import Mathlib.RingTheory.Coalgebra.Equiv
public import Mathlib.RingTheory.Flat.Domain

/-!
# Group-like elements in a coalgebra

This file defines group-like elements in a coalgebra, i.e. elements `a` such that `ε a = 1` and
`Δ a = a ⊗ₜ a`.

## Main declarations

* `IsGroupLikeElem`: Predicate for an element in a coalgebra to be group-like.
* `linearIndepOn_isGroupLikeElem`: Group-like elements over a domain are linearly independent.
-/


namespace GRWTSK.Algebra.RingTheory.IsGroupLikeElem.Variantd49d77066658d105761576977877ef21956565017f4612a289e4580a439adad4

@[expose] public section

open Coalgebra Function Module TensorProduct

variable {F R A B : Type*}

section CommSemiring
variable [CommSemiring R] [AddCommMonoid A] [AddCommMonoid B] [Module R A] [Coalgebra R A]
  [Module R B] [Coalgebra R B] {a b : A}

variable (R) in
/-- A group-like element in a coalgebra is an element `a` such that `ε(a) = 1` and `Δ(a) = a ⊗ₜ a`,
where `ε` and `Δ` are the counit and comultiplication respectively. -/
@[mk_iff]
structure IsGroupLikeElem (a : A) : Prop where
  /-- A group-like element `a` satisfies `ε(a) = 1`. -/
  counit_eq_one : counit (R := R) a = 1
  /-- A group-like element `a` satisfies `Δ(a) = a ⊗ₜ a`. -/
  comul_eq_tmul_self : comul a = a ⊗ₜ[R] a

attribute [simp] IsGroupLikeElem.counit_eq_one IsGroupLikeElem.comul_eq_tmul_self

@[simp] lemma isGroupLikeElem_self {r : R} : IsGroupLikeElem R r ↔ r = 1 := by
  simp +contextual [isGroupLikeElem_iff]

lemma IsGroupLikeElem.ne_zero [Nontrivial R] (ha : IsGroupLikeElem R a) : a ≠ 0 := by
  rintro rfl; simpa using ha.counit_eq_one

/-- A coalgebra homomorphism sends group-like elements to group-like elements. -/
lemma IsGroupLikeElem.map [FunLike F A B] [CoalgHomClass F R A B] (f : F)
    (ha : IsGroupLikeElem R a) : IsGroupLikeElem R (f a) where
  counit_eq_one := by rw [CoalgHomClass.counit_comp_apply, ha.counit_eq_one]
  comul_eq_tmul_self := by rw [← CoalgHomClass.map_comp_comul_apply, ha.comul_eq_tmul_self]; simp

/-- A coalgebra isomorphism preserves group-like elements. -/
@[simp] lemma isGroupLikeElem_map_equiv [EquivLike F A B] [CoalgEquivClass F R A B] (f : F) :
    IsGroupLikeElem R (f a) ↔ IsGroupLikeElem R a where
  mp ha := (CoalgEquiv.ofClass f).symm_apply_apply a ▸ ha.map _
  mpr := .map f

variable (R A) in
/-- The type of group-like elements in a coalgebra. -/
@[ext]
structure GroupLike where
  /-- The underlying element of a group-like element. -/
  val : A
  isGroupLikeElem_val : IsGroupLikeElem R val

namespace GroupLike

initialize_simps_projections GroupLike (as_prefix val)

attribute [simp] isGroupLikeElem_val

attribute [coe] val

instance instCoeOut : CoeOut (GroupLike R A) A where coe := val

lemma val_injective : Injective (val : GroupLike R A → A) := by rintro ⟨a, ha⟩; congr!

@[simp, norm_cast] lemma val_inj {a b : GroupLike R A} : a.val = b.val ↔ a = b :=
  val_injective.eq_iff

/-- Identity equivalence between `GroupLike R A` and `{a : A // IsGroupLikeElem R a}`. -/
@[simps]
def valEquiv : GroupLike R A ≃ Subtype (IsGroupLikeElem R : A → Prop) where
  toFun a := ⟨a.1, a.2⟩
  invFun a := ⟨a.1, a.2⟩
  left_inv _ := rfl
  right_inv _ := rfl

end GroupLike
end CommSemiring

section CommRing
variable [CommRing R] [IsDomain R] [AddCommGroup A] [Module R A] [Coalgebra R A]
  [IsTorsionFree R A]

open Submodule in
/-- Group-like elements over a domain are linearly independent. -/
lemma linearIndepOn_isGroupLikeElem : LinearIndepOn R id {a : A | IsGroupLikeElem R a} := by
  classical
  -- We show that any finset `s` of group-like elements is linearly independent.
  rw [linearIndepOn_iff_linearIndepOn_finset]
  rintro s hs
  -- For this, we do induction on `s`.
  induction s using Finset.cons_induction with
  -- The case `s = ∅` is trivial.
  | empty => simp
  -- Let's deal with the `s ∪ {a}` case.
  | cons a s has ih =>
  simp only [Finset.cons_eq_insert, Finset.coe_insert, Set.subset_def, Set.mem_insert_iff,
    Finset.mem_coe, Set.mem_ofPred_eq, forall_eq_or_imp] at hs
  obtain ⟨ha, hs⟩ := hs
  specialize ih hs
  -- Assume that there is some `c : A → R` and `d : R` such that `∑ x ∈ s, c x • x = d • a`.
  -- We want to prove `d = 0` and `∀ x ∈ s, c x = 0`.
  rw [Finset.coe_cons]
  refine ih.id_insert' ?_
  simp only [mem_span_finset, forall_exists_index, and_imp]
  rintro d c - hc
  -- `x ⊗ y` over `x, y ∈ s` are linearly independent since `s` is linearly independent and
  -- `R` is a domain.
  replace ih := ih.tmul_of_isDomain ih
  simp_rw [← Finset.coe_product, linearIndepOn_finset_iffₛ, id] at ih
  -- Tensoring the equality `∑ x ∈ s, c x • x = d • a` with itself, we get by linear independence
  -- that `c x ^ 2 = d * c x` and `c x * c y = 0` for `x ≠ y`.
  have key := calc
        ∑ x ∈ s, ∑ y ∈ s, (if x = y then d * c x else 0) • x ⊗ₜ[R] y
    _ = d • ∑ x ∈ s, c x • x ⊗ₜ[R] x := by simp [Finset.smul_sum, mul_smul]
    _ = d • comul (d • a) := by rw [← hc]; simp +contextual [(hs _ _).comul_eq_tmul_self]
    _ = (d • a) ⊗ₜ (d • a) := by simp [ha.comul_eq_tmul_self, smul_tmul, tmul_smul, -neg_smul]
    _ = ∑ x ∈ s, ∑ y ∈ s, (c x * c y) • x ⊗ₜ[R] y := by
      simp_rw [← hc, sum_tmul, smul_tmul, Finset.smul_sum, tmul_sum, tmul_smul, mul_smul]
  simp_rw [← Finset.sum_product'] at key
  apply ih at key
  -- Therefore, `c x = 0` for all `x ∈ s`.
  replace key x (hx : x ∈ s) : c x = 0 := by
    -- Otherwise, we deduce from `key` that `c y = 0` for any `y ≠ x` with `y ∈ s`.
    by_contra! hcx
    have hcy (y) (hys : y ∈ s) (hyx : y ≠ x) : c y = 0 := by
      simpa [*] using (key (y, x) (by simp [*])).symm
    -- Then substitute this into `hc` to get `c x • x = d • a`.
    rw [Finset.sum_eq_single x (by simp +contextual [hcy]) (by simp [hx])] at hc
    -- But `key` also says that `c x = d`.
    have hcxa : d = c x := mul_left_injective₀ hcx (by simpa using (key (x, x) (by simp [*])))
    -- So `x = a`...
    obtain rfl : x = a := by rwa [hcxa, smul_right_inj hcx] at hc
    -- ... which contradicts `x ∈ s` and `a ∉ s`.
    contradiction
  -- We are now done, since `d • a = ∑ x ∈ s, c x • x = 0`
  simp_all [ha.ne_zero, eq_comm]

/-- Group-like elements over a domain are linearly independent. -/
lemma linearIndep_groupLikeVal : LinearIndependent R (GroupLike.val (R := R) (A := A)) := by
  simpa using! (linearIndependent_equiv GroupLike.valEquiv).2 linearIndepOn_isGroupLikeElem

end CommRing
```
