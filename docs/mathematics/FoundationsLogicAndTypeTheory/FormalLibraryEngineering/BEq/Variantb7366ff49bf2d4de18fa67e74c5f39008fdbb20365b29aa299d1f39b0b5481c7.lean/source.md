# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.BEq.Variantb7366ff49bf2d4de18fa67e74c5f39008fdbb20365b29aa299d1f39b0b5481c7

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `4f6a01e9e37ba1c4bfd408c4d301944a96b53dad` · SHA-256 `76b577c9856f4d1891d785778552d74fc5fde4f11b7c6604d033c7cfaa668a75`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.PartialEquivBEq.Variant7c60c30768d646020cc4e4e504e5f234ed717afa70637cd1c0e0e1053741e442","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"7c60c30768d646020cc4e4e504e5f234ed717afa70637cd1c0e0e1053741e442","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Foundations.NumbersAndBasicStructures.SourceCorpus.PartialEquivBEq.Variant7c60c30768d646020cc4e4e504e5f234ed717afa70637cd1c0e0e1053741e442","mathematical_subject":"Foundations.NumbersAndBasicStructures","original_sha256":"7c60c30768d646020cc4e4e504e5f234ed717afa70637cd1c0e0e1053741e442","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/source-capsule/t-001-v1-export-v1/toolchain/src/lean/Init/Data/BEq.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2022 Mario Carneiro. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Mario Carneiro, Markus Himmel
-/
module

prelude
public import Init.Grind.Tactics
import Init.Data.Bool


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.PartialEquivBEq.Variant7c60c30768d646020cc4e4e504e5f234ed717afa70637cd1c0e0e1053741e442

public section

set_option linter.missingDocs true

/-- `PartialEquivBEq α` says that the `BEq` implementation is a
partial equivalence relation, that is:
* it is symmetric: `a == b → b == a`
* it is transitive: `a == b → b == c → a == c`.
-/
class PartialEquivBEq (α) [BEq α] : Prop where
  /-- Symmetry for `BEq`. If `a == b` then `b == a`. -/
  symm : (a : α) == b → b == a
  /-- Transitivity for `BEq`. If `a == b` and `b == c` then `a == c`. -/
  trans : (a : α) == b → b == c → a == c

instance [BEq α] [PartialEquivBEq α] : Std.Symm (α := α) (· == ·) where
  symm _ _ h := PartialEquivBEq.symm h

/-- `EquivBEq` says that the `BEq` implementation is an equivalence relation. -/
class EquivBEq (α) [BEq α] : Prop extends PartialEquivBEq α, ReflBEq α

theorem BEq.symm [BEq α] [Std.Symm (α := α) (· == ·)] {a b : α} : a == b → b == a :=
  Std.Symm.symm a b (r := (· == ·))

theorem BEq.comm [BEq α] [PartialEquivBEq α] {a b : α} : (a == b) = (b == a) :=
  Bool.eq_iff_iff.2 ⟨BEq.symm, BEq.symm⟩

theorem bne_eq [BEq α] {a b : α} : (a != b) = !(a == b) := rfl

theorem bne_comm [BEq α] [PartialEquivBEq α] {a b : α} : (a != b) = (b != a) := by
  rw [bne, BEq.comm, bne]

theorem BEq.symm_false [BEq α] [PartialEquivBEq α] {a b : α} : (a == b) = false → (b == a) = false :=
  BEq.comm (α := α) ▸ id

theorem BEq.trans [BEq α] [PartialEquivBEq α] {a b c : α} : a == b → b == c → a == c :=
  PartialEquivBEq.trans

theorem BEq.congr_left [BEq α] [PartialEquivBEq α] {a b c : α} (h : a == b) :
    (a == c) = (b == c) :=
  Bool.eq_iff_iff.mpr ⟨BEq.trans (BEq.symm h), BEq.trans h⟩

theorem BEq.congr_right [BEq α] [PartialEquivBEq α] {a b c : α} (h : b == c) :
    (a == b) = (a == c) :=
  Bool.eq_iff_iff.mpr ⟨fun h' => BEq.trans h' h, fun h' => BEq.trans h' (BEq.symm h)⟩

theorem BEq.neq_of_neq_of_beq [BEq α] [PartialEquivBEq α] {a b c : α} :
    (a == b) = false → b == c → (a == c) = false :=
  fun h₁ h₂ => Bool.eq_false_iff.2 fun h₃ => Bool.eq_false_iff.1 h₁ (BEq.trans h₃ (BEq.symm h₂))

theorem BEq.neq_of_beq_of_neq [BEq α] [PartialEquivBEq α] {a b c : α} :
    a == b → (b == c) = false → (a == c) = false :=
  fun h₁ h₂ => Bool.eq_false_iff.2 fun h₃ => Bool.eq_false_iff.1 h₂ (BEq.trans (BEq.symm h₁) h₃)

instance (priority := low) [BEq α] [LawfulBEq α] : EquivBEq α where
  symm h := beq_iff_eq.2 <| Eq.symm <| beq_iff_eq.1 h
  trans hab hbc := beq_iff_eq.2 <| (beq_iff_eq.1 hab).trans <| beq_iff_eq.1 hbc

theorem equivBEq_of_iff_apply_eq [BEq α] (f : α → β) (hf : ∀ a b, a == b ↔ f a = f b) : EquivBEq α where
  rfl := by simp [hf]
  symm := by simp [hf, eq_comm]
  trans hab hbc := (hf _ _).2 (Eq.trans ((hf _ _).1 hab) ((hf _ _).1 hbc))
```
