/-
Copyright (c) 2026 grwtsk contributors. MIT.
Formalization assistance: OpenAI.

SOURCE_ONLY / NOT_RUN / NOT_KERNEL_AUDITED.
This module is intentionally isolated from GRWTSK.lean. It proves no new
zero-free region, RH, GRH, non-soficity, or historical claim.
-/
import GRWTSK.NumberTheory.Farey.HeatFlowCompressionSofic
import GRWTSK.Logic.InformationLoss.DynamicPartitionRecovery
import Mathlib.Data.Fintype.Basic

set_option autoImplicit false

/-!
# Dynamic partitions, sofic presentations, and spectral zero covers

This file separates three operations:
* finite dynamic refinement,
* finite labelled-graph trace presentation,
* spectral transport between zero problems.

A partition collision with unequal target values obstructs recovery from that
stage. If graph state factors through the partition and the trace factors
through graph state, the trace factors through the partition too.

For RH/GRH, the hard direction is represented by a family of spectral zero
covers. The reverse direction remains an explicit specialization premise.
Thus the equivalence theorem below is conditional and makes both directions
visible.

Historical comparisons involving Aristotle, Newton, Leibniz, and Riemann are
interpretive motivation only; no historical theorem is encoded here.
-/

universe uX uCell uRatio uTrace uVertex uLabel uBase uGen uIndex

namespace GRWTSK.NumberTheory.Farey.DynamicSoficSpectralCover

open GRWTSK.Logic.InformationLoss
open GRWTSK.NumberTheory.Farey.HeatFlowCompressionSofic

/-- The generic difference supplier gives an exact model of why a local
difference observable is not globally lossless: it forgets the additive
anchor.  Any intermediate finite state that itself factors only through the
difference stream therefore cannot recover the initial ordinate. -/
theorem no_finite_state_initial_recovery_from_unanchored_difference
    {State : Type uCell} [Fintype State]
    (state : (ℕ → ℤ) → State)
    (hstate :
      FactorsThrough
        GRWTSK.Logic.InformationLoss.DynamicPartitionRecovery.discreteDifference
        state)
    (hinitial : FactorsThrough state (fun f : ℕ → ℤ => f 0)) :
    False := by
  have hfactor :
      FactorsThrough
        GRWTSK.Logic.InformationLoss.DynamicPartitionRecovery.discreteDifference
        (fun f : ℕ → ℤ => f 0) :=
    factorsThrough_trans
      GRWTSK.Logic.InformationLoss.DynamicPartitionRecovery.discreteDifference
      state (fun f : ℕ → ℤ => f 0) hstate hinitial
  exact
    GRWTSK.Logic.InformationLoss.DynamicPartitionRecovery.initialValue_not_factorsThrough_difference
      hfactor

/-- Retaining the anchor repairs that exact information loss.  Because the
anchored difference stream has an explicit left inverse, every source readout
factors through it.  This is a reconstruction theorem, not a finite-code,
compression-rate, heat-flow, or zeta theorem. -/
theorem readout_factorsThrough_anchoredDifference
    {Target : Type uRatio}
    (readout : (ℕ → ℤ) → Target) :
    FactorsThrough
      GRWTSK.Logic.InformationLoss.DynamicPartitionRecovery.anchoredDifference
      readout := by
  refine ⟨readout ∘
    GRWTSK.Logic.InformationLoss.DynamicPartitionRecovery.integrateDifference, ?_⟩
  funext f
  simp only [Function.comp_apply]
  rw [GRWTSK.Logic.InformationLoss.DynamicPartitionRecovery.integrate_anchoredDifference]

structure DynamicPartition
    (X : Type uX) (Cell : Type uCell) [Fintype Cell] where
  cell : ℕ → X → Cell
  refines : ∀ n x y,
    cell (n + 1) x = cell (n + 1) y →
      cell n x = cell n y

def RecoverableAtStage
    {X : Type uX} {Cell : Type uCell} [Fintype Cell]
    {Target : Type uRatio}
    (partition : DynamicPartition X Cell)
    (readout : X → Target) (n : ℕ) : Prop :=
  FactorsThrough (partition.cell n) readout

theorem not_recoverableAtStage_of_collision
    {X : Type uX} {Cell : Type uCell} [Fintype Cell]
    {Target : Type uRatio}
    (partition : DynamicPartition X Cell)
    (readout : X → Target) (n : ℕ)
    (x y : X)
    (hcell : partition.cell n x = partition.cell n y)
    (hreadout : readout x ≠ readout y) :
    ¬ RecoverableAtStage partition readout n :=
  not_factorsThrough_of_collision
    (partition.cell n) readout x y hcell hreadout

def ProportionRecoverableAtStage
    {X : Type uX} {Cell : Type uCell} [Fintype Cell]
    {Ratio : Type uRatio}
    (partition : DynamicPartition X Cell)
    (proportion : X → Ratio) (n : ℕ) : Prop :=
  RecoverableAtStage partition proportion n

