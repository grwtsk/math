# Complete source: GRWTSK.Algebra.UniversalAlgebra.Star.Variantc8460d770853495094271b68a0db28f0d637989362e3339c8f61171fab64ae48

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `814867ed44a23634381ded3c04f086b7d6eb0b24` · SHA-256 `6b53fc6c1eebc3964f4714c352a0b144526573f7bd62f10b2c28dfe7d1a97b59`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: Algebra.UniversalAlgebra
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Algebra.UniversalAlgebra.MulLeMulOfNonnegLeft.Variant5affaacf66713b671df87fe502c3796c52c2c811ebe646bf42f3e265abc95f52","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"5affaacf66713b671df87fe502c3796c52c2c811ebe646bf42f3e265abc95f52","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Algebra.GeneralAlgebra.SourceCorpus.MulLeMulOfNonnegLeft.Variant5affaacf66713b671df87fe502c3796c52c2c811ebe646bf42f3e265abc95f52","mathematical_subject":"Algebra.GeneralAlgebra","original_sha256":"5affaacf66713b671df87fe502c3796c52c2c811ebe646bf42f3e265abc95f52","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/October/30/ooi/spectral-proof-of-RH/lean/mathlib4/Mathlib/Algebra/Order/Ring/Star.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2023 Jireh Loreaux. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Jireh Loreaux
-/
import Mathlib.Algebra.Order.Ring.Defs
import Mathlib.Algebra.Order.Star.Basic

/-!
# Commutative star-ordered rings are ordered rings

A noncommutative star-ordered ring is generally not an ordered ring. Indeed, in a star-ordered
ring, nonnegative elements are self-adjoint, but the product of self-adjoint elements is
self-adjoint if and only if they commute. Therefore, a necessary condition for a star-ordered ring
to be an ordered ring is that all nonnegative elements commute.  Consequently, if a star-ordered
ring is spanned by it nonnegative elements (as is the case for C⋆-algebras) and it is also an
ordered ring, then it is commutative.

In this file we prove the converse: a *commutative* star-ordered ring is an ordered ring.
-/


namespace GRWTSK.Algebra.UniversalAlgebra.MulLeMulOfNonnegLeft.Variant5affaacf66713b671df87fe502c3796c52c2c811ebe646bf42f3e265abc95f52

namespace StarOrderedRing

/- This example shows that nonnegative elements in a ordered semiring which is also star-ordered
must commute. We provide this only as an example as opposed to a lemma because we never expect the
type class assumptions to be satisfied without a `CommSemiring` instance already in scope; not that
it is impossible, only that it shouldn't occur in practice. -/
example {R : Type*} [Semiring R] [PartialOrder R] [IsOrderedRing R]
    [StarRing R] [StarOrderedRing R] {x y : R} (hx : 0 ≤ x)
    (hy : 0 ≤ y) : x * y = y * x := by
  rw [← IsSelfAdjoint.of_nonneg (mul_nonneg hy hx), star_mul, IsSelfAdjoint.of_nonneg hx,
    IsSelfAdjoint.of_nonneg hy]

/- This will be implied by the instance below, we only prove it to avoid duplicating the
argument in the instance below for `mul_le_mul_of_nonneg_right`. -/
private lemma mul_le_mul_of_nonneg_left {R : Type*} [NonUnitalCommSemiring R] [PartialOrder R]
    [StarRing R] [StarOrderedRing R] {a b c : R} (hab : a ≤ b) (hc : 0 ≤ c) : c * a ≤ c * b := by
  rw [StarOrderedRing.nonneg_iff] at hc
  induction hc using AddSubmonoid.closure_induction with
  | mem _ h =>
    obtain ⟨x, rfl⟩ := h
    simp_rw [mul_assoc, mul_comm x, ← mul_assoc]
    exact conjugate_le_conjugate hab x
  | one => simp
  | mul x hx y hy =>
    simp only [← nonneg_iff, add_mul] at hx hy ⊢
    apply add_le_add <;> aesop

/-- A commutative star-ordered semiring is an ordered semiring. -/
instance toIsOrderedRing (R : Type*) [CommSemiring R] [PartialOrder R]
    [StarRing R] [StarOrderedRing R] : IsOrderedRing R where
  add_le_add_left _ _ := add_le_add_left
  zero_le_one := zero_le_one
  mul_le_mul_of_nonneg_left _ _ _ := mul_le_mul_of_nonneg_left
  mul_le_mul_of_nonneg_right a b c := by simpa only [mul_comm _ c] using mul_le_mul_of_nonneg_left

end StarOrderedRing
```
