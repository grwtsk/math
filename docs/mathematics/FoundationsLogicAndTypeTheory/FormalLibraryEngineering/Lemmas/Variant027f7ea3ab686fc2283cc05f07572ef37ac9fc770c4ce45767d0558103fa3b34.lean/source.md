# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Lemmas.Variant027f7ea3ab686fc2283cc05f07572ef37ac9fc770c4ce45767d0558103fa3b34

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `36829758f9c916aacd5eb8db626fb001477f69ae` · SHA-256 `77567650cf54e0d5aa93a3a0abd11de88d3004f67c7786be2662149d4cc9729f`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.InstMonadLiftTOfMonadLiftInstMonadLiftTOfPure.Variant9b5d3d799261a9822725265719d9cff11cd5e107d80ab0a55696db9b7bdc4f24","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"9b5d3d799261a9822725265719d9cff11cd5e107d80ab0a55696db9b7bdc4f24","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Foundations.NumbersAndBasicStructures.SourceCorpus.InstMonadLiftTOfMonadLiftInstMonadLiftTOfPure.Variant9b5d3d799261a9822725265719d9cff11cd5e107d80ab0a55696db9b7bdc4f24","mathematical_subject":"Foundations.NumbersAndBasicStructures","original_sha256":"9b5d3d799261a9822725265719d9cff11cd5e107d80ab0a55696db9b7bdc4f24","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/source-capsule/t-001-v1-export-v1/toolchain/src/lean/Init/Control/Lawful/MonadLift/Lemmas.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2025 Quang Dao. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Quang Dao
-/
module

prelude
public import Init.Control.Lawful.Basic
public import Init.Control.Lawful.MonadLift.Basic
import Init.Ext


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.InstMonadLiftTOfMonadLiftInstMonadLiftTOfPure.Variant9b5d3d799261a9822725265719d9cff11cd5e107d80ab0a55696db9b7bdc4f24

public section

universe u v w

theorem instMonadLiftTOfMonadLift_instMonadLiftTOfPure [Monad m] [Monad n] {_ : MonadLift m n}
    [LawfulMonadLift m n] : instMonadLiftTOfMonadLift Id m n = Id.instMonadLiftTOfPure := by
  have hext {a b : MonadLiftT Id n} (h : @a.monadLift = @b.monadLift) : a = b := by
    cases a; cases b; simp [monadLift] at h; simp [h]
  apply hext
  ext α x
  simp [monadLift, LawfulMonadLift.monadLift_pure]

variable {m : Type u → Type v} {n : Type u → Type w} [Monad m] [Monad n] [MonadLiftT m n]
  [LawfulMonadLiftT m n] {α β : Type u}

theorem monadLift_map [LawfulMonad m] [LawfulMonad n] (f : α → β) (ma : m α) :
    monadLift (f <$> ma) = f <$> (monadLift ma : n α) := by
  rw [← bind_pure_comp, ← bind_pure_comp, monadLift_bind]
  simp only [bind_pure_comp, monadLift_pure]

theorem monadLift_seq [LawfulMonad m] [LawfulMonad n] (mf : m (α → β)) (ma : m α) :
    monadLift (mf <*> ma) = monadLift mf <*> (monadLift ma : n α) := by
  simp only [seq_eq_bind_map, monadLift_map, monadLift_bind]

theorem monadLift_seqLeft [LawfulMonad m] [LawfulMonad n] (x : m α) (y : m β) :
    monadLift (x <* y) = (monadLift x : n α) <* (monadLift y : n β) := by
  simp only [seqLeft_eq, monadLift_map, monadLift_seq]

theorem monadLift_seqRight [LawfulMonad m] [LawfulMonad n] (x : m α) (y : m β) :
    monadLift (x *> y) = (monadLift x : n α) *> (monadLift y : n β) := by
  simp only [seqRight_eq, monadLift_map, monadLift_seq]

/-! We duplicate the theorems for `monadLift` to `liftM` since `rw` matches on syntax only. -/

@[simp]
theorem liftM_pure (a : α) : liftM (pure a : m α) = pure (f := n) a :=
  monadLift_pure _

@[simp]
theorem liftM_bind (ma : m α) (f : α → m β) :
    liftM (n := n) (ma >>= f) = liftM ma >>= (fun a => liftM (f a)) :=
  monadLift_bind _ _

@[simp]
theorem liftM_map [LawfulMonad m] [LawfulMonad n] (f : α → β) (ma : m α) :
    liftM (f <$> ma) = f <$> (liftM ma : n α) :=
  monadLift_map _ _

@[simp]
theorem liftM_seq [LawfulMonad m] [LawfulMonad n] (mf : m (α → β)) (ma : m α) :
    liftM (mf <*> ma) = liftM mf <*> (liftM ma : n α) :=
  monadLift_seq _ _

@[simp]
theorem liftM_seqLeft [LawfulMonad m] [LawfulMonad n] (x : m α) (y : m β) :
    liftM (x <* y) = (liftM x : n α) <* (liftM y : n β) :=
  monadLift_seqLeft _ _

@[simp]
theorem liftM_seqRight [LawfulMonad m] [LawfulMonad n] (x : m α) (y : m β) :
    liftM (x *> y) = (liftM x : n α) *> (liftM y : n β) :=
  monadLift_seqRight _ _
```
