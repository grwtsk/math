# Complete source: GRWTSK.CombinatoricsAndDiscreteMathematics.Union.Variantfc09b133c0b9b2ecfa9652f7e9032b54c933d229c5db0b35531f83eb2adc9fdd

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `930c764f112384ba4754093932127e66fba8f56c` · SHA-256 `e69acf64fe947af8f6e0e6ebfd5cb81086d37590597d85602638b6c234619b46`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: CombinatoricsAndDiscreteMathematics
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CombinatoricsAndDiscreteMathematics.IocSubsetBiUnionIoc.Variante48dde2b5e1cc12b6a3eae640e02418f84e99b2a3fbe0b2c24166582dc260acc","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"e48dde2b5e1cc12b6a3eae640e02418f84e99b2a3fbe0b2c24166582dc260acc","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Combinatorics.FiniteCombinatorics.SourceCorpus.IocSubsetBiUnionIoc.Variante48dde2b5e1cc12b6a3eae640e02418f84e99b2a3fbe0b2c24166582dc260acc","mathematical_subject":"Combinatorics.FiniteCombinatorics","original_sha256":"e48dde2b5e1cc12b6a3eae640e02418f84e99b2a3fbe0b2c24166582dc260acc","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/rh16-games-packets/external/replay/.lake/packages/mathlib/Mathlib/Order/Interval/Set/Union.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2025 Oliver Butterley. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Oliver Butterley
-/
module

public import Mathlib.Data.Finset.Range
public import Mathlib.Data.Set.Lattice.Indexed
public import Mathlib.Order.Interval.Set.LinearOrder

/-!
# Extra lemmas about unions of intervals

This file contains lemmas about finite unions of intervals which can't be included with the lemmas
concerning infinite unions in `Mathlib/Order/Interval/Set/Disjoint.lean` because we use
`Finset.range`.
-/


namespace GRWTSK.CombinatoricsAndDiscreteMathematics.IocSubsetBiUnionIoc.Variante48dde2b5e1cc12b6a3eae640e02418f84e99b2a3fbe0b2c24166582dc260acc

public section

open Set

/-- Union of consecutive intervals contains the interval defined by the initial and final points. -/
theorem Ioc_subset_biUnion_Ioc {X : Type*} [LinearOrder X] (N : ℕ) (a : ℕ → X) :
    Ioc (a 0) (a N) ⊆ ⋃ i ∈ Finset.range N, Ioc (a i) (a (i + 1)) := by
  induction N with
  | zero => simp
  | succ N ih => calc
    _ ⊆ Ioc (a 0) (a N) ∪ Ioc (a N) (a (N + 1)) := Ioc_subset_Ioc_union_Ioc
    _ ⊆ _ := by simpa [Finset.range_add_one] using
                  union_subset_union_right (Ioc (a N) (a (N + 1))) ih

/-- Union of consecutive intervals contains the interval defined by the initial and final points. -/
theorem Ico_subset_biUnion_Ico {X : Type*} [LinearOrder X] (N : ℕ) (a : ℕ → X) :
    Ico (a 0) (a N) ⊆ ⋃ i ∈ Finset.range N, Ico (a i) (a (i + 1)) := by
  induction N with
  | zero => simp
  | succ N ih => calc
    _ ⊆ Ico (a 0) (a N) ∪ Ico (a N) (a (N + 1)) := Ico_subset_Ico_union_Ico
    _ ⊆ _ := by simpa [Finset.range_add_one] using
                  union_subset_union_right (Ico (a N) (a (N + 1))) ih
```
