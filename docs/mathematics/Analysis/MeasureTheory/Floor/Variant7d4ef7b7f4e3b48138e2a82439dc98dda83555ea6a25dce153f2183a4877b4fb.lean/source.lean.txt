-- corpus-organization-transform:v1
-- Mathematical subject: Analysis.MeasureTheory
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Analysis.MeasureTheory.IntMeasurableFloor.Variant5b560cb8f4608efe42dc60a4c652dfb550a72a1919916505849563cc3805b65a","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"5b560cb8f4608efe42dc60a4c652dfb550a72a1919916505849563cc3805b65a","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Analysis.MeasureTheory.SourceCorpus.IntMeasurableFloor.Variant5b560cb8f4608efe42dc60a4c652dfb550a72a1919916505849563cc3805b65a","mathematical_subject":"Analysis.MeasureTheory","original_sha256":"5b560cb8f4608efe42dc60a4c652dfb550a72a1919916505849563cc3805b65a","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/October/30/ooi/spectral-proof-of-RH/lean/mathlib4/Mathlib/MeasureTheory/Function/Floor.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2021 Yury Kudryashov. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Yury Kudryashov
-/
import Mathlib.MeasureTheory.Constructions.BorelSpace.Order

/-!
# Measurability of `⌊x⌋` etc

In this file we prove that `Int.floor`, `Int.ceil`, `Int.fract`, `Nat.floor`, and `Nat.ceil` are
measurable under some assumptions on the (semi)ring.
-/



namespace GRWTSK.Analysis.MeasureTheory.IntMeasurableFloor.Variant5b560cb8f4608efe42dc60a4c652dfb550a72a1919916505849563cc3805b65a

open Set

section FloorRing

variable {α R : Type*} [MeasurableSpace α] [Ring R] [LinearOrder R] [FloorRing R]
  [TopologicalSpace R] [OrderTopology R] [MeasurableSpace R]

theorem Int.measurable_floor [OpensMeasurableSpace R] : Measurable (Int.floor : R → ℤ) :=
  measurable_to_countable fun x => by
    simpa only [Int.preimage_floor_singleton] using measurableSet_Ico

@[measurability, fun_prop]
theorem Measurable.floor [OpensMeasurableSpace R] {f : α → R} (hf : Measurable f) :
    Measurable fun x => ⌊f x⌋ :=
  Int.measurable_floor.comp hf

theorem Int.measurable_ceil [OpensMeasurableSpace R] : Measurable (Int.ceil : R → ℤ) :=
  measurable_to_countable fun x => by
    simpa only [Int.preimage_ceil_singleton] using measurableSet_Ioc

@[measurability, fun_prop]
theorem Measurable.ceil [OpensMeasurableSpace R] {f : α → R} (hf : Measurable f) :
    Measurable fun x => ⌈f x⌉ :=
  Int.measurable_ceil.comp hf

theorem measurable_fract [IsStrictOrderedRing R] [BorelSpace R] :
    Measurable (Int.fract : R → R) := by
  intro s hs
  rw [Int.preimage_fract]
  exact MeasurableSet.iUnion fun z => measurable_id.sub_const _ (hs.inter measurableSet_Ico)

@[measurability, fun_prop]
theorem Measurable.fract [IsStrictOrderedRing R] [BorelSpace R] {f : α → R} (hf : Measurable f) :
    Measurable fun x => Int.fract (f x) :=
  measurable_fract.comp hf

theorem MeasurableSet.image_fract [IsStrictOrderedRing R] [BorelSpace R]
    {s : Set R} (hs : MeasurableSet s) :
    MeasurableSet (Int.fract '' s) := by
  simp only [Int.image_fract, sub_eq_add_neg, image_add_right']
  exact MeasurableSet.iUnion fun m => (measurable_add_const _ hs).inter measurableSet_Ico

end FloorRing

section FloorSemiring

variable {α R : Type*} [MeasurableSpace α] [Semiring R] [LinearOrder R] [FloorSemiring R]
  [TopologicalSpace R] [OrderTopology R] [MeasurableSpace R] [OpensMeasurableSpace R] {f : α → R}

theorem Nat.measurable_floor [IsStrictOrderedRing R] : Measurable (Nat.floor : R → ℕ) :=
  measurable_to_countable fun n => by
    rcases eq_or_ne ⌊n⌋₊ 0 with h | h <;> simp [h, Nat.preimage_floor_of_ne_zero, -floor_eq_zero]

@[measurability, fun_prop]
theorem Measurable.nat_floor [IsStrictOrderedRing R] (hf : Measurable f) :
    Measurable fun x => ⌊f x⌋₊ :=
  Nat.measurable_floor.comp hf

theorem Nat.measurable_ceil : Measurable (Nat.ceil : R → ℕ) :=
  measurable_to_countable fun n => by
    rcases eq_or_ne ⌈n⌉₊ 0 with h | h <;> simp_all [h, Nat.preimage_ceil_of_ne_zero, -ceil_eq_zero]

@[measurability, fun_prop]
theorem Measurable.nat_ceil (hf : Measurable f) : Measurable fun x => ⌈f x⌉₊ :=
  Nat.measurable_ceil.comp hf

end FloorSemiring
