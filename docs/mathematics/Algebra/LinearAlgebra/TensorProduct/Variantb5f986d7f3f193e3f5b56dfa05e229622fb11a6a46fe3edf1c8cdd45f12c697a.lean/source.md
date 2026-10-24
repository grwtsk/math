# Complete source: GRWTSK.Algebra.LinearAlgebra.TensorProduct.Variantb5f986d7f3f193e3f5b56dfa05e229622fb11a6a46fe3edf1c8cdd45f12c697a

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `13f140d600ea138ff12a225b98d92d0c12d8424a` · SHA-256 `a804fcd546528d4d07c2be62983e0f188cfa4924bd19af6f2b0dc57779f99ec0`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: Algebra.LinearAlgebra
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Algebra.LinearAlgebra.AlgebraTensorProductIncludeLeftMapCenterLe.Variant5bac672d0e43a1e36cc55b2e06188e7a6011413eba6d808cea6b363586d1b2e6","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"5bac672d0e43a1e36cc55b2e06188e7a6011413eba6d808cea6b363586d1b2e6","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Algebra.LinearAlgebra.SourceCorpus.AlgebraTensorProductIncludeLeftMapCenterLe.Variant5bac672d0e43a1e36cc55b2e06188e7a6011413eba6d808cea6b363586d1b2e6","mathematical_subject":"Algebra.LinearAlgebra","original_sha256":"5bac672d0e43a1e36cc55b2e06188e7a6011413eba6d808cea6b363586d1b2e6","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/October/30/ooi/spectral-proof-of-RH/lean/mathlib4/Mathlib/Algebra/Central/TensorProduct.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2025 Jujian Zhang. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Jujian Zhang, Yunzhou Xie
-/

import Mathlib.Algebra.Central.Basic
import Mathlib.RingTheory.Flat.Basic
import Mathlib.LinearAlgebra.Basis.VectorSpace

/-!

# Lemmas about tensor products of central algebras

In this file we prove for algebras `B` and `C` over a field `K` that if `B ⊗[K] C` is a central
algebra and `B, C` nontrivial, then both `B` and `C` are central algebras.

## Main Results

- `Algebra.IsCentral.left_of_tensor_of_field`: If `B` `C` are `K`-algebras where `K` is a field,
  `C` is nontrivial and `B ⊗[K] C` is a central algebra over `K`, then `B` is a
  central algebra over `K`.
- `Algebra.IsCentral.right_of_tensor_of_field`: If `B` `C` are `K`-algebras where `K` is a field,
  `C` is nontrivial and `B ⊗[K] C` is a central algebra over `K`, then `B` is a
  central algebra over `K`.

## Tags
Central Algebras, Central Simple Algebras, Noncommutative Algebra
-/


namespace GRWTSK.Algebra.LinearAlgebra.AlgebraTensorProductIncludeLeftMapCenterLe.Variant5bac672d0e43a1e36cc55b2e06188e7a6011413eba6d808cea6b363586d1b2e6

universe u v

open TensorProduct

variable (K B C : Type*) [CommSemiring K] [Semiring B] [Semiring C] [Algebra K B] [Algebra K C]

lemma Algebra.TensorProduct.includeLeft_map_center_le :
    (Subalgebra.center K B).map includeLeft ≤ Subalgebra.center K (B ⊗[K] C) := by
  intro x hx
  simp only [Subalgebra.mem_map, Subalgebra.mem_center_iff] at hx ⊢
  obtain ⟨b, hb0, rfl⟩ := hx
  intro bc
  induction bc using TensorProduct.induction_on with
  | zero => simp
  | tmul b' c => simp [hb0]
  | add _ _ _ _ => simp_all [add_mul, mul_add]

lemma Algebra.TensorProduct.includeRight_map_center_le :
    (Subalgebra.center K C).map includeRight ≤ Subalgebra.center K (B ⊗[K] C) := fun x hx ↦ by
  simp only [Subalgebra.mem_map, Subalgebra.mem_center_iff] at hx ⊢
  obtain ⟨c, hc0, rfl⟩ := hx
  intro bc
  induction bc using TensorProduct.induction_on with
  | zero => simp
  | tmul b c' => simp [hc0]
  | add _ _ _ _ => simp_all [add_mul, mul_add]

namespace Algebra.IsCentral

open Algebra.TensorProduct in
lemma left_of_tensor (inj : Function.Injective (algebraMap K C)) [Module.Flat K B]
    [hbc : Algebra.IsCentral K (B ⊗[K] C)] : IsCentral K B where
  out := (Subalgebra.map_le.mp ((includeLeft_map_center_le K B C).trans hbc.1)).trans
    fun _ ⟨k, hk⟩ ↦ ⟨k, includeLeft_injective (S := K) inj hk⟩

lemma right_of_tensor (inj : Function.Injective (algebraMap K B)) [Module.Flat K C]
    [Algebra.IsCentral K (B ⊗[K] C)] : IsCentral K C :=
  have : IsCentral K (C ⊗[K] B) := IsCentral.of_algEquiv K _ _ <| Algebra.TensorProduct.comm _ _ _
  left_of_tensor K C B inj

/-- Let `B` and `C` be two algebras over a field `K`, if `B ⊗[K] C` is central and `C` is
  non-trivial, then `B` is central. -/
lemma left_of_tensor_of_field (K B C : Type*) [Field K] [Ring B] [Ring C] [Nontrivial C]
    [Algebra K B] [Algebra K C] [IsCentral K (B ⊗[K] C)] : IsCentral K B :=
  left_of_tensor K B C <| FaithfulSMul.algebraMap_injective K C

/-- Let `B` and `C` be two algebras over a field `K`, if `B ⊗[K] C` is central and `A` is
  non-trivial, then `B` is central. -/
lemma right_of_tensor_of_field (K B C : Type*) [Field K] [Ring B] [Ring C] [Nontrivial B]
    [Algebra K B] [Algebra K C] [IsCentral K (B ⊗[K] C)] : IsCentral K C :=
  right_of_tensor K B C <| FaithfulSMul.algebraMap_injective K B


end Algebra.IsCentral
```
