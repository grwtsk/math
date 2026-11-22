/-
Copyright (c) 2026 grwtsk contributors. MIT.
Authors: grwtsk contributors.
-/
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.WeilConductorThreeKernelSampling
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.WeilRadiusTwoPrimeObservations

/-!
# An actual signed conductor-three prime-hinge enclosure

At displacement four, every term of the original radius-four inventory
outside the radius-two inventory has zero hinge. The remaining integers
are exactly 2 through 54. Their von Mangoldt weights, character signs,
and logarithms are retained and enclosed by existing rational observations.
This is a source enclosure, not a positivity theorem for an arbitrary grid.
-/

set_option autoImplicit false
noncomputable section
open scoped BigOperators ComplexConjugate

namespace GRWTSK.NumberTheory.WeilQuadraticForm.ConductorThreeRadiusFourScrewGreen

open LowSchur RadiusTwoPrimeNorm
open GRWTSK.NumberTheory.Zeta.Riemann.DirichletModThreeQuadraticConstruction
open GRWTSK.Algebra.LinearAlgebra.RationalRealBounds

namespace PrimeBounds

/-- The exact rational values of the native character on natural arguments. -/
def characterCoefficient (n : ℕ) : ℚ :=
  if n % 3 = 0 then 0 else if n % 3 = 1 then 1 else -1

theorem characterCoefficient_eq (n : ℕ) :
    (characterCoefficient n : ℝ) = (conj (modThreeQuadratic n)).re := by
  have hn : n % 3 = 0 ∨ n % 3 = 1 ∨ n % 3 = 2 := by omega
  have hcast : (n : ZMod 3) = ((n % 3 : ℕ) : ZMod 3) :=
    (ZMod.natCast_mod n 3).symm
  have hzero : modThreeQuadratic (0 : ZMod 3) = 0 :=
    DirichletCharacter.map_zero' modThreeQuadratic (by decide)
  rw [hcast]
  rcases hn with hn | hn | hn <;>
    simp [characterCoefficient, hn, hzero,
      modThreeQuadratic_one, modThreeQuadratic_two]

private theorem mem_active {T : ℝ} {n : ℕ} :
    n ∈ activePrimePowers T ↔ 2 ≤ n ∧ (n : ℝ) < Real.exp (2 * T) := by
  simp only [activePrimePowers, Finset.mem_filter, Finset.mem_range, Nat.lt_ceil]
  tauto

/-- The original large inventory reduces only because the other hinges vanish. -/
theorem primeHinges_four_eq :
    primeHinges 4 = ∑ n ∈ Finset.Icc 2 54,
      (characterCoefficient n : ℝ) * primeWeight n * (4 - Real.log (n : ℝ)) := by
  have hsub : activePrimePowers 2 ⊆ activePrimePowers 4 := by
    intro n hn
    obtain ⟨hn₂, hnexp⟩ := mem_active.mp hn
    exact mem_active.mpr ⟨hn₂, hnexp.trans (Real.exp_lt_exp.mpr (by norm_num))⟩
  have hsum : (∑ n ∈ activePrimePowers 2,
      (primeWeight n * (conj (modThreeQuadratic n)).re) *
        max (|((4 : ℝ))| - Real.log (n : ℝ)) 0) =
      ∑ n ∈ activePrimePowers 4,
      (primeWeight n * (conj (modThreeQuadratic n)).re) *
        max (|((4 : ℝ))| - Real.log (n : ℝ)) 0 := by
    apply Finset.sum_subset hsub
    intro n hn hnsmall
    have hn₂ := (mem_active.mp hn).1
    have hnpos : (0 : ℝ) < n := by exact_mod_cast (show 0 < n by omega)
    have hlog : 4 ≤ Real.log (n : ℝ) := by
      apply (Real.le_log_iff_exp_le hnpos).mpr
      by_contra h
      apply hnsmall
      apply mem_active.mpr
      refine ⟨hn₂, ?_⟩
      norm_num only at ⊢
      exact lt_of_not_ge h
    have hz : max (|((4 : ℝ))| - Real.log (n : ℝ)) 0 = 0 := by
      rw [abs_of_pos (by norm_num), max_eq_right (by linarith)]
    rw [hz, mul_zero]
  rw [primeHinges_eq_sum, ← hsum, activePrimePowers_two]
  apply Finset.sum_congr rfl
  intro n hn
  have hnsmall : n ∈ activePrimePowers 2 := by rwa [activePrimePowers_two]
  obtain ⟨hn₂, hnexp⟩ := mem_active.mp hnsmall
  have hnpos : (0 : ℝ) < n := by exact_mod_cast (show 0 < n by omega)
  have hlog : Real.log (n : ℝ) < 4 :=
    (Real.log_lt_iff_lt_exp hnpos).mpr (by norm_num at hnexp; exact hnexp)
  rw [abs_of_pos (by norm_num), max_eq_left (by linarith), characterCoefficient_eq]
  ring

