# Complete source: GRWTSK.Analysis.RealAnalysis.Integration.Normed.Variant4f659a959b94d3a4b7410b2cbc02996fb869fd560df78eb6ff3ae35f63c684e7

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `28881d7a684edf47357f9c12750c8bad993f0131` · SHA-256 `4996af42c6d947941b49cd170b19bb7a9408c25d454fe1460e198db4f052e18b`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: Analysis.RealAnalysis.Integration
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Analysis.RealAnalysis.Integration.Normed.Variant3ca02de8446df2d48a4ef03201e1e4445ec041cb3d35e7d1935543e6260f4d83","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"3ca02de8446df2d48a4ef03201e1e4445ec041cb3d35e7d1935543e6260f4d83","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Analysis.Integration.SourceCorpus.Normed.Variant3ca02de8446df2d48a4ef03201e1e4445ec041cb3d35e7d1935543e6260f4d83","mathematical_subject":"Analysis.Integration","original_sha256":"3ca02de8446df2d48a4ef03201e1e4445ec041cb3d35e7d1935543e6260f4d83","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/October/30/ooi/FEATURES/.lake/packages/mathlib/Mathlib/Analysis/Calculus/BumpFunction/Normed.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["custom_or_effectful_command","implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2022 Floris van Doorn. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Floris van Doorn
-/
import Mathlib.Analysis.Calculus.BumpFunction.Basic
import Mathlib.MeasureTheory.Integral.SetIntegral
import Mathlib.MeasureTheory.Measure.Lebesgue.EqHaar


namespace GRWTSK.Analysis.RealAnalysis.Integration.Normed.Variant3ca02de8446df2d48a4ef03201e1e4445ec041cb3d35e7d1935543e6260f4d83

#align_import analysis.calculus.bump_function_inner from "leanprover-community/mathlib"@"3bce8d800a6f2b8f63fe1e588fd76a9ff4adcebe"

/-!
# Normed bump function

In this file we define `ContDiffBump.normed f μ` to be the bump function `f` normalized so that
`∫ x, f.normed μ x ∂μ = 1` and prove some properties of this function.
-/

noncomputable section

open Function Filter Set Metric MeasureTheory FiniteDimensional Measure
open scoped Topology

namespace ContDiffBump

variable {E : Type*} [NormedAddCommGroup E] [NormedSpace ℝ E] [HasContDiffBump E]
  [MeasurableSpace E] {c : E} (f : ContDiffBump c) {x : E} {n : ℕ∞} {μ : Measure E}

/-- A bump function normed so that `∫ x, f.normed μ x ∂μ = 1`. -/
protected def normed (μ : Measure E) : E → ℝ := fun x => f x / ∫ x, f x ∂μ
#align cont_diff_bump.normed ContDiffBump.normed

theorem normed_def {μ : Measure E} (x : E) : f.normed μ x = f x / ∫ x, f x ∂μ :=
  rfl
#align cont_diff_bump.normed_def ContDiffBump.normed_def

theorem nonneg_normed (x : E) : 0 ≤ f.normed μ x :=
  div_nonneg f.nonneg <| integral_nonneg f.nonneg'
#align cont_diff_bump.nonneg_normed ContDiffBump.nonneg_normed

theorem contDiff_normed {n : ℕ∞} : ContDiff ℝ n (f.normed μ) :=
  f.contDiff.div_const _
#align cont_diff_bump.cont_diff_normed ContDiffBump.contDiff_normed

theorem continuous_normed : Continuous (f.normed μ) :=
  f.continuous.div_const _
#align cont_diff_bump.continuous_normed ContDiffBump.continuous_normed

theorem normed_sub (x : E) : f.normed μ (c - x) = f.normed μ (c + x) := by
  simp_rw [f.normed_def, f.sub]
#align cont_diff_bump.normed_sub ContDiffBump.normed_sub

