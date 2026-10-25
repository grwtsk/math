# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Order.Variant8a81e3acdeb47f8013a2461eaa181fe462c418800092c3b028c5426358e486e0

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `9c13c7e626a63f818f83f021e4d90879719d77be` · SHA-256 `7319c8681d02366d64311ccfc18e3373b8ece92ce1bdce4be077ca6368d849ea`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Nat.Variant481f7db05f9a8e0a6743ac7c3cf88f1ea0e361510765ed5f1b3abedb81d6b84d","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"481f7db05f9a8e0a6743ac7c3cf88f1ea0e361510765ed5f1b3abedb81d6b84d","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Foundations.NumbersAndBasicStructures.SourceCorpus.Nat.Variant481f7db05f9a8e0a6743ac7c3cf88f1ea0e361510765ed5f1b3abedb81d6b84d","mathematical_subject":"Foundations.NumbersAndBasicStructures","original_sha256":"481f7db05f9a8e0a6743ac7c3cf88f1ea0e361510765ed5f1b3abedb81d6b84d","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/source-capsule/t-001-v1-export-v1/toolchain/src/lean/Init/Data/Nat/Order.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2025 Lean FRO, LLC. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Paul Reichert
-/
module

prelude
public import Init.Data.Nat.Basic
import Init.Data.Nat.MinMax
public import Init.Data.Order.Classes
import Init.Data.Order.Factories
import Init.NotationExtra


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Nat.Variant481f7db05f9a8e0a6743ac7c3cf88f1ea0e361510765ed5f1b3abedb81d6b84d

open Std

namespace Nat

public instance instIsLinearOrder : IsLinearOrder Nat := by
  apply IsLinearOrder.of_le
  · constructor; apply Nat.le_antisymm
  · constructor; apply Nat.le_trans
  · constructor; apply Nat.le_total

public instance : LawfulOrderLT Nat := by
  apply LawfulOrderLT.of_le
  simp [Nat.lt_iff_le_and_ne]

public instance : LawfulOrderMin Nat := by
  apply LawfulOrderMin.of_le_min_iff
  · apply Nat.le_min
  · intro a b
    simp only [Nat.min_def]
    split <;> simp

public instance : LawfulOrderMax Nat := by
  apply LawfulOrderMax.of_max_le_iff
  · apply Nat.max_le
  · intro a b
    simp only [Nat.max_def]
    split <;> simp

end Nat
```
