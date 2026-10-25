# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.MathematicalLogic.ZeroLimit.Variant1b04b9655887a2e0aa74dc05de6dd7f8814996f25ad248218a45f49a32fd5e37

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `da8fc4ad74df7d44b6cb445257535fdda05abcf9` · SHA-256 `b34f667bddfddf5393348ebe9f18402dec5bbacb0373eb096495de6943fa33a4`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.MathematicalLogic
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.MathematicalLogic.GoodProductsLinearIndependentEmpty.Variant77d21abf948d211ba562bd1333778577706b27125befda6b4cd84a8167e92286","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"77d21abf948d211ba562bd1333778577706b27125befda6b4cd84a8167e92286","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Logic.Foundations.SourceCorpus.GoodProductsLinearIndependentEmpty.Variant77d21abf948d211ba562bd1333778577706b27125befda6b4cd84a8167e92286","mathematical_subject":"Logic.Foundations","original_sha256":"77d21abf948d211ba562bd1333778577706b27125befda6b4cd84a8167e92286","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/rh16-games-packets/external/replay/.lake/packages/mathlib/Mathlib/Topology/Category/Profinite/Nobeling/ZeroLimit.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2023 Dagur Asgeirsson. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Dagur Asgeirsson
-/
module

public import Mathlib.LinearAlgebra.LinearIndependent.Basic
public import Mathlib.Topology.Category.Profinite.Nobeling.Basic

/-!
# The zero and limit cases in the induction for Nöbeling's theorem

This file proves the zero and limit cases of the ordinal induction used in the proof of
Nöbeling's theorem. See the section docstrings for more information.

For the overall proof outline see `Mathlib/Topology/Category/Profinite/Nobeling/Basic.lean`.

## References

- [scholze2019condensed], Theorem 5.4.
-/


namespace GRWTSK.FoundationsLogicAndTypeTheory.MathematicalLogic.GoodProductsLinearIndependentEmpty.Variant77d21abf948d211ba562bd1333778577706b27125befda6b4cd84a8167e92286

@[expose] public section

universe u

namespace Profinite.NobelingProof

variable {I : Type u} (C : Set (I → Bool)) [LinearOrder I]

section Zero
/-!
## The zero case of the induction

In this case, we have `contained C 0` which means that `C` is either empty or a singleton.
-/

instance : Subsingleton (LocallyConstant (∅ : Set (I → Bool)) ℤ) :=
  subsingleton_iff.mpr (fun _ _ ↦ LocallyConstant.ext isEmptyElim)

