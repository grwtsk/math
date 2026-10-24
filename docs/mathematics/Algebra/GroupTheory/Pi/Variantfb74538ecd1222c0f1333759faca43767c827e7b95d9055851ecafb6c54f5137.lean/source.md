# Complete source: GRWTSK.Algebra.GroupTheory.Pi.Variantfb74538ecd1222c0f1333759faca43767c827e7b95d9055851ecafb6c54f5137

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `bf3fecd91ecb8ed987d69ca9367048c84259c67b` · SHA-256 `489008143faebcaaf00dd692a3f09026e5a1f348f6107a674b81b22b91f13ead`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: Algebra.GroupTheory
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Algebra.GroupTheory.RootMulHomSingle.Variantde359493f3e9d636fd5fb80535aec024809039b89a366aad7b4b77d101ac59f6","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"de359493f3e9d636fd5fb80535aec024809039b89a366aad7b4b77d101ac59f6","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Algebra.Groups.SourceCorpus.RootMulHomSingle.Variantde359493f3e9d636fd5fb80535aec024809039b89a366aad7b4b77d101ac59f6","mathematical_subject":"Algebra.Groups","original_sha256":"de359493f3e9d636fd5fb80535aec024809039b89a366aad7b4b77d101ac59f6","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/October/30/ooi/spectral-proof-of-RH/lean/mathlib4/Mathlib/Algebra/GroupWithZero/Pi.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2020 Eric Wieser. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Eric Wieser
-/
import Mathlib.Algebra.GroupWithZero.Defs
import Mathlib.Algebra.Group.Hom.Defs
import Mathlib.Algebra.Group.Pi.Basic

/-!
# Pi instances for groups with zero

This file defines monoid with zero, group with zero, and related structure instances for pi types.
-/


namespace GRWTSK.Algebra.GroupTheory.RootMulHomSingle.Variantde359493f3e9d636fd5fb80535aec024809039b89a366aad7b4b77d101ac59f6

assert_not_exists DenselyOrdered Ring

open Function Pi

variable {ι : Type*} {α : ι → Type*}

namespace Pi

section MulZeroClass
variable [∀ i, MulZeroClass (α i)] [DecidableEq ι] {i : ι} {f : ∀ i, α i}

instance mulZeroClass : MulZeroClass (∀ i, α i) where
  zero_mul := by intros; ext; exact zero_mul _
  mul_zero := by intros; ext; exact mul_zero _

/-- The multiplicative homomorphism including a single `MulZeroClass`
into a dependent family of `MulZeroClass`es, as functions supported at a point.

This is the `MulHom` version of `Pi.single`. -/
@[simps]
def _root_.GRWTSK.Algebra.GroupTheory.RootMulHomSingle.Variantde359493f3e9d636fd5fb80535aec024809039b89a366aad7b4b77d101ac59f6.MulHom.single (i : ι) : α i →ₙ* ∀ i, α i where
  toFun := Pi.single i
  map_mul' := Pi.single_op₂ (fun _ ↦ (· * ·)) (fun _ ↦ zero_mul _) _

lemma single_mul (i : ι) (x y : α i) : single i (x * y) = single i x * single i y :=
  (MulHom.single _).map_mul _ _

lemma single_mul_left_apply (i j : ι) (a : α i) (f : ∀ i, α i) :
    single i (a * f i) j = single i a j * f j :=
  (apply_single (fun i ↦ (· * f i)) (fun _ ↦ zero_mul _) _ _ _).symm

lemma single_mul_right_apply (i j : ι) (f : ∀ i, α i) (a : α i) :
    single i (f i * a) j = f j * single i a j :=
  (apply_single (f · * ·) (fun _ ↦ mul_zero _) _ _ _).symm

lemma single_mul_left (a : α i) : single i (a * f i) = single i a * f :=
  funext fun _ ↦ single_mul_left_apply _ _ _ _

lemma single_mul_right (a : α i) : single i (f i * a) = f * single i a :=
  funext fun _ ↦ single_mul_right_apply _ _ _ _

end MulZeroClass

instance mulZeroOneClass [∀ i, MulZeroOneClass (α i)] : MulZeroOneClass (∀ i, α i) where
  __ := mulZeroClass
  __ := mulOneClass

instance monoidWithZero [∀ i, MonoidWithZero (α i)] : MonoidWithZero (∀ i, α i) where
  __ := monoid
  __ := mulZeroClass

instance commMonoidWithZero [∀ i, CommMonoidWithZero (α i)] : CommMonoidWithZero (∀ i, α i) where
  __ := monoidWithZero
  __ := commMonoid

instance semigroupWithZero [∀ i, SemigroupWithZero (α i)] : SemigroupWithZero (∀ i, α i) where
  __ := semigroup
  __ := mulZeroClass

end Pi
```
