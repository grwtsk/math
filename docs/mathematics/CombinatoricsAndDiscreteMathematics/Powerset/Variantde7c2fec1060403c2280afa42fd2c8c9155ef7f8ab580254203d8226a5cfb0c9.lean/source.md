# Complete source: GRWTSK.CombinatoricsAndDiscreteMathematics.Powerset.Variantde7c2fec1060403c2280afa42fd2c8c9155ef7f8ab580254203d8226a5cfb0c9

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `6369f28e22cff0332c7f6d83a4919321d42bc639` · SHA-256 `5a31198cd0338ea1c125963c28cb8a1381f96f6eb393290cbb5227d11880b5b5`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: CombinatoricsAndDiscreteMathematics
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CombinatoricsAndDiscreteMathematics.FiniteFiniteSubsets.Variant03c2fb994d8039e786e87db35c0e36bccc7999bf5ef1803e3bec18d99f5f95f6","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"03c2fb994d8039e786e87db35c0e36bccc7999bf5ef1803e3bec18d99f5f95f6","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Combinatorics.FiniteCombinatorics.SourceCorpus.FiniteFiniteSubsets.Variant03c2fb994d8039e786e87db35c0e36bccc7999bf5ef1803e3bec18d99f5f95f6","mathematical_subject":"Combinatorics.FiniteCombinatorics","original_sha256":"03c2fb994d8039e786e87db35c0e36bccc7999bf5ef1803e3bec18d99f5f95f6","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/rh16-games-packets/external/replay/.lake/packages/mathlib/Mathlib/Data/Set/Finite/Powerset.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2017 Johannes Hölzl. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Johannes Hölzl, Mario Carneiro, Kyle Miller
-/
module

public import Mathlib.Data.Finset.Powerset
public import Mathlib.Data.Set.Finite.Basic

/-!
# Finiteness of the powerset of a finite set

## Implementation notes

Each result in this file should come in three forms: a `Fintype` instance, a `Finite` instance
and a `Set.Finite` constructor.

## Tags

finite sets
-/


namespace GRWTSK.CombinatoricsAndDiscreteMathematics.FiniteFiniteSubsets.Variant03c2fb994d8039e786e87db35c0e36bccc7999bf5ef1803e3bec18d99f5f95f6

public section

assert_not_exists IsOrderedRing MonoidWithZero

open Set Function

universe u v w x

variable {α : Type u}

namespace Set

/-! ### Constructors for `Set.Finite`

Every constructor here should have a corresponding `Fintype` instance in the `Fintype` module.

The implementation of these constructors ideally should be no more than `Set.toFinite`,
after possibly setting up some `Fintype` and classical `Decidable` instances.
-/


section SetFiniteConstructors

/-- There are finitely many subsets of a given finite set -/
theorem Finite.finite_subsets {α : Type u} {a : Set α} (h : a.Finite) : { b | b ⊆ a }.Finite := by
  convert! ((Finset.powerset h.toFinset).map Finset.coeEmb.1).finite_toSet
  ext s
  simpa [← @exists_finite_iff_finset α fun t => t ⊆ a ∧ t = s, Finite.subset_toFinset,
    ← and_assoc, Finset.coeEmb] using h.subset

protected theorem Finite.powerset {s : Set α} (h : s.Finite) : (𝒫 s).Finite :=
  h.finite_subsets

end SetFiniteConstructors

end Set
```
