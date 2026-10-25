import Surface.CosmeticSurgery.Core

/-!
# Resolution and scope boundary

The Purely Cosmetic Surgery Conjecture is not closed by the material currently
submitted to this repository.  This module records that fact as *submission
metadata*: neither a universal proof excluding the residual case nor a
certified residual counterexample is included.  It deliberately does not turn
the absence of a submitted certificate into a theorem about what can exist in
mathematics.

The module also separates recent multi-cusp partial-filling constructions from
the one-cusped knot problem.  Their data includes an unfilled cusp and has no
coercion or implication into `OrientedKnotFillingTheory.ConjectureFalse`.
-/

namespace Surface.CosmeticSurgery

universe u

open OrientedKnotFillingTheory

/-- A proof package that excludes every knot in the exact residual class. -/
structure UniversalResidualExclusion
    (T : OrientedKnotFillingTheory.{u}) : Type u where
  excludes : ∀ K : T.Knot,
    T.ResidualKnotProfile K →
      ¬ T.FillingsHomeomorphic K (T.plusTwo K) (T.minusTwo K)

/-- A concrete knot together with all data required by the residual package. -/
structure CertifiedResidualCounterexample
    (T : OrientedKnotFillingTheory.{u}) : Type u where
  knot : T.Knot
  certificate : T.ResidualCounterexample knot

/-- The two possible ways a submission could close the residual alternative. -/
inductive ResolutionStatus where
  | unresolved
  | universalExclusionSubmitted
  | counterexampleSubmitted
  deriving DecidableEq, Repr

/--
Certificate inventory for a particular repository submission.  `Option` is
used only to record whether an artifact was submitted; it is not a modality for
mathematical truth.
-/
structure ResolutionSubmission
    (T : OrientedKnotFillingTheory.{u}) : Type u where
  universalExclusion : Option (UniversalResidualExclusion T)
  explicitCounterexample : Option (CertifiedResidualCounterexample T)

namespace ResolutionSubmission

variable {T : OrientedKnotFillingTheory.{u}}

/-- A conservative status projection from the submitted certificate inventory. -/
def status (submission : ResolutionSubmission T) : ResolutionStatus :=
  match submission.universalExclusion, submission.explicitCounterexample with
  | some _, _ => .universalExclusionSubmitted
  | none, some _ => .counterexampleSubmitted
  | none, none => .unresolved

/-- The present submission contains neither side of the final alternative. -/
def current : ResolutionSubmission T where
  universalExclusion := none
  explicitCounterexample := none

@[simp]
theorem current_universalExclusion :
    (current (T := T)).universalExclusion = none :=
  rfl

@[simp]
theorem current_explicitCounterexample :
    (current (T := T)).explicitCounterexample = none :=
  rfl

@[simp]
theorem current_status :
    (current (T := T)).status = .unresolved :=
  rfl

end ResolutionSubmission

/--
Data carried by a purely cosmetic *partial* filling of a multi-cusped parent.

The positive `unfilledCuspCount` is the crucial scope marker.  No field asserts
that the parent is a one-cusped knot exterior, and no operation converts this
record into a knot-surgery counterexample.
-/
structure MultiCuspPartialCosmeticExample where
  Parent : Type u
  PartialSlopeTuple : Type u
  FilledManifold : Type u
  fill : Parent → PartialSlopeTuple → FilledManifold
  OrientedHomeomorphism : FilledManifold → FilledManifold → Type u
  parent : Parent
  cuspCount : Nat
  cuspCount_atLeastThree : 3 ≤ cuspCount
  unfilledCuspCount : Nat
  leaves_cusp_unfilled : 0 < unfilledCuspCount
  cosmeticPair :
    Σ firstSlope : PartialSlopeTuple,
      Σ secondSlope : PartialSlopeTuple,
        PLift (firstSlope ≠ secondSlope) ×
          OrientedHomeomorphism
            (fill parent firstSlope)
            (fill parent secondSlope)

/--
The scope distinction is visible in the type: a multi-cusp witness exposes a
positive number of unfilled cusps.
-/
theorem MultiCuspPartialCosmeticExample.is_partial
    (witness : MultiCuspPartialCosmeticExample) :
    0 < witness.unfilledCuspCount :=
  witness.leaves_cusp_unfilled

end Surface.CosmeticSurgery
