-- corpus-organization-transform:v1
-- Mathematical subject: Topology.MetricTopology
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Topology.MetricTopology.PolishSpace.Variantb6be8ff00fced65974ac86c81f68ec583d2d0238048e4fc7e6b623ede63b9a5b","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"b6be8ff00fced65974ac86c81f68ec583d2d0238048e4fc7e6b623ede63b9a5b","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Topology.MetricSpaces.SourceCorpus.PolishSpace.Variantb6be8ff00fced65974ac86c81f68ec583d2d0238048e4fc7e6b623ede63b9a5b","mathematical_subject":"Topology.MetricSpaces","original_sha256":"b6be8ff00fced65974ac86c81f68ec583d2d0238048e4fc7e6b623ede63b9a5b","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/October/30/ooi/FEATURES/.lake/packages/mathlib/Mathlib/Topology/MetricSpace/Polish.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["external_root_references_preserved","implicit_eof_scopes","root_references_require_identity_review","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2022 Sébastien Gouëzel. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Sébastien Gouëzel
-/
import Mathlib.Topology.MetricSpace.PiNat
import Mathlib.Topology.MetricSpace.Isometry
import Mathlib.Topology.MetricSpace.Gluing
import Mathlib.Topology.Sets.Opens
import Mathlib.Analysis.Normed.Field.Basic


namespace GRWTSK.Topology.MetricTopology.PolishSpace.Variantb6be8ff00fced65974ac86c81f68ec583d2d0238048e4fc7e6b623ede63b9a5b

#align_import topology.metric_space.polish from "leanprover-community/mathlib"@"bcfa726826abd57587355b4b5b7e78ad6527b7e4"

/-!
# Polish spaces

A topological space is Polish if its topology is second-countable and there exists a compatible
complete metric. This is the class of spaces that is well-behaved with respect to measure theory.
In this file, we establish the basic properties of Polish spaces.

## Main definitions and results

* `PolishSpace α` is a mixin typeclass on a topological space, requiring that the topology is
  second-countable and compatible with a complete metric. To endow the space with such a metric,
  use in a proof `letI := upgradePolishSpace α`.
  We register an instance from complete second-countable metric spaces to Polish spaces, not the
  other way around.
* We register that countable products and sums of Polish spaces are Polish.
* `IsClosed.polishSpace`: a closed subset of a Polish space is Polish.
* `IsOpen.polishSpace`: an open subset of a Polish space is Polish.
* `exists_nat_nat_continuous_surjective`: any nonempty Polish space is the continuous image
  of the fundamental Polish space `ℕ → ℕ`.

A fundamental property of Polish spaces is that one can put finer topologies, still Polish,
with additional properties:

* `exists_polishSpace_forall_le`: on a topological space, consider countably many topologies
  `t n`, all Polish and finer than the original topology. Then there exists another Polish
  topology which is finer than all the `t n`.
* `IsClopenable s` is a property of a subset `s` of a topological space, requiring that there
  exists a finer topology, which is Polish, for which `s` becomes open and closed. We show that
  this property is satisfied for open sets, closed sets, for complements, and for countable unions.
  Once Borel-measurable sets are defined in later files, it will follow that any Borel-measurable
  set is clopenable. Once the Lusin-Souslin theorem is proved using analytic sets, we will even
  show that a set is clopenable if and only if it is Borel-measurable, see
  `isClopenable_iff_measurableSet`.
-/

noncomputable section

open Classical Topology Filter TopologicalSpace Set Metric Function

variable {α : Type*} {β : Type*}

/-! ### Basic properties of Polish spaces -/


/-- A Polish space is a topological space with second countable topology, that can be endowed
with a metric for which it is complete.
We register an instance from complete second countable metric space to polish space, and not the
other way around as this is the most common use case.

To endow a Polish space with a complete metric space structure, do `letI := upgradePolishSpace α`.
-/
class PolishSpace (α : Type*) [h : TopologicalSpace α] : Prop where
  secondCountableTopology : SecondCountableTopology α
  complete : ∃ m : MetricSpace α, m.toUniformSpace.toTopologicalSpace = h ∧
    @CompleteSpace α m.toUniformSpace
#align polish_space PolishSpace

