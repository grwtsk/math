/- Copyright (c) 2026 R.A. Jacob Martone. MIT.
Formalization assistance: OpenAI.
Mathlib results retain their upstream authorship and Apache-2.0 license. -/
import GRWTSK.NumberTheory.Moebius.CanonicalFourFamilyResidualFrame

/-! # Sharp residual-to-frame constant

For a relative squared-energy residual q with 0<q<1, weighted Young's
inequality gives the constant (1-sqrt q)^2/C for the actual matrix.
The reconstruction and both estimates on the same arithmetic family remain
premises. This does not supply an RH-scale reconstruction or its estimates.
-/
set_option autoImplicit false
noncomputable section
open scoped BigOperators
namespace GRWTSK.RiemannHypothesis.CCC.LogarithmicSampling

theorem canonicalFourFamilyEnergy_young (X : ℕ)
    (f g : CanonicalFourFamilyRealPacket) (t : ℝ) :
    t * (1 - t) * canonicalFourFamilyAmbientSourceEnergy X (f + g) ≤
      (1 - t) * canonicalFourFamilyAmbientSourceEnergy X f +
        t * canonicalFourFamilyAmbientSourceEnergy X g := by
  unfold canonicalFourFamilyAmbientSourceEnergy
  simp only [Finset.mul_sum, ← Finset.sum_add_distrib]
  apply Finset.sum_le_sum
  intro F _
  apply Finset.sum_le_sum
  intro c _
  change t * (1 - t) * (f F c + g F c) ^ 2 ≤ _
  nlinarith [sq_nonneg ((1 - t) * f F c - t * g F c)]

/-- The optimal scalar Young estimate for a strictly positive relative
squared residual. No quantitative reconstruction premise is discharged here. -/
theorem canonicalFourFamilyLowerFrame_of_positive_residual
    (X : ℕ) (D : Set CanonicalFourFamilyRealPacket)
    (R : ({n : ℕ // n ∈ centeredGreenWindow X} → ℝ) → CanonicalFourFamilyRealPacket)
    (C q : ℝ) (hC : 0 < C) (hq : 0 < q) (hsmall : q < 1)
    (hR : ∀ v ∈ D, canonicalFourFamilyAmbientSourceEnergy X
      (R (canonicalFourFamilyWindowReadout X v)) ≤
        C * canonicalFourFamilyWindowOutputEnergy X v)
    (hres : ∀ v ∈ D, canonicalFourFamilyAmbientSourceEnergy X
      (canonicalFourFamilyReconstructionResidual X R v) ≤
        q * canonicalFourFamilyAmbientSourceEnergy X v) :
    HasCanonicalFourFamilyRestrictedLowerFrame X D
      ((1 - Real.sqrt q) ^ 2 / C) := by
  have hs : 0 < Real.sqrt q := Real.sqrt_pos.2 hq
  have hs2 : Real.sqrt q ^ 2 = q := Real.sq_sqrt (le_of_lt hq)
  have hs1 : Real.sqrt q < 1 := by nlinarith
  refine ⟨div_pos (sq_pos_of_pos (by linarith)) hC, ?_⟩
  intro v hv
  have hy := canonicalFourFamilyEnergy_young X
    (R (canonicalFourFamilyWindowReadout X v))
    (canonicalFourFamilyReconstructionResidual X R v) (1 - Real.sqrt q)
  have hid : R (canonicalFourFamilyWindowReadout X v) +
      canonicalFourFamilyReconstructionResidual X R v = v := by
    unfold canonicalFourFamilyReconstructionResidual
    abel
  rw [hid] at hy
  have hr := mul_le_mul_of_nonneg_left (hR v hv) (le_of_lt hs)
  have he := mul_le_mul_of_nonneg_left (hres v hv)
    (show 0 ≤ 1 - Real.sqrt q by linarith)
  have he' : (1 - Real.sqrt q) * canonicalFourFamilyAmbientSourceEnergy X
      (canonicalFourFamilyReconstructionResidual X R v) ≤
      (1 - Real.sqrt q) * (Real.sqrt q ^ 2 *
        canonicalFourFamilyAmbientSourceEnergy X v) := by
    simpa only [hs2] using he
  have hb : Real.sqrt q * ((1 - Real.sqrt q) ^ 2 *
      canonicalFourFamilyAmbientSourceEnergy X v) ≤
      Real.sqrt q * (C * canonicalFourFamilyWindowOutputEnergy X v) := by
    nlinarith only [hy, hr, he']
  have hb' := (mul_le_mul_iff_right₀ hs).mp hb
  rw [div_mul_eq_mul_div]
  exact (div_le_iff₀ hC).mpr (by nlinarith [hb'])

end GRWTSK.RiemannHypothesis.CCC.LogarithmicSampling
