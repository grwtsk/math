# Complete source: GRWTSK.Analysis.MeasureTheory.DistribChar.Variant5a12b842db318db26dfd0e2cd4fb518e14190660a0d1993c96c8008a5e02c428

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `5a34fa6dda12871f50bfc19d5dd8b3ffa0bf39db` · SHA-256 `ff104406b1e5ce0cf4df4ef17388f36292ee59c5febee000c91504ceb8459cbd`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: Analysis.MeasureTheory
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Analysis.MeasureTheory.DistribHaarChar.Variantd64c9132ec8e4f089aaa0caeb45d2c87a9c631ce2a09000a34155a4a67372d89","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"d64c9132ec8e4f089aaa0caeb45d2c87a9c631ce2a09000a34155a4a67372d89","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Analysis.MeasureTheory.SourceCorpus.DistribHaarChar.Variantd64c9132ec8e4f089aaa0caeb45d2c87a9c631ce2a09000a34155a4a67372d89","mathematical_subject":"Analysis.MeasureTheory","original_sha256":"d64c9132ec8e4f089aaa0caeb45d2c87a9c631ce2a09000a34155a4a67372d89","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/rh16-games-packets/external/replay/.lake/packages/mathlib/Mathlib/MeasureTheory/Measure/Haar/DistribChar.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2024 Andrew Yang, Yaël Dillies, Javier López-Contreras. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Andrew Yang, Yaël Dillies, Javier López-Contreras
-/
module

public import Mathlib.MeasureTheory.Measure.Haar.Unique

/-!
# The distributive character of Haar measures

Given a group `G` acting by additive morphisms on a locally compact additive commutative group `A`,
and an element `g : G`, one can pull back the Haar measure `μ` of `A`
along the map `(g • ·) : A → A` to get another Haar measure `μ'` on `A`.
By unicity of Haar measures, there exists some nonnegative real number `r` such that `μ' = r • μ`.
We can thus define a map `distribHaarChar : G → ℝ≥0` sending `g` to its associated real number `r`.
Furthermore, this number doesn't depend on the Haar measure `μ` we started with,
and `distribHaarChar` is a group homomorphism.

## See also

`MeasureTheory.Measure.modularCharacter` for the analogous definition when the action is
multiplicative instead of distributive.

[Zulip](https://leanprover.zulipchat.com/#narrow/channel/217875-Is-there-code-for-X.3F/topic/canonical.20norm.20coming.20from.20Haar.20measure/near/480050592)
-/


namespace GRWTSK.Analysis.MeasureTheory.DistribHaarChar.Variantd64c9132ec8e4f089aaa0caeb45d2c87a9c631ce2a09000a34155a4a67372d89

@[expose] public section

open MeasureTheory.Measure
open scoped NNReal Pointwise ENNReal

namespace MeasureTheory
variable {G A : Type*} [Group G] [AddCommGroup A] [DistribMulAction G A] [TopologicalSpace A]
  [IsTopologicalAddGroup A] [LocallyCompactSpace A] [ContinuousConstSMul G A] {g : G}

variable (A) in
set_option backward.isDefEq.respectTransparency false in
/-- The distributive Haar character of a group `G` acting distributively on a group `A` is the
unique positive real number `Δ(g)` such that `μ (g • s) = Δ(g) * μ s` for all Haar
measures `μ : Measure A`, set `s : Set A` and `g : G`. -/
@[simps -isSimp]
noncomputable def distribHaarChar : G →* ℝ≥0 :=
  letI := borel A
  haveI : BorelSpace A := ⟨rfl⟩
  {
    toFun g := addHaarScalarFactor (DomMulAct.mk g • addHaar) (addHaar (G := A))
    map_one' := by simp
    map_mul' g g' := by
      simp_rw [DomMulAct.mk_mul]
      rw [addHaarScalarFactor_eq_mul _ (DomMulAct.mk g' • addHaar (G := A))]
      congr 1
      simp_rw [mul_smul]
      rw [addHaarScalarFactor_domSMul]
  }

lemma distribHaarChar_pos : 0 < distribHaarChar A g :=
  pos_iff_ne_zero.mpr ((Group.isUnit g).map (distribHaarChar A)).ne_zero

variable [MeasurableSpace A] [BorelSpace A] {μ : Measure A} [μ.IsAddHaarMeasure]

variable (μ) in
lemma addHaarScalarFactor_smul_eq_distribHaarChar (g : G) :
    addHaarScalarFactor (DomMulAct.mk g • μ) μ = distribHaarChar A g := by
  borelize A
  exact addHaarScalarFactor_smul_congr' ..

variable (μ) in
lemma addHaarScalarFactor_smul_inv_eq_distribHaarChar (g : G) :
    addHaarScalarFactor μ ((DomMulAct.mk g)⁻¹ • μ) = distribHaarChar A g := by
  rw [← addHaarScalarFactor_domSMul _ _ (DomMulAct.mk g)]
  simp_rw [← mul_smul, mul_inv_cancel, one_smul]
  exact addHaarScalarFactor_smul_eq_distribHaarChar ..

variable (μ) in
lemma addHaarScalarFactor_smul_eq_distribHaarChar_inv (g : G) :
    addHaarScalarFactor μ (DomMulAct.mk g • μ) = (distribHaarChar A g)⁻¹ := by
  rw [← map_inv, ← addHaarScalarFactor_smul_inv_eq_distribHaarChar μ, DomMulAct.mk_inv, inv_inv]

variable [Regular μ] {s : Set A}

variable (μ) in
lemma distribHaarChar_mul (g : G) (s : Set A) : distribHaarChar A g * μ s = μ (g • s) := by
  have : (DomMulAct.mk g • μ) s = μ (g • s) := by simp [domSMul_apply]
  rw [eq_comm, ← nnreal_smul_coe_apply, ← addHaarScalarFactor_smul_eq_distribHaarChar μ,
    ← this, ← Measure.smul_apply, ← isAddLeftInvariant_eq_smul_of_regular]

lemma distribHaarChar_eq_div (hs₀ : μ s ≠ 0) (hs : μ s ≠ ∞) (g : G) :
    distribHaarChar A g = μ (g • s) / μ s := by
  rw [← distribHaarChar_mul, ENNReal.mul_div_cancel_right] <;> simp [*]

lemma distribHaarChar_eq_of_measure_smul_eq_mul (hs₀ : μ s ≠ 0) (hs : μ s ≠ ∞) {r : ℝ≥0}
    (hμgs : μ (g • s) = r * μ s) : distribHaarChar A g = r := by
  refine ENNReal.coe_injective ?_
  rw [distribHaarChar_eq_div hs₀ hs, hμgs, ENNReal.mul_div_cancel_right] <;> simp [*]

end MeasureTheory
```
