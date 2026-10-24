# Complete source: GRWTSK.CombinatoricsAndDiscreteMathematics.Randomisation.Variantb6ac21a8f0f5e4e1016739c91a9a08c1f314bea2a56c25806ca42e946654c37e

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `928fc48362c2d46e1453d9a0bbfa71a42e6b273b` · SHA-256 `8da4cdcca00c6805d4aa24794ef850cb91394a1b96684739f15f9c83f4a48448`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: CombinatoricsAndDiscreteMathematics
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CombinatoricsAndDiscreteMathematics.AddDissociatedRandomisation.Variant528ed36a72e8cd41120851b99603e04d4397a8614db2e3229cbdffa69f0a49fa","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"528ed36a72e8cd41120851b99603e04d4397a8614db2e3229cbdffa69f0a49fa","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Combinatorics.FiniteCombinatorics.SourceCorpus.AddDissociatedRandomisation.Variant528ed36a72e8cd41120851b99603e04d4397a8614db2e3229cbdffa69f0a49fa","mathematical_subject":"Combinatorics.FiniteCombinatorics","original_sha256":"528ed36a72e8cd41120851b99603e04d4397a8614db2e3229cbdffa69f0a49fa","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/rh16-games-packets/external/replay/.lake/packages/mathlib/Mathlib/Combinatorics/Additive/Randomisation.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2023 Yaël Dillies. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Yaël Dillies
-/
module

public import Mathlib.Analysis.Fourier.FiniteAbelian.Orthogonality
public import Mathlib.Combinatorics.Additive.Dissociation

/-!
# Randomising by a function of dissociated support

This file proves that a function from a finite abelian group can be randomised by a function of
dissociated support.

Precisely, for `G` a finite abelian group and two functions `c : AddChar G ℂ → ℝ` and
`d : AddChar G ℂ → ℝ` such that `{ψ | d ψ ≠ 0}` is dissociated, the product of the `c ψ` over `ψ` is
the same as the average over `a` of the product of the `c ψ + Re (d ψ * ψ a)`.
-/


namespace GRWTSK.CombinatoricsAndDiscreteMathematics.AddDissociatedRandomisation.Variant528ed36a72e8cd41120851b99603e04d4397a8614db2e3229cbdffa69f0a49fa

public section

open Finset
open scoped BigOperators ComplexConjugate

variable {G : Type*} [Fintype G] [AddCommGroup G]

/-- One can randomise by a function of dissociated support. -/
lemma AddDissociated.randomisation (c : AddChar G ℂ → ℝ) (d : AddChar G ℂ → ℂ)
    (hcd : AddDissociated {ψ | d ψ ≠ 0}) : 𝔼 a, ∏ ψ, (c ψ + (d ψ * ψ a).re) = ∏ ψ, c ψ := by
  refine Complex.ofReal_injective ?_
  push_cast
  calc
    _ = ∑ t, (𝔼 a, ∏ ψ ∈ t, ((d ψ * ψ a) + conj (d ψ * ψ a)) / 2) * ∏ ψ ∈ tᶜ, (c ψ : ℂ) := by
        simp_rw [expect_mul, ← expect_sum_comm, ← Fintype.prod_add, add_comm,
          Complex.re_eq_add_conj]
    _ = (𝔼 a, ∏ ψ ∈ ∅, ((d ψ * ψ a) + conj (d ψ * ψ a)) / 2) * ∏ ψ ∈ ∅ᶜ, (c ψ : ℂ) :=
        Fintype.sum_eq_single ∅ fun t ht ↦ mul_eq_zero_of_left ?_ _
    _ = ∏ ψ, (c ψ : ℂ) := by simp
  simp only [map_mul, prod_div_distrib, prod_add, prod_const, ← expect_div, expect_sum_comm,
    div_eq_zero_iff, pow_eq_zero_iff', OfNat.ofNat_ne_zero, ne_eq, card_eq_zero,
    false_and, or_false]
  refine sum_eq_zero fun u _ ↦ ?_
  calc
    𝔼 a, (∏ ψ ∈ u, d ψ * ψ a) * ∏ ψ ∈ t \ u, conj (d ψ) * conj (ψ a)
      = ((∏ ψ ∈ u, d ψ) * ∏ ψ ∈ t \ u, conj (d ψ)) * 𝔼 a, (∑ ψ ∈ u, ψ - ∑ ψ ∈ t \ u, ψ) a := by
        simp_rw [mul_expect, AddChar.sub_apply, AddChar.sum_apply, mul_mul_mul_comm,
          ← prod_mul_distrib, AddChar.map_neg_eq_conj]
    _ = 0 := ?_
  rw [mul_eq_zero, AddChar.expect_eq_zero_iff_ne_zero, sub_ne_zero, or_iff_not_imp_left, ← Ne,
    mul_ne_zero_iff, prod_ne_zero_iff, prod_ne_zero_iff]
  exact fun h ↦ hcd.ne h.1 (by simpa only [map_ne_zero] using! h.2)
    (sdiff_ne_right.2 <| .inl ht).symm
```
