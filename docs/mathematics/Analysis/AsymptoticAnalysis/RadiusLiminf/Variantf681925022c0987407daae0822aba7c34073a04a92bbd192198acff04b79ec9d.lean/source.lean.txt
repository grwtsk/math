-- corpus-organization-transform:v1
-- Mathematical subject: Analysis.AsymptoticAnalysis
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Analysis.AsymptoticAnalysis.RadiusEqLiminf.Variantc4d8330723117863a4a40dbd46bed526e25e2fd5769d8ee685aca95459aadf07","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"c4d8330723117863a4a40dbd46bed526e25e2fd5769d8ee685aca95459aadf07","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Analysis.AsymptoticsAndSeries.SourceCorpus.RadiusEqLiminf.Variantc4d8330723117863a4a40dbd46bed526e25e2fd5769d8ee685aca95459aadf07","mathematical_subject":"Analysis.AsymptoticsAndSeries","original_sha256":"c4d8330723117863a4a40dbd46bed526e25e2fd5769d8ee685aca95459aadf07","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/October/30/ooi/FEATURES/.lake/packages/mathlib/Mathlib/Analysis/Analytic/RadiusLiminf.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["custom_or_effectful_command","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2020 Yury Kudryashov. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Yury Kudryashov
-/
import Mathlib.Analysis.Analytic.Basic
import Mathlib.Analysis.SpecialFunctions.Pow.NNReal


namespace GRWTSK.Analysis.AsymptoticAnalysis.RadiusEqLiminf.Variantc4d8330723117863a4a40dbd46bed526e25e2fd5769d8ee685aca95459aadf07

#align_import analysis.analytic.radius_liminf from "leanprover-community/mathlib"@"0b9eaaa7686280fad8cce467f5c3c57ee6ce77f8"

/-!
# Representation of `FormalMultilinearSeries.radius` as a `liminf`

In this file we prove that the radius of convergence of a `FormalMultilinearSeries` is equal to
$\liminf_{n\to\infty} \frac{1}{\sqrt[n]{‖p n‖}}$. This lemma can't go to `Analysis.Analytic.Basic`
because this would create a circular dependency once we redefine `exp` using
`FormalMultilinearSeries`.
-/


variable {𝕜 : Type*} [NontriviallyNormedField 𝕜] {E : Type*} [NormedAddCommGroup E]
  [NormedSpace 𝕜 E] {F : Type*} [NormedAddCommGroup F] [NormedSpace 𝕜 F]

open scoped Topology Classical BigOperators NNReal ENNReal

open Filter Asymptotics

namespace FormalMultilinearSeries

local macro_rules | `($x ^ $y) => `(HPow.hPow $x $y) -- Porting note: See issue lean4#2220

variable (p : FormalMultilinearSeries 𝕜 E F)

/-- The radius of a formal multilinear series is equal to
$\liminf_{n\to\infty} \frac{1}{\sqrt[n]{‖p n‖}}$. The actual statement uses `ℝ≥0` and some
coercions. -/
theorem radius_eq_liminf :
  p.radius = liminf (fun n => (1 / (‖p n‖₊ ^ (1 / (n : ℝ)) : ℝ≥0) : ℝ≥0∞)) atTop := by
  -- porting note: added type ascription to make elaborated statement match Lean 3 version
  have :
    ∀ (r : ℝ≥0) {n : ℕ},
      0 < n → ((r : ℝ≥0∞) ≤ 1 / ↑(‖p n‖₊ ^ (1 / (n : ℝ))) ↔ ‖p n‖₊ * r ^ n ≤ 1) := by
    intro r n hn
    have : 0 < (n : ℝ) := Nat.cast_pos.2 hn
    conv_lhs =>
      rw [one_div, ENNReal.le_inv_iff_mul_le, ← ENNReal.coe_mul, ENNReal.coe_le_one_iff, one_div, ←
        NNReal.rpow_one r, ← mul_inv_cancel this.ne', NNReal.rpow_mul, ← NNReal.mul_rpow, ←
        NNReal.one_rpow n⁻¹, NNReal.rpow_le_rpow_iff (inv_pos.2 this), mul_comm,
        NNReal.rpow_nat_cast]
  apply le_antisymm <;> refine' ENNReal.le_of_forall_nnreal_lt fun r hr => _
  · have := ((TFAE_exists_lt_isLittleO_pow (fun n => ‖p n‖ * r ^ n) 1).out 1 7).1
      (p.isLittleO_of_lt_radius hr)
    obtain ⟨a, ha, H⟩ := this
    apply le_liminf_of_le
    · infer_param
    · rw [←eventually_map]
      refine'
        H.mp ((eventually_gt_atTop 0).mono fun n hn₀ hn => (this _ hn₀).2 (NNReal.coe_le_coe.1 _))
      push_cast
      exact (le_abs_self _).trans (hn.trans (pow_le_one _ ha.1.le ha.2.le))
  · refine' p.le_radius_of_isBigO (IsBigO.of_bound 1 _)
    refine' (eventually_lt_of_lt_liminf hr).mp ((eventually_gt_atTop 0).mono fun n hn₀ hn => _)
    simpa using NNReal.coe_le_coe.2 ((this _ hn₀).1 hn.le)
#align formal_multilinear_series.radius_eq_liminf FormalMultilinearSeries.radius_eq_liminf

end FormalMultilinearSeries
