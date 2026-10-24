# Complete source: GRWTSK.NumberTheory.AlgebraicNumberTheory.FiniteAdeleRing.Variantfc784248059e1969c32fcf53e4b7fd5f43ff04fef7b1680b3608a3c84a0bfb33

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `bb5434fcb154cca5e42d7fd9c4de2a9bc6db4e7a` · SHA-256 `beab32ab1bdd9299dd50c8d54f9a9ea879a06de0c9bb3e06169988d635ee793e`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: NumberTheory.AlgebraicNumberTheory
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.NumberTheory.AlgebraicNumberTheory.HasFiniteMulSupportNorm.Variant004cbd95848400b088412af646dbb5777d56e34fc6872574ba4bf5dae767c9a6","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"004cbd95848400b088412af646dbb5777d56e34fc6872574ba4bf5dae767c9a6","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.NumberTheory.AlgebraicNumberTheory.SourceCorpus.HasFiniteMulSupportNorm.Variant004cbd95848400b088412af646dbb5777d56e34fc6872574ba4bf5dae767c9a6","mathematical_subject":"NumberTheory.AlgebraicNumberTheory","original_sha256":"004cbd95848400b088412af646dbb5777d56e34fc6872574ba4bf5dae767c9a6","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/rh16-games-packets/external/replay/.lake/packages/mathlib/Mathlib/NumberTheory/NumberField/FiniteAdeleRing.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","scope_end_name_mismatch","uncompiled_organization"],"structural_qualification":"structural_issues_retained_uncompiled","transform_version":"1"}
/-
Copyright (c) 2026 Salvatore Mercuri. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Salvatore Mercuri
-/

module

public import Mathlib.NumberTheory.NumberField.Completion.FinitePlace
public import Mathlib.RingTheory.DedekindDomain.FiniteAdeleRing
public import Mathlib.Topology.Algebra.Valued.NormedValued
public import Mathlib.NumberTheory.NumberField.ProductFormula
public import Mathlib.Algebra.FiniteSupport.Basic

/-!
# The finite adele ring of a number field

This file concerns the finite adele ring of a Dedekind domain `R` and its field of
fractions under the assumption that `Ring.HasFiniteQuotients R` and `Infinite R`.
Later, these results are applied to the case where `K` is a number field and `R` is `𝓞 K`.

## Main definitions

- `NumberField.FiniteAdeleRing.instNormFiniteAdeleRing` : the norm on the finite adele ring.

## Tags
adele ring, number field
-/


namespace GRWTSK.NumberTheory.AlgebraicNumberTheory.HasFiniteMulSupportNorm.Variant004cbd95848400b088412af646dbb5777d56e34fc6872574ba4bf5dae767c9a6

@[expose] public section

namespace NumberField

open IsDedekindDomain FiniteAdeleRing

variable {R K : Type*} [CommRing R] [IsDedekindDomain R] [Ring.HasFiniteQuotients R] [Infinite R]
  [Field K] [Algebra R K] [IsFractionRing R K]

namespace AdeleRing

/-- `𝔸ᶠ[K]` is notation for `IsDedekindDomain.FiniteAdeleRing (𝓞 K) K`. -/
scoped notation:max "𝔸ᶠ[" K "]" => FiniteAdeleRing (𝓞 K) K

end AdeleRing

namespace FiniteAdeleRing

open scoped AdeleRing

theorem hasFiniteMulSupport_norm (x : 𝔸ᶠ[R, K]ˣ) : (fun v ↦ ‖x.1 v‖).HasFiniteMulSupport :=
  (FiniteAdeleRing.hasFiniteMulSupport_valued x).of_eq_one_iff
    fun _ ↦ Valued.toNormedField.norm_eq_one_iff.symm

private theorem hasProd_subset_valued_one_lt (x : 𝔸ᶠ[R, K]) :
    HasProd (fun v : {v | 1 < Valued.v (x v)} ↦ ‖x v‖)
      (∏ᶠ v : {v | 1 < Valued.v (x v)}, ‖x v‖) := by
  let : Fintype _ := (finite_valued_one_lt x).fintype
  rw [finprod_eq_prod_of_fintype]
  exact hasProd_fintype _

open Filter HeightOneSpectrum Valued in
private theorem hasProd_zero_subset_lt_one_valued {x : 𝔸ᶠ[R, K]} (hx : ¬IsUnit x)
    (hx₀ : ∀ v, x v ≠ 0) : HasProd (fun v : {v | Valued.v (x v) < 1} ↦ ‖x v‖) 0 :=
  have hx := infinite_valued_ne_one_of_not_isUnit (by simpa using hx₀) hx
  have hx_prop : {v | 1 < Valued.v (x v)}.Finite := finite_valued_one_lt x
  have hx_inf : {v | Valued.v (x v) < 1}.Infinite := (hx.sdiff hx_prop).mono (by grind)
  have : atTop.Tendsto (fun s : Finset {v | Valued.v (x v) < 1} ↦ (∏ v ∈ s, ‖x v‖)⁻¹) atTop := by
    have h_le (S : Finset {v | Valued.v (x v) < 1}) : 2 ^ S.card ≤ (∏ v ∈ S, ‖x v‖)⁻¹ := by
      have (v : _) (h : v ∈ S) : 2 ≤ ‖(x v)⁻¹‖ := by
        apply FinitePlace.two_le_norm_of_one_lt_norm
        grind [toNormedField.one_lt_norm_iff, map_inv₀, one_lt_inv₀ (Valued.v.pos_iff.2 (hx₀ v))]
      simpa [Finset.prod_const] using (Finset.prod_le_prod₀ (by grind) this).trans (by simp)
    apply tendsto_atTop_mono h_le ((tendsto_pow_atTop_atTop_of_one_lt (by norm_num)).comp ?_)
    apply Filter.tendsto_atTop_atTop_of_monotone Finset.card_mono fun N ↦ ?_
    obtain ⟨t, ht, _⟩ := hx_inf.exists_subset_card_eq N
    exact ⟨t.subtype _, by grind [Finset.card_subtype, Finset.card_filter_eq_iff.2 ht]⟩
  (tendsto_inv_atTop_zero.comp this).congr (by simp)

