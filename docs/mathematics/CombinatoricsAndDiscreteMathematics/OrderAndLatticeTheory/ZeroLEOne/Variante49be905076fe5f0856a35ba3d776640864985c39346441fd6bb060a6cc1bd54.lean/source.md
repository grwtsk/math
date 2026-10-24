# Complete source: GRWTSK.CombinatoricsAndDiscreteMathematics.OrderAndLatticeTheory.ZeroLEOne.Variante49be905076fe5f0856a35ba3d776640864985c39346441fd6bb060a6cc1bd54

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `cf6384f03955eb1b1ed6315fd64ce70b03f0a8d6` · SHA-256 `efcac8b3355ff839df62ce9a5414f7344228a56c7541159bcef9d4ad9b2f42c1`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: CombinatoricsAndDiscreteMathematics.OrderAndLatticeTheory
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CombinatoricsAndDiscreteMathematics.OrderAndLatticeTheory.ZeroLEOneClass.Variant63b48309c89474841067d0ee1236648976d6b3b8dded62c33d4b3f81b53f5cd6","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"63b48309c89474841067d0ee1236648976d6b3b8dded62c33d4b3f81b53f5cd6","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Algebra.OrderTheory.SourceCorpus.ZeroLEOneClass.Variant63b48309c89474841067d0ee1236648976d6b3b8dded62c33d4b3f81b53f5cd6","mathematical_subject":"Algebra.OrderTheory","original_sha256":"63b48309c89474841067d0ee1236648976d6b3b8dded62c33d4b3f81b53f5cd6","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/October/30/ooi/spectral-proof-of-RH/lean/mathlib4/Mathlib/Algebra/Order/ZeroLEOne.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2016 Jeremy Avigad. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Jeremy Avigad, Leonardo de Moura, Mario Carneiro, Johannes Hölzl
-/
import Mathlib.Order.Basic

/-!
# Typeclass expressing `0 ≤ 1`.
-/


namespace GRWTSK.CombinatoricsAndDiscreteMathematics.OrderAndLatticeTheory.ZeroLEOneClass.Variant63b48309c89474841067d0ee1236648976d6b3b8dded62c33d4b3f81b53f5cd6

variable {α : Type*}

open Function

/-- Typeclass for expressing that the `0` of a type is less or equal to its `1`. -/
class ZeroLEOneClass (α : Type*) [Zero α] [One α] [LE α] : Prop where
  /-- Zero is less than or equal to one. -/
  zero_le_one : (0 : α) ≤ 1

/-- `zero_le_one` with the type argument implicit. -/
@[simp] lemma zero_le_one [Zero α] [One α] [LE α] [ZeroLEOneClass α] : (0 : α) ≤ 1 :=
  ZeroLEOneClass.zero_le_one

instance ZeroLEOneClass.factZeroLeOne [Zero α] [One α] [LE α] [ZeroLEOneClass α] :
    Fact ((0 : α) ≤ 1) where
  out := zero_le_one

/-- `zero_le_one` with the type argument explicit. -/
lemma zero_le_one' (α) [Zero α] [One α] [LE α] [ZeroLEOneClass α] : (0 : α) ≤ 1 :=
  zero_le_one

section
variable [Zero α] [One α] [PartialOrder α] [ZeroLEOneClass α] [NeZero (1 : α)]

/-- See `zero_lt_one'` for a version with the type explicit. -/
@[simp] lemma zero_lt_one : (0 : α) < 1 := zero_le_one.lt_of_ne (NeZero.ne' 1)

instance ZeroLEOneClass.factZeroLtOne : Fact ((0 : α) < 1) where
  out := zero_lt_one

variable (α)

/-- See `zero_lt_one` for a version with the type implicit. -/
lemma zero_lt_one' : (0 : α) < 1 := zero_lt_one

end

alias one_pos := zero_lt_one
```
