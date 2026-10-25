/- Copyright (c) 2026 grwtsk contributors. MIT.
Local mathematical attribution: grwtsk contributors.

Source proof candidates; native compilation/kernel/axiom checks are pending.
The zero-residual endpoint retains the same arbitrary arithmetic domain D.
An explicit application uses only the existing two-coordinate family; it does
not identify that family with the full RH application family. -/
import GRWTSK.NumberTheory.Moebius.CanonicalFourFamilySharpResidualFrame
import GRWTSK.NumberTheory.Moebius.CanonicalFourFamilyTwoCoordinateReconstruction

set_option autoImplicit false
noncomputable section
open scoped BigOperators

namespace GRWTSK.RiemannHypothesis.CCC.LogarithmicSampling

/-- Vanishing finite source energy identifies the reconstruction only on the
energy cells. No equality outside the finite window is inferred. -/
theorem reconstruction_agrees_on_energy_cells_of_zero_residual
    (X : ℕ)
    (R : ({n : ℕ // n ∈ centeredGreenWindow X} → ℝ) → CanonicalFourFamilyRealPacket)
    (v : CanonicalFourFamilyRealPacket)
    (hz : canonicalFourFamilyAmbientSourceEnergy X
      (canonicalFourFamilyReconstructionResidual X R v) = 0)
    (F : CanonicalFourFamily) (c : ℕ) (hc : c ∈ Finset.range (2 * X + 1)) :
    v F c = R (canonicalFourFamilyWindowReadout X v) F c := by
  let w := canonicalFourFamilyReconstructionResidual X R v
  have hcell := Finset.single_le_sum
    (f := fun k => (w F k) ^ 2) (fun _ _ => sq_nonneg _) hc
  have hrow := Finset.single_le_sum
    (f := fun G : CanonicalFourFamily => ∑ k ∈ Finset.range (2 * X + 1), (w G k) ^ 2)
    (fun _ _ => Finset.sum_nonneg (fun _ _ => sq_nonneg _)) (Finset.mem_univ F)
  have hle : (w F c) ^ 2 ≤ 0 := (hcell.trans hrow).trans_eq hz
  have hzero : w F c = 0 := sq_eq_zero_iff.mp (le_antisymm hle (sq_nonneg _))
  change v F c - R (canonicalFourFamilyWindowReadout X v) F c = 0 at hzero
  exact sub_eq_zero.mp hzero

theorem source_energy_eq_reconstruction_of_zero_residual
    (X : ℕ)
    (R : ({n : ℕ // n ∈ centeredGreenWindow X} → ℝ) → CanonicalFourFamilyRealPacket)
    (v : CanonicalFourFamilyRealPacket)
    (hz : canonicalFourFamilyAmbientSourceEnergy X
      (canonicalFourFamilyReconstructionResidual X R v) = 0) :
    canonicalFourFamilyAmbientSourceEnergy X v =
      canonicalFourFamilyAmbientSourceEnergy X (R (canonicalFourFamilyWindowReadout X v)) := by
  unfold canonicalFourFamilyAmbientSourceEnergy
  apply Finset.sum_congr rfl
  intro F _
  apply Finset.sum_congr rfl
  intro c hc
  rw [reconstruction_agrees_on_energy_cells_of_zero_residual X R v hz F c hc]

/-- At the zero-residual endpoint the source bound gives constant 1/C, with no
factor-two loss and without assuming global equality of infinite packets. -/
theorem canonicalFourFamilyLowerFrame_of_zero_residual
    (X : ℕ) (D : Set CanonicalFourFamilyRealPacket)
    (R : ({n : ℕ // n ∈ centeredGreenWindow X} → ℝ) → CanonicalFourFamilyRealPacket)
    (C : ℝ) (hC : 0 < C)
    (hR : ∀ v ∈ D, canonicalFourFamilyAmbientSourceEnergy X
      (R (canonicalFourFamilyWindowReadout X v)) ≤
        C * canonicalFourFamilyWindowOutputEnergy X v)
    (hres : ∀ v ∈ D, canonicalFourFamilyAmbientSourceEnergy X
      (canonicalFourFamilyReconstructionResidual X R v) ≤ 0) :
    HasCanonicalFourFamilyRestrictedLowerFrame X D (1 / C) := by
  refine ⟨div_pos zero_lt_one hC, ?_⟩
  intro v hv
  have hn : 0 ≤ canonicalFourFamilyAmbientSourceEnergy X
      (canonicalFourFamilyReconstructionResidual X R v) :=
    Finset.sum_nonneg (fun _ _ => Finset.sum_nonneg (fun _ _ => sq_nonneg _))
  have hz := le_antisymm (hres v hv) hn
  have he := source_energy_eq_reconstruction_of_zero_residual X R v hz
  have hb := hR v hv
  rw [← he] at hb
  rw [div_mul_eq_mul_div, one_mul]
  exact (div_le_iff₀ hC).mpr (by simpa only [mul_comm] using hb)

/-- Complete the existing sharp positive-residual interface at q=0. Both
quantitative hypotheses remain on the same supplied D for every 0≤q<1. -/
theorem canonicalFourFamilyLowerFrame_of_nonnegative_residual
    (X : ℕ) (D : Set CanonicalFourFamilyRealPacket)
    (R : ({n : ℕ // n ∈ centeredGreenWindow X} → ℝ) → CanonicalFourFamilyRealPacket)
    (C q : ℝ) (hC : 0 < C) (hq : 0 ≤ q) (hsmall : q < 1)
    (hR : ∀ v ∈ D, canonicalFourFamilyAmbientSourceEnergy X
      (R (canonicalFourFamilyWindowReadout X v)) ≤
        C * canonicalFourFamilyWindowOutputEnergy X v)
    (hres : ∀ v ∈ D, canonicalFourFamilyAmbientSourceEnergy X
      (canonicalFourFamilyReconstructionResidual X R v) ≤
        q * canonicalFourFamilyAmbientSourceEnergy X v) :
    HasCanonicalFourFamilyRestrictedLowerFrame X D ((1 - Real.sqrt q) ^ 2 / C) := by
  by_cases hz : q = 0
  · subst q
    have hzero : ∀ v ∈ D, canonicalFourFamilyAmbientSourceEnergy X
        (canonicalFourFamilyReconstructionResidual X R v) ≤ 0 := by
      intro v hv
      simpa only [zero_mul] using hres v hv
    simpa using canonicalFourFamilyLowerFrame_of_zero_residual X D R C hC hR hzero
  · exact canonicalFourFamilyLowerFrame_of_positive_residual X D R C q hC
      (lt_of_le_of_ne hq (Ne.symm hz)) hsmall hR hres

/-- Demonstrated application to the existing actual two-coordinate arithmetic
differences. This is expressly not the original full restriction family. -/
theorem twoArithmetic_sharp_zero_boundary_application {X : ℕ} (hX : 10 ≤ X) :
    HasCanonicalFourFamilyRestrictedLowerFrame X
      (CanonicalTwoCoordinateArithmeticDifferences X)
      ((1 - Real.sqrt (0 : ℝ)) ^ 2 / (2 / (Real.log 2) ^ 2)) := by
  have hlog : 0 < Real.log 2 := Real.log_pos (by norm_num)
  apply canonicalFourFamilyLowerFrame_of_nonnegative_residual X
    (CanonicalTwoCoordinateArithmeticDifferences X) (twoReconstruction X hX)
    (2 / (Real.log 2) ^ 2) 0 (by positivity) (le_refl 0) zero_lt_one
  · intro v _
    exact twoReconstruction_uniform_bound hX v
  · intro v hv
    rw [twoArithmetic_residual_zero hX hv]
    simp [canonicalFourFamilyAmbientSourceEnergy]

end GRWTSK.RiemannHypothesis.CCC.LogarithmicSampling
