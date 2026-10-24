-- corpus-organization-transform:v1
-- Mathematical subject: ProbabilityAndMathematicalStatistics.ProbabilityFoundations.ProbabilitySpaces
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.ProbabilityAndMathematicalStatistics.ProbabilityFoundations.ProbabilitySpaces.ProbabilityTheoryHasGaussianLaw.Variantc91c31023fde5886f3a2efcf697f30b9c678bba253405e7d01fc60c3debf1e05","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"c91c31023fde5886f3a2efcf697f30b9c678bba253405e7d01fc60c3debf1e05","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Probability.ProbabilityMeasures.SourceCorpus.ProbabilityTheoryHasGaussianLaw.Variantc91c31023fde5886f3a2efcf697f30b9c678bba253405e7d01fc60c3debf1e05","mathematical_subject":"Probability.ProbabilityMeasures","original_sha256":"c91c31023fde5886f3a2efcf697f30b9c678bba253405e7d01fc60c3debf1e05","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/rh16-games-packets/external/replay/.lake/packages/mathlib/Mathlib/Probability/Distributions/Gaussian/HasGaussianLaw/Def.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2025 Etienne Marion. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Etienne Marion
-/
module

public import Mathlib.Probability.Distributions.Gaussian.Basic

/-!
# Gaussian random variables

In this file we define a predicate `HasGaussianLaw X P`, which states that under the probability
measure `P`, the random variable `X` has a Gaussian distribution, i.e. `IsGaussian (P.map X)`.

## Main definition

* `HasGaussianLaw X P`: The random variable `X` has a Gaussian distribution under the measure `P`.

## Tags

Gaussian random variable
-/


namespace GRWTSK.ProbabilityAndMathematicalStatistics.ProbabilityFoundations.ProbabilitySpaces.ProbabilityTheoryHasGaussianLaw.Variantc91c31023fde5886f3a2efcf697f30b9c678bba253405e7d01fc60c3debf1e05

open MeasureTheory

/-- The predicate `HasGaussianLaw X P` means that under the measure `P`,
`X` has a Gaussian distribution. -/
@[fun_prop]
public structure ProbabilityTheory.HasGaussianLaw {Ω E : Type*} {mΩ : MeasurableSpace Ω}
    [TopologicalSpace E] [AddCommMonoid E] [Module ℝ E] [mE : MeasurableSpace E]
    (X : Ω → E) (P : Measure Ω) : Prop where
  protected aemeasurable : AEMeasurable X P := by fun_prop
  protected isGaussian_map : IsGaussian (P.map X)

attribute [fun_prop] ProbabilityTheory.HasGaussianLaw.aemeasurable
