/- Copyright (c) 2026 grwtsk. MIT.
Imported results retain their upstream attribution and licenses. -/
import GRWTSK.NumberTheory.ElementaryNumberTheory.ArithmeticFunctionsRelatedNumbersInversionFormulas.MertensSignedAbelReadoutGeometry
import GRWTSK.NumberTheory.ElementaryNumberTheory.ArithmeticFunctionsRelatedNumbersInversionFormulas.MertensSignedAbelFiniteRows

/-!
# Finite coefficients of the actual arithmetic operator

The matrix entries are responses to coordinate inputs of the existing operator;
they retain every prime guard, depth, prefix and kernel coefficient. The signed
row is formed BEFORE taking an absolute value. This yields exact reconstruction,
positive row masses, and input-error estimates with explicit amplification.
No small row norm, approximate input, or arithmetic cancellation is supplied.
SOURCE_PROOF_CANDIDATE / NOT_RUN / NOT_KERNEL_AUDITED.
-/

set_option autoImplicit false
noncomputable section
namespace GRWTSK.NumberTheory.Moebius.MertensSignedAbelCoefficientKernel

open scoped BigOperators
open GRWTSK.RiemannHypothesis.CCC
open GRWTSK.RiemannHypothesis.CCC.LogarithmicSampling
open GRWTSK.NumberTheory.Moebius.MertensSignedAbelBoundaryCore
open GRWTSK.NumberTheory.Moebius.MertensSignedAbelPrimeExtraction
open GRWTSK.NumberTheory.Moebius.MertensSignedAbelPrimeIncidences
open GRWTSK.NumberTheory.Moebius.MertensSignedAbelTripleOperator
open GRWTSK.NumberTheory.Moebius.MertensSignedAbelReadoutGeometry

def sourceIndices (j : ℕ) : Finset ℕ := Finset.Icc 1 (2 ^ (j + 1))

def coordinateInput (a n : ℕ) : ℝ :=
  GRWTSK.NumberTheory.Moebius.MertensSignedAbelFiniteRows.sourceAtom a n

/-- The existing arithmetic operator, not a source-fitted replacement matrix. -/
def coefficient (width : ℕ → ℕ) (j v a : ℕ) : ℝ :=
  GRWTSK.NumberTheory.Moebius.MertensSignedAbelFiniteRows.responseRow width j v a

def rowMass (width : ℕ → ℕ) (j v : ℕ) : ℝ :=
  ∑ a ∈ sourceIndices j, coefficient width j v a

def signedCoefficient (width : ℕ → ℕ) (j a : ℕ) : ℝ :=
  coefficient width j 1 a - coefficient width j 2 a - coefficient width j 3 a

def signedRowMass (width : ℕ → ℕ) (j : ℕ) : ℝ :=
  ∑ a ∈ sourceIndices j, |signedCoefficient width j a|

/-- Reuse the established finite-row positivity, rather than a parallel proof. -/
theorem cofactorResponse_nonneg (width : ℕ → ℕ) (j v : ℕ) (f : ℕ → ℝ)
    (hf : ∀ a : ℕ, 0 ≤ f a) : 0 ≤ cofactorResponse width j v f :=
  GRWTSK.NumberTheory.Moebius.MertensSignedAbelFiniteRows.cofactorResponse_nonneg width j v f hf

theorem coefficient_nonneg (width : ℕ → ℕ) (j v a : ℕ) :
    0 ≤ coefficient width j v a :=
  GRWTSK.NumberTheory.Moebius.MertensSignedAbelFiniteRows.responseRow_nonneg width j v a

theorem response_finset_sum (width : ℕ → ℕ) (j v : ℕ)
    (S : Finset ℕ) (F : ℕ → ℕ → ℝ) :
    cofactorResponse width j v (fun n => ∑ a ∈ S, F a n) =
      ∑ a ∈ S, cofactorResponse width j v (F a) :=
  GRWTSK.NumberTheory.Moebius.MertensSignedAbelFiniteRows.cofactorResponse_finset_sum width j v S F

/-- Exact reuse of the established row representation, with definitionally identical coefficients. -/
theorem response_eq_coefficients (width : ℕ → ℕ) (j v : ℕ) (f : ℕ → ℝ) :
    cofactorResponse width j v f =
      ∑ a ∈ sourceIndices j, coefficient width j v a * f a :=
  GRWTSK.NumberTheory.Moebius.MertensSignedAbelFiniteRows.cofactorResponse_eq_row_sum width j v f

/-- Basis coordinates outside the finite source are genuinely unread. -/
theorem coefficient_zero_outside (width : ℕ → ℕ) (j v a : ℕ)
    (ha : a ∉ sourceIndices j) : coefficient width j v a = 0 := by
  change cofactorResponse width j v (coordinateInput a) = 0
  calc
    _ = cofactorResponse width j v (fun _ => 0) := by
      apply cofactorResponse_congr_on_source
      intro n hn1 hnY
      have hna : n ≠ a := by
        intro h
        apply ha
        rw [← h]
        exact Finset.mem_Icc.mpr ⟨hn1, hnY⟩
      simp [coordinateInput, GRWTSK.NumberTheory.Moebius.MertensSignedAbelFiniteRows.sourceAtom, hna]
    _ = 0 := cofactorResponse_zero width j v

