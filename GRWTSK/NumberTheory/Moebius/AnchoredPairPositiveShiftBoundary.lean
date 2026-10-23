/-
Copyright (c) 2026 R.A. Jacob Martone. MIT.
Human mathematical direction: R.A. Jacob Martone.
Formalization assistance: OpenAI ChatGPT.
Imported Mathlib and GRWTSK results retain their original attribution/licenses.

Issue: #942, after merged #1048; reference #956.
Evidence: SOURCE_DRAFT / NOT_ELABORATED / NOT_KERNEL_CHECKED.
-/
import GRWTSK.NumberTheory.Moebius.AnchoredPairGreenCoefficientBridge
import Mathlib.Tactic

/-!
# Exact zero-shift correction in the anchored Green divisor transform

At fixed X, the antecedent module recovers the actual von Mangoldt
coefficient from parity-anchored Möbius pairs. These pairs have strictly
positive shift exactly when the divisor factor a >= 3.

This one coherent layer splits the existing finite transform into:
* the real signed transform supported on strictly positive anchored shifts;
* the exact zero-shift boundary from a=1 and (when 2|n) a=2.

For every n in the authenticated Green window X<n<=2X:
  Lambda(n) = PositiveAnchored(X,n) + log n
                - (if 2|n then log(n/2) else 0).

The boundary cannot be dropped: at X=2, n=3 it is log 3 > 0.
The identical correction is retained after the exact 1/n weight,
complex cast, and historical thin Green Fourier test function.

This is not yet a comparison to the source-defined *regular-centered*
positive-shift energy: equality of the shift predicate alone does not
establish equality of actual centered supports. No arithmetic energy
estimate, lower frame, norm transport, tail estimate, or RH proof is made.
-/

set_option autoImplicit false
noncomputable section
open scoped BigOperators

namespace GRWTSK.RiemannHypothesis.CCC.LogarithmicSampling

open GRWTSK.RiemannHypothesis

/-- The anchored shift is strictly positive exactly after the first two
positive divisor factors. The positive-domain condition is explicit. -/
theorem anchoredMobiusPair_shift_pos_iff_ge_three
    {a : ℕ} (ha : 0 < a) :
    0 < (anchoredMobiusPair a).h ↔ 3 ≤ a := by
  by_cases he : a % 2 = 0
  · simp only [anchoredMobiusPair, if_pos he]
    omega
  · simp only [anchoredMobiusPair, if_neg he]
    omega

/-- The entire zero-shift boundary of this *anchored* source consists of the
two factors a=1 and a=2. This says nothing about other centered supports. -/
theorem anchoredMobiusPair_shift_zero_iff_one_or_two
    {a : ℕ} (ha : 0 < a) :
    (anchoredMobiusPair a).h = 0 ↔ a = 1 ∨ a = 2 := by
  constructor
  · intro hz
    have hnot : ¬ 3 ≤ a := by
      intro hge
      have hpos :=
        (anchoredMobiusPair_shift_pos_iff_ge_three ha).2 hge
      omega
    omega
  · rintro (rfl | rfl) <;>
      norm_num [anchoredMobiusPair]

/-- The part of the PRE-EXISTING finite divisor transform whose actual
anchored source factors have positive shift, with no positivity of
coefficients or induced form claimed. -/
def anchoredPositiveShiftDivisorTransform
    (X n : ℕ) (f : ℕ → ℝ) : ℝ :=
  ∑ p ∈ n.divisorsAntidiagonal,
    if p.1 ∈ anchoredDyadicSourceIndices X then
      if 0 < (anchoredMobiusPair p.1).h then
        (anchoredPairSign p.1 * f p.1) *
          (ArithmeticFunction.log p.2 : ℝ)
      else 0
    else 0

/-- The exact complementary contribution: the anchored source terms with
shift h=0. -/
def anchoredZeroShiftBoundaryTransform
    (X n : ℕ) (f : ℕ → ℝ) : ℝ :=
  ∑ p ∈ n.divisorsAntidiagonal,
    if p.1 ∈ anchoredDyadicSourceIndices X then
      if (anchoredMobiusPair p.1).h = 0 then
        (anchoredPairSign p.1 * f p.1) *
          (ArithmeticFunction.log p.2 : ℝ)
      else 0
    else 0

