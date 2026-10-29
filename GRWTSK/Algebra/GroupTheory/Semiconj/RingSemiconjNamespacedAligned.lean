-- corpus-organization-transform:v1
-- Mathematical subject: Algebra.GroupTheory
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Algebra.GroupTheory.AddRight.Variantf654e0b02e41c924b1b68d639e3449b0eb9744bdd1a5c550b6d252a4b49f5170","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"f654e0b02e41c924b1b68d639e3449b0eb9744bdd1a5c550b6d252a4b49f5170","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Algebra.Groups.SourceCorpus.AddRight.Variantf654e0b02e41c924b1b68d639e3449b0eb9744bdd1a5c550b6d252a4b49f5170","mathematical_subject":"Algebra.Groups","original_sha256":"f654e0b02e41c924b1b68d639e3449b0eb9744bdd1a5c550b6d252a4b49f5170","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/October/30/ooi/FEATURES/.lake/packages/mathlib/Mathlib/Algebra/Ring/Semiconj.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2014 Jeremy Avigad. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Jeremy Avigad, Leonardo de Moura, Floris van Doorn, Yury Kudryashov, Neil Strickland
-/
import Mathlib.Algebra.Group.Semiconj
import Mathlib.Algebra.Ring.Defs


namespace GRWTSK.Algebra.GroupTheory.AddRight.Variantf654e0b02e41c924b1b68d639e3449b0eb9744bdd1a5c550b6d252a4b49f5170

#align_import algebra.ring.semiconj from "leanprover-community/mathlib"@"70d50ecfd4900dd6d328da39ab7ebd516abe4025"

/-!
# Semirings and rings

This file gives lemmas about semirings, rings and domains.
This is analogous to `Mathlib.Algebra.Group.Basic`,
the difference being that the former is about `+` and `*` separately, while
the present file is about their interaction.

For the definitions of semirings and rings see `Mathlib.Algebra.Ring.Defs`.

-/


universe u v w x

variable {α : Type u} {β : Type v} {γ : Type w} {R : Type x}

open Function

namespace SemiconjBy

@[simp]
theorem add_right [Distrib R] {a x y x' y' : R} (h : SemiconjBy a x y) (h' : SemiconjBy a x' y') :
    SemiconjBy a (x + x') (y + y') := by
  simp only [SemiconjBy, left_distrib, right_distrib, h.eq, h'.eq]
#align semiconj_by.add_right SemiconjBy.add_right

@[simp]
theorem add_left [Distrib R] {a b x y : R} (ha : SemiconjBy a x y) (hb : SemiconjBy b x y) :
    SemiconjBy (a + b) x y := by
  simp only [SemiconjBy, left_distrib, right_distrib, ha.eq, hb.eq]
#align semiconj_by.add_left SemiconjBy.add_left

section

variable [Mul R] [HasDistribNeg R] {a x y : R}

theorem neg_right (h : SemiconjBy a x y) : SemiconjBy a (-x) (-y) := by
  simp only [SemiconjBy, h.eq, neg_mul, mul_neg]
#align semiconj_by.neg_right SemiconjBy.neg_right

@[simp]
theorem neg_right_iff : SemiconjBy a (-x) (-y) ↔ SemiconjBy a x y :=
  ⟨fun h => neg_neg x ▸ neg_neg y ▸ h.neg_right, SemiconjBy.neg_right⟩
#align semiconj_by.neg_right_iff SemiconjBy.neg_right_iff

theorem neg_left (h : SemiconjBy a x y) : SemiconjBy (-a) x y := by
  simp only [SemiconjBy, h.eq, neg_mul, mul_neg]
#align semiconj_by.neg_left SemiconjBy.neg_left

@[simp]
theorem neg_left_iff : SemiconjBy (-a) x y ↔ SemiconjBy a x y :=
  ⟨fun h => neg_neg a ▸ h.neg_left, SemiconjBy.neg_left⟩
#align semiconj_by.neg_left_iff SemiconjBy.neg_left_iff

end

section

variable [MulOneClass R] [HasDistribNeg R] {a x y : R}

-- porting note: `simpNF` told me to remove `simp` attribute
theorem neg_one_right (a : R) : SemiconjBy a (-1) (-1) :=
  (one_right a).neg_right
#align semiconj_by.neg_one_right SemiconjBy.neg_one_right

-- porting note: `simpNF` told me to remove `simp` attribute
theorem neg_one_left (x : R) : SemiconjBy (-1) x x :=
  (SemiconjBy.one_left x).neg_left
#align semiconj_by.neg_one_left SemiconjBy.neg_one_left

end

section

variable [NonUnitalNonAssocRing R] {a b x y x' y' : R}

@[simp]
theorem sub_right (h : SemiconjBy a x y) (h' : SemiconjBy a x' y') :
    SemiconjBy a (x - x') (y - y') := by
  simpa only [sub_eq_add_neg] using h.add_right h'.neg_right
#align semiconj_by.sub_right SemiconjBy.sub_right

@[simp]
theorem sub_left (ha : SemiconjBy a x y) (hb : SemiconjBy b x y) :
    SemiconjBy (a - b) x y := by
  simpa only [sub_eq_add_neg] using ha.add_left hb.neg_left
#align semiconj_by.sub_left SemiconjBy.sub_left

end

end SemiconjBy
