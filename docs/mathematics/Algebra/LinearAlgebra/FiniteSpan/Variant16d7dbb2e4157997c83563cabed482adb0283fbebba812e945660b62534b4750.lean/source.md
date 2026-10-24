# Complete source: GRWTSK.Algebra.LinearAlgebra.FiniteSpan.Variant16d7dbb2e4157997c83563cabed482adb0283fbebba812e945660b62534b4750

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `cbf314e238852f6700c984ecfca6a195e6d84986` · SHA-256 `c15942c248dbc8c0a9d3aa91ca6e2492ece559224e605c3f97b2af3c6f6792ef`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: Algebra.LinearAlgebra
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Algebra.LinearAlgebra.LinearEquivIsOfFinOrderOfFiniteOfSpanEqTopOfMapsTo.Variant4021a67f2b43e363765edba790cdf23b84600fb492516a2e7f4c40408374dbce","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"4021a67f2b43e363765edba790cdf23b84600fb492516a2e7f4c40408374dbce","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Algebra.LinearAlgebra.SourceCorpus.LinearEquivIsOfFinOrderOfFiniteOfSpanEqTopOfMapsTo.Variant4021a67f2b43e363765edba790cdf23b84600fb492516a2e7f4c40408374dbce","mathematical_subject":"Algebra.LinearAlgebra","original_sha256":"4021a67f2b43e363765edba790cdf23b84600fb492516a2e7f4c40408374dbce","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/rh16-games-packets/external/replay/.lake/packages/mathlib/Mathlib/LinearAlgebra/FiniteSpan.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2023 Oliver Nash. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Oliver Nash, Deepro Choudhury
-/
module

public import Mathlib.GroupTheory.OrderOfElement
public import Mathlib.LinearAlgebra.Span.Defs
public import Mathlib.Algebra.Module.Equiv.Basic

/-!

# Additional results about finite spanning sets in linear algebra

-/


namespace GRWTSK.Algebra.LinearAlgebra.LinearEquivIsOfFinOrderOfFiniteOfSpanEqTopOfMapsTo.Variant4021a67f2b43e363765edba790cdf23b84600fb492516a2e7f4c40408374dbce

public section

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
    (fun x y _ _ hx hy ↦ by simp [map_add, hx, hy]) (fun t x _ hx ↦ by simp [hx]) hm
  rw [LinearEquiv.pow_apply, ← he.1.coe_iterate_restrict ⟨x, hx⟩ k]
  replace hk : (e') ^ k = 1 := by simpa [IsPeriodicPt, IsFixedPt] using hk
  replace hk := Equiv.congr_fun hk ⟨x, hx⟩
  rwa [Equiv.Perm.coe_one, id_eq, Subtype.ext_iff, Equiv.Perm.coe_pow] at hk
```