/-- Exact splitting for EVERY finite source packet, not a hypothesis about
its arithmetic size. -/
theorem anchoredFiniteGreenDivisorTransform_eq_positive_add_boundary
    (X n : ℕ) (f : ℕ → ℝ) :
    anchoredFiniteGreenDivisorTransform X n f =
      anchoredPositiveShiftDivisorTransform X n f +
        anchoredZeroShiftBoundaryTransform X n f := by
  unfold anchoredFiniteGreenDivisorTransform
    anchoredPositiveShiftDivisorTransform
    anchoredZeroShiftBoundaryTransform
  rw [← Finset.sum_add_distrib]
  apply Finset.sum_congr rfl
  intro p hp
  by_cases hmem : p.1 ∈ anchoredDyadicSourceIndices X
  · by_cases hpos : 0 < (anchoredMobiusPair p.1).h
    · have hne : (anchoredMobiusPair p.1).h ≠ 0 :=
        Nat.ne_of_gt hpos
      simp [hmem, hpos, hne]
    · have hz : (anchoredMobiusPair p.1).h = 0 :=
        Nat.eq_zero_of_not_pos hpos
      simp [hmem, hpos, hz]
  · simp [hmem]

/-- An explicit arithmetic low-factor sum, retaining the exact real
Möbius-log factorization coefficients. -/
private def lowFactorMobiusLog (n : ℕ) : ℝ :=
  ∑ p ∈ n.divisorsAntidiagonal,
    if p.1 < 3 then
      (ArithmeticFunction.moebius p.1 : ℝ) *
        (ArithmeticFunction.log p.2 : ℝ)
    else 0

/-- The factor a=1 contributes literally log n, for every n>0. -/
private theorem firstFactorMobiusLog_eq_log
    {n : ℕ} (hn : 0 < n) :
    (∑ p ∈ n.divisorsAntidiagonal,
      if p.1 = 1 then
        (ArithmeticFunction.moebius p.1 : ℝ) *
          (ArithmeticFunction.log p.2 : ℝ)
      else 0) = Real.log (n : ℝ) := by
  have hmem : (1, n) ∈ n.divisorsAntidiagonal := by
    simp [Nat.mem_divisorsAntidiagonal, ne_of_gt hn]
  calc
    (∑ p ∈ n.divisorsAntidiagonal,
      if p.1 = 1 then
        (ArithmeticFunction.moebius p.1 : ℝ) *
          (ArithmeticFunction.log p.2 : ℝ)
      else 0) =
        (ArithmeticFunction.moebius 1 : ℝ) *
          (ArithmeticFunction.log n : ℝ) := by
      apply Finset.sum_eq_single (1, n)
      · intro p hp hpne
        by_cases hpone : p.1 = 1
        · have hprod : p.1 * p.2 = n :=
            (Nat.mem_divisorsAntidiagonal.mp hp).1
          have hsnd : p.2 = n := by
            rw [hpone] at hprod
            simpa using hprod
          exact (hpne (Prod.ext hpone hsnd)).elim
        · simp [hpone]
      · intro hnot
        exact (hnot hmem).elim
    _ = Real.log (n : ℝ) := by
      rw [ArithmeticFunction.moebius_apply_one]
      simp [ArithmeticFunction.log_apply]

/-- The a=2 boundary is -log(n/2) precisely when 2|n, and 0 otherwise. -/
private theorem secondFactorMobiusLog_eq
    {n : ℕ} (hn : 0 < n) :
    (∑ p ∈ n.divisorsAntidiagonal,
      if p.1 = 2 then
        (ArithmeticFunction.moebius p.1 : ℝ) *
          (ArithmeticFunction.log p.2 : ℝ)
      else 0) =
      if 2 ∣ n then -Real.log ((n / 2 : ℕ) : ℝ) else 0 := by
  have hmu2 : (ArithmeticFunction.moebius 2 : ℝ) = -1 := by
    change ((ArithmeticFunction.moebius 2 : ℤ) : ℝ) = -1
    rw [ArithmeticFunction.moebius_apply_prime
      (by norm_num : Nat.Prime 2)]
    norm_num
  by_cases h2 : 2 ∣ n
  · have hmod : n % 2 = 0 := Nat.mod_eq_zero_of_dvd h2
    have hmul : 2 * (n / 2) = n := by omega
    have hmem : (2, n / 2) ∈ n.divisorsAntidiagonal := by
      simp [Nat.mem_divisorsAntidiagonal, hmul, ne_of_gt hn]
    rw [if_pos h2]
    calc
      (∑ p ∈ n.divisorsAntidiagonal,
        if p.1 = 2 then
          (ArithmeticFunction.moebius p.1 : ℝ) *
            (ArithmeticFunction.log p.2 : ℝ)
        else 0) =
          (ArithmeticFunction.moebius 2 : ℝ) *
            (ArithmeticFunction.log (n / 2) : ℝ) := by
        apply Finset.sum_eq_single (2, n / 2)
        · intro p hp hpne
          by_cases hfirst : p.1 = 2
          · have hprod : p.1 * p.2 = n :=
              (Nat.mem_divisorsAntidiagonal.mp hp).1
            have hsnd : p.2 = n / 2 := by
              rw [hfirst] at hprod
              omega
            exact (hpne (Prod.ext hfirst hsnd)).elim
          · simp [hfirst]
        · intro hnot
          exact (hnot hmem).elim
      _ = -Real.log ((n / 2 : ℕ) : ℝ) := by
        rw [hmu2, ArithmeticFunction.log_apply]
        ring
  · rw [if_neg h2]
    apply Finset.sum_eq_zero
    intro p hp
    by_cases hfirst : p.1 = 2
    · have hprod : p.1 * p.2 = n :=
        (Nat.mem_divisorsAntidiagonal.mp hp).1
      have hdvd : 2 ∣ n := by
        refine ⟨p.2, ?_⟩
        simpa [hfirst] using hprod.symm
      exact (h2 hdvd).elim
    · simp [hfirst]

