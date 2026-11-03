/- Copyright (c) 2026 grwtsk contributors. MIT.
Mathematical direction: grwtsk contributors. Formalization assistance: OpenAI.
SOURCE_PROOF_CANDIDATE / COMPILATION_NOT_RUN / EXPECTED_TYPES_NOT_RUN /
FRESH_KERNEL_NOT_RUN / TRANSITIVE_AXIOM_AUDIT_NOT_RUN. -/
import GRWTSK.Geometry.CMActualOrbitHermitianMetric
import OAI.AlgebraicGeometry.ComplexMultiplication.CM.PeriodTorus
import Mathlib.Tactic

/-!
# Local algebraic frames over the actual CM period-torus covering charts

The upstream CM period torus already comes with covering-map charts e_q,
whose inverses project to the ORIGINAL O_E lattice quotient. The published
Appell-Humbert action (z,w) -> (z+p(a), J(a,z)*w) is faithful on the cover.
We build an exact coordinate equivalence on EVERY fibre over EACH member
of a covering chart, not merely at the earlier arbitrary global choice of
period representative. On overlaps, the true source transition is the
nonvanishing holomorphic factor J(a,z), for the actual lattice translate a.

The upstream periodSection_eventuallyEq proves that the displacement of
two local sections is constant in a neighbourhood on the cover. This is the
analytic input needed to move from separate fibre equivalences to true
holomorphic local trivialisations. A topology, continuity of the quotient
charts, and a complete bundle atlas are NOT constructed here.
No Chern connection or particular external CM variety is asserted.
-/
set_option autoImplicit false
noncomputable section
open scoped BigOperators _root_.NumberField
open Filter

namespace GRWTSK.Geometry.AlgebraicGeometry.Hodge.CMActualPeriodChartLocalFrames

open OAI.AlgebraicGeometry.ComplexMultiplication.CM
open GRWTSK.Geometry.AlgebraicGeometry.Hodge.CMActualUndoubledAppellHumbert
open GRWTSK.Geometry.AlgebraicGeometry.Hodge.CMActualUndoubledOrbitTotalSpace
open GRWTSK.Geometry.AlgebraicGeometry.Hodge.CMActualOrbitHermitianMetric

variable (E : Type*) [Field E] [NumberField E] [Algebra ℚ E]
  [IsCMField E] [IsGalois ℚ E]

/-- A CM period chart at c gives a definite local lift of every base point
of its source. The source membership is carried explicitly. -/
def chartLift
    (epsilon : TypeHodgeStructure.CMEmbeddingType E)
    (c q : epsilon.periodTorus)
    (_hq : q ∈ (epsilon.periodChart c).source) :
    PeriodSpace.CMPeriodSpace E :=
  epsilon.periodChart c q

/-- The source CHART, not arbitrary choice, projects back to the same q. -/
theorem chartLift_projects
    (epsilon : TypeHodgeStructure.CMEmbeddingType E)
    (c q : epsilon.periodTorus)
    (hq : q ∈ (epsilon.periodChart c).source) :
    (QuotientAddGroup.mk (chartLift E epsilon c q hq) :
      epsilon.periodTorus) = q := by
  have hleft := (epsilon.periodChart c).left_inv hq
  rw [epsilon.periodChart_symm] at hleft
  exact hleft

/-- One genuine local chart frame with a fibre at q in the ORIGINAL orbit. -/
def chartFrame
    (epsilon : TypeHodgeStructure.CMEmbeddingType E)
    (c q : epsilon.periodTorus)
    (hq : q ∈ (epsilon.periodChart c).source) (w : ℂ) :
    ActualAlgebraicFibre E epsilon q :=
  ⟨orbitFibreAt E epsilon (chartLift E epsilon c q hq) w,
    chartLift_projects E epsilon c q hq⟩

/-- Algebraic injectivity follows from the SOURCE period action freeness. -/
theorem chartFrame_injective
    (epsilon : TypeHodgeStructure.CMEmbeddingType E)
    (c q : epsilon.periodTorus)
    (hq : q ∈ (epsilon.periodChart c).source) :
    Function.Injective (chartFrame E epsilon c q hq) := by
  intro w v hw
  apply orbitFibreAt_injective E epsilon (chartLift E epsilon c q hq)
  exact congrArg Subtype.val hw

