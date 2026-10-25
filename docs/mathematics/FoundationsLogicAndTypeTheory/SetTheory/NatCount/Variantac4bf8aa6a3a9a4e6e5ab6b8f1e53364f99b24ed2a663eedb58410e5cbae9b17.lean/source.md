# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.SetTheory.NatCount.Variantac4bf8aa6a3a9a4e6e5ab6b8f1e53364f99b24ed2a663eedb58410e5cbae9b17

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `51f3c8c6ca2b5148a14845e9bcaa8390bc6436c8` · SHA-256 `4167faa1c47878d1da97f6aa49c545cf1006bdc9ef2676ff38dc8e5d2b90cbf3`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.SetTheory
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.SetTheory.CountLeCardinal.Variant4801fec5eb22948c2107b0ac3c705457089f4a4e1be821e013996174b6949ae7","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"4801fec5eb22948c2107b0ac3c705457089f4a4e1be821e013996174b6949ae7","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Logic.SetTheory.SourceCorpus.CountLeCardinal.Variant4801fec5eb22948c2107b0ac3c705457089f4a4e1be821e013996174b6949ae7","mathematical_subject":"Logic.SetTheory","original_sha256":"4801fec5eb22948c2107b0ac3c705457089f4a4e1be821e013996174b6949ae7","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/October/30/ooi/spectral-proof-of-RH/lean/mathlib4/Mathlib/SetTheory/Cardinal/NatCount.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2021 Vladimir Goryachev. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Vladimir Goryachev
-/

import Mathlib.Data.Nat.Count
import Mathlib.Data.Set.Card

/-!
# Counting on ℕ

This file provides lemmas about the relation of `Nat.count` with cardinality functions.
-/



namespace GRWTSK.FoundationsLogicAndTypeTheory.SetTheory.CountLeCardinal.Variant4801fec5eb22948c2107b0ac3c705457089f4a4e1be821e013996174b6949ae7

namespace Nat
open Nat Count

variable {p : ℕ → Prop} [DecidablePred p] (n : ℕ)

theorem count_le_cardinal : (count p n : Cardinal) ≤ Cardinal.mk { k | p k } := by
  rw [count_eq_card_fintype, ← Cardinal.mk_fintype]
  exact Cardinal.mk_subtype_mono fun x hx ↦ hx.2

theorem count_le_setENCard : count p n ≤ Set.encard { k | p k } := by
  simp only [Set.encard, ENat.card, Set.coe_setOf, Cardinal.natCast_le_toENat_iff]
  exact Nat.count_le_cardinal n

theorem count_le_setNCard (h : { k | p k }.Finite) : count p n ≤ Set.ncard { k | p k } := by
  rw [Set.ncard_def, ← ENat.coe_le_coe, ENat.coe_toNat (by simpa)]
  exact count_le_setENCard n

end Nat
```
