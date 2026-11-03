/- Copyright (c) 2026 grwtsk contributors. MIT.
Mathematical direction: grwtsk contributors. Formalization assistance: OpenAI.
SOURCE_PROOF_CANDIDATE / COMPILATION_NOT_RUN / EXPECTED_TYPES_NOT_RUN /
FRESH_KERNEL_NOT_RUN / TRANSITIVE_AXIOM_AUDIT_NOT_RUN. -/
import GRWTSK.Geometry.CMActualPeriodChartLocalFrames
import Mathlib.Topology.FiberBundle.Basic
import Mathlib.Tactic

/-!
# Holomorphic CM period transitions: continuity from the original covering charts

For the ORIGINAL CM number-field ring-of-integers lattice, the preceding
source constructs an undoubled Appell–Humbert factor J(a,z), and the genuine
period torus's covering charts have sections whose differences are locally
constant integral periods. This module strengthens the prior pointwise
chart-change lemma: the integer transition period is LOCALLY CONSTANT on
period-torus chart overlaps, hence the actual transition multiplier is
continuous on overlaps. This discharges an independent analytic premise of
Mathlib's `FiberBundleCore`, without assuming it as an axiom or a field.

The topology and locally trivial topological complex-line bundle are built
separately in `CMActualPeriodTopologicalBundleCore`. The existence of a
holomorphic bundle atlas, a descended Chern connection and an isomorphism
to a PARTICULAR original CM abelian variety are separate acceptance tasks.
-/
set_option autoImplicit false
noncomputable section
open scoped _root_.NumberField
open Filter

namespace GRWTSK.Geometry.AlgebraicGeometry.Hodge.CMActualPeriodTransitionContinuity

open OAI.AlgebraicGeometry.ComplexMultiplication.CM
open GRWTSK.Geometry.AlgebraicGeometry.Hodge.CMActualPeriodChartLocalFrames
open GRWTSK.Geometry.AlgebraicGeometry.Hodge.CMActualUndoubledAppellHumbert

variable (E : Type*) [Field E] [NumberField E] [Algebra ℚ E]
  [IsCMField E] [IsGalois ℚ E]

/-- The difference of the actual covering-chart sections is constant in
some neighbourhood of every point in their overlap. Crucially, the proof
uses the previous upstream-derived COVER lemma, NOT a newly assumed
continuity of arbitrary source sector assignments. -/
theorem chartDifference_eventually_constant
    (epsilon : TypeHodgeStructure.CMEmbeddingType E)
    (c d q : epsilon.periodTorus)
    (hc : q ∈ (epsilon.periodChart c).source)
    (hd : q ∈ (epsilon.periodChart d).source) :
    (fun r : epsilon.periodTorus =>
      (epsilon.periodChart d) r - (epsilon.periodChart c) r) =ᶠ[𝓝 q]
    (fun _ => (epsilon.periodChart d) q - (epsilon.periodChart c) q) := by
  let z := chartLift E epsilon c q hc
  have hz : (QuotientAddGroup.mk z : epsilon.periodTorus) = q :=
    chartLift_projects E epsilon c q hc
  have hcover := chartDisplacement_locally_constant_on_cover E epsilon c d q hc hd
  have hcont : ContinuousAt (epsilon.periodChart c) q :=
    (epsilon.periodChart c).continuousOn.continuousAt
      ((epsilon.periodChart c).open_source.mem_nhds hc)
  have hpull := hcont.tendsto.eventually hcover
  filter_upwards [hpull, (epsilon.periodChart c).open_source.mem_nhds hc]
    with r hr hrc
  have hproject := (epsilon.periodChart c).left_inv hrc
  rw [epsilon.periodChart_symm] at hproject
  change (epsilon.periodChart d) r - (epsilon.periodChart c) r =
    (epsilon.periodChart d) q - (epsilon.periodChart c) q
  simpa only [hproject, hz] using hr