/-- Every actual orbit fibre is covered by the chart's chosen complex line.
The proof exhibits the UNIQUE original O_E period translate as in the
previous exact generic-frame result, without inventing residue labels. -/
theorem chartFrame_surjective
    (epsilon : TypeHodgeStructure.CMEmbeddingType E)
    (c q : epsilon.periodTorus)
    (hq : q ∈ (epsilon.periodChart c).source) :
    Function.Surjective (chartFrame E epsilon c q hq) := by
  intro t
  obtain ⟨p, hp⟩ := Quotient.exists_rep t.val
  let z := chartLift E epsilon c q hq
  have hbase : (QuotientAddGroup.mk p.1 : epsilon.periodTorus) = q := by
    have ht := t.property
    rw [← hp] at ht
    simpa only [actualOrbitBaseProjection_mk] using ht
  have heq : (QuotientAddGroup.mk p.1 : epsilon.periodTorus) =
      QuotientAddGroup.mk z :=
    hbase.trans (chartLift_projects E epsilon c q hq).symm
  have hmem : p.1 - z ∈ epsilon.periodIntegerLattice :=
    QuotientAddGroup.eq_iff_sub_mem.mp heq
  obtain ⟨a, ha⟩ := (epsilon.mem_periodIntegerLattice _).mp hmem
  have hz : z + epsilon.periodEmbedding (a : E) = p.1 := by
    rw [← ha]
    abel
  let w : ℂ := (undoubledFactor E epsilon a z)⁻¹ * p.2
  refine ⟨w, ?_⟩
  apply Subtype.ext
  change orbitFibreAt E epsilon z w = t.val
  rw [← hp]
  apply Quotient.sound
  refine ⟨a, ?_⟩
  apply Prod.ext
  · exact hz.symm
  · change p.2 = undoubledFactor E epsilon a z *
        ((undoubledFactor E epsilon a z)⁻¹ * p.2)
    rw [← mul_assoc, mul_inv_cancel₀ (undoubledFactor_nonzero E epsilon a z), one_mul]

/-- Every chart fibre has an exact complex-coordinate equivalence.
Continuity of this equivalence in q is a SEPARATE assertion. -/
def chartFrameEquiv
    (epsilon : TypeHodgeStructure.CMEmbeddingType E)
    (c q : epsilon.periodTorus)
    (hq : q ∈ (epsilon.periodChart c).source) :
    ℂ ≃ ActualAlgebraicFibre E epsilon q :=
  Equiv.ofBijective (chartFrame E epsilon c q hq)
    ⟨chartFrame_injective E epsilon c q hq,
      chartFrame_surjective E epsilon c q hq⟩

