/- Copyright (c) 2026 grwtsk contributors. MIT.
Human mathematical direction: grwtsk contributors. Formalization assistance: OpenAI Codex.
Mathlib results retain their upstream authorship and Apache-2.0 license. -/
import GRWTSK.NumberTheory.Zeta.Riemann.ZetaCommutatorRoot

set_option autoImplicit false

/-!
# Concrete critical-strip atlas hostile fixtures

The first fixture instantiates the generic interfaces on the concrete zeta
spectral-parameter root. It has a nonempty carrier, exact source binding, an exact
self-overlap, coordinate identity/inverse/cocycle laws, and a source-bound reflexive
vertical edge. Its local RH profile is nevertheless neutral, so these structural facts
do not establish `GapFree` or complete vertical coverage.

The second fixture adds the canonical RH target chart on the same full carrier and the
same root coordinate. The two charts have an exact coordinate transition and coexist in
one `CriticalStripAtlas`, while the declared overlap audit remains logically unrelated.
This is the concrete #244 hostile control: equal coordinates do not supply
`RootStatement ↔ RiemannHypothesis`.
-/

namespace GRWTSK.RiemannHypothesis.ZetaCommutatorRootFixture

open ZetaCommutatorRoot

/-- The single chart index of the root-only hostile fixture. -/
inductive ChartIndex where
  | root
  deriving DecidableEq, Repr

/-- Exact source-bound self-transition of the concrete root chart. -/
def selfTransition : DirectionalOverlapTransition chart chart where
  overlap := ⟨0, trivial, trivial⟩
  coordinateMap := id
  coordinate_transport := by
    intro _ _ _
    rfl
  statementTransport := .equivalent Iff.rfl
  leftBinding := binding
  rightBinding := binding
  left_binding_matches := binding_matches_chart
  right_binding_matches := binding_matches_chart
  binding_eq := rfl

@[simp] theorem selfTransition_isEquivalent :
    selfTransition.statementTransport.IsEquivalent :=
  trivial

/-- Exact #232 audit outcome for the self-overlap. -/
def selfOutcome : OverlapAuditOutcome chart chart :=
  .exact selfTransition selfTransition_isEquivalent

/-- One-chart atlas over the full complex spectral-parameter carrier. -/
def atlas : CriticalStripAtlas ChartIndex Operator SpectralPoint ModuleCarrier where
  root := ZetaCommutatorRoot.root
  chart := fun _ => ZetaCommutatorRoot.chart
  cover := by
    intro _
    exact ⟨.root, trivial⟩
  transition := by
    intro i j _overlap
    cases i
    cases j
    exact selfTransition.toCoordinateTransition
  identity_transition := by
    intro i _ _
    cases i
    rfl
  inverse_transition := by
    intro i j _ _ _
    cases i
    cases j
    rfl
  cocycle_transition := by
    intro i j k _ _ _ _
    cases i
    cases j
    cases k
    rfl
  comparison := by
    intro i
    cases i
    exact localProfile

@[simp] theorem atlas_root_status :
    (atlas.comparison .root).status = .neutral :=
  rfl

/-- The root-only atlas has no available implication from its local statement to RH. -/
theorem not_hasForward :
    ¬ (atlas.comparison .root).HasForward := by
  intro h
  change (LocalRHStatus.neutral = .equivalent ∨
    LocalRHStatus.neutral = .sufficient) at h
  rcases h with h | h <;> cases h

/-- The root-only atlas has no available implication from RH to its local statement. -/
theorem not_hasReverse :
    ¬ (atlas.comparison .root).HasReverse := by
  intro h
  change (LocalRHStatus.neutral = .equivalent ∨
    LocalRHStatus.neutral = .necessary) at h
  rcases h with h | h <;> cases h

/-- Missing forward implication for the concrete root chart. -/
def forwardGap : AtlasGap where
  chartId := "zeta-spectral-parameter-root"
  kind := .missingForwardImplication
  disposition := .unproved
  owner := "grwtsk/math#231"
  obligation :=
    "Prove the concrete root statement implies canonical RiemannHypothesis, or retain NEUTRAL."
  binding := binding

/-- Missing reverse implication for the concrete root chart. -/
def reverseGap : AtlasGap where
  chartId := "zeta-spectral-parameter-root"
  kind := .missingReverseImplication
  disposition := .unproved
  owner := "grwtsk/math#231"
  obligation :=
    "Prove canonical RiemannHypothesis realizes the concrete root statement as the selected chart proposition, or retain NEUTRAL."
  binding := binding