/-- The complete a<3 correction, expressed with NO missing factors and the
literal integrally-indexed logarithm, not a numerical approximation. -/
private theorem lowFactorMobiusLog_eq_boundary
    {n : ℕ} (hn : 0 < n) :
    lowFactorMobiusLog n =
      Real.log (n : ℝ) -
        (if 2 ∣ n then Real.log ((n / 2 : ℕ) : ℝ) else 0) := by
  have hsplit :
      lowFactorMobiusLog n =
        (∑ p ∈ n.divisorsAntidiagonal,
          if p.1 = 1 then
            (ArithmeticFunction.moebius p.1 : ℝ) *
              (ArithmeticFunction.log p.2 : ℝ)
          else 0) +
        (∑ p ∈ n.divisorsAntidiagonal,
          if p.1 = 2 then
            (ArithmeticFunction.moebius p.1 : ℝ) *
              (ArithmeticFunction.log p.2 : ℝ)
          else 0) := by
    unfold lowFactorMobiusLog
    rw [← Finset.sum_add_distrib]
    apply Finset.sum_congr rfl
    intro p hp
    have hp0 : p.1 ≠ 0 :=
      Nat.left_ne_zero_of_mem_divisorsAntidiagonal hp
    by_cases hone : p.1 = 1
    · simp [hone]
    · by_cases htwo : p.1 = 2
      · simp [htwo]
      · have hge : ¬ p.1 < 3 := by omega
        simp [hone, htwo, hge]
  rw [hsplit, firstFactorMobiusLog_eq_log hn,
    secondFactorMobiusLog_eq hn]
  by_cases htwo : 2 ∣ n
  · simp [htwo, sub_eq_add_neg]
  · simp [htwo]

/-- The actual zero-shift correction is the complete missing a=1,2
convolution. No additional source factors have been omitted. -/
theorem anchoredZeroShiftBoundaryTransform_actual
    {X n : ℕ} (hn : n ∈ centeredGreenWindow X) :
    anchoredZeroShiftBoundaryTransform X n
        (fun a => (anchoredMobiusPair a).coefficient) =
      Real.log (n : ℝ) -
        (if 2 ∣ n then Real.log ((n / 2 : ℕ) : ℝ) else 0) := by
  have hnrange := Finset.mem_Ioc.mp hn
  have hnpos : 0 < n := by omega
  calc
    anchoredZeroShiftBoundaryTransform X n
        (fun a => (anchoredMobiusPair a).coefficient) =
      lowFactorMobiusLog n := by
        unfold anchoredZeroShiftBoundaryTransform lowFactorMobiusLog
        apply Finset.sum_congr rfl
        intro p hp
        have hmem := anchoredFactor_mem_source hn hp
        have hapos : 0 < p.1 := by
          have hne := Nat.left_ne_zero_of_mem_divisorsAntidiagonal hp
          omega
        by_cases hsmall : p.1 < 3
        · have hcase : p.1 = 1 ∨ p.1 = 2 := by omega
          have hzero :=
            (anchoredMobiusPair_shift_zero_iff_one_or_two hapos).2 hcase
          simp [hmem, hzero, hsmall,
            anchoredPair_signedCoefficient_eq_moebius hapos]
        · have hnot : (anchoredMobiusPair p.1).h ≠ 0 := by
            intro hzero
            have hcase :=
              (anchoredMobiusPair_shift_zero_iff_one_or_two hapos).1 hzero
            rcases hcase with hcase | hcase <;> omega
          simp [hmem, hnot, hsmall]
    _ = _ := lowFactorMobiusLog_eq_boundary hnpos