/-- Exact integral O_E transition labels, not merely their complex period
images, are locally constant on each base-chart overlap. -/
theorem chartTransitionPeriod_eventually_constant
    (epsilon : TypeHodgeStructure.CMEmbeddingType E)
    (c d q : epsilon.periodTorus)
    (hc : q ∈ (epsilon.periodChart c).source)
    (hd : q ∈ (epsilon.periodChart d).source) :
    ∀ᶠ r in 𝓝 q,
      ∀ (hrc : r ∈ (epsilon.periodChart c).source)
        (hrd : r ∈ (epsilon.periodChart d).source),
        chartTransitionPeriod E epsilon c d r hrc hrd =
          chartTransitionPeriod E epsilon c d q hc hd := by
  let a := chartTransitionPeriod E epsilon c d q hc hd
  have hdiff := chartDifference_eventually_constant E epsilon c d q hc hd
  filter_upwards [hdiff] with r hdiff hrc hrd
  have hspec := chartTransitionPeriod_spec E epsilon c d q hc hd
  have htranslate : chartLift E epsilon d r hrd =
      chartLift E epsilon c r hrc + epsilon.periodEmbedding (a : E) := by
    change (epsilon.periodChart d) r =
      (epsilon.periodChart c) r + epsilon.periodEmbedding (a : E)
    change (epsilon.periodChart d) q =
      (epsilon.periodChart c) q + epsilon.periodEmbedding (a : E) at hspec
    calc
      (epsilon.periodChart d) r =
          ((epsilon.periodChart d) r - (epsilon.periodChart c) r) +
            (epsilon.periodChart c) r := by abel
      _ = ((epsilon.periodChart d) q - (epsilon.periodChart c) q) +
            (epsilon.periodChart c) r := by rw [hdiff]
      _ = (epsilon.periodChart c) r + epsilon.periodEmbedding (a : E) := by
        rw [hspec]
        abel
  exact (chartTransitionPeriod_unique E epsilon c d r hrc hrd a htranslate).symm

/-- Extend a transition multiplier by one outside the overlap; on the overlap
it is exactly the previously published source Appell–Humbert multiplier.
Only its restriction to the overlap is used in the eventual bundle core. -/
def extendedTransitionFactor
    (epsilon : TypeHodgeStructure.CMEmbeddingType E)
    (c d q : epsilon.periodTorus) : ℂ :=
  if h : q ∈ (epsilon.periodChart c).source ∩
      (epsilon.periodChart d).source then
    chartTransitionFactor E epsilon c d q h.1 h.2
  else 1

/-- The extended multiplier agrees with its original chart version at
EVERY actual overlap point; outside-overlap values have no geometric role. -/
theorem extendedTransitionFactor_of_overlap
    (epsilon : TypeHodgeStructure.CMEmbeddingType E)
    (c d q : epsilon.periodTorus)
    (hc : q ∈ (epsilon.periodChart c).source)
    (hd : q ∈ (epsilon.periodChart d).source) :
    extendedTransitionFactor E epsilon c d q =
      chartTransitionFactor E epsilon c d q hc hd := by
  simp [extendedTransitionFactor, hc, hd]

/-- The complex scalar transition is continuous AT EACH genuine overlap
point because its integer period is locally fixed and the ORIGINAL
Appell–Humbert factor is holomorphic in the period-cover variable. -/
theorem extendedTransitionFactor_continuousAt
    (epsilon : TypeHodgeStructure.CMEmbeddingType E)
    (c d q : epsilon.periodTorus)
    (hc : q ∈ (epsilon.periodChart c).source)
    (hd : q ∈ (epsilon.periodChart d).source) :
    ContinuousAt (extendedTransitionFactor E epsilon c d) q := by
  let a := chartTransitionPeriod E epsilon c d q hc hd
  let F : epsilon.periodTorus → ℂ :=
    fun r => undoubledFactor E epsilon a ((epsilon.periodChart c) r)
  have hhc : ContinuousAt (epsilon.periodChart c) q :=
    (epsilon.periodChart c).continuousOn.continuousAt
      ((epsilon.periodChart c).open_source.mem_nhds hc)
  have hF : ContinuousAt F q :=
    (undoubledFactor_holomorphic E epsilon a).continuous.continuousAt.comp q hhc
  have hperiod := chartTransitionPeriod_eventually_constant E epsilon c d q hc hd
  have hinter : q ∈ (epsilon.periodChart c).source ∩
      (epsilon.periodChart d).source := ⟨hc, hd⟩
  have hopen : IsOpen ((epsilon.periodChart c).source ∩
      (epsilon.periodChart d).source) :=
    (epsilon.periodChart c).open_source.inter (epsilon.periodChart d).open_source
  have hEq : extendedTransitionFactor E epsilon c d =ᶠ[𝓝 q] F := by
    filter_upwards [hperiod, hopen.mem_nhds hinter] with r hr hmem
    rw [extendedTransitionFactor_of_overlap E epsilon c d r hmem.1 hmem.2]
    unfold F chartTransitionFactor
    rw [hr hmem.1 hmem.2]
    rfl
  exact hF.congr_of_eventuallyEq hEq

/-- The analytic overlap condition required by `FiberBundleCore` is a
SOURCE-DERIVED theorem, not a new external hypothesis. -/
theorem extendedTransitionFactor_continuousOn
    (epsilon : TypeHodgeStructure.CMEmbeddingType E)
    (c d : epsilon.periodTorus) :
    ContinuousOn (extendedTransitionFactor E epsilon c d)
      ((epsilon.periodChart c).source ∩ (epsilon.periodChart d).source) := by
  intro q hq
  exact (extendedTransitionFactor_continuousAt E epsilon c d q hq.1 hq.2).continuousWithinAt

end GRWTSK.Geometry.AlgebraicGeometry.Hodge.CMActualPeriodTransitionContinuity
