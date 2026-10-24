# Complete source: GRWTSK.Geometry.ClassicalGeometry.EuclideanGeometry.SymmetryDefect.Variantfb0caacf3134839054338dfe7a4e36d3d5f642ddb9a10f22ee1b41aae8ea73d7

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `34b4683f1e66f7efd2aab05c964ce0bf9c3f2ba9` · SHA-256 `fb0caacf3134839054338dfe7a4e36d3d5f642ddb9a10f22ee1b41aae8ea73d7`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Mathematics.ConnesBitfield.Equivariance

/-!
# Contracted automorphism defects

An implemented kernel may remain contractive while failing exact
equivariance.  Its local commutator with the automorphism action is measured
separately from ordinary transition error.  Contractivity converts that
one-step defect into a global invariant-law symmetry radius.
-/

namespace Mathematics.ConnesBitfield

universe uSchedule

structure ApproximateEquivariantScheduleDynamics
    {system : RandomBitfieldSystem}
    {model : FiniteCrossedProductModel system}
    {carrier : WassersteinLawCarrier system}
    {Schedule : Type uSchedule}
    {reference :
      ScheduleKernelFamily system carrier Schedule}
    (equivariance :
      EquivariantScheduleKernelCertificate
        model reference) where
  implementedKernel :
    Schedule → FiniteBitfieldKernel system
  implementedInvariant : carrier.Law
  implementedCommonInvariant :
    ∀ schedule,
      carrier.push
          (implementedKernel schedule)
          implementedInvariant =
        implementedInvariant
  implementedContractive :
    ∀ schedule left right,
      carrier.wasserstein
          (carrier.push
            (implementedKernel schedule) left)
          (carrier.push
            (implementedKernel schedule) right) ≤
        reference.contraction *
          carrier.wasserstein left right
  equivarianceDefect : ℝ≥0
  pointwiseDefectLe :
    ∀ automorphism schedule state,
      carrier.wasserstein
          (carrier.push
            (implementedKernel schedule)
            (carrier.dirac
              (model.action.act
                automorphism state)))
          (equivariance.lawAction automorphism
            (carrier.push
              (implementedKernel schedule)
              (carrier.dirac state))) ≤
        equivarianceDefect
  lawDefectLe :
    ∀ automorphism schedule law,
      carrier.wasserstein
          (equivariance.lawAction automorphism
            (carrier.push
              (implementedKernel schedule) law))
          (carrier.push
            (implementedKernel schedule)
            (equivariance.lawAction
              automorphism law)) ≤
        equivarianceDefect

namespace ApproximateEquivariantScheduleDynamics

theorem symmetry_displacement_recurrence
    {system : RandomBitfieldSystem}
    {model : FiniteCrossedProductModel system}
    {carrier : WassersteinLawCarrier system}
    {Schedule : Type uSchedule}
    {reference :
      ScheduleKernelFamily system carrier Schedule}
    {equivariance :
      EquivariantScheduleKernelCertificate
        model reference}
    (implemented :
      ApproximateEquivariantScheduleDynamics
        equivariance)
    (automorphism : model.Automorphism) :
    carrier.wasserstein
        (equivariance.lawAction automorphism
          implemented.implementedInvariant)
        implemented.implementedInvariant ≤
      implemented.equivarianceDefect +
        reference.contraction *
          carrier.wasserstein
            (equivariance.lawAction automorphism
              implemented.implementedInvariant)
            implemented.implementedInvariant := by
  let schedule := reference.defaultSchedule
  calc
    carrier.wasserstein
        (equivariance.lawAction automorphism
          implemented.implementedInvariant)
        implemented.implementedInvariant =
      carrier.wasserstein
        (equivariance.lawAction automorphism
          (carrier.push
            (implemented.implementedKernel schedule)
            implemented.implementedInvariant))
        (carrier.push
          (implemented.implementedKernel schedule)
          implemented.implementedInvariant) := by
            rw [implemented.implementedCommonInvariant]
    _ ≤
      carrier.wasserstein
          (equivariance.lawAction automorphism
            (carrier.push
              (implemented.implementedKernel schedule)
              implemented.implementedInvariant))
          (carrier.push
            (implemented.implementedKernel schedule)
            (equivariance.lawAction automorphism
              implemented.implementedInvariant)) +
        carrier.wasserstein
          (carrier.push
            (implemented.implementedKernel schedule)
            (equivariance.lawAction automorphism
              implemented.implementedInvariant))
          (carrier.push
            (implemented.implementedKernel schedule)
            implemented.implementedInvariant) := by
              simpa
                  [carrier.wasserstein_eq_nndist]
                using
                  nndist_triangle
                    (equivariance.lawAction automorphism
                      (carrier.push
                        (implemented.implementedKernel
                          schedule)
                        implemented.implementedInvariant))
                    (carrier.push
                      (implemented.implementedKernel
                        schedule)
                      (equivariance.lawAction
                        automorphism
                        implemented.implementedInvariant))
                    (carrier.push
                      (implemented.implementedKernel
                        schedule)
                      implemented.implementedInvariant)
    _ ≤
      implemented.equivarianceDefect +
        reference.contraction *
          carrier.wasserstein
            (equivariance.lawAction automorphism
              implemented.implementedInvariant)
            implemented.implementedInvariant :=
      add_le_add
        (implemented.lawDefectLe
          automorphism schedule
          implemented.implementedInvariant)
        (implemented.implementedContractive
          schedule
          (equivariance.lawAction automorphism
            implemented.implementedInvariant)
          implemented.implementedInvariant)

