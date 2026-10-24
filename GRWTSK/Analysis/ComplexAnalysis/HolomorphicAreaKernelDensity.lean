import GRWTSK.Analysis.ComplexAnalysis.HolomorphicAreaProjection
import Mathlib.Analysis.InnerProductSpace.Projection.Submodule

/-!
# Totality of the actual area reproducing kernels

Exact evaluations on a dense subset of the base determine the historical holomorphic
realization. Orthogonal-complement arguments then prove density of its kernel span in
the original completed norm. In ambient L2 the closed span is the holomorphic subspace,
not all of L2. Bounded maps and the actual multiplier adjoint are determined by their
actions on this total family. Dense sampling is a hypothesis, not finite-test evidence.
-/

namespace GRWTSK.Analysis.ComplexAnalysis.HolomorphicAreaKernelDensity

open Filter Topology MeasureTheory Set
open scoped ENNReal
open scoped GRWTSK.Analysis.ComplexAnalysis.HolomorphicLineSectionInnerProduct
open GRWTSK.Analysis.ComplexAnalysis.HolomorphicRestriction
open GRWTSK.Analysis.ComplexAnalysis.HolomorphicSectionRing (HolomorphicSection)
open GRWTSK.Analysis.ComplexAnalysis.HolomorphicEvaluationTopology (section_continuous)
open GRWTSK.Analysis.ComplexAnalysis.HolomorphicLineCocycle
open GRWTSK.Analysis.ComplexAnalysis.HolomorphicLineMetric
open GRWTSK.Analysis.ComplexAnalysis.HolomorphicLineSectionEnergy
open GRWTSK.Analysis.ComplexAnalysis.HolomorphicLineSectionQuotient
open GRWTSK.Analysis.ComplexAnalysis.HolomorphicLineSectionCompletion
open GRWTSK.Analysis.ComplexAnalysis.HolomorphicAreaLocalUniform
open GRWTSK.Analysis.ComplexAnalysis.HolomorphicAreaComplete
open GRWTSK.Analysis.ComplexAnalysis.HolomorphicAreaReproducing
open GRWTSK.Analysis.ComplexAnalysis.HolomorphicAreaL2
open GRWTSK.Analysis.ComplexAnalysis.HolomorphicAreaProjection
open GRWTSK.Analysis.OperatorTheory.HolomorphicMultiplierRepresentation
open GRWTSK.Analysis.OperatorTheory.HolomorphicMultiplierComplete (coveredDomain_isOpen)
open GRWTSK.Analysis.OperatorTheory.HolomorphicMultiplierArea (areaMeasure areaMeasure_univ)

universe u v
noncomputable section
variable {ι : Type u} {D : IndexedDomainCover ι}

/-- Density concerns the actual base subtype; continuity belongs to its realized sections. -/
theorem evaluation_ext_on_dense (hOpen : D.IsOpenCover) (S : Set D.X.carrier)
    (hS : Dense S) (v w : AreaCompletion hOpen)
    (h : ∀ x ∈ S, evaluationAt hOpen x v = evaluationAt hOpen x w) : v = w := by
  have hsub : S ⊆ {x | realizedValue hOpen v x = realizedValue hOpen w x} := by
    intro x hx
    simpa only [evaluationAt_eq_value] using h x hx
  have hc : IsClosed {x | realizedValue hOpen v x = realizedValue hOpen w x} :=
    isClosed_eq (section_continuous D.X (completedRealization hOpen v))
      (section_continuous D.X (completedRealization hOpen w))
  apply completedRealization_injective hOpen
  apply Subtype.ext
  funext x
  exact closure_minimal hsub hc (hS x)

/-- Algebraic span of the SAME Riesz vectors at precisely the selected base points. -/
def kernelSpan (hOpen : D.IsOpenCover) (S : Set D.X.carrier) :
    Submodule ℂ (AreaCompletion hOpen) :=
  Submodule.span ℂ (kernelVector hOpen '' S)

theorem kernelVector_mem_span (hOpen : D.IsOpenCover) (S : Set D.X.carrier)
    (x : D.X.carrier) (hx : x ∈ S) : kernelVector hOpen x ∈ kernelSpan hOpen S :=
  Submodule.subset_span ⟨x, hx, rfl⟩

