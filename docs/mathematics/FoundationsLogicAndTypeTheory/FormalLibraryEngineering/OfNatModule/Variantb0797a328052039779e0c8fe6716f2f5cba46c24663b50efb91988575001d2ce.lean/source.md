# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.OfNatModule.Variantb0797a328052039779e0c8fe6716f2f5cba46c24663b50efb91988575001d2ce

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `7497bcff0b4c9290ac8aceb16576d260a1044b93` · SHA-256 `4fb6043498eeac51a27f46da34ff173c0dffa9c962ae8be2af17320203ef484b`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.OfEq.Variantee8ddb032981ca16ae5b05a144073a7359577e57967bbe44e87e01a8ea1f2085","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"ee8ddb032981ca16ae5b05a144073a7359577e57967bbe44e87e01a8ea1f2085","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.LeanMetaprogramming.SourceCorpus.OfEq.Variantee8ddb032981ca16ae5b05a144073a7359577e57967bbe44e87e01a8ea1f2085","mathematical_subject":"Computation.LeanMetaprogramming","original_sha256":"ee8ddb032981ca16ae5b05a144073a7359577e57967bbe44e87e01a8ea1f2085","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/source-capsule/t-001-v1-export-v1/toolchain/src/lean/Init/Grind/Module/OfNatModule.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2025 Amazon.com, Inc. or its affiliates. All Rights Reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Leonardo de Moura
-/
module
prelude
public import Init.Grind.Module.Envelope

namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.OfEq.Variantee8ddb032981ca16ae5b05a144073a7359577e57967bbe44e87e01a8ea1f2085

public section
namespace Lean.Grind.IntModule.OfNatModule
open Std

/-!
Support for `NatModule` in the `grind` linear arithmetic module.
-/

theorem of_eq {α} [NatModule α] {a b : α} {a' b' : Q α}
    (h₁ : toQ a = a') (h₂ : toQ b = b') : a = b → a' = b' := by
  intro h; rw [← h₁, ← h₂, h]

theorem of_diseq {α} [NatModule α] [AddRightCancel α] {a b : α} {a' b' : Q α}
    (h₁ : toQ a = a') (h₂ : toQ b = b') : a ≠ b → a' ≠ b' := by
  rw [← h₁, ← h₂]; intro h₃ h₄; replace h₄ := toQ_inj h₄; contradiction

theorem of_le {α} [NatModule α] [LE α] [IsPreorder α] [OrderedAdd α] {a b : α} {a' b' : Q α}
    (h₁ : toQ a = a') (h₂ : toQ b = b') : a ≤ b → a' ≤ b' := by
  rw [← h₁, ← h₂, toQ_le]; intro; assumption

theorem of_not_le {α} [NatModule α] [LE α] [IsPreorder α] [OrderedAdd α] {a b : α} {a' b' : Q α}
    (h₁ : toQ a = a') (h₂ : toQ b = b') : ¬ a ≤ b → ¬ a' ≤ b' := by
  rw [← h₁, ← h₂, toQ_le]; intro; assumption

theorem of_lt {α} [NatModule α] [LE α] [LT α] [LawfulOrderLT α] [IsPreorder α] [OrderedAdd α] {a b : α} {a' b' : Q α}
    (h₁ : toQ a = a') (h₂ : toQ b = b') : a < b → a' < b' := by
  rw [← h₁, ← h₂, toQ_lt]; intro; assumption

theorem of_not_lt {α} [NatModule α] [LE α] [LT α] [LawfulOrderLT α] [IsPreorder α] [OrderedAdd α] {a b : α} {a' b' : Q α}
    (h₁ : toQ a = a') (h₂ : toQ b = b') : ¬ a < b → ¬ a' < b' := by
  rw [← h₁, ← h₂, toQ_lt]; intro; assumption

theorem add_congr {α} [NatModule α] {a b : α} {a' b' : Q α}
    (h₁ : toQ a = a') (h₂ : toQ b = b') : toQ (a + b) = a' + b' := by
  rw [toQ_add, h₁, h₂]

theorem smul_congr {α} [NatModule α] (n : Nat) (a : α) (a' : Q α) (h : toQ a = a') : toQ (n • a) = n • a' := by
  rw [← h, toQ_smul]

end Lean.Grind.IntModule.OfNatModule
```
