# Complete source: GRWTSK.CombinatoricsAndDiscreteMathematics.SuccAboveOrderIso.Variant55ce702d717c4924ae680b8222dad6d7b9931638a1a072a3263d31ecc3afc899

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `f7c566edecd87d66b2e208a1111b9d7fa89141e5` · SHA-256 `66ee595a661cba973337c70189d008267b49d6f3488b6c1b33f0ed28884c8c0c`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: CombinatoricsAndDiscreteMathematics
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CombinatoricsAndDiscreteMathematics.FinSuccAboveOrderIso.Variante8bf0424c318750866f7d9b6bcd12cf7f09b20983960a9d16a727019e40f68bc","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"e8bf0424c318750866f7d9b6bcd12cf7f09b20983960a9d16a727019e40f68bc","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Combinatorics.FiniteCombinatorics.SourceCorpus.FinSuccAboveOrderIso.Variante8bf0424c318750866f7d9b6bcd12cf7f09b20983960a9d16a727019e40f68bc","mathematical_subject":"Combinatorics.FiniteCombinatorics","original_sha256":"e8bf0424c318750866f7d9b6bcd12cf7f09b20983960a9d16a727019e40f68bc","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/October/30/ooi/spectral-proof-of-RH/lean/mathlib4/Mathlib/Order/Fin/SuccAboveOrderIso.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2024 Joël Riou. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Joël Riou
-/

import Mathlib.Order.Fin.Basic
import Mathlib.Data.Fintype.Basic
import Mathlib.Tactic.FinCases

/-!
# The order isomorphism `Fin (n + 1) ≃o {i}ᶜ`

Given `i : Fin (n + 2)`, we show that `Fin.succAboveOrderEmb` induces
an order isomorphism `Fin (n + 1) ≃o ({i}ᶜ : Finset (Fin (n + 2)))`.

-/


namespace GRWTSK.CombinatoricsAndDiscreteMathematics.FinSuccAboveOrderIso.Variante8bf0424c318750866f7d9b6bcd12cf7f09b20983960a9d16a727019e40f68bc

open Finset

/-- Given `i : Fin (n + 2)`, this is the order isomorphism
between `Fin (n + 1)` and the finite set `{i}ᶜ`. -/
noncomputable def Fin.succAboveOrderIso {n : ℕ} (i : Fin (n + 2)) :
    Fin (n + 1) ≃o ({i}ᶜ : Finset (Fin (n + 2))) where
  toEquiv :=
    Equiv.ofBijective (f := fun a ↦ ⟨Fin.succAboveOrderEmb i a, by simp⟩) (by
      constructor
      · intro a b h
        exact (Fin.succAboveOrderEmb i).injective (by simpa using h)
      · rintro ⟨j, hj⟩
        simp only [mem_compl, mem_singleton] at hj
        obtain rfl | ⟨i, rfl⟩ := Fin.eq_zero_or_eq_succ i
        · exact ⟨j.pred hj, by simp⟩
        · exact ⟨i.predAbove j, by aesop⟩)
  map_rel_iff' {a b} := by
    simp only [Equiv.ofBijective_apply, Subtype.mk_le_mk, OrderEmbedding.le_iff_le]
```
