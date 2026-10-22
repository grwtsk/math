/- Copyright (c) 2026 R.A. Jacob Martone. MIT.
Human mathematical direction: R.A. Jacob Martone.
Formalization assistance: OpenAI ChatGPT.
Imported project and Mathlib results retain their original credits/licenses.
Status: SOURCE_DRAFT / NOT_RUN / NOT_KERNEL_AUDITED.
Owners: #405 / #397 / #391 / #388 / #373 / #369 / #366 / #357 /
  #354 / #350 / #347 / #343 / #335 / #334 RH-E02.
-/
import GRWTSK.NumberTheory.Moebius.DyadicMeanMertensTwoPointPrefix
import Mathlib.Algebra.Order.Chebyshev

/-!
# Quadratic mean two-point Möbius-prefix supplier

The normalized `L¹` mean from the preceding module is supplied by a normalized
`L²` budget over the same shift-wise prefix envelopes. This is the natural
finite interface for large-sieve, dispersion, or second-moment estimates.

Every positive shift and every admissible prefix length remain present. The
exact signed shift packet remains the terminal criterion. Absolute values and
squares occur only in this stronger sufficient supplier. No converse from the
mean supplier, the packet, the energy criterion, or RH is claimed.

All proof scripts await exact-head Lean elaboration and transitive trust review.
-/

set_option autoImplicit false
noncomputable section

namespace GRWTSK.RiemannHypothesis.CCC.LogarithmicSampling

open scoped BigOperators

/-- A normalized quadratic mean of shift-wise two-point-prefix envelopes.
The square budget is normalized by the complete right endpoint `2^(j+1)`. -/
def DyadicMertensTwoPointQuadraticEnvelope (j : ℕ) (B : ℝ) : Prop :=
  0 ≤ B ∧
    ∃ U : ℕ → ℝ,
      (∀ h : ℕ, 1 ≤ h → h < 2 ^ (j + 1) →
        MertensTwoPointShiftEnvelope j h (U h)) ∧
      (∑ h ∈ Finset.Ico 1 (2 ^ (j + 1)), (U h) ^ 2) ≤
        B ^ 2 * ((2 ^ (j + 1) : ℕ) : ℝ)

/-- The all-scale quadratic-mean supplier. -/
def SubpolynomialDyadicQuadraticMertensTwoPointPrefix : Prop :=
  ∀ δ : ℝ, 0 < δ → ∃ A : ℝ, 0 ≤ A ∧
    ∀ j : ℕ,
      DyadicMertensTwoPointQuadraticEnvelope j
        (A * (((2 ^ j : ℕ) : ℝ) ^ δ))

/-- One common envelope supplies the quadratic mean by choosing a constant
shift-wise family. -/
theorem dyadicMertensTwoPointQuadraticEnvelope_of_uniform
    {j : ℕ} {U : ℝ}
    (henv : DyadicMertensTwoPointEnvelope j U) :
    DyadicMertensTwoPointQuadraticEnvelope j U := by
  let Y : ℕ := 2 ^ (j + 1)
  have hY : 1 ≤ Y := by
    dsimp [Y]
    positivity
  refine ⟨henv.1, fun _ => U, ?_, ?_⟩
  · intro h hh hhY
    exact ⟨henv.1, fun N hN => henv.2 h N hh hhY hN⟩
  · have hcard : (Finset.Ico 1 Y).card = Y - 1 := by
      rw [Finset.card_Ico]
    rw [show 2 ^ (j + 1) = Y by rfl]
    calc
      (∑ _h ∈ Finset.Ico 1 Y, U ^ 2) =
          (((Finset.Ico 1 Y).card : ℕ) : ℝ) * U ^ 2 := by
        simp only [Finset.sum_const, nsmul_eq_mul, Nat.cast_ofNat]
      _ = (((Y - 1 : ℕ) : ℝ)) * U ^ 2 := by rw [hcard]
      _ ≤ (Y : ℝ) * U ^ 2 := by
        apply mul_le_mul_of_nonneg_right
        · exact_mod_cast Nat.sub_le Y 1
        · exact sq_nonneg U
      _ = U ^ 2 * (Y : ℝ) := by ring