theorem normed_neg (f : ContDiffBump (0 : E)) (x : E) : f.normed μ (-x) = f.normed μ x := by
  simp_rw [f.normed_def, f.neg]
#align cont_diff_bump.normed_neg ContDiffBump.normed_neg

variable [BorelSpace E] [FiniteDimensional ℝ E] [IsLocallyFiniteMeasure μ]

protected theorem integrable : Integrable f μ :=
  f.continuous.integrable_of_hasCompactSupport f.hasCompactSupport
#align cont_diff_bump.integrable ContDiffBump.integrable

protected theorem integrable_normed : Integrable (f.normed μ) μ :=
  f.integrable.div_const _
#align cont_diff_bump.integrable_normed ContDiffBump.integrable_normed

variable [μ.IsOpenPosMeasure]

theorem integral_pos : 0 < ∫ x, f x ∂μ := by
  refine' (integral_pos_iff_support_of_nonneg f.nonneg' f.integrable).mpr _
  rw [f.support_eq]
  exact measure_ball_pos μ c f.rOut_pos
#align cont_diff_bump.integral_pos ContDiffBump.integral_pos

theorem integral_normed : ∫ x, f.normed μ x ∂μ = 1 := by
  simp_rw [ContDiffBump.normed, div_eq_mul_inv, mul_comm (f _), ← smul_eq_mul, integral_smul]
  exact inv_mul_cancel f.integral_pos.ne'
#align cont_diff_bump.integral_normed ContDiffBump.integral_normed