/-- Two actual CM period-torus CHART sections above one base point differ
by an ORIGINAL algebraic integer, not by a chosen ZMod quotient inverse. -/
theorem chartLift_difference_exists
    (epsilon : TypeHodgeStructure.CMEmbeddingType E)
    (c d q : epsilon.periodTorus)
    (hc : q ∈ (epsilon.periodChart c).source)
    (hd : q ∈ (epsilon.periodChart d).source) :
    ∃ a : 𝓞 E,
      chartLift E epsilon d q hd =
        chartLift E epsilon c q hc + epsilon.periodEmbedding (a : E) := by
  let z := chartLift E epsilon c q hc
  let z' := chartLift E epsilon d q hd
  have heq : (QuotientAddGroup.mk z' : epsilon.periodTorus) =
      QuotientAddGroup.mk z :=
    (chartLift_projects E epsilon d q hd).trans
      (chartLift_projects E epsilon c q hc).symm
  have hmem : z' - z ∈ epsilon.periodIntegerLattice :=
    QuotientAddGroup.eq_iff_sub_mem.mp heq
  obtain ⟨a, ha⟩ := (epsilon.mem_periodIntegerLattice _).mp hmem
  refine ⟨a, ?_⟩
  change z' = z + epsilon.periodEmbedding (a : E)
  rw [← ha]
  abel

/-- The explicitly chosen transition period; the original full integer
lattice site is retained. Its value is unique by periodEmbedding injectivity. -/
def chartTransitionPeriod
    (epsilon : TypeHodgeStructure.CMEmbeddingType E)
    (c d q : epsilon.periodTorus)
    (hc : q ∈ (epsilon.periodChart c).source)
    (hd : q ∈ (epsilon.periodChart d).source) : 𝓞 E :=
  (chartLift_difference_exists E epsilon c d q hc hd).choose

theorem chartTransitionPeriod_spec
    (epsilon : TypeHodgeStructure.CMEmbeddingType E)
    (c d q : epsilon.periodTorus)
    (hc : q ∈ (epsilon.periodChart c).source)
    (hd : q ∈ (epsilon.periodChart d).source) :
    chartLift E epsilon d q hd =
      chartLift E epsilon c q hc +
        epsilon.periodEmbedding (chartTransitionPeriod E epsilon c d q hc hd : E) :=
  (chartLift_difference_exists E epsilon c d q hc hd).choose_spec

/-- The exact transition multiplier on the overlap of SOURCE period charts. -/
def chartTransitionFactor
    (epsilon : TypeHodgeStructure.CMEmbeddingType E)
    (c d q : epsilon.periodTorus)
    (hc : q ∈ (epsilon.periodChart c).source)
    (hd : q ∈ (epsilon.periodChart d).source) : ℂ :=
  undoubledFactor E epsilon (chartTransitionPeriod E epsilon c d q hc hd)
    (chartLift E epsilon c q hc)

theorem chartTransitionFactor_nonzero
    (epsilon : TypeHodgeStructure.CMEmbeddingType E)
    (c d q : epsilon.periodTorus)
    (hc : q ∈ (epsilon.periodChart c).source)
    (hd : q ∈ (epsilon.periodChart d).source) :
    chartTransitionFactor E epsilon c d q hc hd ≠ 0 :=
  undoubledFactor_nonzero E epsilon _ _

/-- EXPLICIT change of frame: the true Appell-Humbert period factor,
not an independently assigned residue-sector gauge, relates the frames. -/
theorem chartFrame_change
    (epsilon : TypeHodgeStructure.CMEmbeddingType E)
    (c d q : epsilon.periodTorus)
    (hc : q ∈ (epsilon.periodChart c).source)
    (hd : q ∈ (epsilon.periodChart d).source)
    (w : ℂ) :
    chartFrame E epsilon c q hc w =
      chartFrame E epsilon d q hd
        (chartTransitionFactor E epsilon c d q hc hd * w) := by
  apply Subtype.ext
  change Quotient.mk (coverOrbitSetoid E epsilon)
      (chartLift E epsilon c q hc, w) =
    Quotient.mk (coverOrbitSetoid E epsilon)
      (chartLift E epsilon d q hd,
        chartTransitionFactor E epsilon c d q hc hd * w)
  apply Quotient.sound
  refine ⟨chartTransitionPeriod E epsilon c d q hc hd, ?_⟩
  apply Prod.ext
  · exact chartTransitionPeriod_spec E epsilon c d q hc hd
  · rfl

/-- The integral translation connecting two actual chart sections is UNIQUE,
by injectivity of the original field period embedding. -/
theorem chartTransitionPeriod_unique
    (epsilon : TypeHodgeStructure.CMEmbeddingType E)
    (c d q : epsilon.periodTorus)
    (hc : q ∈ (epsilon.periodChart c).source)
    (hd : q ∈ (epsilon.periodChart d).source)
    (a : 𝓞 E)
    (ha : chartLift E epsilon d q hd =
      chartLift E epsilon c q hc + epsilon.periodEmbedding (a : E)) :
    a = chartTransitionPeriod E epsilon c d q hc hd := by
  have hb := chartTransitionPeriod_spec E epsilon c d q hc hd
  have hper : epsilon.periodEmbedding (a : E) =
      epsilon.periodEmbedding
        (chartTransitionPeriod E epsilon c d q hc hd : E) := by
    have hh : chartLift E epsilon c q hc +
        epsilon.periodEmbedding (a : E) =
        chartLift E epsilon c q hc +
          epsilon.periodEmbedding
            (chartTransitionPeriod E epsilon c d q hc hd : E) :=
      ha.symm.trans hb
    exact add_left_cancel hh
  apply Subtype.ext
  exact periodEmbedding_injective E epsilon hper

/-- The full original O_E period translations obey the triple-overlap
addition rule, not just pairwise equality of already quotiented sites. -/
theorem chartTransitionPeriod_add
    (epsilon : TypeHodgeStructure.CMEmbeddingType E)
    (c d f q : epsilon.periodTorus)
    (hc : q ∈ (epsilon.periodChart c).source)
    (hd : q ∈ (epsilon.periodChart d).source)
    (hf : q ∈ (epsilon.periodChart f).source) :
    chartTransitionPeriod E epsilon c f q hc hf =
      chartTransitionPeriod E epsilon c d q hc hd +
        chartTransitionPeriod E epsilon d f q hd hf := by
  let a := chartTransitionPeriod E epsilon c d q hc hd
  let b := chartTransitionPeriod E epsilon d f q hd hf
  have ha := chartTransitionPeriod_spec E epsilon c d q hc hd
  have hb := chartTransitionPeriod_spec E epsilon d f q hd hf
  apply (chartTransitionPeriod_unique E epsilon c f q hc hf (a + b)).symm
  calc
    chartLift E epsilon f q hf =
        chartLift E epsilon d q hd + epsilon.periodEmbedding (b : E) := hb
    _ = (chartLift E epsilon c q hc + epsilon.periodEmbedding (a : E)) +
        epsilon.periodEmbedding (b : E) := by rw [ha]
    _ = chartLift E epsilon c q hc +
        epsilon.periodEmbedding ((a + b : 𝓞 E) : E) := by
          simp only [map_add]
          abel

/-- FULL triple-overlap Appell-Humbert transition cocycle on the actual
algebraic orbit fibres. Its holomorphic source is the already established
undoubled factor, not an invented scalar multiplier. -/
theorem chartTransitionFactor_cocycle
    (epsilon : TypeHodgeStructure.CMEmbeddingType E)
    (c d f q : epsilon.periodTorus)
    (hc : q ∈ (epsilon.periodChart c).source)
    (hd : q ∈ (epsilon.periodChart d).source)
    (hf : q ∈ (epsilon.periodChart f).source) :
    chartTransitionFactor E epsilon c f q hc hf =
      chartTransitionFactor E epsilon d f q hd hf *
        chartTransitionFactor E epsilon c d q hc hd := by
  unfold chartTransitionFactor
  rw [chartTransitionPeriod_add]
  rw [add_comm
      (chartTransitionPeriod E epsilon c d q hc hd)
      (chartTransitionPeriod E epsilon d f q hd hf)]
  rw [undoubledFactor_add]
  rw [← chartTransitionPeriod_spec E epsilon c d q hc hd]

/-- The original positive fibre metric is the exact local metric coefficient
under EVERY covering-chart frame. -/
theorem chartFrame_metric
    (epsilon : TypeHodgeStructure.CMEmbeddingType E)
    (c q : epsilon.periodTorus)
    (hq : q ∈ (epsilon.periodChart c).source) (w : ℂ) :
    actualOrbitMetricSq E epsilon (chartFrame E epsilon c q hq w).1 =
      coverMetricWeight E epsilon (chartLift E epsilon c q hq) * ‖w‖ ^ 2 :=
  rfl

/-- Genuine upstream local translation theorem: changes of the period
sections are locally constant lifts, not arbitrary functions of q.
This is a HOLomorphic transition-function ingredient, but not a declared
new global topology on ActualOrbitTotal. -/
theorem chartDisplacement_locally_constant_on_cover
    (epsilon : TypeHodgeStructure.CMEmbeddingType E)
    (c d q : epsilon.periodTorus)
    (hc : q ∈ (epsilon.periodChart c).source)
    (hd : q ∈ (epsilon.periodChart d).source) :
    (fun z : PeriodSpace.CMPeriodSpace E =>
      (epsilon.periodChart d) (QuotientAddGroup.mk z) - z) =ᶠ[
        𝓝 (chartLift E epsilon c q hc)]
      (fun _ => chartLift E epsilon d q hd - chartLift E epsilon c q hc) := by
  let z := chartLift E epsilon c q hc
  have hz : (QuotientAddGroup.mk z : epsilon.periodTorus) = q :=
    chartLift_projects E epsilon c q hc
  have h := epsilon.periodSection_eventuallyEq (epsilon.periodChart d)
    (epsilon.periodChart_symm d) z (by simpa only [hz] using hd)
  have hc0 : (epsilon.periodChart d) (QuotientAddGroup.mk z) =
      chartLift E epsilon d q hd := by
    simp only [hz]
    rfl
  filter_upwards [h] with w hw
  rw [hw, hc0]
  abel

/-- The transition function is holomorphic as a function of its COVER
coordinate on every locally fixed integral translation sheet. -/
theorem fixedSheetTransition_holomorphic
    (epsilon : TypeHodgeStructure.CMEmbeddingType E)
    (a : 𝓞 E) :
    Differentiable ℂ (fun z : PeriodSpace.CMPeriodSpace E =>
      undoubledFactor E epsilon a z) :=
  undoubledFactor_holomorphic E epsilon a

end GRWTSK.Geometry.AlgebraicGeometry.Hodge.CMActualPeriodChartLocalFrames
