# Complete source: GRWTSK.Topology.GeneralTopology.AddChar.Variant95997da73867887a525993200226474f71be807fdacaccaafc4da0e1abf608b3

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `82692ab3d19338b4b47ff1a4114d0a0c64996e86` · SHA-256 `f5049b7eb4aea3e0f3ce0b78a1c30ad83f70f80e94927b0fcbd4623f17e60c6f`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: Topology.GeneralTopology
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Topology.GeneralTopology.AddCharTendstoEvalOneSubPow.Varianteb0fc9d637a78d8f96a78e51444fc23dd1e1f2d09f35ed96ee1d3e5ae19f906f","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"eb0fc9d637a78d8f96a78e51444fc23dd1e1f2d09f35ed96ee1d3e5ae19f906f","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Topology.GeneralTopology.SourceCorpus.AddCharTendstoEvalOneSubPow.Varianteb0fc9d637a78d8f96a78e51444fc23dd1e1f2d09f35ed96ee1d3e5ae19f906f","mathematical_subject":"Topology.GeneralTopology","original_sha256":"eb0fc9d637a78d8f96a78e51444fc23dd1e1f2d09f35ed96ee1d3e5ae19f906f","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/rh16-games-packets/external/replay/.lake/packages/mathlib/Mathlib/NumberTheory/Padics/AddChar.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2025 David Loeffler. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: David Loeffler
-/
module

public import Mathlib.NumberTheory.Padics.MahlerBasis
public import Mathlib.Topology.Algebra.Monoid.AddChar
public import Mathlib.Analysis.SpecificLimits.Normed

/-!
# Additive characters of `ℤ_[p]`

We show that for any complete, ultrametric normed `ℤ_[p]`-algebra `R`, there is a bijection between
continuous additive characters `ℤ_[p] → R` and topologically nilpotent elements of `R`, given by
sending `κ` to the element `κ 1 - 1`. This is used to define the Mahler transform for `p`-adic
measures.

Note that if the norm on `R` is not strictly multiplicative, then the condition that `κ 1 - 1` be
topologically nilpotent is strictly weaker than assuming `‖κ 1 - 1‖ < 1`, although they are
equivalent if `NormMulClass R` holds.

## Main definitions and theorems:

* `addChar_of_value_at_one`: given a topologically nilpotent `r : R`, construct a continuous
  additive character of `ℤ_[p]` mapping `1` to `1 + r`.
* `continuousAddCharEquiv`: for any complete, ultrametric normed `ℤ_[p]`-algebra `R`, the map
  `addChar_of_value_at_one` defines a bijection between continuous additive characters `ℤ_[p] → R`
  and topologically nilpotent elements of `R`.
* `continuousAddCharEquiv_of_norm_mul`: if the norm on `R` is strictly multiplicative (not just
  sub-multiplicative), then `addChar_of_value_at_one` is a bijection between continuous additive
  characters `ℤ_[p] → R` and elements of `R` with `‖r‖ < 1`.

## TODO:

* Show that the above equivalences are homeomorphisms, for appropriate choices of the topology.
-/


namespace GRWTSK.Topology.GeneralTopology.AddCharTendstoEvalOneSubPow.Varianteb0fc9d637a78d8f96a78e51444fc23dd1e1f2d09f35ed96ee1d3e5ae19f906f

@[expose] public section

open Filter

open scoped fwdDiff Topology

variable {p : ℕ} [Fact p.Prime]

variable {R : Type*} [NormedRing R] [Algebra ℤ_[p] R] [IsBoundedSMul ℤ_[p] R]
  [IsUltrametricDist R]

lemma AddChar.tendsto_eval_one_sub_pow {κ : AddChar ℤ_[p] R} (hκ : Continuous κ) :
    Tendsto (fun n ↦ (κ 1 - 1) ^ n) atTop (𝓝 0) := by
  refine (PadicInt.fwdDiff_tendsto_zero ⟨κ, hκ⟩).congr fun n ↦ ?_
  simpa only [AddChar.map_zero_eq_one, mul_one] using! fwdDiff_addChar_eq κ 0 1 n

namespace PadicInt
variable [CompleteSpace R]

/-- The unique continuous additive character of `ℤ_[p]` mapping `1` to `1 + r`. -/
noncomputable def addChar_of_value_at_one (r : R) (hr : Tendsto (r ^ ·) atTop (𝓝 0)) :
    AddChar ℤ_[p] R where
  toFun := mahlerSeries (r ^ ·)
  map_zero_eq_one' := by
    rw [← Nat.cast_zero, mahlerSeries_apply_nat hr le_rfl, zero_add, Finset.sum_range_one,
      Nat.choose_self, pow_zero, one_smul]
  map_add_eq_mul' a b := by
    let F : C(ℤ_[p], R) := mahlerSeries (r ^ ·)
    change F (a + b) = F a * F b
    -- It is fiddly to show directly that `F (a + b) = F a * F b` for general `a, b`,
    -- so we prove it for `a, b ∈ ℕ` directly, and then deduce it for all `a, b` by continuity.
    have hF (n : ℕ) : F n = (r + 1) ^ n := by
      rw [mahlerSeries_apply_nat hr le_rfl, (Commute.one_right _).add_pow]
      refine Finset.sum_congr rfl fun i hi ↦ ?_
      rw [one_pow, mul_one, nsmul_eq_mul, Nat.cast_comm]
    refine congr_fun ((denseRange_natCast.prodMap denseRange_natCast).equalizer
      ((map_continuous F).comp continuous_add)
      (continuous_mul.comp (map_continuous <| F.prodMap F)) (funext fun ⟨m, n⟩ ↦ ?_)) (a, b)
    simp [← Nat.cast_add, hF, ContinuousMap.prodMap_apply, pow_add]