/--
The global symmetry radius.  A zero local defect recovers exact invariance;
a nonzero defect remains visible and is amplified only by `1 / (1 - q)`.
-/
theorem invariant_law_symmetry_defect_bound
    {system : RandomBitfieldSystem}
    {model : FiniteCrossedProductModel system}
    {carrier : WassersteinLawCarrier system}
    {Schedule : Type uSchedule}
    {reference :
      ScheduleKernelFamily system carrier Schedule}
    {equivariance :
      EquivariantScheduleKernelCertificate
        model reference}
    (implemented :
      ApproximateEquivariantScheduleDynamics
        equivariance)
    (automorphism : model.Automorphism) :
    (carrier.wasserstein
        (equivariance.lawAction automorphism
          implemented.implementedInvariant)
        implemented.implementedInvariant : ℝ) ≤
      (implemented.equivarianceDefect : ℝ) /
        (1 - (reference.contraction : ℝ)) := by
  have recurrenceReal :
      (carrier.wasserstein
        (equivariance.lawAction automorphism
          implemented.implementedInvariant)
        implemented.implementedInvariant : ℝ) ≤
      (implemented.equivarianceDefect : ℝ) +
        (reference.contraction : ℝ) *
          (carrier.wasserstein
            (equivariance.lawAction automorphism
              implemented.implementedInvariant)
            implemented.implementedInvariant : ℝ) := by
    exact_mod_cast
      implemented.symmetry_displacement_recurrence
        automorphism
  have contractionReal :
      (reference.contraction : ℝ) < 1 := by
    exact_mod_cast reference.contraction_lt_one
  have denominatorPositive :
      0 < 1 - (reference.contraction : ℝ) :=
    sub_pos.mpr contractionReal
  apply (le_div_iff₀ denominatorPositive).2
  nlinarith

theorem invariantLaw_exact_of_equivarianceDefect_eq_zero
    {system : RandomBitfieldSystem}
    {model : FiniteCrossedProductModel system}
    {carrier : WassersteinLawCarrier system}
    {Schedule : Type uSchedule}
    {reference :
      ScheduleKernelFamily system carrier Schedule}
    {equivariance :
      EquivariantScheduleKernelCertificate
        model reference}
    (implemented :
      ApproximateEquivariantScheduleDynamics
        equivariance)
    (defectZero :
      implemented.equivarianceDefect = 0)
    (automorphism : model.Automorphism) :
    equivariance.lawAction automorphism
        implemented.implementedInvariant =
      implemented.implementedInvariant := by
  apply carrier.separated
  have realBound :=
    implemented.invariant_law_symmetry_defect_bound
      automorphism
  rw [defectZero] at realBound
  norm_num at realBound
  have distanceNonnegative :
      0 ≤
        (carrier.wasserstein
          (equivariance.lawAction automorphism
            implemented.implementedInvariant)
          implemented.implementedInvariant : ℝ) :=
    NNReal.coe_nonneg _
  have distanceZero :
      (carrier.wasserstein
        (equivariance.lawAction automorphism
          implemented.implementedInvariant)
        implemented.implementedInvariant : ℝ) = 0 :=
    le_antisymm realBound distanceNonnegative
  exact_mod_cast distanceZero

end ApproximateEquivariantScheduleDynamics

structure LawObservableLipschitzCertificate
    {system : RandomBitfieldSystem}
    (carrier : WassersteinLawCarrier system) where
  observable : carrier.Law → ℝ
  lipschitz : ℝ≥0
  lipschitzBound :
    ∀ left right,
      |observable left - observable right| ≤
        (lipschitz : ℝ) *
          (carrier.wasserstein left right : ℝ)

theorem observable_symmetry_defect_bound
    {system : RandomBitfieldSystem}
    {model : FiniteCrossedProductModel system}
    {carrier : WassersteinLawCarrier system}
    {Schedule : Type uSchedule}
    {reference :
      ScheduleKernelFamily system carrier Schedule}
    {equivariance :
      EquivariantScheduleKernelCertificate
        model reference}
    (implemented :
      ApproximateEquivariantScheduleDynamics
        equivariance)
    (observable :
      LawObservableLipschitzCertificate carrier)
    (automorphism : model.Automorphism) :
    |observable.observable
          (equivariance.lawAction automorphism
            implemented.implementedInvariant) -
        observable.observable
          implemented.implementedInvariant| ≤
      (observable.lipschitz : ℝ) *
        ((implemented.equivarianceDefect : ℝ) /
          (1 - (reference.contraction : ℝ))) := by
  calc
    |observable.observable
          (equivariance.lawAction automorphism
            implemented.implementedInvariant) -
        observable.observable
          implemented.implementedInvariant| ≤
      (observable.lipschitz : ℝ) *
        (carrier.wasserstein
          (equivariance.lawAction automorphism
            implemented.implementedInvariant)
          implemented.implementedInvariant : ℝ) :=
      observable.lipschitzBound _ _
    _ ≤
      (observable.lipschitz : ℝ) *
        ((implemented.equivarianceDefect : ℝ) /
          (1 - (reference.contraction : ℝ))) :=
      mul_le_mul_of_nonneg_left
        (implemented.invariant_law_symmetry_defect_bound
          automorphism)
        (NNReal.coe_nonneg _)

end Mathematics.ConnesBitfield
```
