# Complete source: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.Basic.Variantf32df53783f81bd443731c4b4f614e60a35d3566a75088078c734f401f063300

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `44d4c8144e225beb92013723e6c5fab8e90c6f34` · SHA-256 `8bb2e8b569d1129f475c9f5756746466b3e21b1b9dc3bf4f1e948f9f8584b625`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.ForInStepBindList.Variant8ec4237f9363d4d6a0a390cf62808c1676b7ba496b533ec2c5228b8bb152d89e","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"8ec4237f9363d4d6a0a390cf62808c1676b7ba496b533ec2c5228b8bb152d89e","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.DataStructures.SourceCorpus.ForInStepBindList.Variant8ec4237f9363d4d6a0a390cf62808c1676b7ba496b533ec2c5228b8bb152d89e","mathematical_subject":"Computation.DataStructures","original_sha256":"8ec4237f9363d4d6a0a390cf62808c1676b7ba496b533ec2c5228b8bb152d89e","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/source-capsule/restored-inputs/packages/batteries/Batteries/Control/ForInStep/Basic.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2022 Mario Carneiro. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Mario Carneiro
-/
module


namespace GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.ForInStepBindList.Variant8ec4237f9363d4d6a0a390cf62808c1676b7ba496b533ec2c5228b8bb152d89e

@[expose] public section

/-! # Additional definitions on `ForInStep` -/

/--
This is similar to a monadic `bind` operator, except that the two type parameters have to be
the same, which prevents putting a monad instance on `ForInStepT m α := m (ForInStep α)`.
-/
@[inline] protected def ForInStep.bind [Monad m]
    (a : ForInStep α) (f : α → m (ForInStep α)) : m (ForInStep α) :=
  match a with
  | .done a => return .done a
  | .yield a => f a

@[inherit_doc ForInStep.bind] protected abbrev ForInStep.bindM [Monad m]
    (a : m (ForInStep α)) (f : α → m (ForInStep α)) : m (ForInStep α) := a >>= (·.bind f)

/--
Get the value out of a `ForInStep`.
This is usually done at the end of a `forIn` loop to scope the early exit to the loop body.
-/
@[inline] def ForInStep.run : ForInStep α → α
  | .done a
  | .yield a => a

/-- Applies function `f` to each element of a list to accumulate a `ForInStep` value. -/
def ForInStep.bindList [Monad m]
      (f : α → β → m (ForInStep β)) : List α → ForInStep β → m (ForInStep β)
  | [], s => pure s
  | a::l, s => s.bind fun b => f a b >>= (·.bindList f l)
```
