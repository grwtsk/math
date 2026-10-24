# Complete source: GRWTSK.Algebra.LinearAlgebra.FiniteSpan.Variant3dfa267731a11f360ffa5697454b73ec779b4d86c12ae3afb564784f57bebd15

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `d85c5e3c67a8fd576560b85e1ae7eaf00b5d0587` · SHA-256 `d1075e4c95746e5ca8f46b607a30d8ab683c4ba5b07060cf7cbe1889cb48d8e9`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: Algebra.LinearAlgebra
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Algebra.LinearAlgebra.LinearEquivIsOfFinOrderOfFiniteOfSpanEqTopOfMapsTo.Variantc163f6d4f3f899bce5055d2760fcecf16ff897f0a2d567c7b72c9462163a9106","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"c163f6d4f3f899bce5055d2760fcecf16ff897f0a2d567c7b72c9462163a9106","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Algebra.LinearAlgebra.SourceCorpus.LinearEquivIsOfFinOrderOfFiniteOfSpanEqTopOfMapsTo.Variantc163f6d4f3f899bce5055d2760fcecf16ff897f0a2d567c7b72c9462163a9106","mathematical_subject":"Algebra.LinearAlgebra","original_sha256":"c163f6d4f3f899bce5055d2760fcecf16ff897f0a2d567c7b72c9462163a9106","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/October/30/ooi/spectral-proof-of-RH/lean/mathlib4/Mathlib/LinearAlgebra/FiniteSpan.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2023 Oliver Nash. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Oliver Nash, Deepro Choudhury
-/
import Mathlib.GroupTheory.OrderOfElement
import Mathlib.LinearAlgebra.Span.Defs
import Mathlib.Algebra.Module.Equiv.Basic

/-!

# Additional results about finite spanning sets in linear algebra

-/


namespace GRWTSK.Algebra.LinearAlgebra.LinearEquivIsOfFinOrderOfFiniteOfSpanEqTopOfMapsTo.Variantc163f6d4f3f899bce5055d2760fcecf16ff897f0a2d567c7b72c9462163a9106

open Set Function
open Submodule (span)

/-- A linear equivalence which preserves a finite spanning set must have finite order. -/
lemma LinearEquiv.isOfFinOrder_of_finite_of_span_eq_top_of_mapsTo
    {R M : Type*} [Semiring R] [AddCommMonoid M] [Module R M]
    {Φ : Set M} (hΦ₁ : Φ.Finite) (hΦ₂ : span R Φ = ⊤) {e : M ≃ₗ[R] M} (he : MapsTo e Φ Φ) :
    IsOfFinOrder e := by
  replace he : BijOn e Φ Φ := (hΦ₁.injOn_iff_bijOn_of_mapsTo he).mp e.injective.injOn
  let e' := he.equiv
  have : Finite Φ := finite_coe_iff.mpr hΦ₁
  obtain ⟨k, hk₀, hk⟩ := isOfFinOrder_of_finite e'
  refine ⟨k, hk₀, ?_⟩
  ext m
  have hm : m ∈ span R Φ := hΦ₂ ▸ Submodule.mem_top
  simp only [mul_left_iterate, mul_one, LinearEquiv.coe_one, id_eq]
  refine Submodule.span_induction (fun x hx ↦ ?_) (by simp)
    (fun x y _ _ hx hy ↦ by simp [map_add, hx, hy]) (fun t x _ hx ↦ by simp [map_smul, hx]) hm
  rw [LinearEquiv.pow_apply, ← he.1.coe_iterate_restrict ⟨x, hx⟩ k]
  replace hk : (e') ^ k = 1 := by simpa [IsPeriodicPt, IsFixedPt] using hk
  replace hk := Equiv.congr_fun hk ⟨x, hx⟩
  rwa [Equiv.Perm.coe_one, id_eq, Subtype.ext_iff, Equiv.Perm.coe_pow] at hk
```
