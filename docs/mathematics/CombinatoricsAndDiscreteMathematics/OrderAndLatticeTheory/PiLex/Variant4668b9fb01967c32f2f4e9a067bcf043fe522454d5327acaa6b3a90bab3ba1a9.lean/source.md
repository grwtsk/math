# Complete source: GRWTSK.CombinatoricsAndDiscreteMathematics.OrderAndLatticeTheory.PiLex.Variant4668b9fb01967c32f2f4e9a067bcf043fe522454d5327acaa6b3a90bab3ba1a9

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `fdf50e7abf474913db21b51177b94def299c98d4` · SHA-256 `c0b1c7d9a16939291d32c0a02aa01219b4fdf31e88e42056df6f2d6ada8e7aa7`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: CombinatoricsAndDiscreteMathematics.OrderAndLatticeTheory
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CombinatoricsAndDiscreteMathematics.OrderAndLatticeTheory.Inf.Variant4cbf06d2ff4a44a78b02349b42c220f1cc4aa526266a3c2d749b2db8d55cce7f","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"4cbf06d2ff4a44a78b02349b42c220f1cc4aa526266a3c2d749b2db8d55cce7f","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Algebra.OrderTheory.SourceCorpus.Inf.Variant4cbf06d2ff4a44a78b02349b42c220f1cc4aa526266a3c2d749b2db8d55cce7f","mathematical_subject":"Algebra.OrderTheory","original_sha256":"4cbf06d2ff4a44a78b02349b42c220f1cc4aa526266a3c2d749b2db8d55cce7f","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/rh16-games-packets/external/replay/.lake/packages/mathlib/Mathlib/Order/CompleteLattice/PiLex.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2025 Violeta Hernández Palacios. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Violeta Hernández Palacios
-/
module

public import Mathlib.Order.CompleteLattice.Basic
public import Mathlib.Order.PiLex
public import Mathlib.Order.ConditionallyCompleteLattice.Basic

/-!
# Complete linear order instance on lexicographically ordered pi types

We show that for `α` a family of complete linear orders, the lexicographically ordered type of
dependent functions `Πₗ i, α i` is itself a complete linear order.
-/


namespace GRWTSK.CombinatoricsAndDiscreteMathematics.OrderAndLatticeTheory.Inf.Variant4cbf06d2ff4a44a78b02349b42c220f1cc4aa526266a3c2d749b2db8d55cce7f

public section

variable {ι : Type*} {α : ι → Type*} [LinearOrder ι] [∀ i, CompleteLinearOrder (α i)]

namespace Pi

/-! ### Lexicographic ordering -/

namespace Lex

private def inf [WellFoundedLT ι] (s : Set (Πₗ i, α i)) (i : ι) : α i :=
  ⨅ e : {e ∈ s | ∀ j < i, e j = inf s j}, e.1 i
termination_by wellFounded_lt.wrap i

variable [WellFoundedLT ι]

@[no_expose]
instance : InfSet (Πₗ i, α i) where
  sInf s := toLex (inf s)

theorem sInf_apply (s : Set (Πₗ i, α i)) (i : ι) :
    sInf s i = ⨅ e : {e ∈ s | ∀ j < i, e j = sInf s j}, e.1 i := by
  -- This still works without excluding `iInf_of_isEmpty`, but very slowly
  simp [sInf, inf, -iInf_of_isEmpty]

theorem sInf_apply_le {s : Set (Πₗ i, α i)} {i : ι} {e : Πₗ i, α i}
    (he : e ∈ s) (h : ∀ j < i, e j = sInf s j) : sInf s i ≤ e i := by
  rw [sInf_apply]
  exact sInf_le ⟨⟨e, he, h⟩, rfl⟩

theorem le_sInf_apply {s : Set (Πₗ i, α i)} {i : ι} {e : Πₗ i, α i}
    (h : ∀ f ∈ s, (∀ j < i, f j = sInf s j) → e i ≤ f i) : e i ≤ sInf s i := by
  rw [sInf_apply]
  apply le_sInf
  grind

private theorem isGLB_sInf {s : Set (Πₗ i, α i)} : IsGLB s (sInf s) := by
  refine ⟨fun e he ↦ ?_, fun e h ↦ ?_⟩
  · by_contra! hs
    obtain ⟨a, ha⟩ := hs
    exact ha.2.not_ge (sInf_apply_le he ha.1)
  · by_contra! hs
    obtain ⟨a, ha⟩ := hs
    refine ha.2.not_ge <| le_sInf_apply fun f hf hf' ↦ apply_le_of_toLex (h hf) ?_
    simp_all

-- TODO: figure out how to use `to_dual` here

@[no_expose]
instance : SupSet (Πₗ i, α i) where
  sSup s := sInf (α := Πₗ i, (α i)ᵒᵈ) s

theorem sSup_apply (s : Set (Πₗ i, α i)) (i : ι) :
    sSup s i = ⨆ e : {e ∈ s | ∀ j < i, e j = sSup s j}, e.1 i :=
  sInf_apply (α := fun i ↦ (α i)ᵒᵈ) ..