theorem rowMass_eq_constant_response (width : ℕ → ℕ) (j v : ℕ) :
    rowMass width j v = cofactorResponse width j v (fun _ => 1) := by
  rw [response_eq_coefficients]
  simp [rowMass]

theorem rowMass_nonneg (width : ℕ → ℕ) (j v : ℕ) : 0 ≤ rowMass width j v :=
  Finset.sum_nonneg (fun a _ => coefficient_nonneg width j v a)

theorem signedReadout_eq_coefficients (width : ℕ → ℕ) (j : ℕ) (f : ℕ → ℝ) :
    signedReadout (responseProfile width j f) =
      ∑ a ∈ sourceIndices j, signedCoefficient width j a * f a := by
  unfold signedReadout responseProfile
  rw [response_eq_coefficients, response_eq_coefficients, response_eq_coefficients,
    ← Finset.sum_sub_distrib, ← Finset.sum_sub_distrib]
  apply Finset.sum_congr rfl
  intro a _
  unfold signedCoefficient
  ring

/-- Combine the three rows before taking absolute values, preserving cross-row cancellation. -/
theorem signed_error_le_weighted_input_error (width : ℕ → ℕ) (j : ℕ) (f g : ℕ → ℝ) :
    |signedReadout (responseProfile width j f) - signedReadout (responseProfile width j g)| ≤
      ∑ a ∈ sourceIndices j, |signedCoefficient width j a| * |f a - g a| := by
  rw [signedReadout_eq_coefficients, signedReadout_eq_coefficients, ← Finset.sum_sub_distrib]
  calc
    _ ≤ ∑ a ∈ sourceIndices j,
        |signedCoefficient width j a * f a - signedCoefficient width j a * g a| :=
      Finset.abs_sum_le_sum_abs _ _
    _ = _ := by
      apply Finset.sum_congr rfl
      intro a _
      rw [← mul_sub, abs_mul]

/-- The amplification is the actual signed-row mass, not an assumed unit constant. -/
theorem signed_error_le_uniform (width : ℕ → ℕ) (j : ℕ) (f g : ℕ → ℝ)
    {η : ℝ} (hfg : ∀ a ∈ sourceIndices j, |f a - g a| ≤ η) :
    |signedReadout (responseProfile width j f) - signedReadout (responseProfile width j g)| ≤
      signedRowMass width j * η := by
  apply (signed_error_le_weighted_input_error width j f g).trans
  calc
    _ ≤ ∑ a ∈ sourceIndices j, |signedCoefficient width j a| * η :=
      Finset.sum_le_sum (fun a ha => mul_le_mul_of_nonneg_left (hfg a ha) (abs_nonneg _))
    _ = _ := by simp only [signedRowMass, Finset.sum_mul]

/-- A one-bounded input saturating the actual signed-row mass. It is not Mobius. -/
def extremalInput (width : ℕ → ℕ) (j a : ℕ) : ℝ :=
  if 0 ≤ signedCoefficient width j a then 1 else -1

theorem extremalInput_abs (width : ℕ → ℕ) (j a : ℕ) :
    |extremalInput width j a| = 1 := by
  unfold extremalInput
  split_ifs <;> norm_num

/-- Sharpness of the coefficient-only operator allowance; arithmetic must improve on this. -/
theorem extremal_readout_eq_signedRowMass (width : ℕ → ℕ) (j : ℕ) :
    signedReadout (responseProfile width j (extremalInput width j)) = signedRowMass width j := by
  rw [signedReadout_eq_coefficients]
  unfold signedRowMass
  apply Finset.sum_congr rfl
  intro a _
  unfold extremalInput
  by_cases ha : 0 ≤ signedCoefficient width j a
  · rw [if_pos ha, mul_one, abs_of_nonneg ha]
  · rw [if_neg ha, abs_of_nonpos (lt_of_not_ge ha).le]
    ring

/-- No uniform one-bounded-input bound smaller than this mass is possible. -/
theorem signedRowMass_le_any_uniform_bound (width : ℕ → ℕ) (j : ℕ) (C : ℝ)
    (hC : ∀ f : ℕ → ℝ, (∀ a : ℕ, |f a| ≤ 1) →
      |signedReadout (responseProfile width j f)| ≤ C) : signedRowMass width j ≤ C := by
  have h := hC (extremalInput width j) (fun a => (extremalInput_abs width j a).le)
  rw [extremal_readout_eq_signedRowMass] at h
  exact (le_abs_self _).trans h

/-- Exact comparison from an input approximation all the way to the original packet. -/
theorem packet_input_comparison (j : ℕ) (g : ℕ → ℝ) :
    |weightedMertensDyadicSignedAbelDepthPacket j -
      (headPacket sqrtWidth j - signedReadout (responseProfile sqrtWidth j g) / 6)| ≤
      2 + (∑ a ∈ sourceIndices j, |signedCoefficient sqrtWidth j a| *
        |moebiusReal a - g a|) / 6 := by
  exact abs_packet_sub_readout_model_le j (responseProfile sqrtWidth j g)
    (signed_error_le_weighted_input_error sqrtWidth j moebiusReal g)

end GRWTSK.NumberTheory.Moebius.MertensSignedAbelCoefficientKernel
