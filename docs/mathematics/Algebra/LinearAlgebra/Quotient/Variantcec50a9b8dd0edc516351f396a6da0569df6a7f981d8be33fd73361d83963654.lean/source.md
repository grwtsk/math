# Complete source: GRWTSK.Algebra.LinearAlgebra.Quotient.Variantcec50a9b8dd0edc516351f396a6da0569df6a7f981d8be33fd73361d83963654

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `7ddc2aca79c8bcfb6799ffb7df9dee827f29a6fd` · SHA-256 `716102e03ccc5cd1fc940d53dce52084eb65daf787179093aa633c4d8a2d833d`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: Algebra.LinearAlgebra
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Algebra.LinearAlgebra.QuotientSpanEqTopIffSpanEqTop.Variant445f0c3d812a03ac2b2a4ce05c2991e70c05a2380cf765f6aac1a58ccced51c0","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"445f0c3d812a03ac2b2a4ce05c2991e70c05a2380cf765f6aac1a58ccced51c0","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Algebra.LinearAlgebra.SourceCorpus.QuotientSpanEqTopIffSpanEqTop.Variant445f0c3d812a03ac2b2a4ce05c2991e70c05a2380cf765f6aac1a58ccced51c0","mathematical_subject":"Algebra.LinearAlgebra","original_sha256":"445f0c3d812a03ac2b2a4ce05c2991e70c05a2380cf765f6aac1a58ccced51c0","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/October/30/ooi/spectral-proof-of-RH/lean/mathlib4/Mathlib/RingTheory/LocalRing/Quotient.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2024 Riccardo Brasca. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Andrew Yang, Riccardo Brasca
-/

import Mathlib.LinearAlgebra.Dimension.DivisionRing
import Mathlib.LinearAlgebra.FreeModule.PID
import Mathlib.LinearAlgebra.FreeModule.StrongRankCondition
import Mathlib.RingTheory.Artinian.Ring
import Mathlib.RingTheory.Ideal.Over
import Mathlib.RingTheory.Ideal.Quotient.Index
import Mathlib.RingTheory.LocalRing.ResidueField.Defs
import Mathlib.RingTheory.LocalRing.RingHom.Basic
import Mathlib.RingTheory.Nakayama

/-!

We gather results about the quotients of local rings.

-/


namespace GRWTSK.Algebra.LinearAlgebra.QuotientSpanEqTopIffSpanEqTop.Variant445f0c3d812a03ac2b2a4ce05c2991e70c05a2380cf765f6aac1a58ccced51c0

open Submodule FiniteDimensional Module

variable {R S : Type*} [CommRing R] [CommRing S] [Algebra R S] [IsLocalRing R] [Module.Finite R S]

namespace IsLocalRing

local notation "p" => maximalIdeal R
local notation "pS" => Ideal.map (algebraMap R S) p

