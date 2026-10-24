-- corpus-organization-transform:v1
-- Mathematical subject: Topology.MetricTopology
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Topology.MetricTopology.EdistDef.Variant2a2934ab43b5814d86cbcfc47442289fcab869a4ac755fbfef67a5b335948ffb","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"2a2934ab43b5814d86cbcfc47442289fcab869a4ac755fbfef67a5b335948ffb","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Topology.MetricSpaces.SourceCorpus.EdistDef.Variant2a2934ab43b5814d86cbcfc47442289fcab869a4ac755fbfef67a5b335948ffb","mathematical_subject":"Topology.MetricSpaces","original_sha256":"2a2934ab43b5814d86cbcfc47442289fcab869a4ac755fbfef67a5b335948ffb","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/rh16-games-packets/external/replay/.lake/packages/mathlib/Mathlib/Analysis/Normed/Lp/Finsupp.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2026 Yaël Dillies. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Yaël Dillies
-/
module

public import Mathlib.Algebra.BigOperators.Finsupp.Basic
public import Mathlib.Analysis.Normed.Lp.WithLp
public import Mathlib.Analysis.SpecialFunctions.Pow.NNReal
public import Mathlib.Topology.MetricSpace.Basic

import Mathlib.Algebra.Order.BigOperators.Group.Finset
import Mathlib.Analysis.MeanInequalities
import Mathlib.Basic.ENNReal.BigOperators
import Mathlib.Tactic.Positivity.Finset

/-!
# Direct sum of metric spaces

This files endows the direct sum `ι →₀ X` of `ι`-many copies of a metric space `X` with the
L^p metric.

## TODO

Allow the L^∞ metric too. Currently, there is no easy way to perform the proofs:
`match` on `ℝ≥0∞` exposes the underlying `Option` and `induction p using ENNReal.recTopCoe` in the
`EMetricSpace` instance chokes on the `PseudoEMetricSpace` one.
-/


namespace GRWTSK.Topology.MetricTopology.EdistDef.Variant2a2934ab43b5814d86cbcfc47442289fcab869a4ac755fbfef67a5b335948ffb

open scoped ENNReal NNReal

public section

namespace Finsupp
variable {ι X : Type*} [Zero X] {p : ℝ≥0} [Fact (1 ≤ p)]

/-- The L^1 extended metric on `ι`-many copies of a metric space `X` -/
noncomputable instance [PseudoEMetricSpace X] : PseudoEMetricSpace (WithLp p <| ι →₀ X) where
  edist f g :=
  ((f.ofLp.zipWith edist (edist_self _) g.ofLp).sum fun i r ↦ r ^ (p : ℝ)) ^ (p⁻¹ : ℝ)
  edist_self f := by
    have : 0 < p := zero_lt_one.trans_le Fact.out
    simp [sum, *]
  edist_comm f g := by
    simp only [sum, zipWith_apply, edist_comm]
    congr 2
    ext i
    simp [edist_comm]
  edist_triangle f g h := by
    classical
    have : 0 < p := zero_lt_one.trans_le Fact.out
    let s := f.ofLp.support ∪ g.ofLp.support ∪ h.ofLp.support
    rw [sum_of_support_subset (s := s) _ (by grind [support_zipWith]) _ (by simp [*]),
      sum_of_support_subset (s := s) _ (by grind [support_zipWith]) _ (by simp [*]),
      sum_of_support_subset (s := s) _ (by grind [support_zipWith]) _ (by simp [*])]
    simp only [zipWith_apply, ← one_div]
    grw [← ENNReal.Lp_add_le _ _ _ (mod_cast Fact.out)]
    gcongr
    exact edist_triangle ..

lemma edist_def [PseudoEMetricSpace X] {p : ℝ≥0} [Fact (1 ≤ p)]
    (f g : WithLp p <| ι →₀ X) :
    edist f g =
      ((f.ofLp.zipWith edist (edist_self _) g.ofLp).sum fun _i r ↦ r ^ (p : ℝ)) ^ (p⁻¹ : ℝ) := rfl

/-- The L^1 extended metric on `ι`-many copies of a metric space `X` -/
noncomputable instance [EMetricSpace X] : EMetricSpace (WithLp p <| ι →₀ X) where
  eq_of_edist_eq_zero {f g} hfg := by simp_all [edist_def, sum, WithLp.ext_iff, DFunLike.ext_iff]

/-- The L^1 metric on `ι`-many copies of a metric space `X` -/
noncomputable instance [PseudoMetricSpace X] : PseudoMetricSpace (WithLp p <| ι →₀ X) :=
  PseudoEMetricSpace.toPseudoMetricSpaceOfDist
    (fun f g ↦ ((f.ofLp.zipWith dist (dist_self _) g.ofLp).sum fun i r ↦ r ^ (p : ℝ)) ^ (p⁻¹ : ℝ))
    (fun f g ↦ by dsimp [sum]; positivity) fun f g ↦ by
      simp only [edist_def, sum, zipWith_apply, ← coe_nnreal_ennreal_nndist, NNReal.zero_le_coe,
        ← ENNReal.coe_rpow_of_nonneg, ← ENNReal.ofNNReal_finsetSum, inv_nonneg, ← coe_nndist,
        ← NNReal.coe_rpow, ← NNReal.coe_sum, ENNReal.ofReal_coe_nnreal, ENNReal.coe_inj]
      congr! 2
      ext i
      simp [← coe_nndist, ← coe_nnreal_ennreal_nndist]

lemma dist_def [PseudoMetricSpace X] (f g : WithLp p <| ι →₀ X) :
    dist f g =
      ((f.ofLp.zipWith dist (dist_self _) g.ofLp).sum fun _i r ↦ r ^ (p : ℝ)) ^ (p⁻¹ : ℝ) := rfl

lemma nndist_def [PseudoMetricSpace X] (f g : WithLp p <| ι →₀ X) :
    nndist f g =
      ((f.ofLp.zipWith nndist (nndist_self _) g.ofLp).sum fun _i r ↦ r ^ (p : ℝ)) ^ (p⁻¹ : ℝ) := by
  ext
  simp only [coe_nndist, dist_def, sum, zipWith_apply, NNReal.coe_sum, NNReal.coe_rpow]
  congr 2
  ext i
  simp [← coe_nndist]

/-- The L^1 metric on `ι`-many copies of a metric space `X` -/
noncomputable instance [MetricSpace X] : MetricSpace (WithLp p <| ι →₀ X) :=
  EMetricSpace.toMetricSpaceOfDist
    (fun f g ↦ ((f.ofLp.zipWith dist (dist_self _) g.ofLp).sum fun i r ↦ r ^ (p : ℝ)) ^ (p⁻¹ : ℝ))
    (fun f g ↦ by dsimp [sum]; positivity) fun f g ↦ by rw [edist_dist, dist_def]

end Finsupp
