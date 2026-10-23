/- Copyright (c) 2026 grwtsk contributors. MIT.
Human mathematical direction: grwtsk contributors. Formalization assistance: OpenAI Codex.
Mathlib results retain their upstream authorship and Apache-2.0 license. -/
import GRWTSK.NumberTheory.Zeta.Riemann.ZetaCommutatorRoot

set_option autoImplicit false

/-!
# Concrete critical-strip atlas hostile fixtures

Adapt the #245 coordinate-only fixtures to #253's necessary root profile and
propositional path witnesses. The root theorem already supplies RH -> RootStatement.
Its forward implication is not supplied by the profile; it is not asserted false.

Both fixtures retain nonempty carriers, exact coordinates and source identities.
The root-only atlas still has no equivalent terminal. The two-chart atlas admits
coordinates but not a logical equivalence: its root-to-target record is reverse-only.
These are source proof scripts, not an elaboration or external replay receipt.
-/

namespace GRWTSK.RiemannHypothesis.ZetaCommutatorRootFixture

open ZetaCommutatorRoot

inductive ChartIndex where
  | root
  deriving DecidableEq, Repr

/-- Exact source-bound self-transition of the concrete root chart. -/
def selfTransition : DirectionalOverlapTransition chart chart where
  overlap := ⟨0, trivial, trivial⟩
  coordinateMap := id
  coordinate_transport := by intro _ _ _; rfl
  statementTransport := .equivalent Iff.rfl
  leftBinding := binding
  rightBinding := binding
  left_binding_matches := binding_matches_chart
  right_binding_matches := binding_matches_chart
  binding_eq := rfl

@[simp] theorem selfTransition_isEquivalent :
    selfTransition.statementTransport.IsEquivalent := trivial

def selfOutcome : OverlapAuditOutcome chart chart :=
  .exact selfTransition selfTransition_isEquivalent

/-- One-chart atlas over the full complex spectral-parameter carrier. -/
def atlas : CriticalStripAtlas ChartIndex Operator SpectralPoint ModuleCarrier where
  root := ZetaCommutatorRoot.root
  chart := fun _ => ZetaCommutatorRoot.chart
  cover := by intro _; exact ⟨.root, trivial⟩
  transition := by
    intro i j _
    cases i
    cases j
    exact selfTransition.toCoordinateTransition
  identity_transition := by intro i _ _; cases i; rfl
  inverse_transition := by intro i j _ _ _; cases i; cases j; rfl
  cocycle_transition := by intro i j k _ _ _ _; cases i; cases j; cases k; rfl
  comparison := by intro i; cases i; exact localProfile

@[simp] theorem atlas_root_status :
    (atlas.comparison .root).status = .necessary := rfl

/-- The chosen profile does not supply a forward proof. This is not its negation. -/
theorem not_hasForward : ¬ (atlas.comparison .root).HasForward := by
  intro h
  change (LocalRHStatus.necessary = .equivalent ∨
    LocalRHStatus.necessary = .sufficient) at h
  rcases h with h | h <;> cases h

/-- The reverse proof is available through the independently proved root statement. -/
theorem hasReverse : (atlas.comparison .root).HasReverse := Or.inr rfl

def forwardGap : AtlasGap where
  chartId := "zeta-spectral-parameter-root"
  kind := .missingForwardImplication
  disposition := .unproved
  owner := "grwtsk/math#231"
  obligation := "Supply RootStatement -> canonical RH, or retain NECESSARY. No negation is asserted."
  binding := binding

/-- Retain the reverse-gap identity, but record its already supplied source proof. -/
def reverseGap : AtlasGap where
  chartId := "zeta-spectral-parameter-root"
  kind := .missingReverseImplication
  disposition := .discharged
  owner := "grwtsk/math#231"
  obligation := "Supplied by GRWTSK.RiemannHypothesis.ZetaCommutatorRoot.rootStatement_of_rh; replay remains separate."
  binding := binding

def replayGap : AtlasGap where
  chartId := "zeta-spectral-parameter-root"
  kind := .missingReplayEvidence
  disposition := .unavailable
  owner := "grwtsk/noeaaeue#349"
  obligation := "Require clean exact-source replay after the worker and F06 gates are satisfied."
  binding := binding