/-- External replay remains independent of the source-only fixture. -/
def replayGap : AtlasGap where
  chartId := "zeta-spectral-parameter-root"
  kind := .missingReplayEvidence
  disposition := .unavailable
  owner := "grwtsk/noeaaeue#349"
  obligation :=
    "Produce one clean exact-source replay receipt after the worker and F06 gates are satisfied."
  binding := binding

/-- Complete current gap list for the one concrete chart. -/
def gaps : List AtlasGap :=
  [forwardGap, reverseGap, replayGap]

/-- The forward gap is present and open. -/
theorem hasOpenForwardGap :
    HasOpenGap gaps .missingForwardImplication := by
  refine ⟨forwardGap, ?_, rfl, ?_⟩
  · simp [gaps]
  · simp [AtlasGap.IsOpen, GapDisposition.IsOpen, forwardGap]

/-- The reverse gap is present and open. -/
theorem hasOpenReverseGap :
    HasOpenGap gaps .missingReverseImplication := by
  refine ⟨reverseGap, ?_, rfl, ?_⟩
  · simp [gaps]
  · simp [AtlasGap.IsOpen, GapDisposition.IsOpen, reverseGap]

/-- Concrete #231 audit entry for the root chart. -/
def auditEntry : ChartAuditEntry atlas .root where
  chartId := "zeta-spectral-parameter-root"
  binding := binding
  binding_matches := by
    simpa [atlas] using binding_matches_chart
  forwardDeclaration := none
  reverseDeclaration := none
  suppliers :=
    ["ZetaCommutatorRoot.commutatorAt_eq_coordinateOperator",
      "ZetaCommutatorRoot.heightAt_eq_im",
      "ZetaCommutatorRoot.coordinate_injective"]
  consumers :=
    ["grwtsk/math#232", "grwtsk/math#234", "grwtsk/math#235"]
  gaps := gaps
  forward_declaration_present := by
    intro h
    exact (not_hasForward h).elim
  reverse_declaration_present := by
    intro h
    exact (not_hasReverse h).elim
  forward_present_no_gap := by
    intro h
    exact (not_hasForward h).elim
  reverse_present_no_gap := by
    intro h
    exact (not_hasReverse h).elim
  forward_absent_reported := by
    intro _
    exact hasOpenForwardGap
  reverse_absent_reported := by
    intro _
    exact hasOpenReverseGap

/-- Concrete report requiring the one root chart. -/
def report : AtlasGapReport atlas where
  reportId := "zeta-root-only-atlas-v0.1"
  sourceRevision := sourceRevision
  required := fun _ => True
  required_nonempty := ⟨.root, trivial⟩
  audit := by
    intro i _
    cases i
    exact auditEntry

/-- Exact source-bound vertical edge carrying the concrete self-overlap. -/
def rootStep : SourceBoundVerticalStep atlas .root .root where
  step := VerticalStep.refl atlas .root
  lowerBinding := binding
  upperBinding := binding
  lower_binding_matches := by
    simpa [atlas] using binding_matches_chart
  upper_binding_matches := by
    simpa [atlas] using binding_matches_chart
  binding_eq := rfl
  kinds := [.coordinateEquivalence, .logicalImplication, .heightMonotone]
  kinds_nonempty := by simp
  logical_kind_present := by simp
  height_kind_present := by simp
  coordinateEvidence := some selfOutcome
  coordinate_evidence_exact := by
    intro _
    exact ⟨selfOutcome, rfl, trivial⟩
  terminal_status_exact := by
    intro h
    simp at h

/-- Nonempty dependent path using the exact self-overlap edge. -/
def rootPath : VerticalPath atlas .root .root :=
  .cons rootStep (.refl .root)

/-- Exact self-overlap and a valid path do not make the neutral atlas gap-free. -/
theorem atlas_not_gapFree : ¬ atlas.GapFree := by
  intro hgap
  have hstatus := hgap ChartIndex.root
  change LocalRHStatus.neutral = .equivalent at hstatus
  cases hstatus

/-- The concrete report cannot claim both directional gaps are discharged. -/
theorem report_not_directionalGapsDischarged :
    ¬ report.DirectionalGapsDischarged := by
  intro hdischarged
  apply atlas_not_gapFree
  exact report.gapFree_of_directionalGapsDischarged
    (by intro _; trivial) hdischarged

/-- The one neutral chart cannot be used as an RH-equivalent terminal. Hence the
root-only fixture cannot inhabit complete vertical coverage despite its valid path. -/
theorem no_completeVerticalCoverage :
    ¬ CompleteVerticalCoverage report := by
  intro coverage
  rcases coverage.terminal_nonempty with ⟨i, hi⟩
  have hstatus := coverage.terminal_equivalent i hi
  cases i
  change LocalRHStatus.neutral = .equivalent at hstatus
  cases hstatus

/-! ## Neutral root and canonical target on one coordinate atlas -/

