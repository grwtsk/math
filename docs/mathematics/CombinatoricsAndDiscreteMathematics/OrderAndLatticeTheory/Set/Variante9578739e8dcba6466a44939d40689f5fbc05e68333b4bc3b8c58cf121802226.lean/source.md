# Complete source: GRWTSK.CombinatoricsAndDiscreteMathematics.OrderAndLatticeTheory.Set.Variante9578739e8dcba6466a44939d40689f5fbc05e68333b4bc3b8c58cf121802226

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `6394575720236cd486b392c508a3807204941d62` · SHA-256 `c59c4dd252dc65ff0b7feb5fc513ef5a1ec0b2df9f33e49ba0ee915da5d478a6`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: CombinatoricsAndDiscreteMathematics.OrderAndLatticeTheory
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CombinatoricsAndDiscreteMathematics.OrderAndLatticeTheory.WithBotRangeEq.Variant6228c07a03af1853b2849dd711e00be5021df4052f54e6629be1c6a2827c3264","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"6228c07a03af1853b2849dd711e00be5021df4052f54e6629be1c6a2827c3264","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Algebra.OrderTheory.SourceCorpus.WithBotRangeEq.Variant6228c07a03af1853b2849dd711e00be5021df4052f54e6629be1c6a2827c3264","mathematical_subject":"Algebra.OrderTheory","original_sha256":"6228c07a03af1853b2849dd711e00be5021df4052f54e6629be1c6a2827c3264","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/October/30/ooi/spectral-proof-of-RH/lean/mathlib4/Mathlib/Order/Set.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2022 Yury Kudryashov. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Yury Kudryashov
-/

import Mathlib.Data.Set.Image
import Mathlib.Order.TypeTags

/-! # `Set.range` on `WithBot` and `WithTop` -/


namespace GRWTSK.CombinatoricsAndDiscreteMathematics.OrderAndLatticeTheory.WithBotRangeEq.Variant6228c07a03af1853b2849dd711e00be5021df4052f54e6629be1c6a2827c3264

open Set

variable {α β : Type*}

theorem WithBot.range_eq (f : WithBot α → β) :
    range f = insert (f ⊥) (range (f ∘ WithBot.some : α → β)) :=
  Option.range_eq f

theorem WithTop.range_eq (f : WithTop α → β) :
    range f = insert (f ⊤) (range (f ∘ WithBot.some : α → β)) :=
  Option.range_eq f
```
