# Complete source: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.Lattice.Variant829bb8091f217507c44160b4f679308e2ac42581adbf8defe2a8a31e048a1c48

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `fdbc6cc97684667acf67f8c57089754cb1e89abb` · SHA-256 `411853e3410fe9a3f2a8a43bfacd70ae80e9fe38bba59f3f0f789caa62d98732`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.ISupCoeLtTop.Variantc2968318ff2a9852d5334be2f2cff7dee20af3ab0d64a31480a68e2bd9193ec8","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"c2968318ff2a9852d5334be2f2cff7dee20af3ab0d64a31480a68e2bd9193ec8","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Foundations.NumbersAndBasicStructures.SourceCorpus.ISupCoeLtTop.Variantc2968318ff2a9852d5334be2f2cff7dee20af3ab0d64a31480a68e2bd9193ec8","mathematical_subject":"Foundations.NumbersAndBasicStructures","original_sha256":"c2968318ff2a9852d5334be2f2cff7dee20af3ab0d64a31480a68e2bd9193ec8","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/October/30/ooi/FEATURES/.lake/packages/mathlib/Mathlib/Data/ENat/Lattice.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2022 Yury Kudryashov. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Yury Kudryashov
-/
import Mathlib.Data.Nat.Lattice
import Mathlib.Data.ENat.Basic


namespace GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.ISupCoeLtTop.Variantc2968318ff2a9852d5334be2f2cff7dee20af3ab0d64a31480a68e2bd9193ec8

#align_import data.enat.lattice from "leanprover-community/mathlib"@"f7fc89d5d5ff1db2d1242c7bb0e9062ce47ef47c"

/-!
# Extended natural numbers form a complete linear order

This instance is not in `Data.ENat.Basic` to avoid dependency on `Finset`s.

We also restate some lemmas about `WithTop` for `ENat` to have versions that use `Nat.cast` instead
of `WithTop.some`.
-/

-- porting notes: was `deriving instance` but "default handlers have not been implemented yet"
-- porting notes: `noncomputable` through 'Nat.instConditionallyCompleteLinearOrderBotNat'
noncomputable instance : CompleteLinearOrder ENat :=
  inferInstanceAs (CompleteLinearOrder (WithTop ℕ))

namespace ENat

variable {ι : Sort*} {f : ι → ℕ}

lemma iSup_coe_lt_top : (⨆ x, ↑(f x) : ℕ∞) < ⊤ ↔ BddAbove (Set.range f) :=
  WithTop.iSup_coe_lt_top f

theorem coe_iSup (h : BddAbove (Set.range f)) : ↑(⨆ i, f i) = (⨆ i, f i : ℕ∞) :=
  WithTop.coe_iSup _ h

end ENat
```
