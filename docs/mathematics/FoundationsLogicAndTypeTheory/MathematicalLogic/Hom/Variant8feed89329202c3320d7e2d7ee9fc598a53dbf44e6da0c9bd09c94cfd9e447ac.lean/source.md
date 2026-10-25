# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.MathematicalLogic.Hom.Variant8feed89329202c3320d7e2d7ee9fc598a53dbf44e6da0c9bd09c94cfd9e447ac

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `105c89fc1f65bdd39fbb737dd218fb86c654c57c` · SHA-256 `b19267c5abbb8c38f20eca09e40846bf71c90c5828a15ded13fab833c20c0605`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.MathematicalLogic
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.MathematicalLogic.OrderRingHomEqId.Variantec04eca31d8fe5bb1f56f095c07060151ce99eae653c02fcfe4cb10b6cd7acac","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"ec04eca31d8fe5bb1f56f095c07060151ce99eae653c02fcfe4cb10b6cd7acac","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Logic.Foundations.SourceCorpus.OrderRingHomEqId.Variantec04eca31d8fe5bb1f56f095c07060151ce99eae653c02fcfe4cb10b6cd7acac","mathematical_subject":"Logic.Foundations","original_sha256":"ec04eca31d8fe5bb1f56f095c07060151ce99eae653c02fcfe4cb10b6cd7acac","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/rh16-games-packets/external/replay/.lake/packages/mathlib/Mathlib/Algebra/Order/Archimedean/Hom.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2022 Alex J. Best, Yaël Dillies. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Alex J. Best, Yaël Dillies
-/
module

public import Mathlib.Algebra.Order.Archimedean.Basic
public import Mathlib.Algebra.Order.Hom.Ring

/-!
# Uniqueness of ring homomorphisms to archimedean fields

There is at most one ordered ring homomorphism from a linear ordered field to an archimedean linear
ordered field. Reciprocally, such an ordered ring homomorphism exists when the codomain is further
conditionally complete.
-/


namespace GRWTSK.FoundationsLogicAndTypeTheory.MathematicalLogic.OrderRingHomEqId.Variantec04eca31d8fe5bb1f56f095c07060151ce99eae653c02fcfe4cb10b6cd7acac

public section

assert_not_exists Finset

variable {α β : Type*} [Field α] [LinearOrder α] [Field β] [LinearOrder β]

/-- There is at most one ordered ring homomorphism from a linear ordered field to an archimedean
linear ordered field. -/
instance OrderRingHom.subsingleton [IsStrictOrderedRing β] [Archimedean β] :
    Subsingleton (α →+*o β) :=
  ⟨fun f g => by
    ext x
    by_contra h' : f x ≠ g x
    wlog h : f x < g x with h₂
    · exact h₂ g f x (Ne.symm h') (h'.lt_or_gt.resolve_left h)
    obtain ⟨q, hf, hg⟩ := exists_rat_btwn h
    rw [← map_ratCast f] at hf
    rw [← map_ratCast g] at hg
    exact
      (lt_asymm ((OrderHomClass.mono g).reflect_lt hg) <|
          (OrderHomClass.mono f).reflect_lt hf).elim⟩

/-- There is at most one ordered ring isomorphism between a linear ordered field and an archimedean
linear ordered field. -/
instance OrderRingIso.subsingleton_right [IsStrictOrderedRing β] [Archimedean β] :
    Subsingleton (α ≃+*o β) :=
  OrderRingIso.toOrderRingHom_injective.subsingleton

/-- There is at most one ordered ring isomorphism between an archimedean linear ordered field and a
linear ordered field. -/
instance OrderRingIso.subsingleton_left [IsStrictOrderedRing α] [Archimedean α] :
    Subsingleton (α ≃+*o β) :=
  OrderRingIso.symm_bijective.injective.subsingleton

theorem OrderRingHom.eq_id [IsStrictOrderedRing α] [Archimedean α] (f : α →+*o α) : f = .id _ :=
  Subsingleton.elim ..

theorem OrderRingIso.eq_refl [IsStrictOrderedRing α] [Archimedean α] (f : α ≃+*o α) : f = .refl _ :=
  Subsingleton.elim ..

theorem OrderRingHom.apply_eq_self [IsStrictOrderedRing α] [Archimedean α] (f : α →+*o α) (x : α) :
    f x = x := by
  rw [f.eq_id]; rfl

theorem OrderRingIso.apply_eq_self [IsStrictOrderedRing α] [Archimedean α] (f : α ≃+*o α) (x : α) :
    f x = x :=
  f.toOrderRingHom.apply_eq_self x
```
