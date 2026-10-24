import Mathematics.SemiLocalDefect.ResidueDeflection.UnknownLedger

/-!
# Authority noninterference for residue deflection

Evidence sources have narrowly typed closure rights.  In particular, a phase
certificate cannot remove the zero obstruction, construct bypass geometry, or
establish an arithmetic trace correspondence.
-/

namespace Mathematics.SemiLocalDefect.ResidueDeflection

inductive ResidueDeflectionEvidenceSource
  | observation
  | arithmeticLabelCertificate
  | bypassCertificate
  | phaseCertificate
  | tupleCertificate
  | amplitudeCertificate
  | cocycleCertificate
  | holonomyCertificate
  | covarianceCertificate
  | compensationCertificate
  | arithmeticTraceCertificate
deriving DecidableEq, Repr, Fintype

inductive MayCloseResidueDeflection :
    ResidueDeflectionEvidenceSource →
      ResidueDeflectionUnknown → Prop
  | arithmeticLabel :
      MayCloseResidueDeflection
        .arithmeticLabelCertificate
        .arithmeticBaseLabel
  | bypass :
      MayCloseResidueDeflection
        .bypassCertificate
        .bypassGeometry
  | safePhase :
      MayCloseResidueDeflection
        .phaseCertificate
        .safeResiduePreservation
  | tuple :
      MayCloseResidueDeflection
        .tupleCertificate
        .tupleConstraintStabilizer
  | amplitude :
      MayCloseResidueDeflection
        .amplitudeCertificate
        .amplitudePositivity
  | cocycle :
      MayCloseResidueDeflection
        .cocycleCertificate
        .deflectionCocycle
  | holonomy :
      MayCloseResidueDeflection
        .holonomyCertificate
        .defectHolonomy
  | covariance :
      MayCloseResidueDeflection
        .covarianceCertificate
        .packetCovariance
  | compensation :
      MayCloseResidueDeflection
        .compensationCertificate
        .traceCompensation
  | arithmeticTrace :
      MayCloseResidueDeflection
        .arithmeticTraceCertificate
        .arithmeticTraceCorrespondence

theorem observation_cannot_close
    (obligation : ResidueDeflectionUnknown) :
    ¬ MayCloseResidueDeflection
        .observation obligation := by
  intro authority
  cases authority

theorem phase_cannot_close_bypass :
    ¬ MayCloseResidueDeflection
        .phaseCertificate
        .bypassGeometry := by
  intro authority
  cases authority

theorem phase_cannot_close_arithmetic_trace :
    ¬ MayCloseResidueDeflection
        .phaseCertificate
        .arithmeticTraceCorrespondence := by
  intro authority
  cases authority

theorem bypass_cannot_close_trace_compensation :
    ¬ MayCloseResidueDeflection
        .bypassCertificate
        .traceCompensation := by
  intro authority
  cases authority

theorem phase_cannot_remove_zero_obstruction
    (phase : Phase3) :
    phase.act .zero = .zero :=
  phase3_act_zero phase

end Mathematics.SemiLocalDefect.ResidueDeflection
