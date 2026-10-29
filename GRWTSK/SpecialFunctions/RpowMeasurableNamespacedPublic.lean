-- corpus-organization-transform:v1
-- Mathematical subject: Analysis.MeasureTheory
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Analysis.MeasureTheory.MeasurableSqrt.Variant71bf37d21949cecc6a9111251cceac7e8861104b37e984470dde6698bf09c69a","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"71bf37d21949cecc6a9111251cceac7e8861104b37e984470dde6698bf09c69a","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Analysis.MeasureTheory.SourceCorpus.MeasurableSqrt.Variant71bf37d21949cecc6a9111251cceac7e8861104b37e984470dde6698bf09c69a","mathematical_subject":"Analysis.MeasureTheory","original_sha256":"71bf37d21949cecc6a9111251cceac7e8861104b37e984470dde6698bf09c69a","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/rh16-games-packets/external/replay/.lake/packages/mathlib/Mathlib/Analysis/SpecialFunctions/ContinuousFunctionalCalculus/Rpow/Measurable.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2026 Gaëtan Serré. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Gaëtan Serré
-/
module

public import Mathlib.Analysis.SpecialFunctions.ContinuousFunctionalCalculus.Rpow.Isometric
public import Mathlib.MeasureTheory.Constructions.BorelSpace.Basic

/-!
# Measurability of `sqrt` over an algebra with an isometric CFC

If `A` is a measurable non-unital normed ring with an isometric continuous functional calculus,
then the square root function `sqrt : A → A` is measurable.
-/


namespace GRWTSK.Analysis.MeasureTheory.MeasurableSqrt.Variant71bf37d21949cecc6a9111251cceac7e8861104b37e984470dde6698bf09c69a

@[expose] public section

variable {A : Type*} [NonUnitalNormedRing A] [StarRing A] [NormedSpace ℝ A]
  [IsScalarTower ℝ A A] [SMulCommClass ℝ A A] [PartialOrder A] [StarOrderedRing A]
  [NonnegSpectrumClass ℝ A] [NonUnitalIsometricContinuousFunctionalCalculus ℝ A IsSelfAdjoint]
  [CompleteSpace A] [ContinuousStar A] [OrderClosedTopology A] [MeasurableSpace A] [BorelSpace A]

namespace CFC

@[fun_prop]
lemma measurable_sqrt : Measurable (sqrt : A → A) := by
  have h_measurable : MeasurableSet {S : A | 0 ≤ S} :=
    (isClosed_le continuous_const continuous_id).measurableSet
  classical
  convert continuousOn_sqrt.measurable_piecewise (continuousOn_const (c := 0)) h_measurable
  ext S
  by_cases hS : 0 ≤ S
  · simp [hS]
  · simp [hS, sqrt_of_not_nonneg]

end CFC