instance : IsEmpty { l // Products.isGood (∅ : Set (I → Bool)) l } :=
  isEmpty_iff.mpr fun ⟨l, hl⟩ ↦ hl <| by
    rw [subsingleton_iff.mp inferInstance (Products.eval ∅ l) 0]
    exact Submodule.zero_mem _

theorem GoodProducts.linearIndependentEmpty {I} [LinearOrder I] :
    LinearIndependent ℤ (eval (∅ : Set (I → Bool))) := linearIndependent_empty_type

/-- The empty list as a `Products` -/
def Products.nil : Products I := ⟨[], by simp only [List.isChain_nil]⟩

set_option backward.isDefEq.respectTransparency.types false in
theorem Products.lt_nil_empty {I} [LinearOrder I] : { m : Products I | m < Products.nil } = ∅ := by
  ext ⟨m, hm⟩
  refine ⟨fun h ↦ ?_, by tauto⟩
  simp only [Set.mem_ofPred_eq, lt_iff_lex_lt, nil, List.not_lex_nil] at h

instance {α : Type*} [TopologicalSpace α] [Nonempty α] : Nontrivial (LocallyConstant α ℤ) :=
  ⟨0, 1, ne_of_apply_ne DFunLike.coe <| (Function.const_injective (β := ℤ)).ne zero_ne_one⟩

set_option backward.isDefEq.respectTransparency.types false in
theorem Products.isGood_nil {I} [LinearOrder I] :
    Products.isGood ({fun _ ↦ false} : Set (I → Bool)) Products.nil := by
  intro h
  simp [Products.eval, Products.nil] at h

theorem Products.span_nil_eq_top {I} [LinearOrder I] :
    Submodule.span ℤ (eval ({fun _ ↦ false} : Set (I → Bool)) '' {nil}) = ⊤ := by
  rw [Set.image_singleton, eq_top_iff]
  intro f _
  rw [Submodule.mem_span_singleton]
  refine ⟨f default, ?_⟩
  simp only [eval, List.map, List.prod_nil, zsmul_eq_mul, mul_one, Products.nil]
  ext x
  obtain rfl : x = default := by simp only [Set.default_coe_singleton, eq_iff_true_of_subsingleton]
  rfl

set_option backward.isDefEq.respectTransparency.types false in
/-- There is a unique `GoodProducts` for the singleton `{fun _ ↦ false}`. -/
noncomputable
instance : Unique { l // Products.isGood ({fun _ ↦ false} : Set (I → Bool)) l } where
  default := ⟨Products.nil, Products.isGood_nil⟩
  uniq := by
    intro ⟨⟨l, hl⟩, hll⟩
    ext
    apply Subtype.ext
    apply (List.lex_nil_or_eq_nil l (r := (· < ·))).resolve_left
    intro _
    apply hll
    have he : {Products.nil} ⊆ {m | m < ⟨l,hl⟩} := by
      simpa only [Products.nil, Products.lt_iff_lex_lt, Set.singleton_subset_iff, Set.mem_ofPred_eq]
    grw [← he]
    rw [Products.span_nil_eq_top]
    exact Submodule.mem_top

instance (α : Type*) [TopologicalSpace α] : IsAddTorsionFree (LocallyConstant α ℤ) :=
  LocallyConstant.coe_injective.isAddTorsionFree LocallyConstant.coeFnAddMonoidHom

theorem GoodProducts.linearIndependentSingleton {I} [LinearOrder I] :
    LinearIndependent ℤ (eval ({fun _ ↦ false} : Set (I → Bool))) :=
  .of_subsingleton default <| by simp [eval, Products.eval, Products.nil, default]

end Zero

variable [WellFoundedLT I]

section Limit
/-!
## The limit case of the induction

We relate linear independence in `LocallyConstant (π C (ord I · < o')) ℤ` with linear independence
in `LocallyConstant C ℤ`, where `contained C o` and `o' < o`.

When `o` is a limit ordinal, we prove that the good products in `LocallyConstant C ℤ` are linearly
independent if and only if a certain directed union is linearly independent. Each term in this
directed union is in bijection with the good products w.r.t. `π C (ord I · < o')` for an ordinal
`o' < o`, and these are linearly independent by the inductive hypothesis.

### Main definitions

* `GoodProducts.smaller` is the image of good products coming from a smaller ordinal.

* `GoodProducts.range_equiv`: The image of the `GoodProducts` in `C` is equivalent to the union of
  `smaller C o'` over all ordinals `o' < o`.

### Main results

* `Products.limitOrdinal`: for `o` a limit ordinal such that `contained C o`, a product `l` is good
  w.r.t. `C` iff it there exists an ordinal `o' < o` such that `l` is good w.r.t.
  `π C (ord I · < o')`.

* `GoodProducts.linearIndependent_iff_union_smaller` is the result mentioned above, that the good
  products are linearly independent iff a directed union is.
-/

namespace GoodProducts

/--
The image of the `GoodProducts` for `π C (ord I · < o)` in `LocallyConstant C ℤ`. The name `smaller`
refers to the setting in which we will use this, when we are mapping in `GoodProducts` from a
smaller set, i.e. when `o` is a smaller ordinal than the one `C` is "contained" in.
-/
-- Note: `Set` has no computational content, but Lean still attempts to compile it.
-- See https://github.com/leanprover/lean4/issues/14084.
noncomputable def smaller (o : Ordinal) : Set (LocallyConstant C ℤ) :=
  (πs C o) '' (range (π C (ord I · < o)))

/--
The map from the image of the `GoodProducts` in `LocallyConstant (π C (ord I · < o)) ℤ` to
`smaller C o`
-/
noncomputable
def range_equiv_smaller_toFun (o : Ordinal) (x : range (π C (ord I · < o))) : smaller C o :=
  ⟨πs C o ↑x, x.val, x.property, rfl⟩

set_option backward.isDefEq.respectTransparency.types false in
theorem range_equiv_smaller_toFun_bijective (o : Ordinal) :
    Function.Bijective (range_equiv_smaller_toFun C o) := by
  dsimp +unfoldPartialApp [range_equiv_smaller_toFun]
  refine ⟨fun a b hab ↦ ?_, fun ⟨a, b, hb⟩ ↦ ?_⟩
  · ext1
    simp only [Subtype.mk.injEq] at hab
    exact injective_πs C o hab
  · use ⟨b, hb.1⟩
    simpa only [Subtype.mk.injEq] using hb.2

/--
The equivalence from the image of the `GoodProducts` in `LocallyConstant (π C (ord I · < o)) ℤ` to
`smaller C o`
-/
noncomputable
def range_equiv_smaller (o : Ordinal) : range (π C (ord I · < o)) ≃ smaller C o :=
  Equiv.ofBijective (range_equiv_smaller_toFun C o) (range_equiv_smaller_toFun_bijective C o)

theorem smaller_factorization (o : Ordinal) :
    (fun (p : smaller C o) ↦ p.1) ∘ (range_equiv_smaller C o).toFun =
    (πs C o) ∘ (fun (p : range (π C (ord I · < o))) ↦ p.1) := by rfl

theorem linearIndependent_iff_smaller (o : Ordinal) :
    LinearIndependent ℤ (GoodProducts.eval (π C (ord I · < o))) ↔
    LinearIndependent ℤ (fun (p : smaller C o) ↦ p.1) := by
  rw [GoodProducts.linearIndependent_iff_range,
    ← LinearMap.linearIndependent_iff (πs C o)
    (LinearMap.ker_eq_bot_of_injective (injective_πs _ _)), ← smaller_factorization C o]
  exact linearIndependent_equiv _

theorem smaller_mono {o₁ o₂ : Ordinal} (h : o₁ ≤ o₂) : smaller C o₁ ⊆ smaller C o₂ := by
  rintro f ⟨g, hg, rfl⟩
  simp only [smaller, Set.mem_image]
  use πs' C h g
  obtain ⟨⟨l, gl⟩, rfl⟩ := hg
  refine ⟨?_, ?_⟩
  · use ⟨l, Products.isGood_mono C h gl⟩
    ext x
    rw [eval, ← Products.eval_πs' _ h (Products.prop_of_isGood C _ gl), eval]
  · rw [← LocallyConstant.coe_inj, coe_πs C o₂, ← LocallyConstant.toFun_eq_coe, coe_πs',
      Function.comp_assoc, projRestricts_comp_projRestrict C _, coe_πs]
    rfl

end GoodProducts

variable {o : Ordinal} (ho : Order.IsSuccLimit o)
include ho

theorem Products.limitOrdinal (l : Products I) : l.isGood (π C (ord I · < o)) ↔
    ∃ (o' : Ordinal), o' < o ∧ l.isGood (π C (ord I · < o')) := by
  refine ⟨fun h ↦ ?_, fun ⟨o', ⟨ho', hl⟩⟩ ↦ isGood_mono C (le_of_lt ho') hl⟩
  use Finset.sup l.val.toFinset (fun a ↦ Order.succ (ord I a))
  have hslt : Finset.sup l.val.toFinset (fun a ↦ Order.succ (ord I a)) < o := by
    simp only [Finset.sup_lt_iff ho.bot_lt, List.mem_toFinset]
    exact fun b hb ↦ ho.succ_lt (prop_of_isGood C (ord I · < o) h b hb)
  refine ⟨hslt, fun he ↦ h ?_⟩
  have hlt : ∀ i ∈ l.val, ord I i < Finset.sup l.val.toFinset (fun a ↦ Order.succ (ord I a)) := by
    intro i hi
    simp only [Finset.lt_sup_iff, List.mem_toFinset, Order.lt_succ_iff]
    exact ⟨i, hi, le_rfl⟩
  rwa [eval_πs_image' C (le_of_lt hslt) hlt, ← eval_πs' C (le_of_lt hslt) hlt,
    Submodule.apply_mem_span_image_iff_mem_span (injective_πs' C _)]

variable (hsC : contained C o)
include hsC

theorem GoodProducts.union : range C = ⋃ (e : {o' // o' < o}), (smaller C e.val) := by
  ext p
  simp only [smaller, range, Set.mem_iUnion, Set.mem_image, Set.mem_range, Subtype.exists]
  refine ⟨fun hp ↦ ?_, fun hp ↦ ?_⟩
  · obtain ⟨l, hl, rfl⟩ := hp
    rw [contained_eq_proj C o hsC, Products.limitOrdinal C ho] at hl
    obtain ⟨o', ho'⟩ := hl
    refine ⟨o', ho'.1, eval (π C (ord I · < o')) ⟨l, ho'.2⟩, ⟨l, ho'.2, rfl⟩, ?_⟩
    exact Products.eval_πs C (Products.prop_of_isGood C _ ho'.2)
  · obtain ⟨o', h, _, ⟨l, hl, rfl⟩, rfl⟩ := hp
    refine ⟨l, ?_, (Products.eval_πs C (Products.prop_of_isGood  C _ hl)).symm⟩
    rw [contained_eq_proj C o hsC]
    exact Products.isGood_mono C (le_of_lt h) hl

/--
The image of the `GoodProducts` in `C` is equivalent to the union of `smaller C o'` over all
ordinals `o' < o`.
-/
-- Note: `Set` has no computational content, but Lean still attempts to compile it.
-- See https://github.com/leanprover/lean4/issues/14084.
noncomputable def GoodProducts.range_equiv : range C ≃ ⋃ (e : {o' // o' < o}), (smaller C e.val) :=
  Set.equivOfEq (union C ho hsC)

theorem GoodProducts.range_equiv_factorization :
    (fun (p : ⋃ (e : {o' // o' < o}), (smaller C e.val)) ↦ p.1) ∘ (range_equiv C ho hsC).toFun =
    (fun (p : range C) ↦ (p.1 : LocallyConstant C ℤ)) := rfl

theorem GoodProducts.linearIndependent_iff_union_smaller :
    LinearIndependent ℤ (GoodProducts.eval C) ↔
      LinearIndependent ℤ (fun (p : ⋃ (e : {o' // o' < o}), (smaller C e.val)) ↦ p.1) := by
  rw [GoodProducts.linearIndependent_iff_range, ← range_equiv_factorization C ho hsC]
  exact linearIndependent_equiv (range_equiv C ho hsC)

end Limit

end Profinite.NobelingProof
```