/-- A convenience class, for a Polish space endowed with a complete metric. No instance of this
class should be registered: It should be used as `letI := upgradePolishSpace α` to endow a Polish
space with a complete metric. -/
class UpgradedPolishSpace (α : Type*) extends MetricSpace α, SecondCountableTopology α,
  CompleteSpace α
#align upgraded_polish_space UpgradedPolishSpace

instance (priority := 100) polishSpace_of_complete_second_countable [m : MetricSpace α]
    [h : SecondCountableTopology α] [h' : CompleteSpace α] : PolishSpace α where
  secondCountableTopology := h
  complete := ⟨m, rfl, h'⟩
#align polish_space_of_complete_second_countable polishSpace_of_complete_second_countable

/-- Construct on a Polish space a metric (compatible with the topology) which is complete. -/
def polishSpaceMetric (α : Type*) [TopologicalSpace α] [h : PolishSpace α] : MetricSpace α :=
  h.complete.choose.replaceTopology h.complete.choose_spec.1.symm
#align polish_space_metric polishSpaceMetric

theorem complete_polishSpaceMetric (α : Type*) [ht : TopologicalSpace α] [h : PolishSpace α] :
    @CompleteSpace α (polishSpaceMetric α).toUniformSpace := by
  convert h.complete.choose_spec.2
  exact MetricSpace.replaceTopology_eq _ _
#align complete_polish_space_metric complete_polishSpaceMetric

/-- This definition endows a Polish space with a complete metric. Use it as:
`letI := upgradePolishSpace α`. -/
def upgradePolishSpace (α : Type*) [TopologicalSpace α] [PolishSpace α] :
    UpgradedPolishSpace α :=
  letI := polishSpaceMetric α
  { complete_polishSpaceMetric α, PolishSpace.secondCountableTopology with }
#align upgrade_polish_space upgradePolishSpace

namespace PolishSpace

instance (priority := 100) t2Space (α : Type*) [TopologicalSpace α] [PolishSpace α] :
    T2Space α := by
  letI := upgradePolishSpace α
  infer_instance
#align polish_space.t2_space PolishSpace.t2Space

/-- A countable product of Polish spaces is Polish. -/
instance pi_countable {ι : Type*} [Countable ι] {E : ι → Type*} [∀ i, TopologicalSpace (E i)]
    [∀ i, PolishSpace (E i)] : PolishSpace (∀ i, E i) := by
  cases nonempty_encodable ι
  letI := fun i => upgradePolishSpace (E i)
  letI : MetricSpace (∀ i, E i) := PiCountable.metricSpace
  infer_instance
#align polish_space.pi_countable PolishSpace.pi_countable

/-- Without this instance, Lean 3 was unable to find `PolishSpace (ℕ → ℕ)` by typeclass inference.
Porting note: TODO: test with Lean 4. -/
instance nat_fun [TopologicalSpace α] [PolishSpace α] : PolishSpace (ℕ → α) := inferInstance
#align polish_space.nat_fun PolishSpace.nat_fun

/-- A countable disjoint union of Polish spaces is Polish. -/
instance sigma {ι : Type*} [Countable ι] {E : ι → Type*} [∀ n, TopologicalSpace (E n)]
    [∀ n, PolishSpace (E n)] : PolishSpace (Σn, E n) :=
  letI := fun n => upgradePolishSpace (E n)
  letI : MetricSpace (Σn, E n) := Sigma.metricSpace
  haveI : CompleteSpace (Σn, E n) := Sigma.completeSpace
  inferInstance
#align polish_space.sigma PolishSpace.sigma

/-- The disjoint union of two Polish spaces is Polish. -/
instance sum [TopologicalSpace α] [PolishSpace α] [TopologicalSpace β] [PolishSpace β] :
    PolishSpace (α ⊕ β) :=
  letI := upgradePolishSpace α
  letI := upgradePolishSpace β
  letI : MetricSpace (α ⊕ β) := metricSpaceSum
  inferInstance
#align polish_space.sum PolishSpace.sum

/-- Any nonempty Polish space is the continuous image of the fundamental space `ℕ → ℕ`. -/
theorem exists_nat_nat_continuous_surjective (α : Type*) [TopologicalSpace α] [PolishSpace α]
    [Nonempty α] : ∃ f : (ℕ → ℕ) → α, Continuous f ∧ Surjective f :=
  letI := upgradePolishSpace α
  exists_nat_nat_continuous_surjective_of_completeSpace α
#align polish_space.exists_nat_nat_continuous_surjective PolishSpace.exists_nat_nat_continuous_surjective

/-- Given a closed embedding into a Polish space, the source space is also Polish. -/
theorem _root_.GRWTSK.Topology.MetricTopology.PolishSpace.Variantb6be8ff00fced65974ac86c81f68ec583d2d0238048e4fc7e6b623ede63b9a5b.ClosedEmbedding.polishSpace [TopologicalSpace α] [TopologicalSpace β] [PolishSpace β]
    {f : α → β} (hf : ClosedEmbedding f) : PolishSpace α := by
  letI := upgradePolishSpace β
  letI : MetricSpace α := hf.toEmbedding.comapMetricSpace f
  haveI : SecondCountableTopology α := hf.toEmbedding.secondCountableTopology
  have : CompleteSpace α := by
    rw [completeSpace_iff_isComplete_range hf.toEmbedding.to_isometry.uniformInducing]
    exact hf.closed_range.isComplete
  infer_instance
#align closed_embedding.polish_space ClosedEmbedding.polishSpace

/-- Pulling back a Polish topology under an equiv gives again a Polish topology. -/
theorem _root_.GRWTSK.Topology.MetricTopology.PolishSpace.Variantb6be8ff00fced65974ac86c81f68ec583d2d0238048e4fc7e6b623ede63b9a5b.Equiv.polishSpace_induced [t : TopologicalSpace β] [PolishSpace β] (f : α ≃ β) :
    @PolishSpace α (t.induced f) :=
  letI : TopologicalSpace α := t.induced f
  (f.toHomeomorphOfInducing ⟨rfl⟩).closedEmbedding.polishSpace
#align equiv.polish_space_induced Equiv.polishSpace_induced

/-- A closed subset of a Polish space is also Polish. -/
theorem _root_.GRWTSK.Topology.MetricTopology.PolishSpace.Variantb6be8ff00fced65974ac86c81f68ec583d2d0238048e4fc7e6b623ede63b9a5b.IsClosed.polishSpace {α : Type*} [TopologicalSpace α] [PolishSpace α] {s : Set α}
    (hs : IsClosed s) : PolishSpace s :=
  (IsClosed.closedEmbedding_subtype_val hs).polishSpace
#align is_closed.polish_space IsClosed.polishSpace

/-- A sequence of type synonyms of a given type `α`, useful in the proof of
`exists_polishSpace_forall_le` to endow each copy with a different topology. -/
@[nolint unusedArguments]
def AuxCopy (α : Type*) {ι : Type*} (_i : ι) : Type _ := α
#align polish_space.aux_copy PolishSpace.AuxCopy

/-- Given a Polish space, and countably many finer Polish topologies, there exists another Polish
topology which is finer than all of them.

Porting note: TODO: the topology `t'` is `t ⊓ ⨅ i, m i`. -/
theorem exists_polishSpace_forall_le {ι : Type*} [Countable ι] [t : TopologicalSpace α]
    [p : PolishSpace α] (m : ι → TopologicalSpace α) (hm : ∀ n, m n ≤ t)
    (h'm : ∀ n, @PolishSpace α (m n)) :
    ∃ t' : TopologicalSpace α, (∀ n, t' ≤ m n) ∧ t' ≤ t ∧ @PolishSpace α t' := by
  rcases isEmpty_or_nonempty ι with (hι | hι)
  · exact ⟨t, fun i => (IsEmpty.elim hι i : _), le_rfl, p⟩
  inhabit ι
  /- Consider the product of infinitely many copies of `α`, each endowed with the topology `m n`.
    This is a Polish space, as a product of Polish spaces. Pulling back this topology under the
    diagonal embedding of `α`, one gets a Polish topology which is finer than all the `m n`. -/
  letI : ∀ n : ι, TopologicalSpace (AuxCopy α n) := fun n => m n
  haveI : ∀ n : ι, PolishSpace (AuxCopy α n) := fun n => h'm n
  letI T : TopologicalSpace (∀ n : ι, AuxCopy α n) := inferInstance
  let f : α → ∀ n : ι, AuxCopy α n := fun x _ => x
  -- show that the induced topology is finer than all the `m n`.
  have T_le_m : ∀ n, T.induced f ≤ m n := fun n ↦ by
    rw [induced_to_pi]
    exact iInf_le_of_le n (@induced_id _ (m n)).le
  refine' ⟨T.induced f, fun n => T_le_m n, (T_le_m default).trans (hm default), _⟩
  -- show that the new topology is Polish, as the pullback of a Polish topology under a closed
  -- embedding.
  have A : range f = ⋂ n, { x | x n = x default } := by
    ext x
    constructor
    · rintro ⟨y, rfl⟩
      exact mem_iInter.2 fun n => by simp only [mem_setOf_eq]
    · refine fun hx ↦ ⟨x default, ?_⟩
      ext1 n
      symm
      exact mem_iInter.1 hx n
  have f_closed : IsClosed (range f) := by
    rw [A]
    refine isClosed_iInter fun n => ?_
    have C : ∀ i : ι, Continuous fun x : ∀ n, AuxCopy α n => (id (x i) : α) := fun i ↦
      have : Continuous (show AuxCopy α i → α from id) := continuous_id_of_le (hm i)
      this.comp (continuous_apply i)
    apply isClosed_eq (C n) (C default)
  have K : @_root_.Embedding _ _ (T.induced f) T f := by
    refine Function.Injective.embedding_induced fun x y hxy ↦ ?_
    have : f x default = f y default := by rw [hxy]
    exact this
  have L : @ClosedEmbedding _ _ (T.induced f) T f := by
    refine @ClosedEmbedding.mk _ _ (T.induced f) T f ?_ ?_
    · exact K
    · exact f_closed
  exact @ClosedEmbedding.polishSpace _ _ (T.induced f) T (by infer_instance) _ L
#align polish_space.exists_polish_space_forall_le PolishSpace.exists_polishSpace_forall_le

end PolishSpace

/-!
### An open subset of a Polish space is Polish

To prove this fact, one needs to construct another metric, giving rise to the same topology,
for which the open subset is complete. This is not obvious, as for instance `(0,1) ⊆ ℝ` is not
complete for the usual metric of `ℝ`: one should build a new metric that blows up close to the
boundary.

Porting note: definitions and lemmas in this section now take `(s : Opens α)` instead of
`{s : Set α} (hs : IsOpen s)` so that we can turn various definitions and lemmas into instances.
Also, some lemmas used to assume `Set.Nonempty sᶜ` in Lean 3. In fact, this assumption is not
needed, so it was dropped.
-/

namespace TopologicalSpace.Opens

variable [MetricSpace α] {s : Opens α}

/-- A type synonym for a subset `s` of a metric space, on which we will construct another metric
for which it will be complete. -/
-- porting note: was @[nolint has_nonempty_instance]
def CompleteCopy {α : Type*} [MetricSpace α] (s : Opens α) : Type _ := s
#align polish_space.complete_copy TopologicalSpace.Opens.CompleteCopyₓ

namespace CompleteCopy

/-- A distance on an open subset `s` of a metric space, designed to make it complete.  It is given
by `dist' x y = dist x y + |1 / dist x sᶜ - 1 / dist y sᶜ|`, where the second term blows up close to
the boundary to ensure that Cauchy sequences for `dist'` remain well inside `s`. -/
-- Porting note: in mathlib3 this was only a local instance.
instance instDist : Dist (CompleteCopy s) where
  dist x y := dist x.1 y.1 + abs (1 / infDist x.1 sᶜ - 1 / infDist y.1 sᶜ)
#align polish_space.has_dist_complete_copy TopologicalSpace.Opens.CompleteCopy.instDistₓ

theorem dist_eq (x y : CompleteCopy s) :
    dist x y = dist x.1 y.1 + abs (1 / infDist x.1 sᶜ - 1 / infDist y.1 sᶜ) :=
  rfl
#align polish_space.dist_complete_copy_eq TopologicalSpace.Opens.CompleteCopy.dist_eqₓ

theorem dist_val_le_dist (x y : CompleteCopy s) : dist x.1 y.1 ≤ dist x y :=
  (le_add_iff_nonneg_right _).2 (abs_nonneg _)
#align polish_space.dist_le_dist_complete_copy TopologicalSpace.Opens.CompleteCopy.dist_val_le_distₓ

instance : TopologicalSpace (CompleteCopy s) := inferInstanceAs (TopologicalSpace s)
instance : T0Space (CompleteCopy s) := inferInstanceAs (T0Space s)

/-- A metric space structure on a subset `s` of a metric space, designed to make it complete
if `s` is open. It is given by `dist' x y = dist x y + |1 / dist x sᶜ - 1 / dist y sᶜ|`, where the
second term blows up close to the boundary to ensure that Cauchy sequences for `dist'` remain well
inside `s`.

Porting note: the definition changed to ensure that the `TopologicalSpace` structure on
`TopologicalSpace.Opens.CompleteCopy s` is definitionally equal to the original one. -/
-- Porting note: in mathlib3 this was only a local instance.
instance instMetricSpace : MetricSpace (CompleteCopy s) := by
  refine @MetricSpace.ofT0PseudoMetricSpace (CompleteCopy s)
    (.ofDistTopology dist (fun _ ↦ ?_) (fun _ _ ↦ ?_) (fun x y z ↦ ?_) fun t ↦ ?_) _
  · simp only [dist_eq, dist_self, one_div, sub_self, abs_zero, add_zero]
  · simp only [dist_eq, dist_comm, abs_sub_comm]
  · calc
      dist x z = dist x.1 z.1 + |1 / infDist x.1 sᶜ - 1 / infDist z.1 sᶜ| := rfl
      _ ≤ dist x.1 y.1 + dist y.1 z.1 + (|1 / infDist x.1 sᶜ - 1 / infDist y.1 sᶜ| +
            |1 / infDist y.1 sᶜ - 1 / infDist z.1 sᶜ|) :=
        add_le_add (dist_triangle _ _ _) (dist_triangle (1 / infDist _ _) _ _)
      _ = dist x y + dist y z := add_add_add_comm ..
  · refine ⟨fun h x hx ↦ ?_, fun h ↦ isOpen_iff_mem_nhds.2 fun x hx ↦ ?_⟩
    · rcases (Metric.isOpen_iff (α := s)).1 h x hx with ⟨ε, ε0, hε⟩
      exact ⟨ε, ε0, fun y hy ↦ hε <| (dist_comm _ _).trans_lt <| (dist_val_le_dist _ _).trans_lt hy⟩
    · rcases h x hx with ⟨ε, ε0, hε⟩
      simp only [dist_eq, one_div] at hε
      have : Tendsto (fun y : s ↦ dist x.1 y.1 + |(infDist x.1 sᶜ)⁻¹ - (infDist y.1 sᶜ)⁻¹|)
        (𝓝 x) (𝓝 (dist x.1 x.1 + |(infDist x.1 sᶜ)⁻¹ - (infDist x.1 sᶜ)⁻¹|))
      · refine (tendsto_const_nhds.dist continuous_subtype_val.continuousAt).add
          (tendsto_const_nhds.sub <| ?_).abs
        refine (continuousAt_inv_infDist_pt ?_).comp continuous_subtype_val.continuousAt
        rw [s.isOpen.isClosed_compl.closure_eq, mem_compl_iff, not_not]
        exact x.2
      simp only [dist_self, sub_self, abs_zero, zero_add] at this
      exact mem_of_superset (this <| gt_mem_nhds ε0) hε
#align polish_space.complete_copy_metric_space TopologicalSpace.Opens.CompleteCopy.instMetricSpaceₓ

-- Porting note: no longer needed because the topologies are defeq
#noalign polish_space.complete_copy_id_homeo

instance instCompleteSpace [CompleteSpace α] : CompleteSpace (CompleteCopy s) := by
  refine Metric.complete_of_convergent_controlled_sequences ((1 / 2) ^ ·) (by simp) fun u hu ↦ ?_
  have A : CauchySeq fun n => (u n).1
  · refine cauchySeq_of_le_tendsto_0 (fun n : ℕ => (1 / 2) ^ n) (fun n m N hNn hNm => ?_) ?_
    · exact (dist_val_le_dist (u n) (u m)).trans (hu N n m hNn hNm).le
    · exact tendsto_pow_atTop_nhds_0_of_lt_1 (by norm_num) (by norm_num)
  obtain ⟨x, xlim⟩ : ∃ x, Tendsto (fun n => (u n).1) atTop (𝓝 x) := cauchySeq_tendsto_of_complete A
  by_cases xs : x ∈ s
  · exact ⟨⟨x, xs⟩, tendsto_subtype_rng.2 xlim⟩
  obtain ⟨C, hC⟩ : ∃ C, ∀ n, 1 / infDist (u n).1 sᶜ < C
  · refine ⟨(1 / 2) ^ 0 + 1 / infDist (u 0).1 sᶜ, fun n ↦ ?_⟩
    rw [← sub_lt_iff_lt_add]
    calc
      _ ≤ |1 / infDist (u n).1 sᶜ - 1 / infDist (u 0).1 sᶜ| := le_abs_self _
      _ = |1 / infDist (u 0).1 sᶜ - 1 / infDist (u n).1 sᶜ| := abs_sub_comm _ _
      _ ≤ dist (u 0) (u n) := le_add_of_nonneg_left dist_nonneg
      _ < (1 / 2) ^ 0 := hu 0 0 n le_rfl n.zero_le
  have Cpos : 0 < C := lt_of_le_of_lt (div_nonneg zero_le_one infDist_nonneg) (hC 0)
  have Hmem : ∀ {y}, y ∈ s ↔ 0 < infDist y sᶜ := fun {y} ↦ by
    rw [← s.isOpen.isClosed_compl.not_mem_iff_infDist_pos ⟨x, xs⟩]; exact not_not.symm
  have I : ∀ n, 1 / C ≤ infDist (u n).1 sᶜ := fun n ↦ by
    have : 0 < infDist (u n).1 sᶜ := Hmem.1 (u n).2
    rw [div_le_iff' Cpos]
    exact (div_le_iff this).1 (hC n).le
  have I' : 1 / C ≤ infDist x sᶜ :=
    have : Tendsto (fun n => infDist (u n).1 sᶜ) atTop (𝓝 (infDist x sᶜ)) :=
      ((continuous_infDist_pt (sᶜ : Set α)).tendsto x).comp xlim
    ge_of_tendsto' this I
  exact absurd (Hmem.2 <| lt_of_lt_of_le (div_pos one_pos Cpos) I') xs
#align polish_space.complete_space_complete_copy TopologicalSpace.Opens.CompleteCopy.instCompleteSpaceₓ

/-- An open subset of a Polish space is also Polish. -/
theorem _root_.GRWTSK.Topology.MetricTopology.PolishSpace.Variantb6be8ff00fced65974ac86c81f68ec583d2d0238048e4fc7e6b623ede63b9a5b.IsOpen.polishSpace {α : Type*} [TopologicalSpace α] [PolishSpace α] {s : Set α}
    (hs : IsOpen s) : PolishSpace s := by
  letI := upgradePolishSpace α
  lift s to Opens α using hs
  have : SecondCountableTopology s.CompleteCopy := inferInstanceAs (SecondCountableTopology s)
  exact inferInstanceAs (PolishSpace s.CompleteCopy)
#align is_open.polish_space IsOpen.polishSpace

end CompleteCopy

end TopologicalSpace.Opens

namespace PolishSpace

/-! ### Clopenable sets in Polish spaces -/

/-- A set in a topological space is clopenable if there exists a finer Polish topology for which
this set is open and closed. It turns out that this notion is equivalent to being Borel-measurable,
but this is nontrivial (see `isClopenable_iff_measurableSet`). -/
def IsClopenable [t : TopologicalSpace α] (s : Set α) : Prop :=
  ∃ t' : TopologicalSpace α, t' ≤ t ∧ @PolishSpace α t' ∧ IsClosed[t'] s ∧ IsOpen[t'] s
#align polish_space.is_clopenable PolishSpace.IsClopenable

/-- Given a closed set `s` in a Polish space, one can construct a finer Polish topology for
which `s` is both open and closed. -/
theorem _root_.GRWTSK.Topology.MetricTopology.PolishSpace.Variantb6be8ff00fced65974ac86c81f68ec583d2d0238048e4fc7e6b623ede63b9a5b.IsClosed.isClopenable [TopologicalSpace α] [PolishSpace α] {s : Set α}
    (hs : IsClosed s) : IsClopenable s := by
  /- Both sets `s` and `sᶜ` admit a Polish topology. So does their disjoint union `s ⊕ sᶜ`.
    Pulling back this topology by the canonical bijection with `α` gives the desired Polish
    topology in which `s` is both open and closed. -/
  haveI : PolishSpace s := hs.polishSpace
  let t : Set α := sᶜ
  haveI : PolishSpace t := hs.isOpen_compl.polishSpace
  let f : s ⊕ t ≃ α := Equiv.Set.sumCompl s
  have hle : TopologicalSpace.coinduced f instTopologicalSpaceSum ≤ ‹_›
  · simp only [instTopologicalSpaceSum, coinduced_sup, coinduced_compose, sup_le_iff,
      ← continuous_iff_coinduced_le]
    exact ⟨continuous_subtype_val, continuous_subtype_val⟩
  refine ⟨.coinduced f instTopologicalSpaceSum, hle, ?_, hs.mono hle, ?_⟩
  · rw [← f.induced_symm]
    exact f.symm.polishSpace_induced
  · rw [isOpen_coinduced, isOpen_sum_iff]
    convert And.intro (isOpen_univ (α := s)) (isOpen_empty (α := (sᶜ : Set α)))
      <;> ext ⟨x, hx⟩ <;> simpa using hx
#align is_closed.is_clopenable IsClosed.isClopenable

theorem IsClopenable.compl [TopologicalSpace α] {s : Set α} (hs : IsClopenable s) :
    IsClopenable sᶜ := by
  rcases hs with ⟨t, t_le, t_polish, h, h'⟩
  exact ⟨t, t_le, t_polish, @IsOpen.isClosed_compl α t s h', @IsClosed.isOpen_compl α t s h⟩
#align polish_space.is_clopenable.compl PolishSpace.IsClopenable.compl

theorem _root_.GRWTSK.Topology.MetricTopology.PolishSpace.Variantb6be8ff00fced65974ac86c81f68ec583d2d0238048e4fc7e6b623ede63b9a5b.IsOpen.isClopenable [TopologicalSpace α] [PolishSpace α] {s : Set α}
    (hs : IsOpen s) : IsClopenable s := by
  simpa using hs.isClosed_compl.isClopenable.compl
#align is_open.is_clopenable IsOpen.isClopenable

-- porting note: TODO: generalize for free to `[Countable ι] {s : ι → Set α}`
theorem IsClopenable.iUnion [t : TopologicalSpace α] [PolishSpace α] {s : ℕ → Set α}
    (hs : ∀ n, IsClopenable (s n)) : IsClopenable (⋃ n, s n) := by
  choose m mt m_polish _ m_open using hs
  obtain ⟨t', t'm, -, t'_polish⟩ :
    ∃ t' : TopologicalSpace α, (∀ n : ℕ, t' ≤ m n) ∧ t' ≤ t ∧ @PolishSpace α t' :=
    exists_polishSpace_forall_le m mt m_polish
  have A : IsOpen[t'] (⋃ n, s n) := by
    apply isOpen_iUnion
    intro n
    apply t'm n
    exact m_open n
  obtain ⟨t'', t''_le, t''_polish, h1, h2⟩ : ∃ t'' : TopologicalSpace α,
      t'' ≤ t' ∧ @PolishSpace α t'' ∧ IsClosed[t''] (⋃ n, s n) ∧ IsOpen[t''] (⋃ n, s n) :=
    @IsOpen.isClopenable α t' t'_polish _ A
  exact ⟨t'', t''_le.trans ((t'm 0).trans (mt 0)), t''_polish, h1, h2⟩
#align polish_space.is_clopenable.Union PolishSpace.IsClopenable.iUnion

end PolishSpace
