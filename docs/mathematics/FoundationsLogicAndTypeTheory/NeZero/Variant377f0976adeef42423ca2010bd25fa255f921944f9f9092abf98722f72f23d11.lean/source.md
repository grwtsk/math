# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.NeZero.Variant377f0976adeef42423ca2010bd25fa255f921944f9f9092abf98722f72f23d11

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `ad108f75852a73e65af6e91ef6c9809e0c4e670c` · SHA-256 `3c2d5baa401ba7ef87e740ef79729b271e3cfff469cc6f9621054d103223b1d3`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.OneLe.Varianta35aafd3564ac4e99a3b925612498b7c1249b9d9cb0f0d8afb7b03ed49e46af5","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"a35aafd3564ac4e99a3b925612498b7c1249b9d9cb0f0d8afb7b03ed49e46af5","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Foundations.NumbersAndBasicStructures.SourceCorpus.OneLe.Varianta35aafd3564ac4e99a3b925612498b7c1249b9d9cb0f0d8afb7b03ed49e46af5","mathematical_subject":"Foundations.NumbersAndBasicStructures","original_sha256":"a35aafd3564ac4e99a3b925612498b7c1249b9d9cb0f0d8afb7b03ed49e46af5","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/October/30/ooi/spectral-proof-of-RH/lean/mathlib4/Mathlib/Data/Nat/Cast/NeZero.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2014 Mario Carneiro. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Mario Carneiro, Gabriel Ebner
-/
import Mathlib.Data.Nat.Cast.Defs

/-!
# Lemmas about nonzero elements of an `AddMonoidWithOne`
-/


namespace GRWTSK.FoundationsLogicAndTypeTheory.OneLe.Varianta35aafd3564ac4e99a3b925612498b7c1249b9d9cb0f0d8afb7b03ed49e46af5

open Nat

namespace NeZero

theorem one_le {n : ℕ} [NeZero n] : 1 ≤ n := by have := NeZero.ne n; omega

lemma natCast_ne (n : ℕ) (R) [AddMonoidWithOne R] [h : NeZero (n : R)] : (n : R) ≠ 0 := h.out

lemma of_neZero_natCast (R) [AddMonoidWithOne R] {n : ℕ} [h : NeZero (n : R)] : NeZero n :=
  ⟨by rintro rfl; exact h.out Nat.cast_zero⟩

lemma pos_of_neZero_natCast (R) [AddMonoidWithOne R] {n : ℕ} [NeZero (n : R)] : 0 < n :=
  Nat.pos_of_ne_zero (of_neZero_natCast R).out

end NeZero
```
