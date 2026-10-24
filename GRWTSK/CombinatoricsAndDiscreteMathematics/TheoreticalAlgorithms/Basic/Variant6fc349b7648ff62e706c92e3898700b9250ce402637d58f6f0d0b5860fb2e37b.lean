-- corpus-organization-transform:v1
-- Mathematical subject: CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.ScanAuxM.Variant0ecdbae5ec56bf36eca289a05eb135c7e1de06f6b672c1d7fa6dd80a243d6d4f","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"0ecdbae5ec56bf36eca289a05eb135c7e1de06f6b672c1d7fa6dd80a243d6d4f","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.DataStructures.SourceCorpus.ScanAuxM.Variant0ecdbae5ec56bf36eca289a05eb135c7e1de06f6b672c1d7fa6dd80a243d6d4f","mathematical_subject":"Computation.DataStructures","original_sha256":"0ecdbae5ec56bf36eca289a05eb135c7e1de06f6b672c1d7fa6dd80a243d6d4f","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/source-capsule/t-001-v1-export-v1/toolchain/src/lean/Init/Data/List/Scan/Basic.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2026 Lean FRO, LLC. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Mario Carneiro, Chad Sharp
-/
module

prelude
public import Init.Data.List.Basic
public import Init.Control.Id


namespace GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.ScanAuxM.Variant0ecdbae5ec56bf36eca289a05eb135c7e1de06f6b672c1d7fa6dd80a243d6d4f

public section

namespace List

/-- Tail-recursive helper function for `scanlM` and `scanrM` -/
@[inline]
private def scanAuxM [Monad m] (f : β → α → m β) (init : β) (l : List α) : m (List β) :=
  go l init []
where
  /-- Auxiliary for `scanAuxM` -/
  @[specialize] go : List α → β → List β → m (List β)
    | [], last, acc => pure <| last :: acc
    | x :: xs, last, acc => do go xs (← f last x) (last :: acc)

/--
Folds a monadic function over a list from the left, accumulating partial results starting with
`init`. The accumulated values are combined with the each element of the list in order, using `f`.
-/
@[inline]
def scanlM [Monad m] (f : β → α → m β) (init : β) (l : List α) : m (List β) :=
  List.reverse <$> scanAuxM f init l

/--
Folds a monadic function over a list from the right, accumulating partial results starting with
`init`. The accumulated values are combined with the each element of the list in order, using `f`.
-/
@[inline]
def scanrM [Monad m] (f : α → β → m β) (init : β) (xs : List α) : m (List β) :=
  scanAuxM (flip f) init xs.reverse

/--
Fold a function `f` over the list from the left, returning the list of partial results.
```
scanl (+) 0 [1, 2, 3] = [0, 1, 3, 6]
```
-/
@[inline]
def scanl (f : β → α → β) (init : β) (as : List α) : List β :=
  Id.run <| as.scanlM (pure <| f · ·) init

/--
Fold a function `f` over the list from the right, returning the list of partial results.
```
scanr (+) 0 [1, 2, 3] = [6, 5, 3, 0]
```
-/
@[inline]
def scanr (f : α → β → β) (init : β) (as : List α) : List β :=
  Id.run <| as.scanrM (pure <| f · ·) init

end List
