# Complete source: GRWTSK.CombinatoricsAndDiscreteMathematics.Pairwise.Variant91b4818752fa7252e2fe23e89e0321041bc6bc9bb50399365aef9f9ad30a9100

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `0f4af7f289fe63793a6d0dee49ccacac5f3f4779` · SHA-256 `1ef5dfd06ba476702e6a62251c56bc07dd974f43b057ff303f5f2c11ec64c2fd`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: CombinatoricsAndDiscreteMathematics
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CombinatoricsAndDiscreteMathematics.PairwiseForall.Variant5c2082fce96e74496e7d36795371147237563d0dacdbf60d05fa0e40a09544c7","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"5c2082fce96e74496e7d36795371147237563d0dacdbf60d05fa0e40a09544c7","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Combinatorics.FiniteCombinatorics.SourceCorpus.PairwiseForall.Variant5c2082fce96e74496e7d36795371147237563d0dacdbf60d05fa0e40a09544c7","mathematical_subject":"Combinatorics.FiniteCombinatorics","original_sha256":"5c2082fce96e74496e7d36795371147237563d0dacdbf60d05fa0e40a09544c7","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/October/30/ooi/spectral-proof-of-RH/lean/mathlib4/Mathlib/Data/Multiset/Pairwise.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2025 Chris Hughes. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Chris Hughes
-/
import Mathlib.Data.List.Pairwise
import Mathlib.Data.Multiset.Defs

/-!
# Pairwise relations on a multiset

This file provides basic results about `Multiset.Pairwise` (definitions are in
`Mathlib/Data/Multiset/Defs.lean`).
-/


namespace GRWTSK.CombinatoricsAndDiscreteMathematics.PairwiseForall.Variant5c2082fce96e74496e7d36795371147237563d0dacdbf60d05fa0e40a09544c7

namespace Multiset

variable {α : Type*} {r : α → α → Prop} {s : Multiset α}

theorem Pairwise.forall (H : Symmetric r) (hs : Pairwise r s) :
    ∀ ⦃a⦄, a ∈ s → ∀ ⦃b⦄, b ∈ s → a ≠ b → r a b :=
  let ⟨_, hl₁, hl₂⟩ := hs
  hl₁.symm ▸ hl₂.forall H

end Multiset
```
