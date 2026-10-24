# Complete source: GRWTSK.Algebra.LinearAlgebra.Lemmas.Variantbaacd6d9590ed0f24cc81e106e336a852600af3efe7582941a4706ef93def2cc

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `b81066c54bf0875b5ab97afd8330076c4c95a025` · SHA-256 `182c265f09ee9d87e59e74872bbde5320fb0cdbbf0635e1382250311a7a06632`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: Algebra.LinearAlgebra
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Algebra.LinearAlgebra.HasCentralRadicalAndOfIsIrreducibleOfIsFaithful.Variantf2cc9f6ade0fa72c53fa9de9c2dfbb9b8a967aa53ac3141c5da85c0ecbb2f358","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"f2cc9f6ade0fa72c53fa9de9c2dfbb9b8a967aa53ac3141c5da85c0ecbb2f358","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Algebra.LinearAlgebra.SourceCorpus.HasCentralRadicalAndOfIsIrreducibleOfIsFaithful.Variantf2cc9f6ade0fa72c53fa9de9c2dfbb9b8a967aa53ac3141c5da85c0ecbb2f358","mathematical_subject":"Algebra.LinearAlgebra","original_sha256":"f2cc9f6ade0fa72c53fa9de9c2dfbb9b8a967aa53ac3141c5da85c0ecbb2f358","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/October/30/ooi/spectral-proof-of-RH/lean/mathlib4/Mathlib/Algebra/Lie/Semisimple/Lemmas.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2025 Oliver Nash. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Oliver Nash
-/
import Mathlib.Algebra.Lie.LieTheorem
import Mathlib.Algebra.Lie.Semisimple.Basic

/-!
# Lemmas about semisimple Lie algebras

This file is a home for lemmas about semisimple and reductive Lie algebras.

## Main definitions / results:
* `LieAlgebra.hasCentralRadical_and_of_isIrreducible_of_isFaithful`: a finite-dimensional Lie
  algebra with a irreducible faithful finite-dimensional representation is reductive.
* `LieAlgebra.hasTrivialRadical_and_of_isIrreducible_of_isFaithful`: a finite-dimensional Lie
  algebra with a irreducible faithful finite-dimensional trace-free representation is semisimple.

## TODO

* It appears that the lemmas in this file may hold for any principal ideal domain (of
  characteristic zero) instead of a field. The plan would be to define the nilradical of a Lie
  algebra (currently missing) and use it with
  `LieModule.exists_nontrivial_weightSpace_of_isNilpotent` instead of using the solvable radical
  with `LieModule.exists_nontrivial_weightSpace_of_isSolvable`, as below. The conclusion of
  `LieAlgebra.hasCentralRadical_and_of_isIrreducible_of_isFaithful` would then make a statement
  that the nilradical vanishes and one would prove elsewhere that vanishing nilradical is
  equivalent to `HasCentralRadical`.

-/


namespace GRWTSK.Algebra.LinearAlgebra.HasCentralRadicalAndOfIsIrreducibleOfIsFaithful.Variantf2cc9f6ade0fa72c53fa9de9c2dfbb9b8a967aa53ac3141c5da85c0ecbb2f358

namespace LieAlgebra

open LieModule LieSubmodule Module

variable (k L M : Type*) [Field k] [CharZero k]
  [LieRing L] [LieAlgebra k L] [Module.Finite k L]
  [AddCommGroup M] [Module k M] [LieRingModule L M] [LieModule k L M] [Module.Finite k M]
  [IsIrreducible k L M] [IsFaithful k L M] [IsTriangularizable k L M]

lemma hasCentralRadical_and_of_isIrreducible_of_isFaithful :
    HasCentralRadical k L ∧ (∀ x, x ∈ center k L ↔ toEnd k L M x ∈ k ∙ LinearMap.id) := by
  have _i := nontrivial_of_isIrreducible k L M
  obtain ⟨χ, hχ⟩ : ∃ χ : Module.Dual k (radical k L), Nontrivial (weightSpace M χ) :=
    exists_nontrivial_weightSpace_of_isSolvable k (radical k L) M
  let N : LieSubmodule k L M := weightSpaceOfIsLieTower k M χ
  replace hχ : Nontrivial N := hχ
  replace hχ : N = ⊤ := N.eq_top_of_isIrreducible k L M
  replace hχ (x : L) (hx : x ∈ radical k L) : toEnd k _ M x = χ ⟨x, hx⟩ • LinearMap.id := by
    ext m
    have hm : ∀ (y : L) (hy : y ∈ radical k L), ⁅y, m⁆ = χ ⟨y, hy⟩ • m := by
      simpa [N, weightSpaceOfIsLieTower, mem_weightSpace] using (hχ ▸ mem_top _ : m ∈ N)
    simpa using hm x hx
  have aux : radical k L = center k L := by
    refine le_antisymm (fun x hx ↦ (mem_maxTrivSubmodule k L L x).mpr ?_) (center_le_radical k L)
    intro y
    simp [← toEnd_eq_zero_iff (R := k) (L := L) (M := M), LieHom.map_lie, hχ _ hx, lie_smul,
      (toEnd k L M y).commute_id_right.lie_eq]
  refine ⟨⟨aux⟩, fun x ↦ ⟨fun hx ↦ ?_, fun hx ↦ (mem_maxTrivSubmodule k L L x).mpr fun y ↦ ?_⟩⟩
  · rw [← aux] at hx
    exact Submodule.mem_span_singleton.mpr ⟨χ ⟨x, hx⟩, (hχ x hx).symm⟩
  · obtain ⟨t, ht⟩ := Submodule.mem_span_singleton.mp hx
    simp [← toEnd_eq_zero_iff (R := k) (L := L) (M := M), LieHom.map_lie, ← ht, lie_smul,
      (toEnd k L M y).commute_id_right.lie_eq]

theorem hasTrivialRadical_and_of_isIrreducible_of_isFaithful
    (h : ∀ x, LinearMap.trace k _ (toEnd k L M x) = 0) : HasTrivialRadical k L := by
  have : finrank k M ≠ 0 := ((finrank_pos_iff).mpr <| nontrivial_of_isIrreducible k L M).ne'
  obtain ⟨_i, h'⟩ := hasCentralRadical_and_of_isIrreducible_of_isFaithful k L M
  rw [hasTrivialRadical_iff, (hasCentralRadical_iff k L).mp inferInstance, LieSubmodule.eq_bot_iff]
  intro x hx
  specialize h x
  rw [h' x] at hx
  obtain ⟨t, ht⟩ := Submodule.mem_span_singleton.mp hx
  suffices t = 0 by simp [← toEnd_eq_zero_iff (R := k) (L := L) (M := M), ← ht, this]
  simpa [this, ← ht] using h

end LieAlgebra
```
