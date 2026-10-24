# Complete source: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.InsertionSort.Variant56ab53d649cd99ff965548d53a19ee402b1f17ebadae8ce9c16824048406ffd3

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `c550849c27bfebdc7f6c75ec29f579d90d066872` · SHA-256 `c113a0423971e33eb8080a5eb941db22b77d42df2d77c4c9ca8e790717d15649`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.Array.Variante8d675c282533ee50b60873185fecbe7ee5c1d80946b5bda4de0f0ee35140b60","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"e8d675c282533ee50b60873185fecbe7ee5c1d80946b5bda4de0f0ee35140b60","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.DataStructures.SourceCorpus.Array.Variante8d675c282533ee50b60873185fecbe7ee5c1d80946b5bda4de0f0ee35140b60","mathematical_subject":"Computation.DataStructures","original_sha256":"e8d675c282533ee50b60873185fecbe7ee5c1d80946b5bda4de0f0ee35140b60","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/source-capsule/t-001-v1-export-v1/toolchain/src/lean/Init/Data/Array/InsertionSort.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2018 Microsoft Corporation. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Leonardo de Moura
-/
module

prelude
public import Init.Data.Array.Basic


namespace GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.Array.Variante8d675c282533ee50b60873185fecbe7ee5c1d80946b5bda4de0f0ee35140b60

public section

set_option linter.listVariables true -- Enforce naming conventions for `List`/`Array`/`Vector` variables.
set_option linter.indexVariables true -- Enforce naming conventions for index variables.

/--
Sorts an array using insertion sort.

The optional parameter `lt` specifies an ordering predicate. It defaults to `LT.lt`, which must be
decidable to be used for sorting.
-/
@[inline] def Array.insertionSort (xs : Array α) (lt : α → α → Bool := by exact (· < ·)) : Array α :=
  traverse xs 0 xs.size
where
  @[specialize] traverse (xs : Array α) (i : Nat) (fuel : Nat) : Array α :=
    match fuel with
    | 0      => xs
    | fuel+1 =>
      if h : i < xs.size then
        traverse (swapLoop xs i h) (i+1) fuel
      else
        xs
  @[specialize] swapLoop (xs : Array α) (j : Nat) (h : j < xs.size) : Array α :=
    match (generalizing := false) he:j with -- using `generalizing` because we don't want to refine the type of `h`
    | 0    => xs
    | j'+1 =>
      have h' : j' < xs.size := by subst j; exact Nat.lt_trans (Nat.lt_succ_self _) h
      if lt xs[j] xs[j'] then
        swapLoop (xs.swap j j') j' (by rw [size_swap]; assumption; done)
      else
        xs
```
