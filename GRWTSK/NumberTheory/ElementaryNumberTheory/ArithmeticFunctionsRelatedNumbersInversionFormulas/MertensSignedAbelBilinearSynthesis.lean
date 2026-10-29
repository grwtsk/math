/- Copyright (c) 2026 grwtsk. MIT.
Imported GRWTSK and Mathlib results retain their upstream attribution/licenses. -/
import GRWTSK.NumberTheory.ElementaryNumberTheory.ArithmeticFunctionsRelatedNumbersInversionFormulas.MertensSignedAbelRamareCofactor
import GRWTSK.RealFunctions.BilinearWindowSynthesis

/-!
# Source-exact bilinear phase synthesis for the signed Abel packet

The quotient-only coefficient is fixed before prime and shift selection.
A sufficient exclusive cofactor cutoff is established from the actual band.
The raw prefix is exactly the real part of the finite bilinear shifted-input
operator. Finite additive phases separate the prime/cofactor product with
its origin phase intact. The unsifted and repeated-prime contributions are
retained in the final model. Only the already established two-unit boundary
allowance is used. Approximation and frequency bounds remain hypotheses.
No growing-family minor-arc, major-arc, Fourier inversion, or RH-strength
cancellation theorem is claimed. No OAI analytic module is imported.
SOURCE_PROOF_CANDIDATE / NOT_RUN / NOT_KERNEL_AUDITED.
-/
set_option autoImplicit false
noncomputable section
namespace GRWTSK.NumberTheory.Moebius.MertensSignedAbelBilinearSynthesis
open scoped BigOperators
open GRWTSK.RiemannHypothesis.CCC
open GRWTSK.RiemannHypothesis.CCC.LogarithmicSampling
open GRWTSK.Analysis.FiniteSums.BilinearWindowSynthesis
open GRWTSK.NumberTheory.Moebius.FinitePrimeDivisorExtraction
open GRWTSK.NumberTheory.Moebius.MertensSignedAbelBoundaryCore
open GRWTSK.NumberTheory.Moebius.MertensSignedAbelPrimeExtraction
open GRWTSK.NumberTheory.Moebius.MertensSignedAbelDyadicPrimeRange
open GRWTSK.NumberTheory.Moebius.MertensSignedAbelBandMultiplicity
open GRWTSK.NumberTheory.Moebius.MertensSignedAbelRamareCofactor

/-- A common EXCLUSIVE cofactor cutoff for every supported prime, shift and depth. -/
def cofactorCutoff (j : ℕ) : ℕ :=
  (2 ^ (j + 1) - 1) / (bandScale j + 1) + 1

theorem quotient_lt_cofactorCutoff {j p h N : ℕ} (hp : p ∈ primeBand j)
    (hw : N + h < 2 ^ (j + 1)) : (N + h) / p < cofactorCutoff j := by
  have hb := quotient_window_le_band hp hw
  unfold cofactorCutoff
  omega

/-- The upstream minor-arc sieve excludes 2; the actual band meets this after two scales. -/
theorem primeBand_ne_two {j p : ℕ} (hj : 2 ≤ j) (hp : p ∈ primeBand j) : p ≠ 2 := by
  have he : 1 ≤ (j + 1) / 3 := by omega
  have hpow := Nat.pow_le_pow_right (by decide : 0 < (2 : ℕ)) he
  have hQ : 2 ≤ bandScale j := by simpa only [pow_one, bandScale] using hpow
  have hlow := (primeBand_bounds hp).1
  omega

/-- Concrete prime range hypotheses, not the missing frequency or cancellation hypotheses. -/
theorem primeBand_sieve_range {j p : ℕ} (hj : 2 ≤ j) (hp : p ∈ primeBand j) :
    Nat.Prime p ∧ p ≠ 2 ∧ (bandScale j : ℝ) ≤ (p : ℝ) ∧ p ≤ 2 * bandScale j := by
  refine ⟨primeBand_prime hp, primeBand_ne_two hj hp, ?_, (primeBand_bounds hp).2⟩
  exact_mod_cast (show bandScale j ≤ p from Nat.le_trans (Nat.le_succ _) (primeBand_bounds hp).1)

