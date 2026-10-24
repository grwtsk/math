# Complete source: GRWTSK.Algebra.Basic.Variant77a3da551a91b93b80a0cbfe6d5f38c7f4b7521e81349a405c5ca1ed30c40e36

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `08a94ca546b1b67ec27273366b31e6cb43312908` · SHA-256 `6000f33dc8e2335bf62de4c48b5b422c36cdc5253a129bbdebc922d2abb6d30e`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: Algebra
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Algebra.IsDiscrete.Variantf537122059662cb4b97943486638ab643bbac4ebf5ec532655312e289f8ba87d","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"f537122059662cb4b97943486638ab643bbac4ebf5ec532655312e289f8ba87d","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Algebra.RingsAndFields.SourceCorpus.IsDiscrete.Variantf537122059662cb4b97943486638ab643bbac4ebf5ec532655312e289f8ba87d","mathematical_subject":"Algebra.RingsAndFields","original_sha256":"f537122059662cb4b97943486638ab643bbac4ebf5ec532655312e289f8ba87d","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/October/30/ooi/spectral-proof-of-RH/lean/mathlib4/Mathlib/RingTheory/Valuation/Discrete/Basic.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2025 María Inés de Frutos-Fernández, Filippo A. E. Nuccio. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: María Inés de Frutos-Fernández, Filippo A. E. Nuccio
-/
import Mathlib.Algebra.GroupWithZero.Int
import Mathlib.RingTheory.Valuation.Basic

/-!
# Discrete Valuations

A valuation `v : A → ℤₘ₀` on a ring `A` is said to be a (normalized) discrete valuation if
`ofAdd (-1 : ℤ)` belongs to the image of `v`. Note that valuations in Mathlib are multiplicative;
if `a : A → ℤ ∪ {infty}` is the additive valuation associated to `v`, this is equivalent to asking
that `1 : ℤ` belongs to the image of `a`.

## Main Definitions
* `IsDiscrete`: We define a valuation to be discrete if it is `ℤₘ₀`-valued and `ofAdd (-1 : ℤ)`
  belongs to the image.

## TODO
* Define (pre)uniformizers for nontrivial `ℤₘ₀`-valued valuations.
* Relate discrete valuations and discrete valuation rings.

-/


namespace GRWTSK.Algebra.IsDiscrete.Variantf537122059662cb4b97943486638ab643bbac4ebf5ec532655312e289f8ba87d

namespace Valuation

open Function Multiplicative Set

variable {A : Type*} [Ring A]

/-- A valuation `v` on a ring `A` is (normalized) discrete if it is `ℤₘ₀`-valued and
  `ofAdd (-1 : ℤ)` belongs to the image. Note that the latter is equivalent to
  asking that `1 : ℤ` belongs to the image of the corresponding additive valuation. -/
class IsDiscrete (v : Valuation A ℤₘ₀) : Prop where
  one_mem_range : (↑(ofAdd (-1 : ℤ)) : ℤₘ₀) ∈ range v

variable {K : Type*} [Field K]

/-- A discrete valuation on a field `K` is surjective. -/
lemma IsDiscrete.surj (v : Valuation K ℤₘ₀) [hv : IsDiscrete v] :
    Surjective v := by
  intro c
  obtain ⟨π, hπ⟩ := hv
  refine WithZero.cases_on c ⟨0, map_zero _⟩ fun a ↦ ⟨π ^ (-a.toAdd), ?_⟩
  simp [hπ, ← WithZero.ofAdd_zpow]

/-- A `ℤₘ₀`-valued valuation on a field `K` is discrete if and only if it is surjective. -/
lemma isDiscrete_iff_surjective (v : Valuation K ℤₘ₀) :
    IsDiscrete v ↔ Surjective v :=
  ⟨fun _ ↦ IsDiscrete.surj v, fun hv ↦ ⟨hv _⟩⟩

end Valuation
```
