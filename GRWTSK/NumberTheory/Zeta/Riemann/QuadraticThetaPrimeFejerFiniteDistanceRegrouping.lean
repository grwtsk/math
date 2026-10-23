/- Copyright (c) 2026 R.A. Jacob Martone. MIT.
Human mathematical direction: R.A. Jacob Martone. Formalization assistance: OpenAI ChatGPT. -/
import GRWTSK.NumberTheory.Zeta.Riemann.QuadraticThetaPrimeFejerCyclicDistanceSample
import Mathlib.Tactic

set_option autoImplicit false
noncomputable section
open scoped BigOperators

namespace GRWTSK.RiemannHypothesis

/-- Every cyclic residue maps into the finite distance interval [0,2X]. -/
theorem cyclicFejerDistance_mapsTo_Icc
    {X : ℕ}
    (hX : 0 < X) :
    ∀ r ∈ (Finset.univ : Finset (ZMod (fejerOctavePeriod X))),
      cyclicFejerDistance X r ∈ Finset.Icc 0 (2 * X) := by
  intro r hr
  exact Finset.mem_Icc.mpr
    ⟨Nat.zero_le _, cyclicFejerDistance_le_twoX hX r⟩

/-- One cyclic-distance fiber contributes at most four times
d times the distance-d norm sample. -/
theorem cyclicFejerDistanceFiber_weighted_le
    {X N d : ℕ}
    (hreg : NonAliasingFejerCutoffRegime X N)
    (hd : d ≤ 2 * X) :
    (∑ r ∈ (Finset.univ : Finset (ZMod (fejerOctavePeriod X)))
        with cyclicFejerDistance X r = d,
      cyclicFejerKernel X N r *
        (2 * cyclicFejerDistance X r : ℕ))
      ≤
    4 * ((d : ℝ) *
      sampledTriangularKernelAtPeriod
        (fejerOctavePeriod X) N d) := by
  rcases hreg with ⟨hX, hN, hNL⟩
  have hpoint :
      ∀ r ∈ (Finset.univ : Finset (ZMod (fejerOctavePeriod X))),
        cyclicFejerDistance X r = d →
          cyclicFejerKernel X N r *
              (2 * cyclicFejerDistance X r : ℕ)
            ≤
          sampledTriangularKernelAtPeriod
              (fejerOctavePeriod X) N d *
              (2 * d : ℕ) := by
    intro r hr hdist
    rw [hdist]
    have hsample :=
      cyclicFejerKernel_le_distanceSample
        ⟨hX, hN, hNL⟩ r
    rw [hdist] at hsample
    exact mul_le_mul_of_nonneg_right hsample (by positivity)
  calc
    (∑ r ∈ (Finset.univ : Finset (ZMod (fejerOctavePeriod X)))
        with cyclicFejerDistance X r = d,
      cyclicFejerKernel X N r *
        (2 * cyclicFejerDistance X r : ℕ))
      ≤
    ∑ r ∈ (Finset.univ : Finset (ZMod (fejerOctavePeriod X)))
        with cyclicFejerDistance X r = d,
      sampledTriangularKernelAtPeriod
          (fejerOctavePeriod X) N d *
          (2 * d : ℕ) := by
            apply Finset.sum_le_sum
            intro r hr
            exact hpoint r (Finset.mem_univ r)
              (Finset.mem_filter.mp hr).2
    _ =
      ((cyclicFejerDistanceFiber X d).card : ℝ) *
        (sampledTriangularKernelAtPeriod
          (fejerOctavePeriod X) N d *
          (2 * d : ℕ)) := by
            unfold cyclicFejerDistanceFiber
            simp [Finset.sum_const, nsmul_eq_mul]
            ring
    _ ≤
      2 *
        (sampledTriangularKernelAtPeriod
          (fejerOctavePeriod X) N d *
          (2 * d : ℕ)) := by
            have hcard :=
              cyclicFejerDistanceFiber_card_le_two hX (d := d)
            have hsample0 :
                0 ≤ sampledTriangularKernelAtPeriod
                  (fejerOctavePeriod X) N d := by
              unfold sampledTriangularKernelAtPeriod
              positivity
            have hfactor :
                0 ≤ sampledTriangularKernelAtPeriod
                  (fejerOctavePeriod X) N d *
                  (2 * d : ℕ) := by
              positivity
            exact mul_le_mul_of_nonneg_right
              (by exact_mod_cast hcard) hfactor
    _ =
      4 * ((d : ℝ) *
        sampledTriangularKernelAtPeriod
          (fejerOctavePeriod X) N d) := by
            push_cast
            ring

