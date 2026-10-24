# Complete source: GRWTSK.CombinatoricsAndDiscreteMathematics.Antidiagonal.Varianta88b065a313225da8c8d571feb2adcc3262c7c0477fb1d360780b6c3ff6f7307

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `f750c6a807d68df6d142af86e0c7d5864223f3e3` · SHA-256 `77c0df06b4256583d524842ac49a026bfb5c206c94beb941352bbd00c3adac13`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: CombinatoricsAndDiscreteMathematics
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CombinatoricsAndDiscreteMathematics.AntidiagonalPrime.Variant580ab687dcdd9fdfe7780fc4b2c56b61454d0307d4c99dbdbf0516af87652265","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"580ab687dcdd9fdfe7780fc4b2c56b61454d0307d4c99dbdbf0516af87652265","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Combinatorics.FiniteCombinatorics.SourceCorpus.AntidiagonalPrime.Variant580ab687dcdd9fdfe7780fc4b2c56b61454d0307d4c99dbdbf0516af87652265","mathematical_subject":"Combinatorics.FiniteCombinatorics","original_sha256":"580ab687dcdd9fdfe7780fc4b2c56b61454d0307d4c99dbdbf0516af87652265","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/October/30/ooi/spectral-proof-of-RH/lean/mathlib4/Mathlib/Data/Finsupp/Antidiagonal.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2017 Johannes Hölzl. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Johannes Hölzl, Yury Kudryashov
-/
import Mathlib.Data.Finset.NatAntidiagonal
import Mathlib.Data.Finsupp.Multiset
import Mathlib.Data.Multiset.Antidiagonal

/-!
# The `Finsupp` counterpart of `Multiset.antidiagonal`.

The antidiagonal of `s : α →₀ ℕ` consists of
all pairs `(t₁, t₂) : (α →₀ ℕ) × (α →₀ ℕ)` such that `t₁ + t₂ = s`.
-/


namespace GRWTSK.CombinatoricsAndDiscreteMathematics.AntidiagonalPrime.Variant580ab687dcdd9fdfe7780fc4b2c56b61454d0307d4c99dbdbf0516af87652265

namespace Finsupp

open Finset

universe u

variable {α : Type u} [DecidableEq α]

/-- The `Finsupp` counterpart of `Multiset.antidiagonal`: the antidiagonal of
`s : α →₀ ℕ` consists of all pairs `(t₁, t₂) : (α →₀ ℕ) × (α →₀ ℕ)` such that `t₁ + t₂ = s`.
The finitely supported function `antidiagonal s` is equal to the multiplicities of these pairs. -/
def antidiagonal' (f : α →₀ ℕ) : (α →₀ ℕ) × (α →₀ ℕ) →₀ ℕ :=
  Multiset.toFinsupp
    ((Finsupp.toMultiset f).antidiagonal.map (Prod.map Multiset.toFinsupp Multiset.toFinsupp))

/-- The antidiagonal of `s : α →₀ ℕ` is the finset of all pairs `(t₁, t₂) : (α →₀ ℕ) × (α →₀ ℕ)`
such that `t₁ + t₂ = s`. -/
instance instHasAntidiagonal : HasAntidiagonal (α →₀ ℕ) where
  antidiagonal f := f.antidiagonal'.support
  mem_antidiagonal {f} {p} := by
    rcases p with ⟨p₁, p₂⟩
    simp [antidiagonal', ← and_assoc, Multiset.toFinsupp_eq_iff,
    ← Multiset.toFinsupp_eq_iff (f := f)]

@[simp]
theorem antidiagonal_zero : antidiagonal (0 : α →₀ ℕ) = singleton (0, 0) := rfl

@[to_additive]
theorem prod_antidiagonal_swap {M : Type*} [CommMonoid M] (n : α →₀ ℕ)
    (f : (α →₀ ℕ) → (α →₀ ℕ) → M) :
    ∏ p ∈ antidiagonal n, f p.1 p.2 = ∏ p ∈ antidiagonal n, f p.2 p.1 :=
  prod_equiv (Equiv.prodComm _ _) (by simp [add_comm]) (by simp)

@[simp]
theorem antidiagonal_single (a : α) (n : ℕ) :
    antidiagonal (single a n) = (antidiagonal n).map
      (Function.Embedding.prodMap ⟨_, single_injective a⟩ ⟨_, single_injective a⟩) := by
  ext ⟨x, y⟩
  simp only [mem_antidiagonal, mem_map, mem_antidiagonal, Function.Embedding.coe_prodMap,
    Function.Embedding.coeFn_mk, Prod.map_apply, Prod.mk.injEq, Prod.exists]
  constructor
  · intro h
    refine ⟨x a, y a, DFunLike.congr_fun h a |>.trans single_eq_same, ?_⟩
    simp_rw [DFunLike.ext_iff, ← forall_and]
    intro i
    replace h := DFunLike.congr_fun h i
    simp_rw [single_apply, Finsupp.add_apply] at h ⊢
    obtain rfl | hai := Decidable.eq_or_ne a i
    · exact ⟨if_pos rfl, if_pos rfl⟩
    · simp_rw [if_neg hai, add_eq_zero] at h ⊢
      exact h.imp Eq.symm Eq.symm
  · rintro ⟨a, b, rfl, rfl, rfl⟩
    exact (single_add _ _ _).symm

end Finsupp
```
