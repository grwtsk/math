# Complete source: GRWTSK.Algebra.GroupTheory.CovBySMul.Variant9bdf4f5c4892e97c09dcd332e8c87bb92ea8ff10df136930a13f4714307f5b2d

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `1278b65a0bda7ed49e4725dc677874428735460e` · SHA-256 `5d682804ba5251e704c8952448f2d9215a17843f04cd6872d97b1d66bb8f5242`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: Algebra.GroupTheory
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Algebra.GroupTheory.CovBySMul.Variant75a2c199f4a598561d948a5e9e2efa574809b20112aa4c2c725115c24a8de624","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"75a2c199f4a598561d948a5e9e2efa574809b20112aa4c2c725115c24a8de624","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Algebra.Groups.SourceCorpus.CovBySMul.Variant75a2c199f4a598561d948a5e9e2efa574809b20112aa4c2c725115c24a8de624","mathematical_subject":"Algebra.Groups","original_sha256":"75a2c199f4a598561d948a5e9e2efa574809b20112aa4c2c725115c24a8de624","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/rh16-games-packets/external/replay/.lake/packages/mathlib/Mathlib/Combinatorics/Additive/CovBySMul.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2024 Yaël Dillies. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Yaël Dillies
-/
module

public import Mathlib.Algebra.Group.Action.Pointwise.Set.Basic
public import Mathlib.Algebra.Group.Pointwise.Finset.Basic
public import Mathlib.Algebra.Group.Pointwise.Finset.Scalar
public import Mathlib.Basic.Real.Basic
public import Mathlib.Tactic.Positivity.Basic

/-!
# Relation of covering by cosets

This file defines a predicate for a set to be covered by at most `K` cosets of another set.

This is a fundamental relation to study in additive combinatorics.
-/


namespace GRWTSK.Algebra.GroupTheory.CovBySMul.Variant75a2c199f4a598561d948a5e9e2efa574809b20112aa4c2c725115c24a8de624

@[expose] public section

open scoped Finset Pointwise

variable {M N X : Type*} [Monoid M] [Monoid N] [MulAction M X] [MulAction N X] {K L : ℝ}
  {A A₁ A₂ B B₁ B₂ C : Set X}

variable (M) in
/-- Predicate for a set `A` to be covered by at most `K` cosets of another set `B` under the action
by the monoid `M`. -/
@[to_additive /-- Predicate for a set `A` to be covered by at most `K` cosets of another set `B`
under the action by the monoid `M`. -/]
def CovBySMul (K : ℝ) (A B : Set X) : Prop := ∃ F : Finset M, #F ≤ K ∧ A ⊆ (F : Set M) • B

@[to_additive (attr := simp, refl)]
lemma CovBySMul.rfl : CovBySMul M 1 A A := ⟨1, by simp⟩

@[to_additive (attr := simp)]
lemma CovBySMul.of_subset (hAB : A ⊆ B) : CovBySMul M 1 A B := ⟨1, by simpa⟩

@[to_additive] lemma CovBySMul.nonneg : CovBySMul M K A B → 0 ≤ K := by
  rintro ⟨F, hF, -⟩; exact (#F).cast_nonneg.trans hF

@[to_additive (attr := simp)]
lemma covBySMul_zero : CovBySMul M 0 A B ↔ A = ∅ := by simp [CovBySMul]

@[to_additive]
lemma CovBySMul.mono (hKL : K ≤ L) : CovBySMul M K A B → CovBySMul M L A B := by
  rintro ⟨F, hF, hFAB⟩; exact ⟨F, hF.trans hKL, hFAB⟩

@[to_additive] lemma CovBySMul.trans [SMul M N] [IsScalarTower M N X]
    (hAB : CovBySMul M K A B) (hBC : CovBySMul N L B C) : CovBySMul N (K * L) A C := by
  classical
  have := hAB.nonneg
  obtain ⟨F₁, hF₁, hFAB⟩ := hAB
  obtain ⟨F₂, hF₂, hFBC⟩ := hBC
  refine ⟨F₁ • F₂, ?_, ?_⟩
  · calc
      (#(F₁ • F₂) : ℝ) ≤ #F₁ * #F₂ := mod_cast Finset.card_smul_le
      _ ≤ K * L := by gcongr
  · calc
      A ⊆ (F₁ : Set M) • B := hFAB
      _ ⊆ (F₁ : Set M) • (F₂ : Set N) • C := by gcongr
      _ = (↑(F₁ • F₂) : Set N) • C := by simp

@[to_additive]
lemma CovBySMul.subset_left (hA : A₁ ⊆ A₂) (hAB : CovBySMul M K A₂ B) :
    CovBySMul M K A₁ B := by simpa using (CovBySMul.of_subset (M := M) hA).trans hAB

@[to_additive]
lemma CovBySMul.subset_right (hB : B₁ ⊆ B₂) (hAB : CovBySMul M K A B₁) :
    CovBySMul M K A B₂ := by simpa using hAB.trans (.of_subset (M := M) hB)

@[to_additive]
lemma CovBySMul.subset (hA : A₁ ⊆ A₂) (hB : B₁ ⊆ B₂) (hAB : CovBySMul M K A₂ B₁) :
    CovBySMul M K A₁ B₂ := (hAB.subset_left hA).subset_right hB
```
