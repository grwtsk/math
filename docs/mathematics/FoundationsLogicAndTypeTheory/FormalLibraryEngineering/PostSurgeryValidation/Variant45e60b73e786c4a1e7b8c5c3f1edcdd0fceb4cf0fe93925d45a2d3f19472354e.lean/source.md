# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.PostSurgeryValidation.Variant45e60b73e786c4a1e7b8c5c3f1edcdd0fceb4cf0fe93925d45a2d3f19472354e

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `eeb8ffa9174b66b5a44db5c5c259f836b4e3c71f` · SHA-256 `45e60b73e786c4a1e7b8c5c3f1edcdd0fceb4cf0fe93925d45a2d3f19472354e`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Surface.ContinuousAssurance.WorldModel.Surgery

/-!
# Post-surgery validation

Adoption is gated by proof replay, dependency and trusted-base comparison,
translation, carrier, cover, gluing, coverage, stability, runtime regression,
and rollback readiness.  Runtime regression remains external evidence unless
a separate refinement bridge is supplied.
-/

namespace Surface.ContinuousAssurance.WorldModel

structure PostSurgeryValidation where
  proofReplay : Prop
  dependencyClosureComparison : Prop
  trustedBaseComparison : Prop
  translationRevalidation : Prop
  carrierValidation : Prop
  coverValidation : Prop
  gluingCheck : Prop
  coverageRecalculation : Prop
  stabilityRecalculation : Prop
  runtimeRegressionEvidence : ArtifactIdentity
  rollbackReadiness : Prop

def PostSurgeryValidation.Passes
    (validation : PostSurgeryValidation) : Prop :=
  validation.proofReplay ∧
  validation.dependencyClosureComparison ∧
  validation.trustedBaseComparison ∧
  validation.translationRevalidation ∧
  validation.carrierValidation ∧
  validation.coverValidation ∧
  validation.gluingCheck ∧
  validation.coverageRecalculation ∧
  validation.stabilityRecalculation ∧
  validation.rollbackReadiness

structure ValidatedSurgery
    (Cell Model Before After : Type*)
    [DecidableEq Cell] [DecidableEq Model] where
  adopted : AdoptableSurgery Cell Model Before After
  validation : PostSurgeryValidation
  passes : validation.Passes

theorem proof_regression_blocks_validation
    {Cell Model Before After : Type*}
    [DecidableEq Cell] [DecidableEq Model]
    (adopted : AdoptableSurgery Cell Model Before After)
    (validation : PostSurgeryValidation)
    (regression : ¬ validation.proofReplay) :
    ¬ ∃ accepted : ValidatedSurgery Cell Model Before After,
      accepted.adopted = adopted ∧ accepted.validation = validation := by
  rintro ⟨accepted, _, validationEq⟩
  subst validation
  exact regression accepted.passes.1

theorem rollback_failure_blocks_validation
    {Cell Model Before After : Type*}
    [DecidableEq Cell] [DecidableEq Model]
    (adopted : AdoptableSurgery Cell Model Before After)
    (validation : PostSurgeryValidation)
    (failed : ¬ validation.rollbackReadiness) :
    ¬ ∃ accepted : ValidatedSurgery Cell Model Before After,
      accepted.adopted = adopted ∧ accepted.validation = validation := by
  rintro ⟨accepted, _, validationEq⟩
  subst validation
  exact failed accepted.passes.2.2.2.2.2.2.2.2.2

end Surface.ContinuousAssurance.WorldModel
```