/-- MAIN FINITE COMPARISON: retain exactly the genuine positive anchored shifts
and write the complete discarded boundary; the sum is Lambda on the actual
Green half-open dyadic window. -/
theorem vonMangoldt_eq_positiveAnchored_add_boundary
    {X n : ℕ} (hn : n ∈ centeredGreenWindow X) :
    ArithmeticFunction.vonMangoldt n =
      anchoredPositiveShiftDivisorTransform X n
        (fun a => (anchoredMobiusPair a).coefficient) +
      (Real.log (n : ℝ) -
        (if 2 ∣ n then Real.log ((n / 2 : ℕ) : ℝ) else 0)) := by
  have hsplit :=
    anchoredFiniteGreenDivisorTransform_eq_positive_add_boundary
      X n (fun a => (anchoredMobiusPair a).coefficient)
  rw [anchoredFiniteGreenDivisorTransform_actual hn] at hsplit
  rw [anchoredZeroShiftBoundaryTransform_actual hn] at hsplit
  exact hsplit

/-- The discarded boundary is strictly positive at X=2 and n=3, so omitting
it cannot preserve even the pointwise arithmetic coefficient. -/
theorem anchoredZeroShiftBoundary_two_three_pos :
    0 < anchoredZeroShiftBoundaryTransform 2 3
      (fun a => (anchoredMobiusPair a).coefficient) := by
  have hwin : 3 ∈ centeredGreenWindow 2 := by
    norm_num [centeredGreenWindow]
  rw [anchoredZeroShiftBoundaryTransform_actual hwin]
  have hodd : ¬ 2 ∣ (3 : ℕ) := by norm_num
  simp only [hodd, if_false, sub_zero]
  exact Real.log_pos (by norm_num)

/-- The positive-shift source inserted into the exact existing 1/n-weighted
Green coordinate. No sign is forced on its terms. -/
def anchoredPositiveShiftGreenCoordinate
    (X : ℕ) (φ : ℝ → ℂ) : ℂ :=
  ∑ n ∈ centeredGreenWindow X,
    (((anchoredPositiveShiftDivisorTransform X n
        (fun a => (anchoredMobiusPair a).coefficient)) /
          (n : ℝ) : ℝ) : ℂ) *
      φ (centeredGreenLocation X n)

/-- The exact discarded boundary in the same normalization and coordinates. -/
def anchoredZeroShiftBoundaryGreenCoordinate
    (X : ℕ) (φ : ℝ → ℂ) : ℂ :=
  ∑ n ∈ centeredGreenWindow X,
    (((Real.log (n : ℝ) -
        (if 2 ∣ n then Real.log ((n / 2 : ℕ) : ℝ) else 0)) /
          (n : ℝ) : ℝ) : ℂ) *
      φ (centeredGreenLocation X n)

/-- No remainder is hidden: the original Green arithmetic test coordinate
is exactly positive-shift part plus the explicit zero-shift boundary. -/
theorem centeredGreenPrimeCoordinate_eq_positive_add_zeroShift
    (X : ℕ) (φ : ℝ → ℂ) :
    centeredGreenPrimeCoordinate X φ =
      anchoredPositiveShiftGreenCoordinate X φ +
        anchoredZeroShiftBoundaryGreenCoordinate X φ := by
  unfold centeredGreenPrimeCoordinate
    anchoredPositiveShiftGreenCoordinate
    anchoredZeroShiftBoundaryGreenCoordinate
  rw [← Finset.sum_add_distrib]
  apply Finset.sum_congr rfl
  intro n hn
  unfold centeredGreenArithmeticCoefficient
  rw [vonMangoldt_eq_positiveAnchored_add_boundary hn]
  push_cast
  ring

/-- The named historical thin Fourier coordinate consumes the *same*
positive-shift + boundary arithmetic decomposition, with the continuum
background kept separate. -/
theorem thinGreenArithmeticFourierCoordinate_eq_positive_sub_boundary
    (X : ℕ) (k : ℤ) :
    thinGreenArithmeticFourierCoordinate X k =
      greenFourierBackgroundCoordinate k -
        anchoredPositiveShiftGreenCoordinate X (fourierModeValue k) -
        anchoredZeroShiftBoundaryGreenCoordinate X (fourierModeValue k) := by
  unfold thinGreenArithmeticFourierCoordinate
  rw [centeredGreenPrimeCoordinate_eq_positive_add_zeroShift]
  ring

end GRWTSK.RiemannHypothesis.CCC.LogarithmicSampling

#print axioms GRWTSK.RiemannHypothesis.CCC.LogarithmicSampling.anchoredMobiusPair_shift_pos_iff_ge_three
#print axioms GRWTSK.RiemannHypothesis.CCC.LogarithmicSampling.anchoredZeroShiftBoundaryTransform_actual
#print axioms GRWTSK.RiemannHypothesis.CCC.LogarithmicSampling.vonMangoldt_eq_positiveAnchored_add_boundary
#print axioms GRWTSK.RiemannHypothesis.CCC.LogarithmicSampling.anchoredZeroShiftBoundary_two_three_pos
#print axioms GRWTSK.RiemannHypothesis.CCC.LogarithmicSampling.thinGreenArithmeticFourierCoordinate_eq_positive_sub_boundary
