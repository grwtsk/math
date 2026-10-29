-- corpus-organization-transform:v1
-- Mathematical subject: Algebra.LinearAlgebra
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Algebra.LinearAlgebra.DivisionRingNonemptyLinearEquivOfIsSimpleModule.Variant60d8295c72953dceb3b310e58db4ed86a20ad3c2e4c1599713500f6e2302da8e","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"60d8295c72953dceb3b310e58db4ed86a20ad3c2e4c1599713500f6e2302da8e","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Algebra.LinearAlgebra.SourceCorpus.DivisionRingNonemptyLinearEquivOfIsSimpleModule.Variant60d8295c72953dceb3b310e58db4ed86a20ad3c2e4c1599713500f6e2302da8e","mathematical_subject":"Algebra.LinearAlgebra","original_sha256":"60d8295c72953dceb3b310e58db4ed86a20ad3c2e4c1599713500f6e2302da8e","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/rh16-games-packets/external/replay/.lake/packages/mathlib/Mathlib/RingTheory/SimpleRing/DivisionRing.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2026 Yunzhou Xie. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Edison Xie
-/
module

public import Mathlib.Algebra.Category.ModuleCat.Simple
public import Mathlib.RingTheory.SimpleModule.Basic

/-!

## Simple modules over division rings
This file contains some results about simple modules over division rings.

# Main results

* `DivisionRing.nonempty_linearEquiv_of_isSimpleModule` : There is an unique simple module over
  a division ring, up to isomorphism.
* `isSimpleModule_iff_eq_zero_or_injective` : A module is simple if and only if it is nontrivial
  and every linear map from it is either zero or injective, this is the module analogue of
  `RingHom.injective`
* `IsSimpleModule.obj_of_isEquivalence` : If `M` is a simple module over a ring `R`, and
  `e : ModuleCat R ⥤ ModuleCat S` is an equivalence of categories,
  then `e(M)` is a simple module over `S`.

## Tags
Noncommutative algebra, simple module, division ring

-/


namespace GRWTSK.Algebra.LinearAlgebra.DivisionRingNonemptyLinearEquivOfIsSimpleModule.Variant60d8295c72953dceb3b310e58db4ed86a20ad3c2e4c1599713500f6e2302da8e

public section

universe u v

open CategoryTheory

variable (R S : Type*) [DivisionRing R] [DivisionRing S] (e : ModuleCat R ≌ ModuleCat S)

lemma DivisionRing.nonempty_linearEquiv_of_isSimpleModule (N : Type*) [AddCommGroup N]
    [Module S N] [IsSimpleModule S N] : Nonempty (N ≃ₗ[S] S) := by
  obtain ⟨I, hI, ⟨e⟩⟩ := isSimpleModule_iff_quot_maximal.mp ‹_›
  exact ⟨e ≪≫ₗ I.quotEquivOfEqBot ((eq_bot_or_eq_top I).resolve_right hI.ne_top)⟩

lemma isSimpleModule_iff_eq_zero_or_injective (R : Type u) (M : Type v) [Ring R] [AddCommGroup M]
    [Module R M] : IsSimpleModule R M ↔ (Nontrivial M ∧ ∀ (N : Type v) [AddCommGroup N]
    [Module R N] (f : M →ₗ[R] N), f = 0 ∨ Function.Injective f) :=
  ⟨fun hM ↦ ⟨Submodule.nontrivial_iff _|>.1 hM.1.1, fun N _ _ f ↦ hM.1.2 (LinearMap.ker f)|>.elim
    (fun h ↦ Or.inr <| by rwa [LinearMap.ker_eq_bot] at h) (fun h ↦ Or.inl <|by simp_all)⟩,
  fun ⟨hM1, hM2⟩ ↦ isSimpleModule_iff R M|>.2 ⟨fun p ↦ (hM2 (M ⧸ p) p.mkQ).elim
  (fun h ↦ Or.inr <| by simpa [Submodule.ext_iff, LinearMap.ext_iff] using h)
  (fun h ↦ Or.inl <| eq_bot_iff.2 fun x hx ↦ h (by simp [hx]))⟩⟩

lemma IsSimpleModule.obj_of_isEquivalence
    {R S : Type*} [Ring R] [Ring S] (e : ModuleCat R ⥤ ModuleCat S)
    [e.IsEquivalence] (M : ModuleCat R) [IsSimpleModule R M] :
    IsSimpleModule S (e.obj M) := by
  rw [← simple_iff_isSimpleModule'] at *
  exact simple_obj e M