/-- Orthogonality to the algebraic span means vanishing of the actual selected evaluations. -/
theorem mem_kernelSpan_orthogonal (hOpen : D.IsOpenCover) (S : Set D.X.carrier)
    (v : AreaCompletion hOpen) :
    v ∈ (kernelSpan hOpen S).orthogonal ↔ ∀ x ∈ S, evaluationAt hOpen x v = 0 := by
  constructor
  · intro hv x hx
    rw [← kernelVector_evaluation]
    exact hv _ (kernelVector_mem_span hOpen S x hx)
  · intro hv
    have hle : kernelSpan hOpen S ≤ (innerSL ℂ v).ker := by
      apply Submodule.span_le.mpr
      rintro _ ⟨x, hx, rfl⟩
      change inner ℂ v (kernelVector hOpen x) = 0
      rw [inner_eq_zero_symm, kernelVector_evaluation]
      exact hv x hx
    intro w hw
    exact inner_eq_zero_symm.mp (show inner ℂ v w = 0 from hle hw)

/-- No finite-area or nonzero-evaluation premise is needed for the annihilator theorem. -/
theorem kernelSpan_orthogonal_eq_bot (hOpen : D.IsOpenCover) (S : Set D.X.carrier)
    (hS : Dense S) : (kernelSpan hOpen S).orthogonal = ⊥ := by
  apply le_antisymm _ bot_le
  intro v hv
  apply Submodule.mem_bot.mpr
  apply evaluation_ext_on_dense hOpen S hS v 0
  intro x hx
  simpa only [map_zero] using (mem_kernelSpan_orthogonal hOpen S v).mp hv x hx

/-- Completeness of the historical Hilbert space converts the trivial annihilator to density. -/
theorem kernelSpan_closure_top (hOpen : D.IsOpenCover) (S : Set D.X.carrier)
    (hS : Dense S) : (kernelSpan hOpen S).topologicalClosure = ⊤ :=
  Submodule.topologicalClosure_eq_top_iff.mpr (kernelSpan_orthogonal_eq_bot hOpen S hS)

theorem kernelSpan_dense (hOpen : D.IsOpenCover) (S : Set D.X.carrier) (hS : Dense S) :
    Dense (kernelSpan hOpen S : Set (AreaCompletion hOpen)) :=
  Submodule.dense_iff_topologicalClosure_eq_top.mpr (kernelSpan_closure_top hOpen S hS)

/-- Approximation is in the original completed norm, with an actual algebraic-span member. -/
theorem kernel_approximation (hOpen : D.IsOpenCover) (S : Set D.X.carrier) (hS : Dense S)
    (v : AreaCompletion hOpen) (ε : ℝ) (hε : 0 < ε) :
    ∃ w ∈ kernelSpan hOpen S, dist v w < ε :=
  Metric.mem_closure_iff.mp (kernelSpan_dense hOpen S hS v) ε hε

theorem all_kernels_dense (hOpen : D.IsOpenCover) :
    Dense (kernelSpan hOpen univ : Set (AreaCompletion hOpen)) :=
  kernelSpan_dense hOpen univ dense_univ

section BoundedMaps
variable {F : Type v} [NormedAddCommGroup F] [NormedSpace ℂ F]

/-- Bounded maps agreeing on this total family agree everywhere; the target need not be complete. -/
theorem boundedMap_ext_on_kernels (hOpen : D.IsOpenCover) (S : Set D.X.carrier)
    (hS : Dense S) (A B : AreaCompletion hOpen →L[ℂ] F)
    (h : ∀ x ∈ S, A (kernelVector hOpen x) = B (kernelVector hOpen x)) : A = B := by
  have hle : kernelSpan hOpen S ≤ (A - B).ker := by
    apply Submodule.span_le.mpr
    rintro _ ⟨x, hx, rfl⟩
    change A (kernelVector hOpen x) - B (kernelVector hOpen x) = 0
    exact sub_eq_zero.mpr (h x hx)
  have hc := (kernelSpan hOpen S).topologicalClosure_minimal hle (A - B).isClosed_ker
  rw [kernelSpan_closure_top hOpen S hS] at hc
  ext v
  have hz := hc (Submodule.mem_top : v ∈ (⊤ : Submodule ℂ (AreaCompletion hOpen)))
  change A v - B v = 0 at hz
  exact sub_eq_zero.mp hz

end BoundedMaps