/-- Literal real-to-complex scalar alignment, not a new arithmetic coefficient. -/
def complexCofactor (P : Finset ℕ) (m : ℕ) : ℂ := (ramareCofactor P m : ℂ)

theorem complexCofactor_oneBounded (P : Finset ℕ) (m : ℕ) :
    ‖complexCofactor P m‖ ≤ 1 := by
  simpa only [complexCofactor, Complex.norm_real, Real.norm_eq_abs] using
    ramareCofactor_abs_le_one P m

/-- Full source window matching; no multiplicativity or approximation hypothesis. -/
theorem ramarePrefix_re_eq_shiftedWindow (P : Finset ℕ)
    (hP : ∀ p ∈ P, Nat.Prime p) (M h N : ℕ)
    (hM : ∀ p ∈ P, (N + h) / p < M) (f : ℕ → ℂ) :
    ramarePrefix P h N (fun n => (f n).re) =
      (shiftedWindow P M N 1 (complexCofactor P) (fun _ => 1) f h).re := by
  unfold ramarePrefix shiftedWindow complexCofactor
  simp only [one_mul, mul_one, Complex.re_sum, Complex.mul_re,
    Complex.ofReal_re, Complex.ofReal_im, zero_mul, sub_zero]
  apply Finset.sum_congr rfl
  intro p hp
  rw [windowInterval_eq_filtered M p h N (hP p hp).pos (hM p hp), Finset.sum_filter]
  apply Finset.sum_congr rfl
  intro m _
  split_ifs <;> ring

/-- Per-window error allowance uses the actual cofactor measure, not cardinality alone. -/
theorem abs_ramarePrefix_le_windowMass (P : Finset ℕ)
    (hP : ∀ p ∈ P, Nat.Prime p) (M h N : ℕ)
    (hM : ∀ p ∈ P, (N + h) / p < M) (f : ℕ → ℝ) (ε : ℝ)
    (hf : ∀ n : ℕ, 1 ≤ n → n ≤ N → |f n| ≤ ε) :
    |ramarePrefix P h N f| ≤
      ε * windowMass P M N 1 (complexCofactor P) (fun _ => 1) h := by
  have he := ramarePrefix_re_eq_shiftedWindow P hP M h N hM (fun n => (f n : ℂ))
  simp only [Complex.ofReal_re] at he
  rw [he]
  exact (Complex.abs_re_le_norm _).trans
    (norm_shiftedWindow_le_mass P M N 1 (by decide) (fun p hp => (hP p hp).pos)
      (complexCofactor P) (fun _ => 1) (fun n => (f n : ℂ)) h ε
      (by intro n hn hnN; simpa using hf n hn hnN))

/-- All frequencies and their shift phases are retained before any norm comparison. -/
def phasePrefix {ι : Type*} (S : Finset ι) (b : ι → ℂ) (α : ι → ℝ)
    (P : Finset ℕ) (M h N : ℕ) : ℝ :=
  (∑ i ∈ S, b i * phase (-α i) h *
    bilinearWindow P M N 1 (complexCofactor P) (fun _ => 1) (α i) h).re

theorem phasePrefix_eq_ramare_synthesis {ι : Type*}
    (S : Finset ι) (b : ι → ℂ) (α : ι → ℝ) (P : Finset ℕ)
    (hP : ∀ p ∈ P, Nat.Prime p) (M h N : ℕ)
    (hM : ∀ p ∈ P, (N + h) / p < M) :
    phasePrefix S b α P M h N =
      ramarePrefix P h N (fun n => (phaseSynthesis S b α n).re) := by
  rw [ramarePrefix_re_eq_shiftedWindow P hP M h N hM,
    shiftedWindow_synthesis S b α P M N 1 (by decide) (fun p hp => (hP p hp).pos)]
  simp only [Nat.cast_one, mul_one, phasePrefix]

theorem ramarePrefix_sub (P : Finset ℕ) (h N : ℕ) (f g : ℕ → ℝ) :
    ramarePrefix P h N (fun n => f n - g n) =
      ramarePrefix P h N f - ramarePrefix P h N g := by
  unfold ramarePrefix
  rw [← Finset.sum_sub_distrib]
  apply Finset.sum_congr rfl
  intro p _
  rw [← Finset.sum_sub_distrib]
  apply Finset.sum_congr rfl
  intro m _
  split_ifs <;> ring

