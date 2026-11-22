/- Copyright (c) 2026 grwtsk contributors. MIT. -/
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.WeilFirstPrimeWindowReturn

/-!
# Exact dual-sector contrast of the pole-inclusive Weil values

At one test and modulus, subtracting the two dual-sector arithmetic
values cancels the entire common background. The remaining finite sum
is the signed pairing of the imaginary character phase with the
imaginary correlation. Both prime windows and all active powers remain.
-/

set_option autoImplicit false
noncomputable section
open MeasureTheory
open scoped BigOperators ComplexConjugate

namespace GRWTSK.NumberTheory.WeilQuadraticForm.FirstPrimeWindow

open LowSchur OddRootProjection CharacterWindow SourcePrimeCorrelation

variable {q : ℕ}

private theorem inverse_apply_conj (χ : DirichletCharacter ℂ q) (z : ZMod q) :
    χ⁻¹ z = conj (χ z) := by
  simpa only [RCLike.star_def] using (MulChar.star_apply' χ z).symm

private theorem same_gamma_parity (χ : DirichletCharacter ℂ q) :
    gammaParity χ⁻¹ = gammaParity χ := by
  classical
  unfold gammaParity
  rw [inverse_apply_conj]
  have eq : conj (χ (-1)) = 1 ↔ χ (-1) = 1 := by
    constructor
    · intro h
      simpa using congrArg conj h
    · intro h
      simp [h]
  simp only [eq]

/-- Imaginary phase contribution on a selected subset of the actual
prime-power inventory. Zero weight or a real phase contributes zero. -/
def dualPhasePart (S : Finset ℕ) (χ : DirichletCharacter ℂ q) (C : ℕ → ℂ) : ℝ :=
  4 * ∑ n ∈ S, primeWeight n * (χ n).im * (C n).im

theorem primeReadout_dual_sub (S : Finset ℕ) (χ : DirichletCharacter ℂ q) (C : ℕ → ℂ) :
    primeReadout S (primeAtom χ C) - primeReadout S (primeAtom χ⁻¹ C) =
      dualPhasePart S χ C := by
  unfold primeReadout dualPhasePart
  rw [← mul_sub, ← Finset.sum_sub_distrib, show (4 : ℝ) = 2 * 2 by norm_num, mul_assoc]
  congr 1
  rw [Finset.mul_sum]
  apply Finset.sum_congr rfl
  intro n _
  simp only [primeAtom, inverse_apply_conj, Complex.mul_re,
    Complex.ofReal_re, Complex.ofReal_im, Complex.conj_re, Complex.conj_im, zero_mul, sub_zero]
  ring

/-- Both poles, the full archimedean term and the conductor constant
cancel only because the same original test is used in the two sectors. -/
theorem physicalValue_sub_dual (χ : DirichletCharacter ℂ q) (A : ℝ) (f : ℝ → ℂ) :
    let C := fun n : ℕ => correlation f (Real.log (n : ℝ))
    physicalValue χ A f - physicalValue χ⁻¹ A f =
      ((dualPhasePart (firstPowers A) χ C + dualPhasePart (laterPowers A) χ C : ℝ) : ℂ) := by
  intro C
  have same := same_gamma_parity χ
  have first := primeReadout_dual_sub (firstPowers A) χ C
  have later := primeReadout_dual_sub (laterPowers A) χ C
  unfold physicalValue
  rw [same, inv_inv, twistedPrime_eq_window_add_later, twistedPrime_eq_window_add_later]
  rw [← first, ← later]
  dsimp only [C]
  push_cast
  ring

theorem physicalValue_eq_dual_of_real_correlations
    (χ : DirichletCharacter ℂ q) (A : ℝ) (f : ℝ → ℂ)
    (real : ∀ n ∈ firstPowers A ∪ laterPowers A,
      (correlation f (Real.log (n : ℝ))).im = 0) :
    physicalValue χ A f = physicalValue χ⁻¹ A f := by
  apply sub_eq_zero.mp
  rw [physicalValue_sub_dual]
  have part (S : Finset ℕ) (sub : S ⊆ firstPowers A ∪ laterPowers A) :
      dualPhasePart S χ (fun n => correlation f (Real.log (n : ℝ))) = 0 := by
    unfold dualPhasePart
    rw [Finset.sum_eq_zero (fun n hn => by rw [real n (sub hn), mul_zero]), mul_zero]
  simp [part (firstPowers A) Finset.subset_union_left, part (laterPowers A) Finset.subset_union_right]

/-- A real-valued sensor test cannot expose the dual phase contrast. -/
theorem physicalValue_eq_dual_of_real_test
    (χ : DirichletCharacter ℂ q) (A : ℝ) (g : ℝ → ℝ) :
    physicalValue χ A (fun t => (g t : ℂ)) =
      physicalValue χ⁻¹ A (fun t => (g t : ℂ)) := by
  apply physicalValue_eq_dual_of_real_correlations
  intro n _
  unfold correlation
  simp only [Complex.conj_ofReal, ← Complex.ofReal_mul, integral_complex_ofReal, Complex.ofReal_im]

/-- Return the contrast to the original sums without identifying the two
zero index types or changing their summands. -/
theorem tsum_sub_dual {Z W : Type*} (zeros : Z → ℂ) (dualZeros : W → ℂ)
    (χ : DirichletCharacter ℂ q) (A : ℝ) (f : ℝ → ℂ)
    (source : HasSum zeros (physicalValue χ A f))
    (dualSource : HasSum dualZeros (physicalValue χ⁻¹ A f)) :
    let C := fun n : ℕ => correlation f (Real.log (n : ℝ))
    (∑' z, zeros z) - (∑' z, dualZeros z) =
      ((dualPhasePart (firstPowers A) χ C + dualPhasePart (laterPowers A) χ C : ℝ) : ℂ) := by
  rw [source.tsum_eq, dualSource.tsum_eq, physicalValue_sub_dual]

/-- Adding the two signed prime readouts retains the real-real pairing. -/
theorem primeReadout_dual_add (S : Finset ℕ) (χ : DirichletCharacter ℂ q) (C : ℕ → ℂ) :
    primeReadout S (primeAtom χ C) + primeReadout S (primeAtom χ⁻¹ C) =
      4 * ∑ n ∈ S, primeWeight n * (χ n).re * (C n).re := by
  unfold primeReadout
  rw [← mul_add, ← Finset.sum_add_distrib, show (4 : ℝ) = 2 * 2 by norm_num, mul_assoc]
  congr 1
  rw [Finset.mul_sum]
  apply Finset.sum_congr rfl
  intro n _
  simp only [primeAtom, inverse_apply_conj, Complex.mul_re,
    Complex.ofReal_re, Complex.ofReal_im, Complex.conj_re, Complex.conj_im, zero_mul, sub_zero]
  ring

/-- The common arithmetic background and the real-real prime pairing
on both active windows. -/
def dualEvenValue (χ : DirichletCharacter ℂ q) (A : ℝ) (f : ℝ → ℂ) : ℂ :=
  let R (S : Finset ℕ) :=
    ∑ n ∈ S, primeWeight n * (χ n).re * (correlation f (Real.log (n : ℝ))).re
  ((gammaConstant q (gammaParity χ) * energy f +
    (∫ r in Set.Ioi (0 : ℝ), gammaCorrectionDensity (gammaParity χ) f r) -
    2 * (R (firstPowers A) + R (laterPowers A)) : ℝ) : ℂ) + poleTerm q f

theorem physicalValue_add_dual (χ : DirichletCharacter ℂ q) (A : ℝ) (f : ℝ → ℂ) :
    physicalValue χ A f + physicalValue χ⁻¹ A f = 2 * dualEvenValue χ A f := by
  let C := fun n : ℕ => correlation f (Real.log (n : ℝ))
  have first := primeReadout_dual_add (firstPowers A) χ C
  have later := primeReadout_dual_add (laterPowers A) χ C
  unfold physicalValue dualEvenValue
  rw [same_gamma_parity, inv_inv, twistedPrime_eq_window_add_later, twistedPrime_eq_window_add_later]
  dsimp only [C] at first later
  have paired := congrArg (fun x : ℝ => (x : ℂ)) (congrArg₂ (· + ·) first later)
  push_cast at paired ⊢
  linear_combination -paired

/-- The exact spectral sums retain their own zero indices and multiplicity
summands when the even arithmetic component is extracted. -/
theorem tsum_add_dual {Z W : Type*} (zeros : Z → ℂ) (dualZeros : W → ℂ)
    (χ : DirichletCharacter ℂ q) (A : ℝ) (f : ℝ → ℂ)
    (source : HasSum zeros (physicalValue χ A f))
    (dualSource : HasSum dualZeros (physicalValue χ⁻¹ A f)) :
    (∑' z, zeros z) + (∑' z, dualZeros z) = 2 * dualEvenValue χ A f := by
  rw [source.tsum_eq, dualSource.tsum_eq, physicalValue_add_dual]

end GRWTSK.NumberTheory.WeilQuadraticForm.FirstPrimeWindow