/-- The historical conjugate-symbol kernel law uniquely specifies the actual bounded adjoint. -/
theorem multiplier_adjoint_unique (hOpen : D.IsOpenCover) (S : Set D.X.carrier)
    (hS : Dense S) (f : BoundedSymbol D.X)
    (T : AreaCompletion hOpen →L[ℂ] AreaCompletion hOpen)
    (hT : ∀ x ∈ S, T (kernelVector hOpen x) = star (f.value x) • kernelVector hOpen x) :
    T = ContinuousLinearMap.adjoint
      (completedRepresentation (MetricWeights.identity D) (areaMeasure D.X) hOpen f) := by
  apply boundedMap_ext_on_kernels hOpen S hS
  intro x hx
  exact (hT x hx).trans (adjoint_multiplier_kernel hOpen f x).symm

/-- Kernel moments on a dense base set determine the projection among holomorphic outputs. -/
theorem projection_unique_of_kernelMoments (hOpen : D.IsOpenCover) (S : Set D.X.carrier)
    (hS : Dense S) (g p : AmbientL2 D.X) (hp : p ∈ holomorphicSubspace hOpen)
    (hmom : ∀ x ∈ S, inner ℂ (l2Embedding hOpen (kernelVector hOpen x)) (g - p) = 0) :
    p = bergmanProjection hOpen g := by
  obtain ⟨v, rfl⟩ := hp
  have hv : v = bergmanLift hOpen g := by
    apply evaluation_ext_on_dense hOpen S hS
    intro x hx
    have hm := hmom x hx
    rw [inner_sub_right, toL2_inner] at hm
    have hc := bergmanLift_inner hOpen (kernelVector hOpen x) g
    change inner ℂ (kernelVector hOpen x) (bergmanLift hOpen g) =
      inner ℂ (l2Embedding hOpen (kernelVector hOpen x)) g at hc
    rw [← hc, kernelVector_evaluation, kernelVector_evaluation, sub_eq_zero] at hm
    exact hm.symm
  rw [bergmanProjection_apply, hv]

/-- Dense kernel moments detect the projection, not arbitrary ambient input values or classes. -/
theorem projection_zero_iff_kernelMoments (hOpen : D.IsOpenCover) (S : Set D.X.carrier)
    (hS : Dense S) (g : AmbientL2 D.X) :
    bergmanProjection hOpen g = 0 ↔
      ∀ x ∈ S, inner ℂ (l2Embedding hOpen (kernelVector hOpen x)) g = 0 := by
  constructor
  · intro hg x _
    exact (bergmanProjection_eq_zero_iff hOpen g).mp hg (kernelVector hOpen x)
  · intro hg
    symm
    apply projection_unique_of_kernelMoments hOpen S hS g 0
      (holomorphicSubspace hOpen).zero_mem
    simpa only [sub_zero] using hg

/-- The same kernels embedded in ordinary L2; no ambient kernel vectors are reselected. -/
def ambientKernelSpan (hOpen : D.IsOpenCover) (S : Set D.X.carrier) :
    Submodule ℂ (AmbientL2 D.X) :=
  Submodule.span ℂ ((fun x => l2Embedding hOpen (kernelVector hOpen x)) '' S)

theorem mem_ambientKernelSpan_orthogonal (hOpen : D.IsOpenCover) (S : Set D.X.carrier)
    (g : AmbientL2 D.X) : g ∈ (ambientKernelSpan hOpen S).orthogonal ↔
      ∀ x ∈ S, inner ℂ (l2Embedding hOpen (kernelVector hOpen x)) g = 0 := by
  constructor
  · intro hg x hx
    exact hg _ (Submodule.subset_span ⟨x, hx, rfl⟩)
  · intro hg
    have hle : ambientKernelSpan hOpen S ≤ (innerSL ℂ g).ker := by
      apply Submodule.span_le.mpr
      rintro _ ⟨x, hx, rfl⟩
      change inner ℂ g (l2Embedding hOpen (kernelVector hOpen x)) = 0
      exact inner_eq_zero_symm.mp (hg x hx)
    intro w hw
    exact inner_eq_zero_symm.mp (show inner ℂ g w = 0 from hle hw)

/-- The ambient annihilator is the holomorphic complement, not necessarily zero. -/
theorem ambientKernelSpan_orthogonal (hOpen : D.IsOpenCover) (S : Set D.X.carrier)
    (hS : Dense S) :
    (ambientKernelSpan hOpen S).orthogonal = (holomorphicSubspace hOpen).orthogonal := by
  ext g
  constructor
  · intro hg
    have hz := (projection_zero_iff_kernelMoments hOpen S hS g).mpr
      ((mem_ambientKernelSpan_orthogonal hOpen S g).mp hg)
    intro w hw
    obtain ⟨v, rfl⟩ := hw
    exact (bergmanProjection_eq_zero_iff hOpen g).mp hz v
  · intro hg
    apply (mem_ambientKernelSpan_orthogonal hOpen S g).mpr
    intro x _
    exact hg _ ⟨kernelVector hOpen x, rfl⟩

