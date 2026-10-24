# Complete source: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.HashMap.Variantccfb402cc79c353f5f3c8f2db17aab0e8d32c771481b6be45b2ca6a43ca728d2

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `4143fd6b864e894578dd777fdb3b9c0c33823f2f` · SHA-256 `409d56a8d09027e1d4883cb3dff545c583a5c50bb7012f16704c00e602d98fa1`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.MergeWithM.Varianta3d093b6c77b87c9089cbaa6e3ea6fba4b5ff7d3df72971c5ee7881806917ee7","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"a3d093b6c77b87c9089cbaa6e3ea6fba4b5ff7d3df72971c5ee7881806917ee7","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Foundations.NumbersAndBasicStructures.SourceCorpus.MergeWithM.Varianta3d093b6c77b87c9089cbaa6e3ea6fba4b5ff7d3df72971c5ee7881806917ee7","mathematical_subject":"Foundations.NumbersAndBasicStructures","original_sha256":"a3d093b6c77b87c9089cbaa6e3ea6fba4b5ff7d3df72971c5ee7881806917ee7","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/source-capsule/restored-inputs/packages/batteries/Batteries/Lean/HashMap.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2022 Jannis Limperg. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Jannis Limperg
-/
module

public import Std.Data.HashMap.Basic


namespace GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.MergeWithM.Varianta3d093b6c77b87c9089cbaa6e3ea6fba4b5ff7d3df72971c5ee7881806917ee7

@[expose] public section
namespace Std.HashMap

variable [BEq α] [Hashable α]

/--
`O(|other|)` amortized. Merge two `HashMap`s.
The values of keys which appear in both maps are combined using the monadic function `f`.
-/
@[specialize]
def mergeWithM {m α β} [BEq α] [Hashable α] [Monad m] (f : α → β → β → m β)
    (self other : HashMap α β) : m (HashMap α β) :=
  other.foldM (init := self) fun map k v₂ =>
    match map[k]? with
    | none => return map.insert k v₂
    | some v₁ => return map.insert k (← f k v₁ v₂)

/--
`O(|other|)` amortized. Merge two `HashMap`s.
The values of keys which appear in both maps are combined using `f`.
-/
@[inline]
def mergeWith (f : α → β → β → β) (self other : HashMap α β) : HashMap α β :=
  -- Implementing this function directly, rather than via `mergeWithM`, gives
  -- us less constrained universes.
  other.fold (init := self) fun map k v₂ =>
    match map[k]? with
    | none => map.insert k v₂
    | some v₁ => map.insert k <| f k v₁ v₂
```