theorem quotient_span_eq_top_iff_span_eq_top (s : Set S) :
    span (R ⧸ p) ((Ideal.Quotient.mk (I := pS)) '' s) = ⊤ ↔ span R s = ⊤ := by
  have H : (span (R ⧸ p) ((Ideal.Quotient.mk (I := pS)) '' s)).restrictScalars R =
      (span R s).map (IsScalarTower.toAlgHom R S (S ⧸ pS)) := by
    rw [map_span, ← restrictScalars_span R (R ⧸ p) Ideal.Quotient.mk_surjective,
      IsScalarTower.coe_toAlgHom', Ideal.Quotient.algebraMap_eq]
  constructor
  · intro hs
    rw [← top_le_iff]
    apply le_of_le_smul_of_le_jacobson_bot
    · exact Module.finite_def.mp ‹_›
    · exact (jacobson_eq_maximalIdeal ⊥ bot_ne_top).ge
    · rw [Ideal.smul_top_eq_map]
      rintro x -
      have : LinearMap.ker (IsScalarTower.toAlgHom R S (S ⧸ pS)) =
          restrictScalars R pS := by
        ext; simp [Ideal.Quotient.eq_zero_iff_mem]
      rw [← this, ← comap_map_eq, mem_comap, ← H, hs, restrictScalars_top]
      exact mem_top
  · intro hs
    rwa [hs, Submodule.map_top, LinearMap.range_eq_top.mpr,
      restrictScalars_eq_top_iff] at H
    rw [IsScalarTower.coe_toAlgHom', Ideal.Quotient.algebraMap_eq]
    exact Ideal.Quotient.mk_surjective

attribute [local instance] Ideal.Quotient.field

variable [Module.Free R S] {ι : Type*}

theorem finrank_quotient_map :
    finrank (R ⧸ p) (S ⧸ pS) = finrank R S := by
  classical
  have : Module.Finite R (S ⧸ pS) := Module.Finite.of_surjective
    (IsScalarTower.toAlgHom R S (S ⧸ pS)).toLinearMap (Ideal.Quotient.mk_surjective (I := pS))
  have : Module.Finite (R ⧸ p) (S ⧸ pS) := Module.Finite.of_restrictScalars_finite R _ _
  apply le_antisymm
  · let b := Module.Free.chooseBasis R S
    conv_rhs => rw [finrank_eq_card_chooseBasisIndex]
    apply finrank_le_of_span_eq_top
    rw [Set.range_comp]
    apply (quotient_span_eq_top_iff_span_eq_top _).mpr b.span_eq
  · let b := Module.Free.chooseBasis (R ⧸ p) (S ⧸ pS)
    choose b' hb' using fun i ↦ Ideal.Quotient.mk_surjective (b i)
    conv_rhs => rw [finrank_eq_card_chooseBasisIndex]
    refine finrank_le_of_span_eq_top (v := b') ?_
    apply (quotient_span_eq_top_iff_span_eq_top _).mp
    rw [← Set.range_comp, show Ideal.Quotient.mk pS ∘ b' = ⇑b from funext hb']
    exact b.span_eq

/-- Given a basis of `S`, the induced basis of `S / Ideal.map (algebraMap R S) p`. -/
noncomputable
def basisQuotient [Fintype ι] (b : Basis ι R S) : Basis ι (R ⧸ p) (S ⧸ pS) :=
  basisOfTopLeSpanOfCardEqFinrank (Ideal.Quotient.mk pS ∘ b)
    (by
      rw [Set.range_comp]
      exact ((quotient_span_eq_top_iff_span_eq_top _).mpr b.span_eq).ge)
    (by rw [finrank_quotient_map, finrank_eq_card_basis b])

lemma basisQuotient_apply [Fintype ι] (b : Basis ι R S) (i) :
    (basisQuotient b) i = Ideal.Quotient.mk pS (b i) := by
  delta basisQuotient
  rw [coe_basisOfTopLeSpanOfCardEqFinrank, Function.comp_apply]

lemma basisQuotient_repr {ι} [Fintype ι] (b : Basis ι R S) (x) (i) :
    (basisQuotient b).repr (Ideal.Quotient.mk pS x) i =
    Ideal.Quotient.mk p (b.repr x i) := by
  refine congr_fun (g := Ideal.Quotient.mk p ∘ b.repr x) ?_ i
  apply (Finsupp.linearEquivFunOnFinite (R ⧸ p) _ _).symm.injective
  apply (basisQuotient b).repr.symm.injective
  simp only [Finsupp.linearEquivFunOnFinite_symm_coe, LinearEquiv.symm_apply_apply,
    Basis.repr_symm_apply]
  rw [Finsupp.linearCombination_eq_fintype_linearCombination_apply (R ⧸ p),
    Fintype.linearCombination_apply]
  simp only [Function.comp_apply, basisQuotient_apply,
    Ideal.Quotient.mk_smul_mk_quotient_map_quotient, ← Algebra.smul_def]
  rw [← map_sum, Basis.sum_repr b x]

lemma exists_maximalIdeal_pow_le_of_finite_quotient (I : Ideal R) [Finite (R ⧸ I)] :
    ∃ n, maximalIdeal R ^ n ≤ I := by
  by_cases hI : I = ⊤
  · simp [hI]
  have : Nontrivial (R ⧸ I) := Ideal.Quotient.nontrivial hI
  have := IsLocalRing.of_surjective' (Ideal.Quotient.mk I) Ideal.Quotient.mk_surjective
  have := IsLocalHom.of_surjective (Ideal.Quotient.mk I) Ideal.Quotient.mk_surjective
  obtain ⟨n, hn⟩ := IsArtinianRing.isNilpotent_jacobson_bot (R := R ⧸ I)
  have : (maximalIdeal R).map (Ideal.Quotient.mk I) = maximalIdeal (R ⧸ I) := by
    ext x
    obtain ⟨x, rfl⟩ := Ideal.Quotient.mk_surjective x
    simp [sup_eq_left.mpr (le_maximalIdeal hI)]
  rw [jacobson_eq_maximalIdeal _ bot_ne_top, ← this, ← Ideal.map_pow, Ideal.zero_eq_bot,
    Ideal.map_eq_bot_iff_le_ker, Ideal.mk_ker] at hn
  exact ⟨n, hn⟩

lemma finite_quotient_iff [IsNoetherianRing R] [Finite (ResidueField R)] {I : Ideal R} :
    Finite (R ⧸ I) ↔ ∃ n, (maximalIdeal R) ^ n ≤ I := by
  refine ⟨fun _ ↦ exists_maximalIdeal_pow_le_of_finite_quotient I, ?_⟩
  rintro ⟨n, hn⟩
  have : Finite (R ⧸ maximalIdeal R) := ‹_›
  have := (Ideal.finite_quotient_pow (IsNoetherian.noetherian (maximalIdeal R)) n)
  exact Finite.of_surjective _ (Ideal.Quotient.factor_surjective hn)

end IsLocalRing

@[deprecated (since := "2024-11-11")]
alias LocalRing.quotient_span_eq_top_iff_span_eq_top :=
  IsLocalRing.quotient_span_eq_top_iff_span_eq_top

@[deprecated (since := "2024-11-11")]
alias LocalRing.finrank_quotient_map := IsLocalRing.finrank_quotient_map

@[deprecated (since := "2024-11-11")]
alias LocalRing.basisQuotient := IsLocalRing.basisQuotient

@[deprecated (since := "2024-11-11")]
alias LocalRing.basisQuotient_apply := IsLocalRing.basisQuotient_apply

@[deprecated (since := "2024-11-11")]
alias LocalRing.basisQuotient_repr := IsLocalRing.basisQuotient_repr
```