theorem hasProd_zero_of_not_isUnit {x : 𝔸ᶠ[R, K]} (hx : ¬IsUnit x) :
    HasProd (fun v ↦ ‖x v‖) 0 := by
  by_cases hx₀ : ∃ v, x v = 0
  · exact hasProd_zero_of_exists_eq_zero (by simpa using hx₀)
  have hT := hasProd_zero_subset_lt_one_valued hx (by simpa using hx₀)
  have h : HasProd (fun v : {v | Valued.v (x v) = 1} ↦ ‖x.1 v‖) 1 := by
    convert hasProd_one; aesop (add simp [Valued.toNormedField.norm_eq_one_iff])
  have := HasProd.mul_disjoint (by grind) (hasProd_subset_valued_one_lt x) h (f := fun v ↦ ‖x v‖)
  simpa using this.mul_isCompl ⟨by grind, fun _ _ _ ↦ by grind⟩ hT

theorem tprod_norm_eq_finprod_of_isUnit {x : 𝔸ᶠ[R, K]} (hx : IsUnit x) :
    ∏' v, ‖x v‖ = ∏ᶠ v, ‖x v‖ := by
  rw [tprod_eq_finprod]
  exact hasFiniteMulSupport_norm hx.unit

theorem tprod_norm_eq_finprod_of_unit (x : 𝔸ᶠ[R, K]ˣ) :
    ∏' v, ‖(x : 𝔸ᶠ[R, K]) v‖ = ∏ᶠ v, ‖(x : 𝔸ᶠ[R, K]) v‖ :=
  tprod_norm_eq_finprod_of_isUnit x.isUnit

theorem tprod_eq_zero_of_not_isUnit {x : 𝔸ᶠ[R, K]} (hx : ¬ IsUnit x) :
    ∏' v, ‖x v‖ = 0 := by
  rw [HasProd.tprod_eq]
  exact hasProd_zero_of_not_isUnit hx

/-- The norm on the finite adele ring is the product of all the local norms. If a finite adele is
a unit, then this is a finite product in disguise. Otherwise, it is zero (and not the junk
`tprod` value of `1`). -/
noncomputable instance : Norm 𝔸ᶠ[R, K] where norm x := ∏' v, ‖x v‖

theorem norm_def (x : 𝔸ᶠ[R, K]) : ‖x‖ = ∏' v, ‖x v‖ := rfl

theorem norm_eq_finprod_of_unit (x : 𝔸ᶠ[R, K]ˣ) : ‖(x : 𝔸ᶠ[R, K])‖ = ∏ᶠ v, ‖(x : 𝔸ᶠ[R, K]) v‖ :=
  tprod_norm_eq_finprod_of_unit x

theorem norm_eq_zero_of_not_isUnit {x : 𝔸ᶠ[R, K]} (hx : ¬IsUnit x) : ‖x‖ = 0 :=
  tprod_eq_zero_of_not_isUnit hx

variable [NumberField K]

theorem unitEmbedding_norm_apply (x : Kˣ) :
    ‖(unitEmbedding (𝓞 K) K x : 𝔸ᶠ[𝓞 K, K])‖ = ∏ᶠ v, FinitePlace.mk v (x : K) :=
      norm_eq_finprod_of_unit _

theorem unitEmbedding_norm_apply_eq_finprod_finitePlace (x : Kˣ) :
    ‖(unitEmbedding (𝓞 K) K x : 𝔸ᶠ[𝓞 K, K])‖ = ∏ᶠ v : FinitePlace K, v x := by
  rw [unitEmbedding_norm_apply, ← finprod_comp FinitePlace.equivHeightOneSpectrum.invFun
    FinitePlace.equivHeightOneSpectrum.symm.bijective]
  exact finprod_congr fun _ ↦ rfl

theorem unitEmbedding_norm_eq_inv_abs_norm (x : Kˣ) :
    ‖(unitEmbedding (𝓞 K) K x : 𝔸ᶠ[𝓞 K, K])‖ = |Algebra.norm ℚ (x : K)|⁻¹ := by
  rw [← FinitePlace.prod_eq_inv_abs_norm x.ne_zero, unitEmbedding_norm_apply_eq_finprod_finitePlace]

theorem coe_norm_eq_inv_abs_norm {x : K} (hx : x ≠ 0) :
    ‖algebraMap K 𝔸ᶠ[K] x‖ = |Algebra.norm ℚ x|⁻¹ := unitEmbedding_norm_eq_inv_abs_norm (.mk0 x hx)

end NumberField.FiniteAdeleRing
```