/-- Finite Cauchy--Schwarz converts the normalized quadratic budget into the
normalized `L¹` mean budget with the same scale parameter. -/
theorem dyadicMertensTwoPointMeanEnvelope_of_quadratic
    {j : ℕ} {B : ℝ}
    (henv : DyadicMertensTwoPointQuadraticEnvelope j B) :
    DyadicMertensTwoPointMeanEnvelope j B := by
  let Y : ℕ := 2 ^ (j + 1)
  obtain ⟨hB, U, hshift, hquad⟩ := henv
  have hY : 1 ≤ Y := by
    dsimp [Y]
    positivity
  have hcard : (Finset.Ico 1 Y).card = Y - 1 := by
    rw [Finset.card_Ico]
  have hU : ∀ h ∈ Finset.Ico 1 Y, 0 ≤ U h := by
    intro h hh
    exact (hshift h (Finset.mem_Ico.mp hh).1
      (Finset.mem_Ico.mp hh).2).1
  have hsum_nonneg :
      0 ≤ ∑ h ∈ Finset.Ico 1 Y, U h :=
    Finset.sum_nonneg hU
  have hsumsq_nonneg :
      0 ≤ ∑ h ∈ Finset.Ico 1 Y, (U h) ^ 2 :=
    Finset.sum_nonneg fun h _ => sq_nonneg (U h)
  have hcard_le :
      (((Finset.Ico 1 Y).card : ℕ) : ℝ) ≤ (Y : ℝ) := by
    rw [hcard]
    exact_mod_cast Nat.sub_le Y 1
  have hcs :
      (∑ h ∈ Finset.Ico 1 Y, U h) ^ 2 ≤
        (((Finset.Ico 1 Y).card : ℕ) : ℝ) *
          ∑ h ∈ Finset.Ico 1 Y, (U h) ^ 2 := by
    simpa using
      (sq_sum_le_card_mul_sum_sq
        (s := Finset.Ico 1 Y) (f := U))
  have hquadY :
      (∑ h ∈ Finset.Ico 1 Y, (U h) ^ 2) ≤
        B ^ 2 * (Y : ℝ) := by
    simpa [Y] using hquad
  have hsquare :
      (∑ h ∈ Finset.Ico 1 Y, U h) ^ 2 ≤
        (B * (Y : ℝ)) ^ 2 := by
    calc
      (∑ h ∈ Finset.Ico 1 Y, U h) ^ 2 ≤
          (((Finset.Ico 1 Y).card : ℕ) : ℝ) *
            ∑ h ∈ Finset.Ico 1 Y, (U h) ^ 2 := hcs
      _ ≤ (Y : ℝ) *
            ∑ h ∈ Finset.Ico 1 Y, (U h) ^ 2 := by
        exact mul_le_mul_of_nonneg_right hcard_le hsumsq_nonneg
      _ ≤ (Y : ℝ) * (B ^ 2 * (Y : ℝ)) := by
        exact mul_le_mul_of_nonneg_left hquadY (Nat.cast_nonneg Y)
      _ = (B * (Y : ℝ)) ^ 2 := by ring
  have hBY : 0 ≤ B * (Y : ℝ) :=
    mul_nonneg hB (Nat.cast_nonneg Y)
  have hmean :
      (∑ h ∈ Finset.Ico 1 Y, U h) ≤ B * (Y : ℝ) :=
    (sq_le_sq₀ hsum_nonneg hBY).mp hsquare
  refine ⟨hB, U, ?_, ?_⟩
  · intro h hh hhY
    exact hshift h hh hhY
  · simpa [Y] using hmean

/-- The quadratic mean pays the complete signed packet through the inherited
mean-envelope estimate. -/
theorem abs_weightedMertensDyadicShiftPacket_le_of_quadraticEnvelope
    {j : ℕ} {B : ℝ}
    (henv : DyadicMertensTwoPointQuadraticEnvelope j B) :
    |weightedMertensDyadicShiftPacket j| ≤ 2 * B :=
  abs_weightedMertensDyadicShiftPacket_le_of_meanEnvelope
    (dyadicMertensTwoPointMeanEnvelope_of_quadratic henv)

/-- The preceding uniform supplier is a special case of the quadratic supplier. -/
theorem subpolynomialDyadicQuadraticMertensTwoPointPrefix_of_uniform
    (huniform : SubpolynomialDyadicUniformMertensTwoPointPrefix) :
    SubpolynomialDyadicQuadraticMertensTwoPointPrefix := by
  intro δ hδ
  obtain ⟨A, hA, henv⟩ := huniform δ hδ
  refine ⟨A, hA, ?_⟩
  intro j
  exact dyadicMertensTwoPointQuadraticEnvelope_of_uniform (henv j)

/-- The quadratic supplier implies the normalized `L¹` mean supplier. -/
theorem subpolynomialDyadicMeanMertensTwoPointPrefix_of_quadratic
    (hquadratic : SubpolynomialDyadicQuadraticMertensTwoPointPrefix) :
    SubpolynomialDyadicMeanMertensTwoPointPrefix := by
  intro δ hδ
  obtain ⟨A, hA, henv⟩ := hquadratic δ hδ
  refine ⟨A, hA, ?_⟩
  intro j
  exact dyadicMertensTwoPointMeanEnvelope_of_quadratic (henv j)

/-- The all-scale quadratic mean supplies the exact signed shift packet. -/
theorem subpolynomialDyadicMertensShiftPacket_of_quadraticTwoPointPrefix
    (hquadratic : SubpolynomialDyadicQuadraticMertensTwoPointPrefix) :
    SubpolynomialDyadicMertensShiftPacket :=
  subpolynomialDyadicMertensShiftPacket_of_meanTwoPointPrefix
    (subpolynomialDyadicMeanMertensTwoPointPrefix_of_quadratic hquadratic)

/-- Conditional terminal return through the exact signed packet. -/
theorem riemannHypothesis_of_subpolynomialDyadicQuadraticMertensTwoPointPrefix
    (hquadratic : SubpolynomialDyadicQuadraticMertensTwoPointPrefix) :
    _root_.RiemannHypothesis :=
  riemannHypothesis_of_subpolynomialDyadicMertensShiftPacket
    (subpolynomialDyadicMertensShiftPacket_of_quadraticTwoPointPrefix hquadratic)

end GRWTSK.RiemannHypothesis.CCC.LogarithmicSampling

#print axioms GRWTSK.RiemannHypothesis.CCC.LogarithmicSampling.dyadicMertensTwoPointMeanEnvelope_of_quadratic
#print axioms GRWTSK.RiemannHypothesis.CCC.LogarithmicSampling.subpolynomialDyadicMertensShiftPacket_of_quadraticTwoPointPrefix
#print axioms GRWTSK.RiemannHypothesis.CCC.LogarithmicSampling.riemannHypothesis_of_subpolynomialDyadicQuadraticMertensTwoPointPrefix