/-- Actual Mobius input minus the finite phase model, with no assumed small residual. -/
theorem raw_minus_phase_eq_residual {ι : Type*}
    (S : Finset ι) (b : ι → ℂ) (α : ι → ℝ) (P : Finset ℕ)
    (hP : ∀ p ∈ P, Nat.Prime p) (M h N : ℕ)
    (hM : ∀ p ∈ P, (N + h) / p < M) :
    ramarePrefix P h N moebiusReal - phasePrefix S b α P M h N =
      ramarePrefix P h N (fun n => moebiusReal n - (phaseSynthesis S b α n).re) := by
  rw [phasePrefix_eq_ramare_synthesis S b α P hP M h N hM, ramarePrefix_sub]

/-- A genuine input approximation supplies a precise weighted source error. -/
theorem abs_raw_minus_phase_le {ι : Type*}
    (S : Finset ι) (b : ι → ℂ) (α : ι → ℝ) (P : Finset ℕ)
    (hP : ∀ p ∈ P, Nat.Prime p) (M h N : ℕ)
    (hM : ∀ p ∈ P, (N + h) / p < M) (ε : ℝ)
    (hf : ∀ n : ℕ, 1 ≤ n → n ≤ N →
      |moebiusReal n - (phaseSynthesis S b α n).re| ≤ ε) :
    |ramarePrefix P h N moebiusReal - phasePrefix S b α P M h N| ≤
      ε * windowMass P M N 1 (complexCofactor P) (fun _ => 1) h := by
  rw [raw_minus_phase_eq_residual S b α P hP M h N hM]
  exact abs_ramarePrefix_le_windowMass P hP M h N hM _ ε hf

/-- Minor-arc bounds can be supplied per frequency; omitted frequencies are not free. -/
theorem abs_phasePrefix_le {ι : Type*}
    (S : Finset ι) (b : ι → ℂ) (α : ι → ℝ) (P : Finset ℕ)
    (M h N : ℕ) (E : ι → ℝ)
    (hE : ∀ i ∈ S,
      ‖bilinearWindow P M N 1 (complexCofactor P) (fun _ => 1) (α i) h‖ ≤ E i) :
    |phasePrefix S b α P M h N| ≤ ∑ i ∈ S, ‖b i‖ * E i := by
  unfold phasePrefix
  apply (Complex.abs_re_le_norm _).trans
  apply (norm_sum_le _ _).trans
  apply Finset.sum_le_sum
  intro i hi
  simp only [norm_mul, norm_phase, mul_one]
  exact mul_le_mul_of_nonneg_left (hE i hi) (norm_nonneg _)

/-- Preserve the full kernel-weighted envelope, rather than taking an early supremum. -/
theorem abs_bulkPrefixFunctional_le_envelope (width : ℕ → ℕ) (j : ℕ)
    (F E : ℕ → ℕ → ℝ)
    (hFE : ∀ h N : ℕ, 1 ≤ h → N + h < 2 ^ (j + 1) → |F h N| ≤ E h N) :
    |bulkPrefixFunctional width j F| ≤ bulkPrefixFunctional width j E := by
  unfold bulkPrefixFunctional
  rw [abs_mul, abs_of_nonneg (show 0 ≤ 2 * (((2 ^ (j + 1) : ℕ) : ℝ))⁻¹ by positivity)]
  apply mul_le_mul_of_nonneg_left _ (by positivity)
  apply (Finset.abs_sum_le_sum_abs _ _).trans
  apply Finset.sum_le_sum
  intro t _
  split_ifs with ht
  · apply (Finset.abs_sum_le_sum_abs _ _).trans
    apply Finset.sum_le_sum
    intro h _
    by_cases hs : 1 ≤ h ∧ h < 2 ^ (j + 1) ∧ t < 2 ^ (j + 1) - h - 1
    · rw [abs_mul, abs_of_nonneg (normalizedSignedAbelShiftKernel_nonneg j t h)]
      exact mul_le_mul_of_nonneg_left (hFE h (t + 1) hs.1 (by omega))
        (normalizedSignedAbelShiftKernel_nonneg j t h)
    · simp [normalizedSignedAbelShiftKernel, hs]
  · simp