theorem proportion_not_compressible_at_collision
    {X : Type uX} {Cell : Type uCell} [Fintype Cell]
    {Ratio : Type uRatio}
    (partition : DynamicPartition X Cell)
    (proportion : X → Ratio) (n : ℕ)
    (x y : X)
    (hcell : partition.cell n x = partition.cell n y)
    (hproportion : proportion x ≠ proportion y) :
    ¬ ProportionRecoverableAtStage partition proportion n :=
  not_recoverableAtStage_of_collision
    partition proportion n x y hcell hproportion

structure SoficGraph
    (Vertex : Type uVertex) (Label : Type uLabel)
    [Fintype Vertex] [Fintype Label] where
  edge : Vertex → Label → Vertex → Prop

structure DynamicSoficPresentation
    (X : Type uX) (Trace : Type uTrace)
    (Vertex : Type uVertex) (Label : Type uLabel)
    [Fintype Vertex] [Fintype Label] where
  graph : SoficGraph Vertex Label
  vertex : ℕ → X → Vertex
  label : ℕ → X → Label
  follows : ∀ n x,
    graph.edge (vertex n x) (label n x) (vertex (n + 1) x)
  trace : X → Trace
  traceFactorsThroughVertex : ∀ n,
    FactorsThrough (vertex n) trace

theorem trace_factorsThrough_partition
    {X : Type uX} {Cell : Type uCell} [Fintype Cell]
    {Trace : Type uTrace}
    {Vertex : Type uVertex} {Label : Type uLabel}
    [Fintype Vertex] [Fintype Label]
    (partition : DynamicPartition X Cell)
    (presentation : DynamicSoficPresentation X Trace Vertex Label)
    (n : ℕ)
    (hvertex : FactorsThrough (partition.cell n) (presentation.vertex n)) :
    FactorsThrough (partition.cell n) presentation.trace :=
  factorsThrough_trans
    (partition.cell n) (presentation.vertex n) presentation.trace
    hvertex (presentation.traceFactorsThroughVertex n)

theorem no_partition_sofic_trace_cover_of_collision
    {X : Type uX} {Cell : Type uCell} [Fintype Cell]
    {Trace : Type uTrace}
    {Vertex : Type uVertex} {Label : Type uLabel}
    [Fintype Vertex] [Fintype Label]
    (partition : DynamicPartition X Cell)
    (presentation : DynamicSoficPresentation X Trace Vertex Label)
    (n : ℕ) (x y : X)
    (hcell : partition.cell n x = partition.cell n y)
    (htrace : presentation.trace x ≠ presentation.trace y) :
    ¬ FactorsThrough (partition.cell n) (presentation.vertex n) := by
  intro hvertex
  have htraceFactor :
      FactorsThrough (partition.cell n) presentation.trace :=
    trace_factorsThrough_partition partition presentation n hvertex
  exact
    (not_factorsThrough_of_collision
      (partition.cell n) presentation.trace x y hcell htrace) htraceFactor

structure ZeroProblem (Zero : Type uBase) where
  isZero : Zero → Prop
  critical : Zero → Prop

def ZeroProblem.Hypothesis
    {Zero : Type uBase} (problem : ZeroProblem Zero) : Prop :=
  ∀ z, problem.isZero z → problem.critical z

structure SpectralZeroCover
    {BaseZero : Type uBase} {GeneralizedZero : Type uGen}
    (base : ZeroProblem BaseZero)
    (generalized : ZeroProblem GeneralizedZero) where
  project : GeneralizedZero → BaseZero
  mapsZero : ∀ z,
    generalized.isZero z → base.isZero (project z)
  pullsBackCritical : ∀ z,
    generalized.isZero z →
      base.critical (project z) →
        generalized.critical z

theorem SpectralZeroCover.transport_hypothesis
    {BaseZero : Type uBase} {GeneralizedZero : Type uGen}
    {base : ZeroProblem BaseZero}
    {generalized : ZeroProblem GeneralizedZero}
    (cover : SpectralZeroCover base generalized)
    (hbase : base.Hypothesis) :
    generalized.Hypothesis := by
  intro z hz
  exact cover.pullsBackCritical z hz
    (hbase (cover.project z) (cover.mapsZero z hz))

def GeneralizedHypothesis
    {Index : Type uIndex}
    {Zero : Index → Type uGen}
    (family : ∀ i, ZeroProblem (Zero i)) : Prop :=
  ∀ i, (family i).Hypothesis

structure SpectralCoverFamily
    {Index : Type uIndex}
    {BaseZero : Type uBase}
    {Zero : Index → Type uGen}
    (base : ZeroProblem BaseZero)
    (family : ∀ i, ZeroProblem (Zero i)) where
  cover : ∀ i, SpectralZeroCover base (family i)

theorem rh_implies_generalized_of_spectralCoverFamily
    {Index : Type uIndex}
    {BaseZero : Type uBase}
    {Zero : Index → Type uGen}
    {base : ZeroProblem BaseZero}
    {family : ∀ i, ZeroProblem (Zero i)}
    (covers : SpectralCoverFamily base family)
    (hRH : base.Hypothesis) :
    GeneralizedHypothesis family := by
  intro i
  exact (covers.cover i).transport_hypothesis hRH

