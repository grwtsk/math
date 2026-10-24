# Complete source: GRWTSK.Algebra.UniversalAlgebra.Star.Variant1a91d3f4ffcf5e3a3546626b05cb44faa9737b232ed397bf61051da652e73f05

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `088dcfbacbbdfaecacc9aedd1e0eca8d1a50bd17` · SHA-256 `500854cb724c2fbc0958dc020afc16159e89556123b7e25d93966413dfbd5b12`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: Algebra.UniversalAlgebra
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Algebra.UniversalAlgebra.AddSubmonoidClosureRangeMulSelf.Variant30f7ac55e12c191fd0fd1d5bba5225ae45fd1544b8e2fa2de1ce5b1a73bdcb9f","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"30f7ac55e12c191fd0fd1d5bba5225ae45fd1544b8e2fa2de1ce5b1a73bdcb9f","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Algebra.GeneralAlgebra.SourceCorpus.AddSubmonoidClosureRangeMulSelf.Variant30f7ac55e12c191fd0fd1d5bba5225ae45fd1544b8e2fa2de1ce5b1a73bdcb9f","mathematical_subject":"Algebra.GeneralAlgebra","original_sha256":"30f7ac55e12c191fd0fd1d5bba5225ae45fd1544b8e2fa2de1ce5b1a73bdcb9f","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/October/30/ooi/spectral-proof-of-RH/lean/mathlib4/Mathlib/Data/Rat/Star.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2023 Jireh Loreaux. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Jireh Loreaux, Yaël Dillies
-/
import Mathlib.Algebra.GroupWithZero.Commute
import Mathlib.Algebra.Order.Monoid.Submonoid
import Mathlib.Algebra.Order.Ring.Abs
import Mathlib.Algebra.Order.Star.Basic
import Mathlib.Data.NNRat.Order
import Mathlib.Tactic.FieldSimp

/-!
# Star ordered ring structures on `ℚ` and `ℚ≥0`

This file shows that `ℚ` and `ℚ≥0` are `StarOrderedRing`s. In particular, this means that every
nonnegative rational number is a sum of squares.
-/


namespace GRWTSK.Algebra.UniversalAlgebra.AddSubmonoidClosureRangeMulSelf.Variant30f7ac55e12c191fd0fd1d5bba5225ae45fd1544b8e2fa2de1ce5b1a73bdcb9f

open AddSubmonoid Set
open scoped NNRat

namespace NNRat

@[simp] lemma addSubmonoid_closure_range_pow {n : ℕ} (hn₀ : n ≠ 0) :
    closure (range fun x : ℚ≥0 ↦ x ^ n) = ⊤ := by
  refine (eq_top_iff' _).2 fun x ↦ ?_
  suffices x = (x.num * x.den ^ (n - 1)) • (x.den : ℚ≥0)⁻¹ ^ n by
    rw [this]
    exact nsmul_mem (subset_closure <| mem_range_self _) _
  rw [nsmul_eq_mul]
  push_cast
  rw [mul_assoc, pow_sub₀, pow_one, mul_right_comm, ← mul_pow, mul_inv_cancel₀, one_pow, one_mul,
    ← div_eq_mul_inv, num_div_den]
  all_goals simp [x.den_pos.ne', Nat.one_le_iff_ne_zero, *]

@[simp] lemma addSubmonoid_closure_range_mul_self : closure (range fun x : ℚ≥0 ↦ x * x) = ⊤ := by
  simpa only [sq] using addSubmonoid_closure_range_pow two_ne_zero

instance instStarOrderedRing : StarOrderedRing ℚ≥0 where
  le_iff a b := by simp [eq_comm, le_iff_exists_nonneg_add (a := a)]

end NNRat

namespace Rat

@[simp] lemma addSubmonoid_closure_range_pow {n : ℕ} (hn₀ : n ≠ 0) (hn : Even n) :
    closure (range fun x : ℚ ↦ x ^ n) = nonneg _ := by
  convert (AddMonoidHom.map_mclosure NNRat.coeHom <| range fun x ↦ x ^ n).symm
  · have (x : ℚ) : ∃ y : ℚ≥0, y ^ n = x ^ n := ⟨x.nnabs, by simp [hn.pow_abs]⟩
    simp [subset_antisymm_iff, range_subset_iff, this]
  · ext
    simp [NNRat.addSubmonoid_closure_range_pow hn₀, NNRat.exists]

@[simp]
lemma addSubmonoid_closure_range_mul_self : closure (range fun x : ℚ ↦ x * x) = nonneg _ := by
  simpa only [sq] using addSubmonoid_closure_range_pow two_ne_zero even_two

instance instStarOrderedRing : StarOrderedRing ℚ where
  le_iff a b := by simp [eq_comm, le_iff_exists_nonneg_add (a := a)]

end Rat
```
