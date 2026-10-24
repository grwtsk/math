# Complete source: GRWTSK.Algebra.AlgebraicCard.Variante31c5240c49a8e0d35c31c1b673b980e3d955c73d93940d942944ec583c19f8d

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `3d985725060b7613661ef0399d0980ee9551605d` · SHA-256 `4e3c7e319b9d4ae68433a8e8f2055cee4567b1c7db5a121070610adf12e531cb`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: Algebra
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Algebra.InfiniteOfCharZero.Variant498f076bbe7eff063e5176ffd9f2cd714f91ac360c3ee9a66609aeab7de81830","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"498f076bbe7eff063e5176ffd9f2cd714f91ac360c3ee9a66609aeab7de81830","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Foundations.MixedSubjects.SourceCorpus.InfiniteOfCharZero.Variant498f076bbe7eff063e5176ffd9f2cd714f91ac360c3ee9a66609aeab7de81830","mathematical_subject":"Foundations.MixedSubjects","original_sha256":"498f076bbe7eff063e5176ffd9f2cd714f91ac360c3ee9a66609aeab7de81830","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/October/30/ooi/spectral-proof-of-RH/lean/mathlib4/Mathlib/Algebra/AlgebraicCard.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2022 Violeta Hernández Palacios. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Violeta Hernández Palacios
-/
import Mathlib.Algebra.Polynomial.Cardinal
import Mathlib.RingTheory.Algebraic.Basic

/-!
### Cardinality of algebraic numbers

In this file, we prove variants of the following result: the cardinality of algebraic numbers under
an R-algebra is at most `#R[X] * ℵ₀`.

Although this can be used to prove that real or complex transcendental numbers exist, a more direct
proof is given by `Liouville.transcendental`.
-/



namespace GRWTSK.Algebra.InfiniteOfCharZero.Variant498f076bbe7eff063e5176ffd9f2cd714f91ac360c3ee9a66609aeab7de81830

universe u v

open Cardinal Polynomial Set

open Cardinal Polynomial

namespace Algebraic

theorem infinite_of_charZero (R A : Type*) [CommRing R] [Ring A] [Algebra R A]
    [CharZero A] : { x : A | IsAlgebraic R x }.Infinite := by
  letI := MulActionWithZero.nontrivial R A
  exact infinite_of_injective_forall_mem Nat.cast_injective isAlgebraic_nat

theorem aleph0_le_cardinalMk_of_charZero (R A : Type*) [CommRing R] [Ring A]
    [Algebra R A] [CharZero A] : ℵ₀ ≤ #{ x : A // IsAlgebraic R x } :=
  infinite_iff.1 (Set.infinite_coe_iff.2 <| infinite_of_charZero R A)

@[deprecated (since := "2024-11-10")]
alias aleph0_le_cardinal_mk_of_charZero := aleph0_le_cardinalMk_of_charZero

section lift

variable (R : Type u) (A : Type v) [CommRing R] [CommRing A] [IsDomain A] [Algebra R A]
  [NoZeroSMulDivisors R A]

theorem cardinalMk_lift_le_mul :
    Cardinal.lift.{u} #{ x : A // IsAlgebraic R x } ≤ Cardinal.lift.{v} #R[X] * ℵ₀ := by
  rw [← mk_uLift, ← mk_uLift]
  choose g hg₁ hg₂ using fun x : { x : A | IsAlgebraic R x } => x.coe_prop
  refine lift_mk_le_lift_mk_mul_of_lift_mk_preimage_le g fun f => ?_
  rw [lift_le_aleph0, le_aleph0_iff_set_countable]
  suffices MapsTo (↑) (g ⁻¹' {f}) (f.rootSet A) from
    this.countable_of_injOn Subtype.coe_injective.injOn (f.rootSet_finite A).countable
  rintro x (rfl : g x = f)
  exact mem_rootSet.2 ⟨hg₁ x, hg₂ x⟩

@[deprecated (since := "2024-11-10")] alias cardinal_mk_lift_le_mul := cardinalMk_lift_le_mul

theorem cardinalMk_lift_le_max :
    Cardinal.lift.{u} #{ x : A // IsAlgebraic R x } ≤ max (Cardinal.lift.{v} #R) ℵ₀ :=
  (cardinalMk_lift_le_mul R A).trans <|
    (mul_le_mul_right' (lift_le.2 cardinalMk_le_max) _).trans <| by simp

@[deprecated (since := "2024-11-10")] alias cardinal_mk_lift_le_max := cardinalMk_lift_le_max

@[simp]
theorem cardinalMk_lift_of_infinite [Infinite R] :
    Cardinal.lift.{u} #{ x : A // IsAlgebraic R x } = Cardinal.lift.{v} #R :=
  ((cardinalMk_lift_le_max R A).trans_eq (max_eq_left <| aleph0_le_mk _)).antisymm <|
    lift_mk_le'.2 ⟨⟨fun x => ⟨algebraMap R A x, isAlgebraic_algebraMap _⟩, fun _ _ h =>
      FaithfulSMul.algebraMap_injective R A (Subtype.ext_iff.1 h)⟩⟩

@[deprecated (since := "2024-11-10")]
alias cardinal_mk_lift_of_infinite := cardinalMk_lift_of_infinite

variable [Countable R]

@[simp]
protected theorem countable : Set.Countable { x : A | IsAlgebraic R x } := by
  rw [← le_aleph0_iff_set_countable, ← lift_le_aleph0]
  apply (cardinalMk_lift_le_max R A).trans
  simp

@[simp]
theorem cardinalMk_of_countable_of_charZero [CharZero A] :
    #{ x : A // IsAlgebraic R x } = ℵ₀ :=
  (Algebraic.countable R A).le_aleph0.antisymm (aleph0_le_cardinalMk_of_charZero R A)

@[deprecated (since := "2024-11-10")]
alias cardinal_mk_of_countable_of_charZero := cardinalMk_of_countable_of_charZero

end lift

section NonLift

variable (R A : Type u) [CommRing R] [CommRing A] [IsDomain A] [Algebra R A]
  [NoZeroSMulDivisors R A]

theorem cardinalMk_le_mul : #{ x : A // IsAlgebraic R x } ≤ #R[X] * ℵ₀ := by
  rw [← lift_id #_, ← lift_id #R[X]]
  exact cardinalMk_lift_le_mul R A

@[deprecated (since := "2024-11-10")] alias cardinal_mk_le_mul := cardinalMk_le_mul

@[stacks 09GK]
theorem cardinalMk_le_max : #{ x : A // IsAlgebraic R x } ≤ max #R ℵ₀ := by
  rw [← lift_id #_, ← lift_id #R]
  exact cardinalMk_lift_le_max R A

@[deprecated (since := "2024-11-10")] alias cardinal_mk_le_max := cardinalMk_le_max

@[simp]
theorem cardinalMk_of_infinite [Infinite R] : #{ x : A // IsAlgebraic R x } = #R :=
  lift_inj.1 <| cardinalMk_lift_of_infinite R A

@[deprecated (since := "2024-11-10")] alias cardinal_mk_of_infinite := cardinalMk_of_infinite

end NonLift

end Algebraic
```
