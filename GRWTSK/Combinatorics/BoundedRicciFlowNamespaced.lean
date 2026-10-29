-- corpus-organization-transform:v1
-- Mathematical subject: CombinatoricsAndDiscreteMathematics
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CombinatoricsAndDiscreteMathematics.BoundedRicciReferenceFlow.Variant619cb21b5801d634da9cb5e4ed7e106ce0ff76698531ea838838fa6a28d42dd3","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"619cb21b5801d634da9cb5e4ed7e106ce0ff76698531ea838838fa6a28d42dd3","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Combinatorics.FiniteCombinatorics.SourceCorpus.BoundedRicciReferenceFlow.Variant619cb21b5801d634da9cb5e4ed7e106ce0ff76698531ea838838fa6a28d42dd3","mathematical_subject":"Combinatorics.FiniteCombinatorics","original_sha256":"619cb21b5801d634da9cb5e4ed7e106ce0ff76698531ea838838fa6a28d42dd3","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/08/10/TestProject/DAF/Geometry/BoundedRicciFlow.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import DAF.Geometry.CurvatureInterface

/-!
# Bounded discrete Ricci reference flows

This is a finite, fixed-domain metric trajectory.  It records a selected
discrete curvature semantics, a fixed reference metric, positive bounded
weights on the terrain's pre-existing edges, and nonincrease of a declared
distance to the reference.  It neither expands the terrain nor establishes a
smooth Ricci-flow theorem.
-/


namespace GRWTSK.CombinatoricsAndDiscreteMathematics.BoundedRicciReferenceFlow.Variant619cb21b5801d634da9cb5e4ed7e106ce0ff76698531ea838838fa6a28d42dd3

namespace DAF.Geometry

open DAF.Terrain

universe uV uMetric

/-- A bounded finite metric trajectory toward a fixed reference metric. -/
structure BoundedRicciReferenceFlow
    {V : Type uV}
    [Fintype V]
    [DecidableEq V]
    (T : Terrain V) where
  MetricState : Type uMetric
  model : DiscreteCurvatureModel T MetricState
  horizon : Nat
  referenceMetric : MetricState
  metric : Fin (horizon + 1) → MetricState
  metric_step :
    ∀ k : Fin horizon,
      metric ⟨k.1 + 1, Nat.succ_lt_succ k.2⟩ =
        model.metricStep (metric ⟨k.1, Nat.lt_succ_of_lt k.2⟩)
  epsilon : ℝ
  maximum : ℝ
  epsilon_pos : 0 < epsilon
  epsilon_le_maximum : epsilon ≤ maximum
  weight_bounds :
    ∀ (k : Fin (horizon + 1)) {x y : V}, T.Adjacent x y →
      (epsilon ≤ model.edgeWeight (metric k) x y) ∧
        (model.edgeWeight (metric k) x y ≤ maximum)
  reference_fixed : model.metricStep referenceMetric = referenceMetric
  target_distance_nonincreasing :
    ∀ k : Fin horizon,
      model.metricDistance
          (metric ⟨k.1 + 1, Nat.succ_lt_succ k.2⟩)
          referenceMetric ≤
        model.metricDistance
          (metric ⟨k.1, Nat.lt_succ_of_lt k.2⟩)
          referenceMetric

namespace BoundedRicciReferenceFlow

variable {V : Type uV} [Fintype V] [DecidableEq V]
variable {T : Terrain V}

/-- Every legal edge has a strictly positive weight at every sampled time. -/
theorem edgeWeight_pos
    (flow : BoundedRicciReferenceFlow T)
    (k : Fin (flow.horizon + 1))
    {x y : V}
    (hxy : T.Adjacent x y) :
    0 < flow.model.edgeWeight (flow.metric k) x y :=
  lt_of_lt_of_le flow.epsilon_pos (flow.weight_bounds k hxy).1

/-- Metric evolution does not assign weight to an illegal terrain edge. -/
theorem illegal_edge_excluded
    (flow : BoundedRicciReferenceFlow T)
    (k : Fin (flow.horizon + 1))
    {x y : V}
    (hxy : ¬ T.Adjacent x y) :
    flow.model.edgeWeight (flow.metric k) x y = 0 :=
  flow.model.illegal_edge_weight_zero (flow.metric k) hxy

/-- The selected semantics is one of the finite discrete interpretations. -/
theorem semantics_ne_smoothManifold
    (flow : BoundedRicciReferenceFlow T) :
    flow.model.semantics ≠ .smoothManifold :=
  flow.model.semantics_ne_smoothManifold

/-- Each declared step is exactly the model's metric step. -/
theorem metric_succ
    (flow : BoundedRicciReferenceFlow T)
    (k : Fin flow.horizon) :
    flow.metric ⟨k.1 + 1, Nat.succ_lt_succ k.2⟩ =
      flow.model.metricStep
        (flow.metric ⟨k.1, Nat.lt_succ_of_lt k.2⟩) :=
  flow.metric_step k

/-- Distance to the fixed reference cannot increase at a certified step. -/
theorem distance_to_reference_nonincreasing
    (flow : BoundedRicciReferenceFlow T)
    (k : Fin flow.horizon) :
    flow.model.metricDistance
        (flow.metric ⟨k.1 + 1, Nat.succ_lt_succ k.2⟩)
        flow.referenceMetric ≤
      flow.model.metricDistance
        (flow.metric ⟨k.1, Nat.lt_succ_of_lt k.2⟩)
        flow.referenceMetric :=
  flow.target_distance_nonincreasing k

end BoundedRicciReferenceFlow

end DAF.Geometry