@[fun_prop]
lemma continuous_addChar_of_value_at_one {r : R} (hr : Tendsto (r ^ ·) atTop (𝓝 0)) :
    Continuous (addChar_of_value_at_one r hr : ℤ_[p] → R) :=
  map_continuous (mahlerSeries (r ^ ·))

lemma coe_addChar_of_value_at_one {r : R} (hr : Tendsto (r ^ ·) atTop (𝓝 0)) :
    (addChar_of_value_at_one r hr : ℤ_[p] → R) = mahlerSeries (r ^ ·) :=
  rfl

@[simp]
lemma addChar_of_value_at_one_def {r : R} (hr : Tendsto (r ^ ·) atTop (𝓝 0)) :
    addChar_of_value_at_one r hr (1 : ℤ_[p]) = 1 + r := by
  change mahlerSeries (r ^ ·) ↑(1 : ℕ) = _
  rw [mahlerSeries_apply_nat hr le_rfl, Finset.sum_range_succ, Finset.sum_range_one,
    Nat.choose_zero_right, Nat.choose_self, one_smul, one_smul, pow_zero, pow_one]

lemma eq_addChar_of_value_at_one {r : R} (hr : Tendsto (r ^ ·) atTop (𝓝 0))
    {κ : AddChar ℤ_[p] R} (hκ : Continuous κ) (hκ' : κ 1 = 1 + r) :
    κ = addChar_of_value_at_one r hr :=
  denseRange_natCast.addChar_eq_of_eval_one_eq hκ (by fun_prop) (by simp [hκ'])

variable (p R) in
/-- Equivalence between continuous additive characters `ℤ_[p] → R`, and `r ∈ R` with `r ^ n → 0`. -/
noncomputable def continuousAddCharEquiv :
    {κ : AddChar ℤ_[p] R // Continuous κ} ≃ {r : R // Tendsto (r ^ ·) atTop (𝓝 0)} where
  toFun := fun ⟨κ, hκ⟩ ↦ ⟨κ 1 - 1, κ.tendsto_eval_one_sub_pow hκ⟩
  invFun := fun ⟨r, hr⟩ ↦ ⟨_, continuous_addChar_of_value_at_one hr⟩
  left_inv := fun ⟨κ, hκ⟩ ↦ by simpa using (eq_addChar_of_value_at_one _ hκ (by abel)).symm
  right_inv := fun ⟨r, hr⟩ ↦ by simp [addChar_of_value_at_one_def hr]

@[simp] lemma continuousAddCharEquiv_apply {κ : AddChar ℤ_[p] R} (hκ : Continuous κ) :
    continuousAddCharEquiv p R ⟨κ, hκ⟩ = κ 1 - 1 :=
  rfl

@[simp] lemma continuousAddCharEquiv_symm_apply {r : R} (hr : Tendsto (r ^ ·) atTop (𝓝 0)) :
    (continuousAddCharEquiv p R).symm ⟨r, hr⟩ =
    (addChar_of_value_at_one r hr : AddChar ℤ_[p] R) :=
  rfl

section NormMulClass
variable [NormMulClass R]

variable (p R) in
/-- Equivalence between continuous additive characters `ℤ_[p] → R`, and `r ∈ R` with `‖r‖ < 1`,
for rings with strictly multiplicative norm. -/
noncomputable def continuousAddCharEquiv_of_norm_mul :
    {κ : AddChar ℤ_[p] R // Continuous κ} ≃ {r : R // ‖r‖ < 1} :=
  (continuousAddCharEquiv p R).trans <|
    .subtypeEquivProp (by simp only [tendsto_pow_atTop_nhds_zero_iff_norm_lt_one])

@[simp] lemma continuousAddCharEquiv_of_norm_mul_apply {κ : AddChar ℤ_[p] R} (hκ : Continuous κ) :
    continuousAddCharEquiv_of_norm_mul p R ⟨κ, hκ⟩ = κ 1 - 1 :=
  rfl

@[simp] lemma continuousAddCharEquiv_of_norm_mul_symm_apply {r : R} (hr : ‖r‖ < 1) :
    (continuousAddCharEquiv_of_norm_mul p R).symm ⟨r, hr⟩ = (addChar_of_value_at_one r
    (tendsto_pow_atTop_nhds_zero_iff_norm_lt_one.mpr hr) : AddChar ℤ_[p] R) :=
  rfl

end NormMulClass

end PadicInt
```
