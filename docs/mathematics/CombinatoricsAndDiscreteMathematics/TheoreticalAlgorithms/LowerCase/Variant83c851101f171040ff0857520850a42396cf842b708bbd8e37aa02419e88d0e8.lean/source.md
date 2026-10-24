# Complete source: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.LowerCase.Variant83c851101f171040ff0857520850a42396cf842b708bbd8e37aa02419e88d0e8

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `5080adde12351296846a4c25933386ca58d2a701` · SHA-256 `4e8f0ad14dc4c99ee1624db0bf46036476a2a7e1efb7d78976cc0226947b41cb`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.IsLowerCase.Variante7ff6d29f1814e27cf406b0a89bf490d2fe48e058284bcd8e50785bee697110c","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"e7ff6d29f1814e27cf406b0a89bf490d2fe48e058284bcd8e50785bee697110c","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Foundations.NumbersAndBasicStructures.SourceCorpus.IsLowerCase.Variante7ff6d29f1814e27cf406b0a89bf490d2fe48e058284bcd8e50785bee697110c","mathematical_subject":"Foundations.NumbersAndBasicStructures","original_sha256":"e7ff6d29f1814e27cf406b0a89bf490d2fe48e058284bcd8e50785bee697110c","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/source-capsule/t-001-v1-export-v1/toolchain/src/lean/Std/Http/Internal/LowerCase.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2025 Lean FRO, LLC. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Sofia Rodrigues
-/
module

prelude
import Init.Grind
import Init.Data.Int.OfNat
import Init.Data.UInt.Lemmas
public import Init.Data.String.Modify
import Init.Data.String.Lemmas.Modify


namespace GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.IsLowerCase.Variante7ff6d29f1814e27cf406b0a89bf490d2fe48e058284bcd8e50785bee697110c

@[expose]
public section

/-!
# LowerCase

This module provides predicates and normalization functions for handling ASCII case-insensitivity.
It includes proofs of idempotency for lowercase transformations, as well as utilities for validating
the lowercase state of a String.
-/

namespace Std.Http.Internal

set_option linter.all true

/--
Predicate asserting that a string is in lowercase form.
-/
def IsLowerCase (s : String) : Prop :=
  s.toLower = s

private theorem Char.toLower_eq_self_iff {c : Char} : c.toLower = c ↔ c.isUpper = false := by
  simp only [Char.toLower, Char.isUpper]
  split <;> rename_i h <;> simpa [UInt32.le_iff_toNat_le, Char.ext_iff] using h

private theorem String.toLower_eq_self_iff {s : String} : s.toLower = s ↔ s.toList.any Char.isUpper = false := by
  simp only [String.toLower, ← String.toList_inj, String.toList_map]
  rw (occs := [2]) [← List.map_id s.toList]
  rw [List.map_eq_map_iff]
  simp [Char.toLower_eq_self_iff]

instance : Decidable (IsLowerCase s) :=
  decidable_of_decidable_of_iff (p := s.toList.any Char.isUpper = false)
    (by exact String.toLower_eq_self_iff.symm)

namespace IsLowerCase

private theorem Char.toLower_idempotent (c : Char) : c.toLower.toLower = c.toLower := by
  simp only [Char.toLower]
  split
  · split
    · next h1 h2 =>
      simp only [UInt32.le_iff_toNat_le, UInt32.toNat_add, seval] at h1 h2
      omega
    · simp
  · rfl

/--
Proof that applying `toLower` to any string results in a string that satisfies the `IsLowerCase`
predicate.
-/
theorem isLowerCase_toLower {s : String} : IsLowerCase s.toLower := by
  unfold IsLowerCase String.toLower
  rw [String.map_map, Function.comp_def]
  simp [Char.toLower_idempotent]

theorem isLowerCase_empty : IsLowerCase "" := by
  simp [IsLowerCase, String.toLower]

end IsLowerCase

end Std.Http.Internal
```