def gaps : List AtlasGap := [forwardGap, reverseGap, replayGap]

theorem hasOpenForwardGap : HasOpenGap gaps .missingForwardImplication := by
  refine ⟨forwardGap, ?_, rfl, ?_⟩
  · simp [gaps]
  · simp [AtlasGap.IsOpen, GapDisposition.IsOpen, forwardGap]

theorem hasNoOpenReverseGap : ¬ HasOpenGap gaps .missingReverseImplication := by
  simp [HasOpenGap, gaps, forwardGap, reverseGap, replayGap,
    AtlasGap.IsOpen, GapDisposition.IsOpen]

/-- The concrete audit now exposes the reverse declaration and no stale open reverse gap. -/
def auditEntry : ChartAuditEntry atlas .root where
  chartId := "zeta-spectral-parameter-root"
  binding := binding
  binding_matches := by simp [atlas]
  forwardDeclaration := none
  reverseDeclaration := some "GRWTSK.RiemannHypothesis.ZetaCommutatorRoot.rootStatement_of_rh"
  suppliers :=
    ["ZetaCommutatorRoot.commutatorAt_eq_coordinateOperator",
      "ZetaCommutatorRoot.heightAt_eq_im", "ZetaCommutatorRoot.coordinate_injective",
      "ZetaCommutatorRoot.rootStatement_of_rh"]
  consumers := ["grwtsk/math#232", "grwtsk/math#234", "grwtsk/math#235"]
  gaps := gaps
  forward_declaration_present := by intro h; exact (not_hasForward h).elim
  reverse_declaration_present := by intro _; exact ⟨_, rfl⟩
  forward_present_no_gap := by intro h; exact (not_hasForward h).elim
  reverse_present_no_gap := by intro _; exact hasNoOpenReverseGap
  forward_absent_reported := by intro _; exact hasOpenForwardGap
  reverse_absent_reported := by intro h; exact (h hasReverse).elim

def report : AtlasGapReport atlas where
  reportId := "zeta-root-only-atlas-v0.2-necessary"
  sourceRevision := sourceRevision
  required := fun _ => True
  required_nonempty := ⟨.root, trivial⟩
  audit := by intro i _; cases i; exact auditEntry

/-- Exact self-overlap does not remove either logical or height proof fields. -/
def rootStep : SourceBoundVerticalStep atlas .root .root where
  step := VerticalStep.refl atlas .root
  lowerBinding := binding
  upperBinding := binding
  lower_binding_matches := by simp [atlas]
  upper_binding_matches := by simp [atlas]
  binding_eq := rfl
  kinds := [.coordinateEquivalence, .logicalImplication, .heightMonotone]
  kinds_nonempty := by simp
  logical_kind_present := by simp
  height_kind_present := by simp
  coordinateEvidence := some selfOutcome
  coordinate_evidence_exact := by intro _; exact ⟨selfOutcome, rfl, trivial⟩
  terminal_status_exact := by intro h; simp at h

def rootPath : VerticalPath atlas ChartIndex.root ChartIndex.root :=
  .cons rootStep (.refl ChartIndex.root)

theorem atlas_not_gapFree : ¬ atlas.GapFree := by
  intro hgap
  have hstatus := hgap ChartIndex.root
  change LocalRHStatus.necessary = .equivalent at hstatus
  cases hstatus

theorem report_not_directionalGapsDischarged : ¬ report.DirectionalGapsDischarged := by
  intro hdischarged
  apply atlas_not_gapFree
  exact report.gapFree_of_directionalGapsDischarged (by intro _; trivial) hdischarged

/-- Coverage is data. Its nonexistence is expressed propositionally through Nonempty. -/
theorem no_completeVerticalCoverage : ¬ Nonempty (CompleteVerticalCoverage report) := by
  rintro ⟨coverage⟩
  rcases coverage.terminal_nonempty with ⟨i, hi⟩
  have hstatus := coverage.terminal_equivalent i hi
  cases i
  change LocalRHStatus.necessary = .equivalent at hstatus
  cases hstatus

