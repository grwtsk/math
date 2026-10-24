# Complete source: GRWTSK.Algebra.LinearAlgebra.QuadraticForm.Variante8b0ed10b49d4e54c10b58f6d07b09f7c878e15100b9ad6a22e988962fd37a14

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `8d8031137bb0d8befafbb35f9d1a0c3a3481a1c1` · SHA-256 `46c7f8ea0a0c0d3873a65e5878147197dad7bcecdf77b504f3a5608be44c3920`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: Algebra.LinearAlgebra
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Algebra.LinearAlgebra.B.Variantab98d29483a7d7023118c909ba25a98e4ad97dcacb8d8a483f92d5044991fa9e","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"ab98d29483a7d7023118c909ba25a98e4ad97dcacb8d8a483f92d5044991fa9e","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Algebra.LinearAlgebra.SourceCorpus.B.Variantab98d29483a7d7023118c909ba25a98e4ad97dcacb8d8a483f92d5044991fa9e","mathematical_subject":"Algebra.LinearAlgebra","original_sha256":"ab98d29483a7d7023118c909ba25a98e4ad97dcacb8d8a483f92d5044991fa9e","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/October/30/ooi/spectral-proof-of-RH/lean/mathlib4/Counterexamples/QuadraticForm.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2023 Eric Wieser. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Eric Wieser
-/
import Mathlib.LinearAlgebra.QuadraticForm.Basic

/-!
# `QuadraticForm R M` and `Subtype LinearMap.IsSymm` are distinct notions in characteristic 2

The main result of this file is `LinearMap.BilinForm.not_injOn_toQuadraticForm_isSymm`.

The counterexample we use is $B (x, y) (x', y') ↦ xy' + x'y$ where `x y x' y' : ZMod 2`.
-/



namespace GRWTSK.Algebra.LinearAlgebra.B.Variantab98d29483a7d7023118c909ba25a98e4ad97dcacb8d8a483f92d5044991fa9e

variable (F : Type*) [CommRing F]

open LinearMap
open LinearMap.BilinForm
open LinearMap (BilinForm)
open LinearMap.BilinMap

namespace Counterexample


/-- The bilinear form we will use as a counterexample, over some field `F` of characteristic two. -/
def B : BilinForm F (F × F) :=
  (mul F F).compl₁₂ (fst _ _ _) (snd _ _ _) + (mul F F).compl₁₂ (snd _ _ _) (fst _ _ _)

@[simp]
theorem B_apply (x y : F × F) : B F x y = x.1 * y.2 + x.2 * y.1 :=
  rfl

theorem isSymm_B : (B F).IsSymm := fun x y => by simp [mul_comm, add_comm]

theorem isAlt_B [CharP F 2] : (B F).IsAlt := fun x => by
  simp [mul_comm, CharTwo.add_self_eq_zero (x.1 * x.2)]

theorem B_ne_zero [Nontrivial F] : B F ≠ 0 := fun h => by
  simpa using LinearMap.congr_fun₂ h (1, 0) (1, 1)

/-- `LinearMap.BilinForm.toQuadraticForm` is not injective on symmetric bilinear forms.

This disproves a weaker version of `QuadraticForm.associated_left_inverse`.
-/
theorem LinearMap.BilinForm.not_injOn_toQuadraticForm_isSymm.{u} :
    ¬∀ {R M : Type u} [CommSemiring R] [AddCommMonoid M], ∀ [Module R M],
      Set.InjOn (toQuadraticMap : BilinForm R M → QuadraticForm R M) {B | B.IsSymm} := by
  intro h
  let F := ULift.{u} (ZMod 2)
  apply B_ne_zero F
  apply h (isSymm_B F) isSymm_zero
  rw [toQuadraticMap_zero, toQuadraticMap_eq_zero]
  exact isAlt_B F

end Counterexample
```
