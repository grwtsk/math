# Complete source: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.ChainOfFn.Variant7271c1b318a82f54c69ef1c8e16459e94e065786860518abe78f1bdf96e420da

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `f22279ead6aa21cbb8d4f1daf899381edafef264` · SHA-256 `0c15f3133b6b999a1bb11e8eaf7ba5069a86e023a12bb9d69a047ffdf5c8e1a3`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.ChainPrimeOfFn.Variantcb0766ac2fb1bf680063de8f2bed3371b86f1a8ddd2196be1323db5c4203938e","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"cb0766ac2fb1bf680063de8f2bed3371b86f1a8ddd2196be1323db5c4203938e","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.DataStructures.SourceCorpus.ChainPrimeOfFn.Variantcb0766ac2fb1bf680063de8f2bed3371b86f1a8ddd2196be1323db5c4203938e","mathematical_subject":"Computation.DataStructures","original_sha256":"cb0766ac2fb1bf680063de8f2bed3371b86f1a8ddd2196be1323db5c4203938e","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/October/30/ooi/spectral-proof-of-RH/lean/mathlib4/Mathlib/Data/List/ChainOfFn.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2024 Joseph Myers. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Joseph Myers
-/
import Mathlib.Data.List.Chain
import Mathlib.Data.List.OfFn

/-!
# Lemmas about `Chain'` and `OfFn`

This file provides lemmas involving both `List.Chain'` and `List.OfFn`.
-/


namespace GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.ChainPrimeOfFn.Variantcb0766ac2fb1bf680063de8f2bed3371b86f1a8ddd2196be1323db5c4203938e

open Nat

namespace List

lemma chain'_ofFn {α : Type*} {n : ℕ} {f : Fin n → α} {r : α → α → Prop} :
    (ofFn f).Chain' r ↔ ∀ (i) (hi : i + 1 < n), r (f ⟨i, lt_of_succ_lt hi⟩) (f ⟨i + 1, hi⟩) := by
  simp_rw [chain'_iff_get, get_ofFn, length_ofFn]
  exact ⟨fun h i hi ↦ h i (by omega), fun h i hi ↦ h i (by omega)⟩

end List
```