/-- In ordinary L2, the closed kernel span is exactly the OLD holomorphic subspace. -/
theorem ambientKernelSpan_closure (hOpen : D.IsOpenCover) (S : Set D.X.carrier)
    (hS : Dense S) :
    (ambientKernelSpan hOpen S).topologicalClosure = holomorphicSubspace hOpen := by
  calc
    (ambientKernelSpan hOpen S).topologicalClosure =
        (ambientKernelSpan hOpen S).orthogonal.orthogonal :=
      (Submodule.orthogonal_orthogonal_eq_closure _).symm
    _ = (holomorphicSubspace hOpen).orthogonal.orthogonal := by
      rw [ambientKernelSpan_orthogonal hOpen S hS]
    _ = (holomorphicSubspace hOpen).topologicalClosure :=
      Submodule.orthogonal_orthogonal_eq_closure _
    _ = holomorphicSubspace hOpen :=
      (holomorphicSubspace_closed hOpen).submodule_topologicalClosure_eq

namespace Fixtures

/-- An empty sample contributes no generators. -/
theorem empty_kernelSpan (hOpen : D.IsOpenCover) : kernelSpan hOpen ∅ = ⊥ := by
  simp [kernelSpan]

open GRWTSK.Analysis.OperatorTheory.HolomorphicLineSectionMultiplier.Fixtures
  (disk diskCover diskCover_isOpen diskCoordinate center halfPoint)
open GRWTSK.Analysis.OperatorTheory.HolomorphicMultiplierArea.Fixtures (disk_finite_area)

/-- A genuine old unit class; finite actual disk area supplies its membership proof. -/
def diskUnitVector : AreaCompletion diskCover_isOpen :=
  toCompletion (MetricWeights.identity diskCover) (areaMeasure disk) diskCover_isOpen
    (classOf (MetricWeights.identity diskCover) (areaMeasure disk) diskCover_isOpen
      (finiteUnit diskCover (areaMeasure disk) diskCover_isOpen (by
        rw [areaMeasure_univ disk (coveredDomain_isOpen diskCover diskCover_isOpen).measurableSet]
        exact disk_finite_area)))

theorem diskUnitVector_value (x : disk.carrier) :
    evaluationAt diskCover_isOpen x diskUnitVector = 1 := by
  rw [diskUnitVector, evaluationAt_toCompletion, realization_classOf]
  rfl

/-- The nonconstant historical multiplier acts on that actual unit vector. -/
def diskCoordinateVector : AreaCompletion diskCover_isOpen :=
  completedRepresentation (MetricWeights.identity diskCover) (areaMeasure disk)
    diskCover_isOpen (BoundedSymbol.ofMultiplier diskCoordinate) diskUnitVector

theorem diskCoordinateVector_value (x : disk.carrier) :
    evaluationAt diskCover_isOpen x diskCoordinateVector = x.1 := by
  rw [diskCoordinateVector, evaluationAt_multiplier, diskUnitVector_value]
  change x.1 * 1 = x.1
  exact mul_one _

theorem diskCoordinateVector_ne_zero : diskCoordinateVector ≠ 0 := by
  intro h
  have he := congrArg (evaluationAt diskCover_isOpen halfPoint) h
  rw [diskCoordinateVector_value, map_zero] at he
  change (1 : ℂ) / 2 = 0 at he
  norm_num at he

/-- A NONEMPTY single sample still misses a nonzero vector of the actual holomorphic area space. -/
theorem disk_center_not_total :
    ¬ Dense (kernelSpan diskCover_isOpen {center} : Set (AreaCompletion diskCover_isOpen)) := by
  intro hd
  apply diskCoordinateVector_ne_zero
  apply hd.eq_zero_of_mem_orthogonal
  apply (mem_kernelSpan_orthogonal diskCover_isOpen {center} diskCoordinateVector).mpr
  intro x hx
  have hx' : x = center := Set.mem_singleton_iff.mp hx
  subst x
  rw [diskCoordinateVector_value]
  rfl

end Fixtures
end
end GRWTSK.Analysis.ComplexAnalysis.HolomorphicAreaKernelDensity
