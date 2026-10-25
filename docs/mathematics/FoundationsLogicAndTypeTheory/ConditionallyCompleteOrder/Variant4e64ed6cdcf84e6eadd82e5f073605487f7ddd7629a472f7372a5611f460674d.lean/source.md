# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.ConditionallyCompleteOrder.Variant4e64ed6cdcf84e6eadd82e5f073605487f7ddd7629a472f7372a5611f460674d

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `4ab0b7d8352c03944a8e0aa3b67fd5837922a4b7` · SHA-256 `3a68e5d9705d7278253ad32e786419e605c1537ecb573a52587b30bcf935c877`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.CsSupEqGreatestOfBdd.Variant875be3799747eecf2c9092d5be473c2051fcbc6da19d91ccbfd788d11c87bb31","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"875be3799747eecf2c9092d5be473c2051fcbc6da19d91ccbfd788d11c87bb31","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Foundations.MixedSubjects.SourceCorpus.CsSupEqGreatestOfBdd.Variant875be3799747eecf2c9092d5be473c2051fcbc6da19d91ccbfd788d11c87bb31","mathematical_subject":"Foundations.MixedSubjects","original_sha256":"875be3799747eecf2c9092d5be473c2051fcbc6da19d91ccbfd788d11c87bb31","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/rh16-games-packets/external/replay/.lake/packages/mathlib/Mathlib/Data/Int/ConditionallyCompleteOrder.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2021 Floris van Doorn. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Floris van Doorn
-/
module

public import Mathlib.Data.Int.LeastGreatest
public import Mathlib.Order.ConditionallyCompleteLattice.Defs

/-!
# `ℤ` forms a conditionally complete linear order

The integers form a conditionally complete linear order.
-/


namespace GRWTSK.FoundationsLogicAndTypeTheory.CsSupEqGreatestOfBdd.Variant875be3799747eecf2c9092d5be473c2051fcbc6da19d91ccbfd788d11c87bb31

public section


open Int


noncomputable section

namespace Int

set_option backward.isDefEq.respectTransparency false in
open scoped Classical in
instance : ConditionallyCompleteLinearOrder ℤ where
  __ := instLinearOrder
  __ := LinearOrder.toLattice
  sSup s :=
    if h : s.Nonempty ∧ BddAbove s then
      greatestOfBdd (Classical.choose h.2) (Classical.choose_spec h.2) h.1
    else 0
  sInf s :=
    if h : s.Nonempty ∧ BddBelow s then
      leastOfBdd (Classical.choose h.2) (Classical.choose_spec h.2) h.1
    else 0
  isLUB_csSup _ hn hb := by
    rw [dite_eq_left ⟨hn, hb⟩]
    exact (isGreatest_coe_greatestOfBdd ..).isLUB
  isGLB_csInf _ hn hb := by
    rw [dite_eq_left ⟨hn, hb⟩]
    exact (isLeast_coe_leastOfBdd ..).isGLB
  csSup_of_not_bddAbove := fun s hs ↦ by simp [hs]
  csInf_of_not_bddBelow := fun s hs ↦ by simp [hs]

set_option backward.isDefEq.respectTransparency false in
theorem csSup_eq_greatestOfBdd {s : Set ℤ} [DecidablePred (· ∈ s)] (b : ℤ) (Hb : ∀ z ∈ s, z ≤ b)
    (Hinh : ∃ z : ℤ, z ∈ s) : sSup s = greatestOfBdd b Hb Hinh := by
  have : s.Nonempty ∧ BddAbove s := ⟨Hinh, b, Hb⟩
  simp only [sSup, dite_eq_left this]
  convert! (coe_greatestOfBdd_eq Hb (Classical.choose_spec (⟨b, Hb⟩ : BddAbove s)) Hinh).symm

@[simp]
theorem csSup_empty : sSup (∅ : Set ℤ) = 0 :=
  dite_eq_right (by simp)

theorem csSup_of_not_bddAbove {s : Set ℤ} (h : ¬BddAbove s) : sSup s = 0 :=
  dite_eq_right (by simp [h])

set_option backward.isDefEq.respectTransparency false in
theorem csInf_eq_leastOfBdd {s : Set ℤ} [DecidablePred (· ∈ s)] (b : ℤ) (Hb : ∀ z ∈ s, b ≤ z)
    (Hinh : ∃ z : ℤ, z ∈ s) : sInf s = leastOfBdd b Hb Hinh := by
  have : s.Nonempty ∧ BddBelow s := ⟨Hinh, b, Hb⟩
  simp only [sInf, dite_eq_left this]
  convert! (coe_leastOfBdd_eq Hb (Classical.choose_spec (⟨b, Hb⟩ : BddBelow s)) Hinh).symm

@[simp]
theorem csInf_empty : sInf (∅ : Set ℤ) = 0 :=
  dite_eq_right (by simp)

theorem csInf_of_not_bddBelow {s : Set ℤ} (h : ¬BddBelow s) : sInf s = 0 :=
  dite_eq_right (by simp [h])

theorem csSup_mem {s : Set ℤ} (h1 : s.Nonempty) (h2 : BddAbove s) : sSup s ∈ s := by
  convert! (greatestOfBdd _ (Classical.choose_spec h2) h1).2.1
  exact dite_eq_left ⟨h1, h2⟩

theorem csInf_mem {s : Set ℤ} (h1 : s.Nonempty) (h2 : BddBelow s) : sInf s ∈ s := by
  convert! (leastOfBdd _ (Classical.choose_spec h2) h1).2.1
  exact dite_eq_left ⟨h1, h2⟩

end Int

end

--  this example tests that the `Lattice ℤ` instance is computable;
-- i.e., that it is not found via the noncomputable instance in this file.
example : Lattice ℤ := inferInstance
```