/-- Regroup the residue sum exactly by cyclic distance and apply the
fiberwise bound. -/
theorem cyclicDistanceWeightedKernel_le_IccFirstMoment
    {X N : ℕ}
    (hreg : NonAliasingFejerCutoffRegime X N) :
    (∑ r : ZMod (fejerOctavePeriod X),
      cyclicFejerKernel X N r *
        (2 * cyclicFejerDistance X r : ℕ))
      ≤
    ∑ d ∈ Finset.Icc 0 (2 * X),
      4 * ((d : ℝ) *
        sampledTriangularKernelAtPeriod
          (fejerOctavePeriod X) N d) := by
  rcases hreg with ⟨hX, hN, hNL⟩
  have hmaps :=
    cyclicFejerDistance_mapsTo_Icc hX
  rw [← Finset.sum_fiberwise_of_maps_to hmaps]
  apply Finset.sum_le_sum
  intro d hd
  exact cyclicFejerDistanceFiber_weighted_le
    ⟨hX, hN, hNL⟩ (Finset.mem_Icc.mp hd).2

/-- The d=0 summand vanishes, so the [0,2X] grouped sum is exactly four times
the positive-distance first moment on [1,2X]. -/
theorem cyclicDistance_Icc_sum_eq_cyclicStepBudget
    (X N : ℕ) :
    (∑ d ∈ Finset.Icc 0 (2 * X),
      4 * ((d : ℝ) *
        sampledTriangularKernelAtPeriod
          (fejerOctavePeriod X) N d))
      =
    nonAliasingFejerCyclicStepBudget X N := by
  unfold nonAliasingFejerCyclicStepBudget
    nonAliasingFejerPositiveFirstMoment
  have hIcc :
      Finset.Icc 0 (2 * X) =
        insert 0 (Finset.Icc 1 (2 * X)) := by
    rw [← Finset.insert_Icc_add_one_left_eq_Icc (Nat.zero_le (2 * X))]
  rw [hIcc, Finset.sum_insert]
  · simp
    rw [Finset.mul_sum]
  · simp

/-- Final finite cyclic-distance kernel pairing. -/
theorem cyclicDistanceWeightedKernelPairing :
    CyclicDistanceWeightedKernelPairingClaim := by
  intro X N hreg
  exact
    (cyclicDistanceWeightedKernel_le_IccFirstMoment hreg).trans_eq
      (cyclicDistance_Icc_sum_eq_cyclicStepBudget X N)

/-- The corrected factor-four first-moment claim is now source-proved. -/
theorem nonAliasingFejerSharpStepL1FirstMomentFour :
    NonAliasingFejerSharpStepL1FirstMomentFourClaim :=
  cyclicKernelPairing_to_sharpStepL1FirstMomentFour
    cyclicDistanceWeightedKernelPairing

/-- The corrected arithmetic Fejer comparison is now source-proved. -/
theorem nonAliasingPrimePrefixFejerFirstMomentComparisonFactorFour :
    NonAliasingPrimePrefixFejerFirstMomentComparisonFactorFour :=
  cyclicKernelPairing_to_arithmeticComparisonFactorFour
    cyclicDistanceWeightedKernelPairing

end GRWTSK.RiemannHypothesis
