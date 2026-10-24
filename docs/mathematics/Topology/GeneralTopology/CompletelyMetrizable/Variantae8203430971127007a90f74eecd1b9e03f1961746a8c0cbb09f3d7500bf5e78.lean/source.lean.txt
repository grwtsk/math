-- corpus-organization-transform:v1
-- Mathematical subject: Topology.GeneralTopology
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Topology.GeneralTopology.IsCompletelyMetrizableSpace.Variante44793170a621be5acefeef15be6cf63c0f224b50e88e96fe0346df4123a7750","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"e44793170a621be5acefeef15be6cf63c0f224b50e88e96fe0346df4123a7750","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Topology.GeneralTopology.SourceCorpus.IsCompletelyMetrizableSpace.Variante44793170a621be5acefeef15be6cf63c0f224b50e88e96fe0346df4123a7750","mathematical_subject":"Topology.GeneralTopology","original_sha256":"e44793170a621be5acefeef15be6cf63c0f224b50e88e96fe0346df4123a7750","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/October/30/ooi/spectral-proof-of-RH/lean/mathlib4/Mathlib/Topology/Metrizable/CompletelyMetrizable.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["external_root_references_preserved","root_references_require_identity_review","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2025 Etienne Marion. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Etienne Marion
-/
import Mathlib.Topology.MetricSpace.Gluing
import Mathlib.Topology.Metrizable.Uniformity

/-!
# Completely metrizable spaces

A topological space is completely metrizable if one can endow it mith a `MetricSpace` structure
which makes it complete and gives the same topology. This typeclass allows to state theorems
which do not require a `MetricSpace` structure to make sense without introducing such a structure.
It is in particular useful in measure theory, where one often assumes that a space is a
`PolishSpace`, i.e. a separable and completely metrizable space. Sometimes the separability
hypothesis is not needed and the right assumption is then `IsCompletelyMetrizableSpace`.

## Main definition

* `IsCompletelyMetrizableSpace X`: A topological space is completely metrizable if there exists a
  metric space structure compatible with the topology which makes the space complete.
  To endow such a space with a compatible distance, use `letI := upgradeIsCompletelyMetrizable X`.

## Implementation note

Given a `IsCompletelyMetrizableSpace X` instance, one may want to endow `X` with a complete metric.
This can be done by writing `letI := upgradeIsCompletelyMetrizable X`, which will endow `X` with
an `UpgradedIsCompletelyMetrizableSpace X` instance. This class is a convenience class and
no instance should be registered for it.
-/


namespace GRWTSK.Topology.GeneralTopology.IsCompletelyMetrizableSpace.Variante44793170a621be5acefeef15be6cf63c0f224b50e88e96fe0346df4123a7750

open Filter Function Set Topology

variable {X Y : Type*}

namespace TopologicalSpace

/-- A topological space is completely metrizable if there exists a metric space structure
compatible with the topology which makes the space complete.
To endow such a space with a compatible distance, use
`letI := upgradeIsCompletelyMetrizable X`. -/
class IsCompletelyMetrizableSpace (X : Type*) [t : TopologicalSpace X] : Prop where
  complete : ∃ m : MetricSpace X, m.toUniformSpace.toTopologicalSpace = t ∧
    @CompleteSpace X m.toUniformSpace

instance (priority := 100) _root_.MetricSpace.toIsCompletelyMetrizableSpace
    [MetricSpace X] [CompleteSpace X] : IsCompletelyMetrizableSpace X :=
  ⟨⟨‹_›, rfl, ‹_›⟩⟩

/-- A convenience class, for a completely metrizable space endowed with a complete metric.
No instance of this class should be registered: It should be used as
`letI := upgradeIsCompletelyMetrizable X` to endow a completely metrizable
space with a complete metric. -/
class UpgradedIsCompletelyMetrizableSpace (X : Type*) extends MetricSpace X, CompleteSpace X

open scoped Uniformity in
instance (priority := 100) IsCompletelyMetrizableSpace.of_completeSpace_metrizable [UniformSpace X]
    [CompleteSpace X] [(𝓤 X).IsCountablyGenerated] [T0Space X] :
    IsCompletelyMetrizableSpace X where
  complete := ⟨UniformSpace.metricSpace X, rfl, ‹_›⟩

/-- Construct on a completely metrizable space a metric (compatible with the topology)
which is complete. -/
noncomputable def completelyMetrizableMetric (X : Type*) [TopologicalSpace X]
    [h : IsCompletelyMetrizableSpace X] : MetricSpace X :=
  h.complete.choose.replaceTopology h.complete.choose_spec.1.symm

theorem complete_completelyMetrizableMetric (X : Type*) [ht : TopologicalSpace X]
    [h : IsCompletelyMetrizableSpace X] :
    @CompleteSpace X (completelyMetrizableMetric X).toUniformSpace := by
  convert h.complete.choose_spec.2
  exact MetricSpace.replaceTopology_eq _ _

/-- This definition endows a completely metrizable space with a complete metric. Use it as:
`letI := upgradeIsCompletelyMetrizable X`. -/
noncomputable
def upgradeIsCompletelyMetrizable (X : Type*) [TopologicalSpace X] [IsCompletelyMetrizableSpace X] :
    UpgradedIsCompletelyMetrizableSpace X :=
  letI := completelyMetrizableMetric X
  { complete_completelyMetrizableMetric X with }

namespace IsCompletelyMetrizableSpace

instance (priority := 100) MetrizableSpace [TopologicalSpace X] [IsCompletelyMetrizableSpace X] :
    MetrizableSpace X := by
  letI := upgradeIsCompletelyMetrizable X
  infer_instance