/-- Canonical target chart using exactly the same carrier, root coordinate, source,
revision, and normalization as the neutral root chart. -/
def targetChart : CriticalStripChart ZetaCommutatorRoot.root where
  carrier := fun _ => True
  anchor := 0
  anchor_mem := trivial
  coordinate := ZetaCommutatorRoot.root.coordinate
  coordinate_eq_root := by
    intro _ _
    rfl
  localStatement := _root_.RiemannHypothesis
  sourceId := sourceId
  revision := sourceRevision
  normalizationId := normalizationId
  source_eq_root := rfl
  revision_eq_root := rfl

@[simp] theorem binding_matches_targetChart : binding.Matches targetChart := by
  exact ⟨rfl, rfl, rfl⟩

/-- Canonical target is exactly equivalent to itself. -/
def targetProfile : LocalRHProfile _root_.RiemannHypothesis :=
  LocalRHProfile.ofEquivalence Iff.rfl

@[simp] theorem targetProfile_status : targetProfile.status = .equivalent :=
  rfl

/-- Coordinate overlap from the neutral root chart to the canonical target. Its logical
transport is deliberately `unrelated`: no missing theorem is inserted by metadata. -/
def rootToTargetTransition : DirectionalOverlapTransition chart targetChart where
  overlap := ⟨0, trivial, trivial⟩
  coordinateMap := id
  coordinate_transport := by
    intro _ _ _
    rfl
  statementTransport := .unrelated
  leftBinding := binding
  rightBinding := binding
  left_binding_matches := binding_matches_chart
  right_binding_matches := binding_matches_targetChart
  binding_eq := rfl

@[simp] theorem rootToTarget_notEquivalent :
    ¬ rootToTargetTransition.statementTransport.IsEquivalent := by
  simp [rootToTargetTransition, StatementTransport.IsEquivalent]

/-- Exact coordinate, missing logical equivalence. -/
def rootToTargetOutcome : OverlapAuditOutcome chart targetChart :=
  .directional rootToTargetTransition rootToTarget_notEquivalent

@[simp] theorem rootToTarget_coordinate_admitted :
    rootToTargetOutcome.admittedCoordinateTransition =
      some rootToTargetTransition.toCoordinateTransition :=
  rfl

@[simp] theorem rootToTarget_logical_not_admitted :
    rootToTargetOutcome.admittedTransition = none :=
  rfl

/-- The two overlapping charts of the coordinate/logical separation fixture. -/
inductive BoundaryChartIndex where
  | root
  | target
  deriving DecidableEq, Repr

/-- Chart family containing both the neutral root and canonical RH target. -/
def boundaryChart : BoundaryChartIndex → CriticalStripChart ZetaCommutatorRoot.root
  | .root => chart
  | .target => targetChart

/-- Exact identity coordinate map between every pair of boundary charts. -/
def boundaryCoordinateTransition (i j : BoundaryChartIndex) :
    CoordinateTransition (boundaryChart i) (boundaryChart j) where
  forward := id
  coordinate_transport := by
    intro _ _ _
    cases i <;> cases j <;> rfl

/-- Corrected atlas: the neutral root and RH-equivalent target coexist on the same
coordinate carrier without assuming a proposition equivalence between them. -/
def boundaryAtlas :
    CriticalStripAtlas BoundaryChartIndex Operator SpectralPoint ModuleCarrier where
  root := ZetaCommutatorRoot.root
  chart := boundaryChart
  cover := by
    intro _
    exact ⟨.root, trivial⟩
  transition := by
    intro i j _
    exact boundaryCoordinateTransition i j
  identity_transition := by
    intro i _ _
    cases i <;> rfl
  inverse_transition := by
    intro i j _ _ _
    cases i <;> cases j <;> rfl
  cocycle_transition := by
    intro i j k _ _ _ _
    cases i <;> cases j <;> cases k <;> rfl
  comparison := by
    intro i
    cases i with
    | root => exact localProfile
    | target => exact targetProfile

@[simp] theorem boundaryAtlas_root_status :
    (boundaryAtlas.comparison .root).status = .neutral :=
  rfl

@[simp] theorem boundaryAtlas_target_status :
    (boundaryAtlas.comparison .target).status = .equivalent :=
  rfl

/-- Coordinate coexistence with an RH-equivalent target still does not discharge the
neutral root chart's two logical gaps. -/
theorem boundaryAtlas_not_gapFree : ¬ boundaryAtlas.GapFree := by
  intro hgap
  have hstatus := hgap BoundaryChartIndex.root
  change LocalRHStatus.neutral = .equivalent at hstatus
  cases hstatus

end GRWTSK.RiemannHypothesis.ZetaCommutatorRootFixture