/-- The canonical RH target uses the exact same full carrier and root coordinate. -/
def targetChart : CriticalStripChart ZetaCommutatorRoot.root where
  carrier := fun _ => True
  anchor := 0
  anchor_mem := trivial
  coordinate := ZetaCommutatorRoot.root.coordinate
  coordinate_eq_root := by intro _ _; rfl
  localStatement := _root_.RiemannHypothesis
  sourceId := sourceId
  revision := sourceRevision
  normalizationId := normalizationId
  source_eq_root := rfl
  revision_eq_root := rfl

@[simp] theorem binding_matches_targetChart : binding.Matches targetChart := ⟨rfl, rfl, rfl⟩

def targetProfile : LocalRHProfile _root_.RiemannHypothesis :=
  LocalRHProfile.ofEquivalence Iff.rfl

@[simp] theorem targetProfile_status : targetProfile.status = .equivalent := rfl

/-- The available RH -> RootStatement direction is retained; no converse is supplied. -/
def rootToTargetTransition : DirectionalOverlapTransition chart targetChart where
  overlap := ⟨0, trivial, trivial⟩
  coordinateMap := id
  coordinate_transport := by intro _ _ _; rfl
  statementTransport := .reverseOnly rootStatement_of_rh
  leftBinding := binding
  rightBinding := binding
  left_binding_matches := binding_matches_chart
  right_binding_matches := binding_matches_targetChart
  binding_eq := rfl

@[simp] theorem rootToTarget_notEquivalent :
    ¬ rootToTargetTransition.statementTransport.IsEquivalent := by
  simp [rootToTargetTransition, StatementTransport.IsEquivalent]

def rootToTargetOutcome : OverlapAuditOutcome chart targetChart :=
  .directional rootToTargetTransition rootToTarget_notEquivalent

@[simp] theorem rootToTarget_coordinate_admitted :
    rootToTargetOutcome.admittedCoordinateTransition =
      some rootToTargetTransition.toCoordinateTransition := rfl

@[simp] theorem rootToTarget_logical_not_admitted :
    rootToTargetOutcome.admittedTransition = none := rfl

inductive BoundaryChartIndex where
  | root
  | target
  deriving DecidableEq, Repr

def boundaryChart : BoundaryChartIndex → CriticalStripChart ZetaCommutatorRoot.root
  | .root => chart
  | .target => targetChart

def boundaryCoordinateTransition (i j : BoundaryChartIndex) :
    CoordinateTransition (boundaryChart i) (boundaryChart j) where
  forward := id
  coordinate_transport := by intro _ _ _; cases i <;> cases j <;> rfl

/-- The necessary root and equivalent target coexist without hidden local equivalence. -/
def boundaryAtlas :
    CriticalStripAtlas BoundaryChartIndex Operator SpectralPoint ModuleCarrier where
  root := ZetaCommutatorRoot.root
  chart := boundaryChart
  cover := by intro _; exact ⟨.root, trivial⟩
  transition := by intro i j _; exact boundaryCoordinateTransition i j
  identity_transition := by intro i _ _; cases i <;> rfl
  inverse_transition := by intro i j _ _ _; cases i <;> cases j <;> rfl
  cocycle_transition := by intro i j k _ _ _ _; cases i <;> cases j <;> cases k <;> rfl
  comparison := by
    intro i
    cases i with
    | root => exact localProfile
    | target => exact targetProfile

@[simp] theorem boundaryAtlas_root_status :
    (boundaryAtlas.comparison .root).status = .necessary := rfl

@[simp] theorem boundaryAtlas_target_status :
    (boundaryAtlas.comparison .target).status = .equivalent := rfl

/-- Coordinate coexistence does not discharge the root's remaining forward gap. -/
theorem boundaryAtlas_not_gapFree : ¬ boundaryAtlas.GapFree := by
  intro hgap
  have hstatus := hgap BoundaryChartIndex.root
  change LocalRHStatus.necessary = .equivalent at hstatus
  cases hstatus

end GRWTSK.RiemannHypothesis.ZetaCommutatorRootFixture