/-- A concrete specialization of the base problem inside one generalized
problem.  Base zeros are embedded as generalized zeros, and generalized
criticality at those embedded points reflects back to base criticality. -/
structure BaseSpecialization
    {BaseZero : Type uBase} {GeneralizedZero : Type uGen}
    (base : ZeroProblem BaseZero)
    (generalized : ZeroProblem GeneralizedZero) where
  embed : BaseZero → GeneralizedZero
  mapsZero : ∀ z,
    base.isZero z → generalized.isZero (embed z)
  reflectsCritical : ∀ z,
    base.isZero z →
      generalized.critical (embed z) →
        base.critical z

/-- One actual generalized family member containing the base zero problem
supplies the standard generalized-to-base direction. -/
theorem generalized_implies_base_of_member_specialization
    {Index : Type uIndex}
    {BaseZero : Type uBase}
    {Zero : Index → Type uGen}
    {base : ZeroProblem BaseZero}
    {family : ∀ i, ZeroProblem (Zero i)}
    (i0 : Index)
    (specialization : BaseSpecialization base (family i0))
    (hGeneralized : GeneralizedHypothesis family) :
    base.Hypothesis := by
  intro z hz
  exact specialization.reflectsCritical z hz
    (hGeneralized i0 (specialization.embed z)
      (specialization.mapsZero z hz))

/-- Spectral covers from the base problem to every generalized member, together
with an actual generalized member containing the base problem, give a typed
conditional equivalence.  This is stronger than merely assuming an arbitrary
implication between the two propositions. -/
theorem rh_iff_generalized_of_spectralCovers_and_member_specialization
    {Index : Type uIndex}
    {BaseZero : Type uBase}
    {Zero : Index → Type uGen}
    {base : ZeroProblem BaseZero}
    {family : ∀ i, ZeroProblem (Zero i)}
    (covers : SpectralCoverFamily base family)
    (i0 : Index)
    (specialization : BaseSpecialization base (family i0)) :
    base.Hypothesis ↔ GeneralizedHypothesis family := by
  constructor
  · exact rh_implies_generalized_of_spectralCoverFamily covers
  · exact generalized_implies_base_of_member_specialization
      i0 specialization

theorem rh_iff_generalized_of_spectralCovers_and_specialization
    {Index : Type uIndex}
    {BaseZero : Type uBase}
    {Zero : Index → Type uGen}
    {base : ZeroProblem BaseZero}
    {family : ∀ i, ZeroProblem (Zero i)}
    (covers : SpectralCoverFamily base family)
    (specialization : GeneralizedHypothesis family → base.Hypothesis) :
    base.Hypothesis ↔ GeneralizedHypothesis family := by
  constructor
  · exact rh_implies_generalized_of_spectralCoverFamily covers
  · exact specialization

structure DynamicSoficSpectralSystem
    (X : Type uX) (Cell : Type uCell)
    (Trace : Type uTrace)
    (Vertex : Type uVertex) (Label : Type uLabel)
    (BaseZero : Type uBase) (GeneralizedZero : Type uGen)
    [Fintype Cell] [Fintype Vertex] [Fintype Label] where
  partition : DynamicPartition X Cell
  presentation : DynamicSoficPresentation X Trace Vertex Label
  baseProblem : ZeroProblem BaseZero
  generalizedProblem : ZeroProblem GeneralizedZero
  spectralCover : SpectralZeroCover baseProblem generalizedProblem
  vertexFactorsThroughPartition : ∀ n,
    FactorsThrough (partition.cell n) (presentation.vertex n)

theorem DynamicSoficSpectralSystem.trace_factorsThrough_stage
    {X : Type uX} {Cell : Type uCell}
    {Trace : Type uTrace}
    {Vertex : Type uVertex} {Label : Type uLabel}
    {BaseZero : Type uBase} {GeneralizedZero : Type uGen}
    [Fintype Cell] [Fintype Vertex] [Fintype Label]
    (system :
      DynamicSoficSpectralSystem
        X Cell Trace Vertex Label BaseZero GeneralizedZero)
    (n : ℕ) :
    FactorsThrough (system.partition.cell n) system.presentation.trace :=
  trace_factorsThrough_partition
    system.partition system.presentation n
    (system.vertexFactorsThroughPartition n)

theorem DynamicSoficSpectralSystem.no_trace_collision
    {X : Type uX} {Cell : Type uCell}
    {Trace : Type uTrace}
    {Vertex : Type uVertex} {Label : Type uLabel}
    {BaseZero : Type uBase} {GeneralizedZero : Type uGen}
    [Fintype Cell] [Fintype Vertex] [Fintype Label]
    (system :
      DynamicSoficSpectralSystem
        X Cell Trace Vertex Label BaseZero GeneralizedZero)
    (n : ℕ) (x y : X)
    (hcell : system.partition.cell n x = system.partition.cell n y) :
    system.presentation.trace x = system.presentation.trace y :=
  eq_of_factorsThrough
    (system.partition.cell n) system.presentation.trace
    (system.trace_factorsThrough_stage n) hcell

end GRWTSK.NumberTheory.Farey.DynamicSoficSpectralCover