/-- Retain both unsifted and repeated-prime channels exactly in the complete model. -/
def bilinearPacketModel {ι : Type*} (S : Finset ι) (b : ι → ℂ) (α : ι → ℝ)
    (width : ℕ → ℕ) (j : ℕ) : ℝ :=
  bulkPrefixFunctional width j (unsiftedPrefix (primeBand j)) -
  bulkPrefixFunctional width j (phasePrefix S b α (primeBand j) (cofactorCutoff j)) +
  bulkPrefixFunctional width j (fun h N => ramareRepeatedPrefix (primeBand j) h N moebiusReal)

/-- The whole source error is exactly the raw-prefix synthesis error with a minus sign. -/
theorem bulk_sub_bilinearPacketModel {ι : Type*}
    (S : Finset ι) (b : ι → ℂ) (α : ι → ℝ) (width : ℕ → ℕ) (j : ℕ) :
    bulkPacket width j - bilinearPacketModel S b α width j =
      -bulkPrefixFunctional width j (fun h N =>
        ramarePrefix (primeBand j) h N moebiusReal -
          phasePrefix S b α (primeBand j) (cofactorCutoff j) h N) := by
  rw [bulk_eq_ramare]
  unfold bilinearPacketModel
  rw [bulkPrefixFunctional_sub]
  ring

/-- Full-packet comparison with the actual depth/shift envelope and old boundary allowance. -/
theorem full_packet_bilinear_comparison {ι : Type*}
    (S : Finset ι) (b : ι → ℂ) (α : ι → ℝ) (j : ℕ) (E : ℕ → ℕ → ℝ)
    (hE : ∀ h N : ℕ, 1 ≤ h → N + h < 2 ^ (j + 1) →
      |ramarePrefix (primeBand j) h N moebiusReal -
        phasePrefix S b α (primeBand j) (cofactorCutoff j) h N| ≤ E h N) :
    |weightedMertensDyadicSignedAbelDepthPacket j - bilinearPacketModel S b α sqrtWidth j| ≤
      2 + bulkPrefixFunctional sqrtWidth j E := by
  have hb : |bulkPacket sqrtWidth j - bilinearPacketModel S b α sqrtWidth j| ≤
      bulkPrefixFunctional sqrtWidth j E := by
    rw [bulk_sub_bilinearPacketModel, abs_neg]
    exact abs_bulkPrefixFunctional_le_envelope sqrtWidth j _ E hE
  calc
    _ = |(weightedMertensDyadicSignedAbelDepthPacket j - bulkPacket sqrtWidth j) +
        (bulkPacket sqrtWidth j - bilinearPacketModel S b α sqrtWidth j)| := by congr 1; ring
    _ ≤ _ := (abs_add _ _).trans (add_le_add (abs_packet_sub_sqrt_bulk_le_two j) hb)

/-- Fully composed input-approximation handoff, keeping each source-window allowance. -/
theorem full_packet_phase_input_comparison {ι : Type*}
    (S : Finset ι) (b : ι → ℂ) (α : ι → ℝ) (j : ℕ) (η : ℕ → ℕ → ℝ)
    (happrox : ∀ h N : ℕ, 1 ≤ h → N + h < 2 ^ (j + 1) →
      ∀ n : ℕ, 1 ≤ n → n ≤ N →
        |moebiusReal n - (phaseSynthesis S b α n).re| ≤ η h N) :
    |weightedMertensDyadicSignedAbelDepthPacket j - bilinearPacketModel S b α sqrtWidth j| ≤
      2 + bulkPrefixFunctional sqrtWidth j (fun h N => η h N *
        windowMass (primeBand j) (cofactorCutoff j) N 1
          (complexCofactor (primeBand j)) (fun _ => 1) h) := by
  apply full_packet_bilinear_comparison
  intro h N hh hw
  exact abs_raw_minus_phase_le S b α (primeBand j) (fun _ hp => primeBand_prime hp)
    (cofactorCutoff j) h N (fun _ hp => quotient_lt_cofactorCutoff hp hw)
    (η h N) (happrox h N hh hw)

end GRWTSK.NumberTheory.Moebius.MertensSignedAbelBilinearSynthesis
