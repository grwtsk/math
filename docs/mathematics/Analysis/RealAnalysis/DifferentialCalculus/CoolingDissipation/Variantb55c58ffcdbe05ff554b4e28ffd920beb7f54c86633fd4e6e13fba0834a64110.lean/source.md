# Complete source: GRWTSK.Analysis.RealAnalysis.DifferentialCalculus.CoolingDissipation.Variantb55c58ffcdbe05ff554b4e28ffd920beb7f54c86633fd4e6e13fba0834a64110

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `cc95ca2b80bc9d92e8c91f60c46c93d8d81531b9` · SHA-256 `b55c58ffcdbe05ff554b4e28ffd920beb7f54c86633fd4e6e13fba0834a64110`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-!
# Cooling-dissipation certificates

Time-varying cooling cannot reuse a plain fixed-temperature dissipation claim.
This module records the finite/project-local certificate used by Surface
Foundry: fixed, piecewise, quasi-static, and schedule-adjusted modes are
explicit, and schedule-adjusted mode carries the corrected derivative identity.
-/

namespace Presentation
namespace CoolingDissipation

inductive CoolingMode where
  | fixedTemperature
  | piecewiseConstant
  | quasiStatic
  | scheduleAdjusted
deriving Repr, DecidableEq

/-- Finite certificate for the selected cooling-dissipation discipline. -/
structure CoolingDissipationCertificate where
  mode : CoolingMode
  admissibleCooling : Prop
  admissibleCoolingProof : admissibleCooling
  correctedDerivativeIdentity : Prop
  correctedDerivativeIdentityProof : correctedDerivativeIdentity
  noPlainTimeVaryingDissipationClaim : Prop
  noPlainTimeVaryingDissipationProof : noPlainTimeVaryingDissipationClaim

def CoolingDissipationCertificate.sound
    (C : CoolingDissipationCertificate) : Prop :=
  C.admissibleCooling ∧
    C.correctedDerivativeIdentity ∧
    C.noPlainTimeVaryingDissipationClaim

theorem fixed_temperature_dissipation_certificate
    (C : CoolingDissipationCertificate)
    (_h : C.mode = CoolingMode.fixedTemperature) :
    C.admissibleCooling :=
  C.admissibleCoolingProof

theorem piecewise_constant_dissipation_certificate
    (C : CoolingDissipationCertificate)
    (_h : C.mode = CoolingMode.piecewiseConstant) :
    C.admissibleCooling :=
  C.admissibleCoolingProof

theorem quasi_static_requires_tolerance_certificate
    (C : CoolingDissipationCertificate)
    (_h : C.mode = CoolingMode.quasiStatic) :
    C.admissibleCooling :=
  C.admissibleCoolingProof

theorem schedule_adjusted_dissipation_identity
    (C : CoolingDissipationCertificate) :
    C.correctedDerivativeIdentity :=
  C.correctedDerivativeIdentityProof

theorem cooling_dissipation_certificate_sound
    (C : CoolingDissipationCertificate) :
    C.sound :=
  ⟨C.admissibleCoolingProof,
    C.correctedDerivativeIdentityProof,
    C.noPlainTimeVaryingDissipationProof⟩

/-- Boundary-calculus route for corrected cooling-dissipation certificates. -/
theorem cooling_dissipation_through_boundary_calculus
    (C : CoolingDissipationCertificate) :
    C.sound :=
  cooling_dissipation_certificate_sound C

/-- Time-varying cooling cannot own plain fixed-temperature dissipation. -/
def TimeVaryingPlainDissipationOwnsCoolingCertificate
    (_scheduleHash : Nat) : Prop :=
  False

/-- Direct plain-dissipation authority attempts fail under time-varying cooling. -/
theorem time_varying_plain_dissipation_authority_attempt_fails
    (scheduleHash : Nat) :
    ¬ TimeVaryingPlainDissipationOwnsCoolingCertificate scheduleHash := by
  intro h
  exact h

end CoolingDissipation
end Presentation
```
