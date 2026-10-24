# Complete source: GRWTSK.CombinatoricsAndDiscreteMathematics.OrderAndLatticeTheory.ULift.Variantaa9f0d044bc636107d304cc577122f6fd318a49770250849553b517d5973f002

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `b409e66a4e726c354f29b616cb070ec90cfd5d1e` · SHA-256 `505dc96f8924518ccd4a5fc0f4823e2b75036efd820ade24b21840d0c42846ad`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: CombinatoricsAndDiscreteMathematics.OrderAndLatticeTheory
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CombinatoricsAndDiscreteMathematics.OrderAndLatticeTheory.UpSup.Variant5cf48cf27ef0629e3cf1894d1c367724a5c8350f120191a27e7ea2e44114ae23","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"5cf48cf27ef0629e3cf1894d1c367724a5c8350f120191a27e7ea2e44114ae23","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Algebra.OrderTheory.SourceCorpus.UpSup.Variant5cf48cf27ef0629e3cf1894d1c367724a5c8350f120191a27e7ea2e44114ae23","mathematical_subject":"Algebra.OrderTheory","original_sha256":"5cf48cf27ef0629e3cf1894d1c367724a5c8350f120191a27e7ea2e44114ae23","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/rh16-games-packets/external/replay/.lake/packages/mathlib/Mathlib/Order/ULift.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2023 Eric Wieser. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Eric Wieser
-/
module

public import Mathlib.Logic.Function.ULift
public import Mathlib.Order.Basic

/-! # Ordered structures on `ULift.{v} α`

Once these basic instances are setup, the instances of more complex typeclasses should live next to
the corresponding `Prod` instances.
-/


namespace GRWTSK.CombinatoricsAndDiscreteMathematics.OrderAndLatticeTheory.UpSup.Variant5cf48cf27ef0629e3cf1894d1c367724a5c8350f120191a27e7ea2e44114ae23

public section

namespace ULift

universe v u

variable {α : Type u}

instance [LE α] : LE (ULift.{v} α) where le x y := x.down ≤ y.down

@[simp, to_dual self] theorem up_le [LE α] {a b : α} : up a ≤ up b ↔ a ≤ b := Iff.rfl
@[simp, to_dual self] theorem down_le [LE α] {a b : ULift α} : down a ≤ down b ↔ a ≤ b := Iff.rfl

instance [LT α] : LT (ULift.{v} α) where lt x y := x.down < y.down

@[simp, to_dual self] theorem up_lt [LT α] {a b : α} : up a < up b ↔ a < b := Iff.rfl
@[simp, to_dual self] theorem down_lt [LT α] {a b : ULift α} : down a < down b ↔ a < b := Iff.rfl

instance [BEq α] : BEq (ULift.{v} α) where beq x y := x.down == y.down

@[simp] theorem up_beq [BEq α] (a b : α) : (up a == up b) = (a == b) := rfl
@[simp] theorem down_beq [BEq α] (a b : ULift α) : (down a == down b) = (a == b) := rfl

instance [Ord α] : Ord (ULift.{v} α) where compare x y := compare x.down y.down

@[simp] theorem up_compare [Ord α] (a b : α) : compare (up a) (up b) = compare a b := rfl
@[simp] theorem down_compare [Ord α] (a b : ULift α) : compare (down a) (down b) = compare a b :=
  rfl

@[to_dual]
instance [Max α] : Max (ULift.{v} α) where max x y := up <| x.down ⊔ y.down

@[to_dual (attr := simp)]
theorem up_sup [Max α] (a b : α) : up (a ⊔ b) = up a ⊔ up b := rfl

@[to_dual (attr := simp)]
theorem down_sup [Max α] (a b : ULift α) : down (a ⊔ b) = down a ⊔ down b := rfl

instance [SDiff α] : SDiff (ULift.{v} α) where sdiff x y := up <| x.down \ y.down

@[simp] theorem up_sdiff [SDiff α] (a b : α) : up (a \ b) = up a \ up b := rfl
@[simp] theorem down_sdiff [SDiff α] (a b : ULift α) : down (a \ b) = down a \ down b := rfl

instance [Compl α] : Compl (ULift.{v} α) where compl x := up <| x.downᶜ

@[simp] theorem up_compl [Compl α] (a : α) : up (aᶜ) = (up a)ᶜ := rfl
@[simp] theorem down_compl [Compl α] (a : ULift α) : down aᶜ = (down a)ᶜ := rfl

instance [Ord α] [inst : Std.OrientedOrd α] : Std.OrientedOrd (ULift.{v} α) where
  eq_swap := inst.eq_swap

instance [Ord α] [inst : Std.TransOrd α] : Std.TransOrd (ULift.{v} α) where
  isLE_trans := inst.isLE_trans

instance [BEq α] [Ord α] [inst : Std.LawfulBEqOrd α] : Std.LawfulBEqOrd (ULift.{v} α) where
  compare_eq_iff_beq := inst.compare_eq_iff_beq

instance [LT α] [Ord α] [inst : Std.LawfulLTOrd α] : Std.LawfulLTOrd (ULift.{v} α) where
  eq_lt_iff_lt := inst.eq_lt_iff_lt

instance [LE α] [Ord α] [inst : Std.LawfulLEOrd α] : Std.LawfulLEOrd (ULift.{v} α) where
  isLE_iff_le := inst.isLE_iff_le

instance [LE α] [LT α] [BEq α] [Ord α] [inst : Std.LawfulBOrd α] :
    Std.LawfulBOrd (ULift.{v} α) where
  eq_lt_iff_lt := inst.eq_lt_iff_lt
  isLE_iff_le := inst.isLE_iff_le

instance [Preorder α] : Preorder (ULift.{v} α) :=
  Preorder.lift ULift.down

instance [PartialOrder α] : PartialOrder (ULift.{v} α) :=
  PartialOrder.lift ULift.down ULift.down_injective

end ULift
```
