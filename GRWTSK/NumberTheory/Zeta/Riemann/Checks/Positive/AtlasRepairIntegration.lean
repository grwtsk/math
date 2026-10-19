/- Copyright (c) 2026 grwtsk contributors. MIT.
Formalization assistance: OpenAI. Source-only regression statements. -/
import GRWTSK.NumberTheory.Zeta.Riemann.Checks.Positive.PowerTaylor
import GRWTSK.NumberTheory.Zeta.Riemann.CriticalStripRootFixture
import GRWTSK.NumberTheory.Zeta.Riemann.WeilPositiveLimit

set_option autoImplicit false

namespace GRWTSK.RiemannHypothesis.Checks.AtlasRepairIntegration

open ZetaCommutatorRootFixture

/-- Both halves remain data; their existence composes in Prop. -/
example : Nonempty (VerticalPath atlas .root .root) :=
  VerticalPath.nonempty_trans ⟨rootPath⟩ ⟨rootPath⟩

/-- A coverage structure is never used directly as the argument to Not. -/
example : ¬ Nonempty (CompleteVerticalCoverage report) := no_completeVerticalCoverage

example : (atlas.comparison .root).status = .necessary := atlas_root_status
example : (atlas.comparison .root).HasReverse := hasReverse
example : ¬ (atlas.comparison .root).HasForward := not_hasForward
example : HasOpenGap gaps .missingForwardImplication := hasOpenForwardGap
example : ¬ HasOpenGap gaps .missingReverseImplication := hasNoOpenReverseGap

/-- The data-only correction does not weaken the required logical implication. -/
example (path : VerticalPath boundaryAtlas .root .target) : _root_.RiemannHypothesis :=
  path.transports ZetaCommutatorRoot.rootStatement

/-- Directional logical evidence suffices only for the independent coordinate tag. -/
example : HasExactCoordinateEvidence (some rootToTargetOutcome) :=
  ⟨rootToTargetOutcome, rfl, trivial⟩

example : ¬ rootToTargetOutcome.IsExact := by
  simp [rootToTargetOutcome, OverlapAuditOutcome.IsExact]

example : rootToTargetOutcome.admittedTransition = none := rootToTarget_logical_not_admitted
example : ¬ boundaryAtlas.GapFree := boundaryAtlas_not_gapFree

/-- A deliberately neutral generic profile remains distinct from the concrete root. -/
example (P : Prop) : ¬ (LocalRHProfile.neutral P).HasReverse := by
  intro h
  change (LocalRHStatus.neutral = .equivalent ∨ LocalRHStatus.neutral = .necessary) at h
  rcases h with h | h <;> cases h

/-- The integrated Weil endpoint still requires BOTH independent proof records. -/
example {T : Type*} [AddCommGroup T] [Module ℂ T]
    {space : WeilTestSpace T} {form : WeilHermitianForm space} {H : ℕ → Type*}
    [∀ n, NormedAddCommGroup (H n)] [∀ n, InnerProductSpace ℂ (H n)]
    (limit : DiagonalPositiveGramLimit form H) (criterion : WeilPositivityImpliesRH form) :
    _root_.RiemannHypothesis := limit.riemannHypothesis criterion

end GRWTSK.RiemannHypothesis.Checks.AtlasRepairIntegration