theorem support_normed_eq : Function.support (f.normed μ) = Metric.ball c f.rOut := by
  unfold ContDiffBump.normed
  rw [support_div, f.support_eq, support_const f.integral_pos.ne', inter_univ]
#align cont_diff_bump.support_normed_eq ContDiffBump.support_normed_eq

theorem tsupport_normed_eq : tsupport (f.normed μ) = Metric.closedBall c f.rOut := by
  rw [tsupport, f.support_normed_eq, closure_ball _ f.rOut_pos.ne']
#align cont_diff_bump.tsupport_normed_eq ContDiffBump.tsupport_normed_eq

theorem hasCompactSupport_normed : HasCompactSupport (f.normed μ) := by
  simp only [HasCompactSupport, f.tsupport_normed_eq (μ := μ), isCompact_closedBall]
#align cont_diff_bump.has_compact_support_normed ContDiffBump.hasCompactSupport_normed

theorem tendsto_support_normed_smallSets {ι} {φ : ι → ContDiffBump c} {l : Filter ι}
    (hφ : Tendsto (fun i => (φ i).rOut) l (𝓝 0)) :
    Tendsto (fun i => Function.support fun x => (φ i).normed μ x) l (𝓝 c).smallSets := by
  simp_rw [NormedAddCommGroup.tendsto_nhds_zero, Real.norm_eq_abs,
    abs_eq_self.mpr (φ _).rOut_pos.le] at hφ
  rw [nhds_basis_ball.smallSets.tendsto_right_iff]
  refine fun ε hε ↦ (hφ ε hε).mono fun i hi ↦ ?_
  rw [(φ i).support_normed_eq]
  exact ball_subset_ball hi.le
#align cont_diff_bump.tendsto_support_normed_small_sets ContDiffBump.tendsto_support_normed_smallSets

variable (μ)

theorem integral_normed_smul {X} [NormedAddCommGroup X] [NormedSpace ℝ X]
    [CompleteSpace X] (z : X) : ∫ x, f.normed μ x • z ∂μ = z := by
  simp_rw [integral_smul_const, f.integral_normed (μ := μ), one_smul]
#align cont_diff_bump.integral_normed_smul ContDiffBump.integral_normed_smul

theorem measure_closedBall_le_integral : (μ (closedBall c f.rIn)).toReal ≤ ∫ x, f x ∂μ := by calc
  (μ (closedBall c f.rIn)).toReal = ∫ x in closedBall c f.rIn, 1 ∂μ := by simp
  _ = ∫ x in closedBall c f.rIn, f x ∂μ := set_integral_congr (measurableSet_closedBall)
        (fun x hx ↦ (one_of_mem_closedBall f hx).symm)
  _ ≤ ∫ x, f x ∂μ := set_integral_le_integral f.integrable (eventually_of_forall (fun x ↦ f.nonneg))

theorem normed_le_div_measure_closedBall_rIn (x : E) :
    f.normed μ x ≤ 1 / (μ (closedBall c f.rIn)).toReal := by
  rw [normed_def]
  gcongr
  · exact ENNReal.toReal_pos (measure_closedBall_pos _ _ f.rIn_pos).ne' measure_closedBall_lt_top.ne
  · exact f.le_one
  · exact f.measure_closedBall_le_integral μ

theorem integral_le_measure_closedBall : ∫ x, f x ∂μ ≤ (μ (closedBall c f.rOut)).toReal := by calc
  ∫ x, f x ∂μ = ∫ x in closedBall c f.rOut, f x ∂μ := by
    apply (set_integral_eq_integral_of_forall_compl_eq_zero (fun x hx ↦ ?_)).symm
    apply f.zero_of_le_dist (le_of_lt _)
    simpa using hx
  _ ≤ ∫ x in closedBall c f.rOut, 1 ∂μ := by
    apply set_integral_mono f.integrable.integrableOn _ (fun x ↦ f.le_one)
    simp [measure_closedBall_lt_top]
  _ = (μ (closedBall c f.rOut)).toReal := by simp

local macro_rules | `($x ^ $y) => `(HPow.hPow $x $y) -- Porting note: See issue lean4#2220

theorem measure_closedBall_div_le_integral [IsAddHaarMeasure μ] (K : ℝ) (h : f.rOut ≤ K * f.rIn) :
    (μ (closedBall c f.rOut)).toReal / K ^ finrank ℝ E ≤ ∫ x, f x ∂μ := by
  have K_pos : 0 < K := by
    simpa [f.rIn_pos, not_lt.2 f.rIn_pos.le] using mul_pos_iff.1 (f.rOut_pos.trans_le h)
  apply le_trans _ (f.measure_closedBall_le_integral μ)
  rw [div_le_iff (pow_pos K_pos _), addHaar_closedBall' _ _ f.rIn_pos.le,
    addHaar_closedBall' _ _ f.rOut_pos.le, ENNReal.toReal_mul, ENNReal.toReal_mul,
    ENNReal.toReal_ofReal (pow_nonneg f.rOut_pos.le _),
    ENNReal.toReal_ofReal (pow_nonneg f.rIn_pos.le _), mul_assoc, mul_comm _ (K ^ _), ← mul_assoc,
    ← mul_pow, mul_comm _ K]
  gcongr
  exact f.rOut_pos.le

theorem normed_le_div_measure_closedBall_rOut [IsAddHaarMeasure μ] (K : ℝ) (h : f.rOut ≤ K * f.rIn)
    (x : E) :
    f.normed μ x ≤ K ^ finrank ℝ E / (μ (closedBall c f.rOut)).toReal := by
  have K_pos : 0 < K := by
    simpa [f.rIn_pos, not_lt.2 f.rIn_pos.le] using mul_pos_iff.1 (f.rOut_pos.trans_le h)
  have : f x / ∫ y, f y ∂μ ≤ 1 / ∫ y, f y ∂μ := by
    gcongr
    · exact f.integral_pos.le
    · exact f.le_one
  apply this.trans
  rw [div_le_div_iff f.integral_pos, one_mul, ← div_le_iff' (pow_pos K_pos _)]
  · exact f.measure_closedBall_div_le_integral μ K h
  · exact ENNReal.toReal_pos (measure_closedBall_pos _ _ f.rOut_pos).ne'
      measure_closedBall_lt_top.ne

end ContDiffBump
```
