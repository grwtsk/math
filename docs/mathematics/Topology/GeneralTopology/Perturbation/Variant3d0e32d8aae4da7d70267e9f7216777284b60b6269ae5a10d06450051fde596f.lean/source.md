# Complete source: GRWTSK.Topology.GeneralTopology.Perturbation.Variant3d0e32d8aae4da7d70267e9f7216777284b60b6269ae5a10d06450051fde596f

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `4befcae1aaadb31e0455d5b6acf838cbbf3f1209` · SHA-256 `3d0e32d8aae4da7d70267e9f7216777284b60b6269ae5a10d06450051fde596f`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Mathematics.StratifiedBoundary.Boundary.LimitKernel

/-!
# Limit-law and connector perturbations

Local kernel defects and projective coherence defects remain separate visible
budgets.  Neither is erased by passing to a limit.
-/

namespace Mathematics.StratifiedBoundary.Boundary

open Mathematics.StratifiedBoundary.OrdinalTally

universe uScale uTest uSchedule uLimitLaw

structure LimitInvariantLawPerturbation
    {limits : LimitSemantics}
    {Scale : Type uScale}
    {TestFunction : Type uTest}
    {Schedule : Type uSchedule}
    {system :
      ProjectiveBoundarySystem
        limits Scale TestFunction Schedule}
    (reference :
      ProjectiveLimitKernel
        (uLimitLaw := uLimitLaw) system) where
  perturbedPush :
    CompatibleSchedule system →
      reference.Law → reference.Law
  perturbedInvariant :
    reference.Law
  perturbedCommonInvariant :
    ∀ schedule,
      perturbedPush schedule perturbedInvariant =
        perturbedInvariant
  localDefect : ℝ≥0
  localDefectBound :
    ∀ schedule law,
      reference.wasserstein
          (perturbedPush schedule law)
          (reference.push schedule law) ≤
        localDefect

theorem limit_invariant_law_perturbation_bound
    {limits : LimitSemantics}
    {Scale : Type uScale}
    {TestFunction : Type uTest}
    {Schedule : Type uSchedule}
    {system :
      ProjectiveBoundarySystem
        limits Scale TestFunction Schedule}
    {reference :
      ProjectiveLimitKernel
        (uLimitLaw := uLimitLaw) system}
    (perturbation :
      LimitInvariantLawPerturbation reference) :
    (reference.wasserstein
        perturbation.perturbedInvariant
        reference.invariantLaw : ℝ) ≤
      (perturbation.localDefect : ℝ) /
        (1 -
          (system.uniformContraction : ℝ)) := by
  let schedule :=
    system.defaultLimitSchedule
  have recurrence :
      reference.wasserstein
          perturbation.perturbedInvariant
          reference.invariantLaw ≤
        perturbation.localDefect +
          system.uniformContraction *
            reference.wasserstein
              perturbation.perturbedInvariant
              reference.invariantLaw := by
    calc
      reference.wasserstein
          perturbation.perturbedInvariant
          reference.invariantLaw =
        reference.wasserstein
          (perturbation.perturbedPush
            schedule perturbation.perturbedInvariant)
          (reference.push
            schedule reference.invariantLaw) := by
              rw [perturbation.perturbedCommonInvariant,
                reference.commonInvariant]
      _ ≤
        reference.wasserstein
            (perturbation.perturbedPush
              schedule perturbation.perturbedInvariant)
            (reference.push
              schedule perturbation.perturbedInvariant) +
          reference.wasserstein
            (reference.push
              schedule perturbation.perturbedInvariant)
            (reference.push
              schedule reference.invariantLaw) :=
        reference.wassersteinTriangle _ _ _
      _ ≤
        perturbation.localDefect +
          system.uniformContraction *
            reference.wasserstein
              perturbation.perturbedInvariant
              reference.invariantLaw :=
        add_le_add
          (perturbation.localDefectBound
            schedule perturbation.perturbedInvariant)
          (reference.uniformlyContractive
            schedule
            perturbation.perturbedInvariant
            reference.invariantLaw)
  have recurrenceReal :
      (reference.wasserstein
        perturbation.perturbedInvariant
        reference.invariantLaw : ℝ) ≤
      (perturbation.localDefect : ℝ) +
        (system.uniformContraction : ℝ) *
          (reference.wasserstein
            perturbation.perturbedInvariant
            reference.invariantLaw : ℝ) := by
    exact_mod_cast recurrence
  have denominatorPositive :
      0 <
        1 -
          (system.uniformContraction : ℝ) := by
    exact sub_pos.mpr
      (by
        exact_mod_cast
          system.uniformContraction_lt_one)
  apply (le_div_iff₀ denominatorPositive).2
  nlinarith

structure StratumConnectorDefect where
  localKernelDefect : ℝ≥0
  contraction : ℝ≥0
  contraction_lt_one :
    contraction < 1
  observableMismatch : ℝ≥0

noncomputable def StratumConnectorDefect.residualRadius
    (defect : StratumConnectorDefect) : ℝ :=
  (defect.localKernelDefect : ℝ) /
    (1 - (defect.contraction : ℝ))

structure LimitCoherenceResidual where
  residual : Nat → ℝ≥0
  exactProjectiveClosure : Prop
  exactProjectiveClosure_iff :
    exactProjectiveClosure ↔
      ∀ stage, residual stage = 0
  approximateProjectiveClosure : Prop
  approximateProjectiveClosure_iff :
    approximateProjectiveClosure ↔
      Tendsto residual atTop (𝓝 0)

end Mathematics.StratifiedBoundary.Boundary
```
