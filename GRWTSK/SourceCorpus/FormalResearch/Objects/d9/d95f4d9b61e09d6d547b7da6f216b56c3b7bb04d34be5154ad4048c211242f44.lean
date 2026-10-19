import Mathematics.ConnesBitfield.Dynamics

/-!
# Invariant-law perturbation renormalization

A uniform one-step kernel defect is converted into one global invariant-law
radius.  This theorem concerns law displacement only; trace stability is a
separate Lipschitz consequence.
-/

namespace Mathematics.ConnesBitfield

universe uSchedule

structure InvariantLawPerturbation
    {system : RandomBitfieldSystem}
    {carrier : WassersteinLawCarrier system}
    {Schedule : Type uSchedule}
    (reference :
      ScheduleKernelFamily system carrier Schedule) where
  perturbedKernel :
    Schedule → FiniteBitfieldKernel system
  perturbedInvariant : carrier.Law
  perturbedCommonInvariant :
    ∀ schedule,
      carrier.push
          (perturbedKernel schedule)
          perturbedInvariant =
        perturbedInvariant
  localDefect : ℝ≥0
  kernelDistanceLe :
    ∀ schedule law,
      carrier.wasserstein
          (carrier.push
            (perturbedKernel schedule) law)
          (carrier.push
            (reference.kernel schedule) law) ≤
        localDefect

namespace InvariantLawPerturbation

theorem displacement_recurrence
    {system : RandomBitfieldSystem}
    {carrier : WassersteinLawCarrier system}
    {Schedule : Type uSchedule}
    {reference :
      ScheduleKernelFamily system carrier Schedule}
    (perturbation :
      InvariantLawPerturbation reference) :
    carrier.wasserstein
        perturbation.perturbedInvariant
        reference.invariantLaw ≤
      perturbation.localDefect +
        reference.contraction *
          carrier.wasserstein
            perturbation.perturbedInvariant
            reference.invariantLaw := by
  let schedule := reference.defaultSchedule
  calc
    carrier.wasserstein
        perturbation.perturbedInvariant
        reference.invariantLaw =
      carrier.wasserstein
        (carrier.push
          (perturbation.perturbedKernel schedule)
          perturbation.perturbedInvariant)
        (carrier.push
          (reference.kernel schedule)
          reference.invariantLaw) := by
            rw [perturbation.perturbedCommonInvariant,
              reference.commonInvariant]
    _ ≤
      carrier.wasserstein
          (carrier.push
            (perturbation.perturbedKernel schedule)
            perturbation.perturbedInvariant)
          (carrier.push
            (reference.kernel schedule)
            perturbation.perturbedInvariant) +
        carrier.wasserstein
          (carrier.push
            (reference.kernel schedule)
            perturbation.perturbedInvariant)
          (carrier.push
            (reference.kernel schedule)
            reference.invariantLaw) := by
              simpa
                  [carrier.wasserstein_eq_nndist]
                using
                  nndist_triangle
                    (carrier.push
                      (perturbation.perturbedKernel
                        schedule)
                      perturbation.perturbedInvariant)
                    (carrier.push
                      (reference.kernel schedule)
                      perturbation.perturbedInvariant)
                    (carrier.push
                      (reference.kernel schedule)
                      reference.invariantLaw)
    _ ≤
      perturbation.localDefect +
        reference.contraction *
          carrier.wasserstein
            perturbation.perturbedInvariant
            reference.invariantLaw :=
      add_le_add
        (perturbation.kernelDistanceLe
          schedule perturbation.perturbedInvariant)
        (reference.uniformlyWassersteinContractive
          schedule
          perturbation.perturbedInvariant
          reference.invariantLaw)

/--
The deterministic global residual radius.  The real-valued statement avoids
hiding the positivity requirement in truncated nonnegative-real subtraction.
-/
theorem invariant_law_perturbation_bound
    {system : RandomBitfieldSystem}
    {carrier : WassersteinLawCarrier system}
    {Schedule : Type uSchedule}
    {reference :
      ScheduleKernelFamily system carrier Schedule}
    (perturbation :
      InvariantLawPerturbation reference) :
    (carrier.wasserstein
        perturbation.perturbedInvariant
        reference.invariantLaw : ℝ) ≤
      (perturbation.localDefect : ℝ) /
        (1 - (reference.contraction : ℝ)) := by
  have recurrenceReal :
      (carrier.wasserstein
        perturbation.perturbedInvariant
        reference.invariantLaw : ℝ) ≤
      (perturbation.localDefect : ℝ) +
        (reference.contraction : ℝ) *
          (carrier.wasserstein
            perturbation.perturbedInvariant
            reference.invariantLaw : ℝ) := by
    exact_mod_cast perturbation.displacement_recurrence
  have contractionReal :
      (reference.contraction : ℝ) < 1 := by
    exact_mod_cast reference.contraction_lt_one
  have denominatorPositive :
      0 < 1 - (reference.contraction : ℝ) :=
    sub_pos.mpr contractionReal
  apply (le_div_iff₀ denominatorPositive).2
  nlinarith

end InvariantLawPerturbation

end Mathematics.ConnesBitfield
