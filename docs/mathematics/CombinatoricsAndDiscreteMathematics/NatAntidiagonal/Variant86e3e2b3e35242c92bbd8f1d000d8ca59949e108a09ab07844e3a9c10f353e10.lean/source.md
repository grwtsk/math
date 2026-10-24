# Complete source: GRWTSK.CombinatoricsAndDiscreteMathematics.NatAntidiagonal.Variant86e3e2b3e35242c92bbd8f1d000d8ca59949e108a09ab07844e3a9c10f353e10

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `45c78a936e23d773afd4e2362839d1cf5476a814` · SHA-256 `ca5783f140d0ced2bec45accca45b85f6c850a828d6fe32f3d99efe7dfc10625`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: CombinatoricsAndDiscreteMathematics
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CombinatoricsAndDiscreteMathematics.ProdAntidiagonalSucc.Variantea4e66466923a84957f293745b7207a1f6fa838606d2f2a980f4ef51fce90044","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"ea4e66466923a84957f293745b7207a1f6fa838606d2f2a980f4ef51fce90044","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Combinatorics.FiniteCombinatorics.SourceCorpus.ProdAntidiagonalSucc.Variantea4e66466923a84957f293745b7207a1f6fa838606d2f2a980f4ef51fce90044","mathematical_subject":"Combinatorics.FiniteCombinatorics","original_sha256":"ea4e66466923a84957f293745b7207a1f6fa838606d2f2a980f4ef51fce90044","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/rh16-games-packets/external/replay/.lake/packages/mathlib/Mathlib/Algebra/BigOperators/NatAntidiagonal.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2020 Aaron Anderson. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Aaron Anderson
-/
module

public import Mathlib.Data.Finset.NatAntidiagonal
public import Mathlib.Algebra.BigOperators.Group.Finset.Basic

/-!
# Big operators for `NatAntidiagonal`

This file contains theorems relevant to big operators over `Finset.NatAntidiagonal`.
-/


namespace GRWTSK.CombinatoricsAndDiscreteMathematics.ProdAntidiagonalSucc.Variantea4e66466923a84957f293745b7207a1f6fa838606d2f2a980f4ef51fce90044

public section

variable {M : Type*} [CommMonoid M]

namespace Finset

open HasAntidiagonal

namespace Nat

@[to_additive]
theorem prod_antidiagonal_succ {n : ℕ} {f : ℕ × ℕ → M} :
    (∏ p ∈ antidiagonal (n + 1), f p)
      = f (0, n + 1) * ∏ p ∈ antidiagonal n, f (p.1 + 1, p.2) := by
  rw [antidiagonal_succ, prod_cons, prod_map]; rfl

@[to_additive]
theorem prod_antidiagonal_swap {n : ℕ} {f : ℕ × ℕ → M} :
    ∏ p ∈ antidiagonal n, f p.swap = ∏ p ∈ antidiagonal n, f p := by
  conv_lhs => rw [← map_swap_antidiagonal, Finset.prod_map]
  rfl

@[to_additive]
theorem prod_antidiagonal_succ' {n : ℕ} {f : ℕ × ℕ → M} : (∏ p ∈ antidiagonal (n + 1), f p) =
    f (n + 1, 0) * ∏ p ∈ antidiagonal n, f (p.1, p.2 + 1) := by
  rw [← prod_antidiagonal_swap, prod_antidiagonal_succ, ← prod_antidiagonal_swap]
  rfl

@[to_additive]
theorem prod_antidiagonal_subst {n : ℕ} {f : ℕ × ℕ → ℕ → M} :
    ∏ p ∈ antidiagonal n, f p n = ∏ p ∈ antidiagonal n, f p (p.1 + p.2) :=
  prod_congr rfl fun p hp ↦ by rw [mem_antidiagonal.mp hp]

@[to_additive]
theorem prod_antidiagonal_eq_prod_range_succ_mk {M : Type*} [CommMonoid M] (f : ℕ × ℕ → M)
    (n : ℕ) : ∏ ij ∈ antidiagonal n, f ij = ∏ k ∈ range n.succ, f (k, n - k) :=
  Finset.prod_map (range n.succ) ⟨fun i ↦ (i, n - i), fun _ _ h ↦ (Prod.mk.inj h).1⟩ f

/-- This lemma matches more generally than `Finset.Nat.prod_antidiagonal_eq_prod_range_succ_mk` when
using `rw ← `. -/
@[to_additive /-- This lemma matches more generally than
`Finset.Nat.sum_antidiagonal_eq_sum_range_succ_mk` when using `rw ← `. -/]
theorem prod_antidiagonal_eq_prod_range_succ {M : Type*} [CommMonoid M] (f : ℕ → ℕ → M) (n : ℕ) :
    ∏ ij ∈ antidiagonal n, f ij.1 ij.2 = ∏ k ∈ range n.succ, f k (n - k) :=
  prod_antidiagonal_eq_prod_range_succ_mk _ _
end Nat

end Finset
```