/-- Per-integer outward intervals. Zero von Mangoldt and character weights
are retained in the same finite sum. -/
def termBounds (n : ℕ) : Bounds :=
  round 16 (scale (characterCoefficient n)
    (mul (RadiusTwoPrimeObservations.primeWeightBounds n)
      (sub (point 4) (RadiusTwoPrimeObservations.logBounds n))))

theorem termBounds_sound {n : ℕ} (hn : n ∈ Finset.Icc 2 54) :
    Encloses (termBounds n)
      ((characterCoefficient n : ℝ) * primeWeight n * (4 - Real.log (n : ℝ))) := by
  obtain ⟨hn₂, hn₅₄⟩ := Finset.mem_Icc.mp hn
  have hlog := RadiusTwoPrimeObservations.logBounds_sound (by omega : 0 < n) hn₅₄
  have hweight := RadiusTwoPrimeObservations.primeWeightBounds_sound hn
  have h := round_sound 16 (scale_sound (characterCoefficient n)
    (mul_sound hweight (sub_sound (point_sound 4) hlog)))
  simpa only [termBounds, Rat.cast_ofNat, mul_assoc] using h

/-- A fully rational interval computed from the existing checked observations. -/
def primeHingesBounds : Bounds := sum (Finset.Icc 2 54) termBounds

theorem primeHingesBounds_sound : Encloses primeHingesBounds (primeHinges 4) := by
  rw [primeHinges_four_eq]
  exact sum_sound (Finset.Icc 2 54) (fun n hn => termBounds_sound hn)

set_option maxRecDepth 20000 in
set_option maxHeartbeats 4000000 in
theorem primeHingesBounds_coarse :
    -(171 / 100 : ℚ) ≤ primeHingesBounds.1 ∧ primeHingesBounds.2 ≤ -(17 / 10 : ℚ) := by
  decide +kernel

end PrimeBounds

/-- A source-bound signed interval, suitable for the two-cell arithmetic
matrix. It does not establish a sign on every grid or every test. -/
theorem primeHinges_four_bounds :
    -(171 / 100 : ℝ) ≤ primeHinges 4 ∧ primeHinges 4 ≤ -(17 / 10 : ℝ) := by
  have h := PrimeBounds.primeHingesBounds_sound
  have hlo : -(171 / 100 : ℝ) ≤ (PrimeBounds.primeHingesBounds.1 : ℝ) := by
    simpa only [Rat.cast_neg, Rat.cast_div, Rat.cast_ofNat] using
      ((Rat.cast_le (K := ℝ)).2 PrimeBounds.primeHingesBounds_coarse.1)
  have hhi : (PrimeBounds.primeHingesBounds.2 : ℝ) ≤ -(17 / 10 : ℝ) := by
    simpa only [Rat.cast_neg, Rat.cast_div, Rat.cast_ofNat] using
      ((Rat.cast_le (K := ℝ)).2 PrimeBounds.primeHingesBounds_coarse.2)
  exact ⟨hlo.trans h.1, h.2.trans hhi⟩

end GRWTSK.NumberTheory.WeilQuadraticForm.ConductorThreeRadiusFourScrewGreen
