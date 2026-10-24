# Complete source: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.Basic.Variant6fc349b7648ff62e706c92e3898700b9250ce402637d58f6f0d0b5860fb2e37b

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `f7dc38ac7ab91ed70f53f3d1d99d6da64837ddbf` · SHA-256 `d3ec486c007d55c78613425fc7b01221563f4ed8e2519d81dee6ab6c0559d593`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

````lean
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
````
