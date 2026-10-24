# Complete source: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.ControlImpl.Variant5b72fcc7d99c7c93586a40a1ae1947f0fea9cd3e07d19ab33203c14ddd7f05cf

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `bd8e15c564815314198da8726f97dd5470ce0b9e` · SHA-256 `19307a2921e3cfe116821f60a07b2c6239de0862c6b453ed437ad4945615d7d5`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.FlatMapMTR.Variant0b95647576ba8573a622dda9291e7f03924402cd34e5731227637172961d46b3","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"0b95647576ba8573a622dda9291e7f03924402cd34e5731227637172961d46b3","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Foundations.NumbersAndBasicStructures.SourceCorpus.FlatMapMTR.Variant0b95647576ba8573a622dda9291e7f03924402cd34e5731227637172961d46b3","mathematical_subject":"Foundations.NumbersAndBasicStructures","original_sha256":"0b95647576ba8573a622dda9291e7f03924402cd34e5731227637172961d46b3","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/source-capsule/t-001-v1-export-v1/toolchain/src/lean/Init/Data/List/ControlImpl.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2026 Lean FRO, LLC. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Author: Markus Himmel
-/
module

prelude
public import Init.Data.List.Control
public import Init.Data.List.Impl


namespace GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.FlatMapMTR.Variant0b95647576ba8573a622dda9291e7f03924402cd34e5731227637172961d46b3

public section

namespace List

/--
Applies a monadic function that returns a list to each element of a list, from left to right, and
concatenates the resulting lists.
-/
@[inline, expose]
def flatMapMTR {m : Type u → Type v} [Monad m] {α : Type w} {β : Type u} (f : α → m (List β)) (as : List α) : m (List β) :=
  let rec @[specialize] loop
    | [],     bs => pure bs.reverse.flatten
    | a :: as, bs => do
      let bs' ← f a
      loop as (bs' :: bs)
  loop as []

@[csimp] theorem flatMapM_eq_flatMapMTR : @flatMapM = @flatMapMTR := by
  funext m _ α β f l
  simp only [flatMapM, flatMapMTR]
  generalize [] = m
  fun_induction flatMapM.loop <;> simp_all [flatMapMTR.loop]

end List
```
