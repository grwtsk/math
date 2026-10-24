# Complete source: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.List.Varianta797aeafc36231f48e580d7cae433356433a957de7ba1724107dea68abcfc3de

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `0eb2b0918e25d11e7c5568a7bfb9f70d790ed0fc` · SHA-256 `b1c5bd25d15526ebed417736799e5285f880d3650f0c6d64fd7d739425c6692c`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.FiniteLengthEq.Varianta754a3057cf761defc5e9b559799a61cf814f5d45efde2f8243291d9a8629acd","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"a754a3057cf761defc5e9b559799a61cf814f5d45efde2f8243291d9a8629acd","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Foundations.NumbersAndBasicStructures.SourceCorpus.FiniteLengthEq.Varianta754a3057cf761defc5e9b559799a61cf814f5d45efde2f8243291d9a8629acd","mathematical_subject":"Foundations.NumbersAndBasicStructures","original_sha256":"a754a3057cf761defc5e9b559799a61cf814f5d45efde2f8243291d9a8629acd","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/October/30/ooi/spectral-proof-of-RH/lean/mathlib4/Mathlib/Data/Set/Finite/List.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2017 Johannes Hölzl. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Johannes Hölzl, Mario Carneiro, Kyle Miller
-/
import Mathlib.Data.Set.Finite.Basic
import Mathlib.Data.Set.Finite.Lattice
import Mathlib.Data.Set.Finite.Range
import Mathlib.Data.Set.Lattice
import Mathlib.Data.Finite.Sigma
import Mathlib.Data.Finite.Vector

/-!
# Finiteness of sets of lists

## Tags

finite sets
-/


namespace GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.FiniteLengthEq.Varianta754a3057cf761defc5e9b559799a61cf814f5d45efde2f8243291d9a8629acd

assert_not_exists OrderedRing MonoidWithZero

namespace List
variable (α : Type*) [Finite α] (n : ℕ)

lemma finite_length_eq : {l : List α | l.length = n}.Finite := List.Vector.finite

lemma finite_length_lt : {l : List α | l.length < n}.Finite := by
  convert (Finset.range n).finite_toSet.biUnion fun i _ ↦ finite_length_eq α i; ext; simp

lemma finite_length_le : {l : List α | l.length ≤ n}.Finite := by
  simpa [Nat.lt_succ_iff] using finite_length_lt α (n + 1)

end List
```
