# Complete source: GRWTSK.CombinatoricsAndDiscreteMathematics.Powerset.Variant443a4e6cf1f0288b73a9803885da164f25870bcfe72e2ac39f0d5e9ad61e67b8

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `701d4816c01a0338b09495da4b97540e7e46e944` · SHA-256 `0e3c28383cc186a5be228150a01e9d81d1331668e4e60786e5fd2c93ede2e2ca`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: CombinatoricsAndDiscreteMathematics
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CombinatoricsAndDiscreteMathematics.FiniteFiniteSubsets.Variant67511dc287b75fb03e57a969f0ab2cabca021252653c09f75f705d62729045e5","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"67511dc287b75fb03e57a969f0ab2cabca021252653c09f75f705d62729045e5","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Combinatorics.FiniteCombinatorics.SourceCorpus.FiniteFiniteSubsets.Variant67511dc287b75fb03e57a969f0ab2cabca021252653c09f75f705d62729045e5","mathematical_subject":"Combinatorics.FiniteCombinatorics","original_sha256":"67511dc287b75fb03e57a969f0ab2cabca021252653c09f75f705d62729045e5","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/October/30/ooi/spectral-proof-of-RH/lean/mathlib4/Mathlib/Data/Set/Finite/Powerset.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2017 Johannes Hölzl. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Johannes Hölzl, Mario Carneiro, Kyle Miller
-/
import Mathlib.Data.Finset.Powerset
import Mathlib.Data.Set.Finite.Basic

/-!
# Finiteness of the powerset of a finite set

## Implementation notes

Each result in this file should come in three forms: a `Fintype` instance, a `Finite` instance
and a `Set.Finite` constructor.

## Tags

finite sets
-/


namespace GRWTSK.CombinatoricsAndDiscreteMathematics.FiniteFiniteSubsets.Variant67511dc287b75fb03e57a969f0ab2cabca021252653c09f75f705d62729045e5

assert_not_exists OrderedRing MonoidWithZero

open Set Function

universe u v w x

variable {α : Type u} {β : Type v} {ι : Sort w} {γ : Type x}

namespace Set

/-! ### Constructors for `Set.Finite`

Every constructor here should have a corresponding `Fintype` instance in the `Fintype` module.

The implementation of these constructors ideally should be no more than `Set.toFinite`,
after possibly setting up some `Fintype` and classical `Decidable` instances.
-/


section SetFiniteConstructors

/-- There are finitely many subsets of a given finite set -/
theorem Finite.finite_subsets {α : Type u} {a : Set α} (h : a.Finite) : { b | b ⊆ a }.Finite := by
  convert ((Finset.powerset h.toFinset).map Finset.coeEmb.1).finite_toSet
  ext s
  simpa [← @exists_finite_iff_finset α fun t => t ⊆ a ∧ t = s, Finite.subset_toFinset,
    ← and_assoc, Finset.coeEmb] using h.subset

protected theorem Finite.powerset {s : Set α} (h : s.Finite) : (𝒫 s).Finite :=
  h.finite_subsets

end SetFiniteConstructors

end Set
```