theorem le_sSup_apply {s : Set (Πₗ i, α i)} {i : ι} {e : Πₗ i, α i}
    (he : e ∈ s) (h : ∀ j < i, e j = sSup s j) : e i ≤ sSup s i :=
  sInf_apply_le (α := fun i ↦ (α i)ᵒᵈ) he h

theorem sSup_apply_le {s : Set (Πₗ i, α i)} {i : ι} {e : Πₗ i, α i}
    (h : ∀ f ∈ s, (∀ j < i, f j = sSup s j) → f i ≤ e i) : sSup s i ≤ e i :=
  le_sInf_apply (α := fun i ↦ (α i)ᵒᵈ) h

private theorem isLUB_sSup {s : Set (Πₗ i, α i)} : IsLUB s (sSup s) := by
  refine ⟨fun e he ↦ ?_, fun e h ↦ ?_⟩
  · by_contra! hs
    obtain ⟨a, ha⟩ := hs
    exact ha.2.not_ge (le_sSup_apply he fun j hj ↦ (ha.1 j hj).symm)
  · by_contra! hs
    obtain ⟨a, ha⟩ := hs
    refine ha.2.not_ge <| sSup_apply_le fun f hf hf' ↦ apply_le_of_toLex (h hf) ?_
    simp_all

noncomputable instance completeLattice : CompleteLattice (Πₗ i, α i) where
  isLUB_sSup _ := by exact isLUB_sSup
  isGLB_sInf _ := by exact isGLB_sInf

noncomputable instance : CompleteLinearOrder (Πₗ i, α i) where
  __ := linearOrder
  __ := completeLattice
  __ := LinearOrder.toBiheytingAlgebra _

end Lex

/-! ### Colexicographic ordering -/

namespace Colex
variable [WellFoundedGT ι]

set_option backward.isDefEq.respectTransparency false in
@[no_expose]
instance : InfSet (Colex ((i : ι) → α i)) where
  sInf s := sInf (α := Πₗ i : ιᵒᵈ, α i) s

set_option backward.isDefEq.respectTransparency false in
theorem sInf_apply (s : Set (Colex ((i : ι) → α i))) (i : ι) :
    sInf s i = ⨅ e : {e ∈ s | ∀ j > i, e j = sInf s j}, e.1 i :=
  Lex.sInf_apply (ι := ιᵒᵈ) s i

set_option backward.isDefEq.respectTransparency false in
theorem sInf_apply_le {s : Set (Colex ((i : ι) → α i))} {i : ι} {e : Colex ((i : ι) → α i)}
    (he : e ∈ s) (h : ∀ j > i, e j = sInf s j) : sInf s i ≤ e i :=
  Lex.sInf_apply_le (ι := ιᵒᵈ) he h

set_option backward.isDefEq.respectTransparency false in
theorem le_sInf_apply {s : Set (Colex ((i : ι) → α i))} {i : ι} {e : Colex ((i : ι) → α i)}
    (h : ∀ f ∈ s, (∀ j > i, f j = sInf s j) → e i ≤ f i) : e i ≤ sInf s i :=
  Lex.le_sInf_apply (ι := ιᵒᵈ) h

-- TODO: figure out how to use `to_dual` here

set_option backward.isDefEq.respectTransparency false in
@[no_expose]
instance : SupSet (Colex ((i : ι) → α i)) where
  sSup s := sSup (α := Πₗ i : ιᵒᵈ, α i) s

set_option backward.isDefEq.respectTransparency false in
theorem sSup_apply (s : Set (Colex ((i : ι) → α i))) (i : ι) :
    sSup s i = ⨆ e : {e ∈ s | ∀ j > i, e j = sSup s j}, e.1 i :=
  Lex.sSup_apply (ι := ιᵒᵈ) s i

set_option backward.isDefEq.respectTransparency false in
theorem le_sSup_apply {s : Set (Colex ((i : ι) → α i))} {i : ι} {e : Colex ((i : ι) → α i)}
    (he : e ∈ s) (h : ∀ j > i, e j = sSup s j) : e i ≤ sSup s i :=
  Lex.le_sSup_apply (ι := ιᵒᵈ) he h

set_option backward.isDefEq.respectTransparency false in
theorem sSup_apply_le {s : Set (Colex ((i : ι) → α i))} {i : ι} {e : Colex ((i : ι) → α i)}
    (h : ∀ f ∈ s, (∀ j > i, f j = sSup s j) → f i ≤ e i) : sSup s i ≤ e i :=
  Lex.sSup_apply_le (ι := ιᵒᵈ) h

set_option backward.isDefEq.respectTransparency false in
noncomputable instance completeLattice : CompleteLattice (Colex ((i : ι) → α i)) where
  isLUB_sSup _ := by exact Lex.isLUB_sSup (ι := ιᵒᵈ)
  isGLB_sInf _ := by exact Lex.isGLB_sInf (ι := ιᵒᵈ)

noncomputable instance : CompleteLinearOrder (Colex ((i : ι) → α i)) where
  __ := linearOrder
  __ := completeLattice
  __ := LinearOrder.toBiheytingAlgebra _

end Colex
end Pi
```
