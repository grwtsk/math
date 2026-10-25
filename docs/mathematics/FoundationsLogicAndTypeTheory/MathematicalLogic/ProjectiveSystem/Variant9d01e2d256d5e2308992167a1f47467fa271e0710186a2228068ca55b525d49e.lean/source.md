# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.MathematicalLogic.ProjectiveSystem.Variant9d01e2d256d5e2308992167a1f47467fa271e0710186a2228068ca55b525d49e

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `d789a689e00c4c4e4da7ba77ffc6e5a7987b8804` · SHA-256 `9d01e2d256d5e2308992167a1f47467fa271e0710186a2228068ca55b525d49e`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Mathematics.StratifiedBoundary.Boundary.SuccessorConnector
import Mathematics.StratifiedBoundary.OrdinalTally.Limit

/-!
# Projective system of finite boundary cuts

Every runtime fiber remains finite.  The projective system records how state,
law, schedule, and kernel data agree across all finite approximants.
-/

namespace Mathematics.StratifiedBoundary.Boundary

open Mathematics.ConnesBitfield
open Mathematics.StratifiedBoundary.OrdinalTally

universe uScale uTest uSchedule

structure ProjectiveBoundarySystem
    (limits : LimitSemantics)
    (Scale : Type uScale)
    (TestFunction : Type uTest)
    (Schedule : Type uSchedule) where
  registeredLimit :
    RegisteredCountableLimit
  cut :
    Nat →
      FiniteReflectiveCut
        limits Scale TestFunction Schedule
  stratumMatches :
    ∀ stage,
      (cut stage).stratum.value =
        (registeredLimit.approximation stage).value
  projectState :
    ∀ {high low},
      low ≤ high →
      (cut high).State →
      (cut low).State
  projectLaw :
    ∀ {high low},
      low ≤ high →
      (cut high).Law →
      (cut low).Law
  restrictSchedule :
    ∀ {high low},
      low ≤ high →
      Schedule → Schedule
  liftSchedule :
    ∀ {high low},
      low ≤ high →
      Schedule → Schedule
  projectState_refl :
    ∀ stage state,
      projectState (le_refl stage) state =
        state
  projectState_trans :
    ∀ {top middle low}
      (middle_le : middle ≤ top)
      (low_le : low ≤ middle)
      state,
      projectState low_le
          (projectState middle_le state) =
        projectState
          (low_le.trans middle_le) state
  projectStateSurjective :
    ∀ {high low}
      (low_le : low ≤ high),
      Function.Surjective
        (projectState low_le)
  projectLaw_refl :
    ∀ stage law,
      projectLaw (le_refl stage) law =
        law
  projectLaw_trans :
    ∀ {top middle low}
      (middle_le : middle ≤ top)
      (low_le : low ≤ middle)
      law,
      projectLaw low_le
          (projectLaw middle_le law) =
        projectLaw
          (low_le.trans middle_le) law
  restrictSchedule_refl :
    ∀ stage schedule,
      restrictSchedule
          (le_refl stage) schedule =
        schedule
  restrictSchedule_trans :
    ∀ {top middle low}
      (middle_le : middle ≤ top)
      (low_le : low ≤ middle)
      schedule,
      restrictSchedule low_le
          (restrictSchedule middle_le schedule) =
        restrictSchedule
          (low_le.trans middle_le) schedule
  restrict_lift :
    ∀ {high low}
      (low_le : low ≤ high),
      Function.LeftInverse
        (restrictSchedule low_le)
        (liftSchedule low_le)
  defaultScheduleCompatible :
    ∀ {high low}
      (low_le : low ≤ high),
      restrictSchedule low_le
          (cut high).closure.dynamics.defaultSchedule =
        (cut low).closure.dynamics.defaultSchedule
  projectStateNonexpansive :
    ∀ {high low}
      (low_le : low ≤ high)
      left right,
      (cut low).closure.system.metric.distance
          (projectState low_le left)
          (projectState low_le right) ≤
        (cut high).closure.system.metric.distance
          left right
  projectLawNonexpansive :
    ∀ {high low}
      (low_le : low ≤ high)
      left right,
      (cut low).closure.lawCarrier.wasserstein
          (projectLaw low_le left)
          (projectLaw low_le right) ≤
        (cut high).closure.lawCarrier.wasserstein
          left right
  kernelCompatible :
    ∀ {high low}
      (low_le : low ≤ high)
      schedule law,
      projectLaw low_le
          ((cut high).closure.lawCarrier.push
            ((cut high).closure.dynamics.kernel
              schedule)
            law) =
        (cut low).closure.lawCarrier.push
          ((cut low).closure.dynamics.kernel
            (restrictSchedule low_le schedule))
          (projectLaw low_le law)
  uniformContraction : ℝ≥0
  uniformContraction_lt_one :
    uniformContraction < 1
  contractionUniform :
    ∀ stage,
      (cut stage).closure.dynamics.contraction ≤
        uniformContraction

theorem projective_invariant_law_projects
    {limits : LimitSemantics}
    {Scale : Type uScale}
    {TestFunction : Type uTest}
    {Schedule : Type uSchedule}
    (system :
      ProjectiveBoundarySystem
        limits Scale TestFunction Schedule)
    {high low : Nat}
    (low_le : low ≤ high) :
    system.projectLaw low_le
        (system.cut high).closure.dynamics.invariantLaw =
      (system.cut low).closure.dynamics.invariantLaw := by
  apply
    (system.cut low).closure.dynamics.invariantLaw_unique
  intro schedule
  calc
    (system.cut low).closure.lawCarrier.push
        ((system.cut low).closure.dynamics.kernel
          schedule)
        (system.projectLaw low_le
          (system.cut high).closure.dynamics.invariantLaw) =
      (system.cut low).closure.lawCarrier.push
        ((system.cut low).closure.dynamics.kernel
          (system.restrictSchedule low_le
            (system.liftSchedule low_le schedule)))
        (system.projectLaw low_le
          (system.cut high).closure.dynamics.invariantLaw) := by
            rw [system.restrict_lift low_le schedule]
    _ =
      system.projectLaw low_le
        ((system.cut high).closure.lawCarrier.push
          ((system.cut high).closure.dynamics.kernel
            (system.liftSchedule low_le schedule))
          (system.cut high).closure.dynamics.invariantLaw) :=
        (system.kernelCompatible
          low_le
          (system.liftSchedule low_le schedule)
          (system.cut high).closure.dynamics.invariantLaw).symm
    _ =
      system.projectLaw low_le
        (system.cut high).closure.dynamics.invariantLaw := by
          rw [(system.cut high).closure.dynamics.commonInvariant]

end Mathematics.StratifiedBoundary.Boundary
```
