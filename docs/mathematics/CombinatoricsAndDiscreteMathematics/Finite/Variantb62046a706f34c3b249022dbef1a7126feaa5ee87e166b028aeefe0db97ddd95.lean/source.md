# Complete source: GRWTSK.CombinatoricsAndDiscreteMathematics.Finite.Variantb62046a706f34c3b249022dbef1a7126feaa5ee87e166b028aeefe0db97ddd95

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `b2f8ac60bebbf286ac4a7674714dd1fd750ce9bc` · SHA-256 `6d6993702adc1c87b26948dc2f5bfb07335d3d2da83e0b797e48797336165c6f`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: CombinatoricsAndDiscreteMathematics
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CombinatoricsAndDiscreteMathematics.FintypeSubtypeDvd.Variant1756b7f9833d6ec01841dde722dee959b1be1c00a4ca09bb3db8c3c0c4e9b306","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"1756b7f9833d6ec01841dde722dee959b1be1c00a4ca09bb3db8c3c0c4e9b306","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Combinatorics.FiniteCombinatorics.SourceCorpus.FintypeSubtypeDvd.Variant1756b7f9833d6ec01841dde722dee959b1be1c00a4ca09bb3db8c3c0c4e9b306","mathematical_subject":"Combinatorics.FiniteCombinatorics","original_sha256":"1756b7f9833d6ec01841dde722dee959b1be1c00a4ca09bb3db8c3c0c4e9b306","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/October/30/ooi/spectral-proof-of-RH/lean/mathlib4/Mathlib/RingTheory/UniqueFactorizationDomain/Finite.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2018 Johannes Hölzl. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Johannes Hölzl, Jens Wagemaker, Aaron Anderson
-/
import Mathlib.RingTheory.UniqueFactorizationDomain.NormalizedFactors

/-!
# Finiteness of divisors

## Main results
* `UniqueFactorizationMonoid.fintypeSubtypeDvd`: elements of a UFM with finitely many units have
  finitely many divisors.
-/


namespace GRWTSK.CombinatoricsAndDiscreteMathematics.FintypeSubtypeDvd.Variant1756b7f9833d6ec01841dde722dee959b1be1c00a4ca09bb3db8c3c0c4e9b306

assert_not_exists Field

variable {α : Type*}

local infixl:50 " ~ᵤ " => Associated

namespace UniqueFactorizationMonoid

/-- If `y` is a nonzero element of a unique factorization monoid with finitely
many units (e.g. `ℤ`, `Ideal (ring_of_integers K)`), it has finitely many divisors. -/
noncomputable def fintypeSubtypeDvd {M : Type*} [CancelCommMonoidWithZero M]
    [UniqueFactorizationMonoid M] [Fintype Mˣ] (y : M) (hy : y ≠ 0) : Fintype { x // x ∣ y } := by
  haveI : Nontrivial M := ⟨⟨y, 0, hy⟩⟩
  haveI : NormalizationMonoid M := UniqueFactorizationMonoid.normalizationMonoid
  haveI := Classical.decEq M
  haveI := Classical.decEq (Associates M)
  -- We'll show `fun (u : Mˣ) (f ⊆ factors y) ↦ u * Π f` is injective
  -- and has image exactly the divisors of `y`.
  refine
    Fintype.ofFinset
      (((normalizedFactors y).powerset.toFinset ×ˢ (Finset.univ : Finset Mˣ)).image fun s =>
        (s.snd : M) * s.fst.prod)
      fun x => ?_
  simp only [exists_prop, Finset.mem_image, Finset.mem_product, Finset.mem_univ, and_true,
    Multiset.mem_toFinset, Multiset.mem_powerset, exists_eq_right, Multiset.mem_map]
  constructor
  · rintro ⟨s, hs, rfl⟩
    show (s.snd : M) * s.fst.prod ∣ y
    rw [(unit_associated_one.mul_right s.fst.prod).dvd_iff_dvd_left, one_mul,
      ← (prod_normalizedFactors hy).dvd_iff_dvd_right]
    exact Multiset.prod_dvd_prod_of_le hs
  · rintro (h : x ∣ y)
    have hx : x ≠ 0 := by
      refine mt (fun hx => ?_) hy
      rwa [hx, zero_dvd_iff] at h
    obtain ⟨u, hu⟩ := prod_normalizedFactors hx
    refine ⟨⟨normalizedFactors x, u⟩, ?_, (mul_comm _ _).trans hu⟩
    exact (dvd_iff_normalizedFactors_le_normalizedFactors hx hy).mp h

end UniqueFactorizationMonoid
```
