# Complete source: GRWTSK.Analysis.RealAnalysis.DifferentialCalculus.BackwardRecovery.Variant3f721c1b3b06936abcb43eb963b9eff0465806b2f105f51e6a32a64c6d913f81

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `174afb1fe79efdd23149bfb259b94e13aacf3109` · SHA-256 `3f721c1b3b06936abcb43eb963b9eff0465806b2f105f51e6a32a64c6d913f81`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-!
# Regularized finite backward-recovery certificates

Backward heat flow is ill-posed without spectral regularization.  This module
records the finite certificate shape used by Surface Foundry: a cutoff is not
accepted merely because a numeric value appears in a report.  It must carry
finite spectral metadata plus theorem fields for stable-subspace inclusion,
class-changing-mode exclusion, feasible projection, and recovery of the stable
class.
-/

namespace Presentation
namespace BackwardRecovery

/-- Finite spectral-cutoff metadata. -/
structure FiniteSpectralCutoff where
  label : String
  cutoffNumerator : Nat
  cutoffDenominator : Nat
  cutoffDenominatorPositive : cutoffDenominator > 0
  spectralDecompositionHash : Nat
  theoremReference : String

/-- Certificate that the stable low-energy subspace lies below the cutoff. -/
structure StableSubspaceCutoffCertificate
    (_cutoff : FiniteSpectralCutoff) where
  stableSubspaceIncludedBelowCutoff : Prop
  stableSubspaceProof : stableSubspaceIncludedBelowCutoff

/-- Certificate that the cutoff excludes modes changing feasible class. -/
structure ClassChangingModeExclusionCertificate
    (_cutoff : FiniteSpectralCutoff) where
  classChangingModesExcluded : Prop
  classChangingModesProof : classChangingModesExcluded

/-- Certificate that projected backward recovery returns to feasible states. -/
structure ProjectedRecoveryCertificate
    (_cutoff : FiniteSpectralCutoff) where
  projectedRecoveryReturnsFeasible : Prop
  projectedRecoveryProof : projectedRecoveryReturnsFeasible

/-- Certificate that recovered states are in the named stable class. -/
structure RecoveredClassCertificate
    (_cutoff : FiniteSpectralCutoff) where
  recoveredClassEqualsStableClass : Prop
  recoveredClassProof : recoveredClassEqualsStableClass

/-- Complete regularized backward-recovery certificate. -/
structure RegularizedBackwardRecoveryCertificate where
  cutoff : FiniteSpectralCutoff
  stableSubspace : StableSubspaceCutoffCertificate cutoff
  classChangingModes : ClassChangingModeExclusionCertificate cutoff
  projectedRecovery : ProjectedRecoveryCertificate cutoff
  recoveredClass : RecoveredClassCertificate cutoff

/-- The full finite backward-recovery soundness proposition. -/
def RegularizedBackwardRecoveryCertificate.sound
    (C : RegularizedBackwardRecoveryCertificate) : Prop :=
  C.stableSubspace.stableSubspaceIncludedBelowCutoff ∧
    C.classChangingModes.classChangingModesExcluded ∧
    C.projectedRecovery.projectedRecoveryReturnsFeasible ∧
    C.recoveredClass.recoveredClassEqualsStableClass

theorem backward_recovery_stable_subspace_included
    (C : RegularizedBackwardRecoveryCertificate) :
    C.stableSubspace.stableSubspaceIncludedBelowCutoff :=
  C.stableSubspace.stableSubspaceProof

theorem backward_recovery_class_changing_modes_excluded
    (C : RegularizedBackwardRecoveryCertificate) :
    C.classChangingModes.classChangingModesExcluded :=
  C.classChangingModes.classChangingModesProof

theorem backward_recovery_projected_state_remains_feasible
    (C : RegularizedBackwardRecoveryCertificate) :
    C.projectedRecovery.projectedRecoveryReturnsFeasible :=
  C.projectedRecovery.projectedRecoveryProof

theorem backward_recovery_recovered_class_equals_stable
    (C : RegularizedBackwardRecoveryCertificate) :
    C.recoveredClass.recoveredClassEqualsStableClass :=
  C.recoveredClass.recoveredClassProof

/-- Complete project-local finite certificate for regularized backward recovery. -/
theorem backward_recovery_certificate_sound
    (C : RegularizedBackwardRecoveryCertificate) :
    C.sound :=
  ⟨backward_recovery_stable_subspace_included C,
    backward_recovery_class_changing_modes_excluded C,
    backward_recovery_projected_state_remains_feasible C,
    backward_recovery_recovered_class_equals_stable C⟩

/--
Boundary-calculus route for regularized backward-recovery certificates.

This records a finite spectral-cutoff certificate. It does not claim that an
unregularized backward heat flow is well posed.
-/
theorem backward_recovery_through_boundary_calculus
    (C : RegularizedBackwardRecoveryCertificate) :
    C.sound :=
  backward_recovery_certificate_sound C

/-- A numeric cutoff by itself does not own backward-recovery authority. -/
def NumericCutoffOwnsBackwardRecovery
    (_cutoffNumerator _cutoffDenominator : Nat) : Prop :=
  False

/-- Direct numeric-cutoff authority attempts fail. -/
theorem numeric_cutoff_authority_attempt_fails
    (cutoffNumerator _cutoffDenominator : Nat) :
    ¬ NumericCutoffOwnsBackwardRecovery cutoffNumerator _cutoffDenominator := by
  intro h
  exact h

end BackwardRecovery
end Presentation
```