/-- A countable product of completely metrizable spaces is completely metrizable. -/
instance pi_countable {ι : Type*} [Countable ι] {X : ι → Type*} [∀ i, TopologicalSpace (X i)]
    [∀ i, IsCompletelyMetrizableSpace (X i)] : IsCompletelyMetrizableSpace (Π i, X i) := by
  letI := fun i ↦ upgradeIsCompletelyMetrizable (X i)
  infer_instance

/-- A disjoint union of completely metrizable spaces is completely metrizable. -/
instance sigma {ι : Type*} {X : ι → Type*} [∀ n, TopologicalSpace (X n)]
    [∀ n, IsCompletelyMetrizableSpace (X n)] : IsCompletelyMetrizableSpace (Σ n, X n) :=
  letI := fun n ↦ upgradeIsCompletelyMetrizable (X n)
  letI : MetricSpace (Σ n, X n) := Metric.Sigma.metricSpace
  haveI : CompleteSpace (Σ n, X n) := Metric.Sigma.completeSpace
  inferInstance

/-- The product of two completely metrizable spaces is completely metrizable. -/
instance prod [TopologicalSpace X] [IsCompletelyMetrizableSpace X] [TopologicalSpace Y]
    [IsCompletelyMetrizableSpace Y] : IsCompletelyMetrizableSpace (X × Y) :=
  letI := upgradeIsCompletelyMetrizable X
  letI := upgradeIsCompletelyMetrizable Y
  inferInstance

/-- The disjoint union of two completely metrizable spaces is completely metrizable. -/
instance sum [TopologicalSpace X] [IsCompletelyMetrizableSpace X] [TopologicalSpace Y]
    [IsCompletelyMetrizableSpace Y] : IsCompletelyMetrizableSpace (X ⊕ Y) :=
  letI := upgradeIsCompletelyMetrizable X
  letI := upgradeIsCompletelyMetrizable Y
  inferInstance

/-- Given a closed embedding into a completely metrizable space,
the source space is also completely metrizable. -/
theorem _root_.GRWTSK.Topology.GeneralTopology.IsCompletelyMetrizableSpace.Variante44793170a621be5acefeef15be6cf63c0f224b50e88e96fe0346df4123a7750.Topology.IsClosedEmbedding.IsCompletelyMetrizableSpace [TopologicalSpace X]
    [TopologicalSpace Y] [IsCompletelyMetrizableSpace Y] {f : X → Y} (hf : IsClosedEmbedding f) :
    IsCompletelyMetrizableSpace X := by
  letI := upgradeIsCompletelyMetrizable Y
  letI : MetricSpace X := hf.isEmbedding.comapMetricSpace f
  have : CompleteSpace X := by
    rw [completeSpace_iff_isComplete_range hf.isEmbedding.to_isometry.isUniformInducing]
    exact hf.isClosed_range.isComplete
  infer_instance

/-- Any discrete space is completely metrizable. -/
instance (priority := 50) discrete [TopologicalSpace X] [DiscreteTopology X] :
    IsCompletelyMetrizableSpace X := by
  classical
  let m : MetricSpace X :=
    { dist x y := if x = y then 0 else 1
      dist_self x := by simp
      dist_comm x y := by
        obtain h | h := eq_or_ne x y
        · simp [h]
        · simp [h, h.symm]
      dist_triangle x y z := by
        by_cases x = y <;> by_cases x = z <;> by_cases y = z <;> simp_all
      eq_of_dist_eq_zero := by simp }
  refine ⟨m, ?_, ?_⟩
  · rw [DiscreteTopology.eq_bot (α := X)]
    refine eq_bot_of_singletons_open fun x ↦ ?_
    convert @Metric.isOpen_ball _ _ x 1
    refine subset_antisymm (singleton_subset_iff.2 (Metric.mem_ball_self (by norm_num)))
      fun y hy ↦ ?_
    simp only [Metric.mem_ball, mem_singleton_iff] at *
    by_contra
    change (if y = x then 0 else 1) < 1 at hy
    simp_all
  · refine Metric.complete_of_cauchySeq_tendsto fun u hu ↦ ?_
    rw [Metric.cauchySeq_iff'] at hu
    obtain ⟨N, hN⟩ := hu 1 (by norm_num)
    refine ⟨u N, @tendsto_atTop_of_eventually_const X UniformSpace.toTopologicalSpace (u N) _ _ _ N
      fun n hn ↦ ?_⟩
    specialize hN n hn
    by_contra
    change (if u n = u N then 0 else 1) < 1 at hN
    simp_all

/-- A closed subset of a completely metrizable space is also completely metrizable. -/
theorem _root_.GRWTSK.Topology.GeneralTopology.IsCompletelyMetrizableSpace.Variante44793170a621be5acefeef15be6cf63c0f224b50e88e96fe0346df4123a7750.IsClosed.isCompletelyMetrizableSpace
    [TopologicalSpace X] [IsCompletelyMetrizableSpace X]
    {s : Set X} (hs : IsClosed s) : IsCompletelyMetrizableSpace s :=
  hs.isClosedEmbedding_subtypeVal.IsCompletelyMetrizableSpace

instance univ [TopologicalSpace X] [IsCompletelyMetrizableSpace X] :
    IsCompletelyMetrizableSpace (univ : Set X) :=
  isClosed_univ.isCompletelyMetrizableSpace

end IsCompletelyMetrizableSpace

end TopologicalSpace
