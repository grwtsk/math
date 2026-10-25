# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.MathematicalLogic.Equipartition.Variant6549fe2d59375fcf650e2fbc644b4d6a708daf47c84ddd1aae7775b1f7d5922b

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `89bec54c92ea960fd6f1ad115fdd156d3eca97a8` · SHA-256 `a14266139da1ff19195e0df33614fda37b08c44f0e2fdad9e684eb1a2dd26ef1`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.MathematicalLogic
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.MathematicalLogic.IsEquipartition.Variant7aa127d0ec9c571a03d17c70c12563f64ef7adcfcc70609caf46d835269fb3fa","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"7aa127d0ec9c571a03d17c70c12563f64ef7adcfcc70609caf46d835269fb3fa","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Logic.Foundations.SourceCorpus.IsEquipartition.Variant7aa127d0ec9c571a03d17c70c12563f64ef7adcfcc70609caf46d835269fb3fa","mathematical_subject":"Logic.Foundations","original_sha256":"7aa127d0ec9c571a03d17c70c12563f64ef7adcfcc70609caf46d835269fb3fa","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/October/30/ooi/FEATURES/.lake/packages/mathlib/Mathlib/Order/Partition/Equipartition.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2022 Yaël Dillies, Bhavik Mehta. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Yaël Dillies, Bhavik Mehta
-/
import Mathlib.Data.Set.Equitable
import Mathlib.Order.Partition.Finpartition


namespace GRWTSK.FoundationsLogicAndTypeTheory.MathematicalLogic.IsEquipartition.Variant7aa127d0ec9c571a03d17c70c12563f64ef7adcfcc70609caf46d835269fb3fa

#align_import order.partition.equipartition from "leanprover-community/mathlib"@"b363547b3113d350d053abdf2884e9850a56b205"

/-!
# Finite equipartitions

This file defines finite equipartitions, the partitions whose parts all are the same size up to a
difference of `1`.

## Main declarations

* `Finpartition.IsEquipartition`: Predicate for a `Finpartition` to be an equipartition.
-/


open Finset Fintype

namespace Finpartition

variable {α : Type*} [DecidableEq α] {s t : Finset α} (P : Finpartition s)

/-- An equipartition is a partition whose parts are all the same size, up to a difference of `1`. -/
def IsEquipartition : Prop :=
  (P.parts : Set (Finset α)).EquitableOn card
#align finpartition.is_equipartition Finpartition.IsEquipartition

theorem isEquipartition_iff_card_parts_eq_average :
    P.IsEquipartition ↔
      ∀ a : Finset α,
        a ∈ P.parts → a.card = s.card / P.parts.card ∨ a.card = s.card / P.parts.card + 1 :=
  by simp_rw [IsEquipartition, Finset.equitableOn_iff, P.sum_card_parts]
#align finpartition.is_equipartition_iff_card_parts_eq_average Finpartition.isEquipartition_iff_card_parts_eq_average

variable {P}

theorem Set.Subsingleton.isEquipartition (h : (P.parts : Set (Finset α)).Subsingleton) :
    P.IsEquipartition :=
  Set.Subsingleton.equitableOn h _
#align finpartition.set.subsingleton.is_equipartition Finpartition.Set.Subsingleton.isEquipartition

theorem IsEquipartition.card_parts_eq_average (hP : P.IsEquipartition) (ht : t ∈ P.parts) :
    t.card = s.card / P.parts.card ∨ t.card = s.card / P.parts.card + 1 :=
  P.isEquipartition_iff_card_parts_eq_average.1 hP _ ht
#align finpartition.is_equipartition.card_parts_eq_average Finpartition.IsEquipartition.card_parts_eq_average

theorem IsEquipartition.average_le_card_part (hP : P.IsEquipartition) (ht : t ∈ P.parts) :
    s.card / P.parts.card ≤ t.card := by
  rw [← P.sum_card_parts]
  exact Finset.EquitableOn.le hP ht
#align finpartition.is_equipartition.average_le_card_part Finpartition.IsEquipartition.average_le_card_part

theorem IsEquipartition.card_part_le_average_add_one (hP : P.IsEquipartition) (ht : t ∈ P.parts) :
    t.card ≤ s.card / P.parts.card + 1 := by
  rw [← P.sum_card_parts]
  exact Finset.EquitableOn.le_add_one hP ht
#align finpartition.is_equipartition.card_part_le_average_add_one Finpartition.IsEquipartition.card_part_le_average_add_one

/-! ### Discrete and indiscrete finpartition -/


variable (s) -- [Decidable (a = ⊥)]

theorem bot_isEquipartition : (⊥ : Finpartition s).IsEquipartition :=
  Set.equitableOn_iff_exists_eq_eq_add_one.2 ⟨1, by simp⟩
#align finpartition.bot_is_equipartition Finpartition.bot_isEquipartition

theorem top_isEquipartition [Decidable (s = ⊥)] : (⊤ : Finpartition s).IsEquipartition :=
  Set.Subsingleton.isEquipartition (parts_top_subsingleton _)
#align finpartition.top_is_equipartition Finpartition.top_isEquipartition

theorem indiscrete_isEquipartition {hs : s ≠ ∅} : (indiscrete hs).IsEquipartition := by
  rw [IsEquipartition, indiscrete_parts, coe_singleton]
  exact Set.equitableOn_singleton s _
#align finpartition.indiscrete_is_equipartition Finpartition.indiscrete_isEquipartition

end Finpartition
```
