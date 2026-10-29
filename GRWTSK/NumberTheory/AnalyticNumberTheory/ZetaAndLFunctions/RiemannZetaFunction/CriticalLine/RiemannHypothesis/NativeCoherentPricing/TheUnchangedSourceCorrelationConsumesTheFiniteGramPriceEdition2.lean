import FormalResearch.RiemannHypothesis.Conversation.WeightedGramPricing
import FormalResearch.RiemannHypothesis.SourceCorrelationCurvatureFive
import FormalResearch.RiemannHypothesis.Conversation.ShellArithmetic
import FormalResearch.RiemannHypothesis.Conversation.MatrixNormPricing

/-!
# The unchanged source correlation consumes the finite Gram price

The source's checked unit norm, zero first derivative and global Taylor bound
supply actual translation coherence 319/384 on every log-width-one shell at
A>=8. This is consumed by the finite weighted-Gram decoder theorem. A matrix
quadratic upper bound and anchor bound remain explicit; the next arithmetic
shell mass estimate is independent of a bound for the signed source.

Source: audited RH conversation Batch 3, BL03-05. Human programme direction:
grwtsk contributors. Local source adapter: OpenAI Codex. Existing source
correlation declarations are directly consumed at their qualified identity.
-/
set_option autoImplicit false
namespace GRWTSK.RiemannHypothesis.Conversation.NativeCoherentPricing
open WeightedGramPricing MatrixNormPricing
open FormalResearch.RiemannHypothesis.SourcePairing
open FormalResearch.RiemannHypothesis.SourceCorrelationCurvature
open FormalResearch.RiemannHypothesis.SourceCorrelationCurvatureFive
open FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.Realization
open FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.CorrelationRegularity
open FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.BridgeNormalization
open scoped BigOperators
noncomputable section

theorem actual_correlation_anchor {A : ℝ} (hA : 1 ≤ A) :
    sourceCorrelation explicitSecondDerivative A 0 = 1 := by
  simpa only [sourceCorrelation, sub_zero, pow_two] using normalized_square_integral A hA

theorem actual_coherence_of_distance_le_one {A t : ℝ} (hA : 8 ≤ A) (ht : |t| ≤ 1) :
    (319 / 384 : ℝ) ≤ sourceCorrelation explicitSecondDerivative A t := by
  have hA1 : 1 ≤ A := by linarith
  have hAp : 0 < A := by linarith
  have hsqA : 64 ≤ A ^ 2 := by nlinarith
  have hsq : t ^ 2 ≤ 1 := by nlinarith [(abs_le.mp ht).1, (abs_le.mp ht).2]
  have hcoef : 162826 / (7623 * A ^ 2) ≤ (65 / 192 : ℝ) := by
    apply (div_le_iff₀ (by positivity : 0 < 7623 * A ^ 2)).mpr
    nlinarith
  have h := sourceCorrelation_linear_taylor_bound hA1 0 t
  simp only [zero_add, actual_correlation_anchor hA1, sourceCorrelation_deriv_zero hAp,
    mul_zero, sub_zero] at h
  have hprice : 162826 / (7623 * A ^ 2) * t ^ 2 / 2 ≤ (65 / 384 : ℝ) := by
    have h := mul_le_mul hcoef hsq (sq_nonneg t) (by norm_num : (0 : ℝ) ≤ 65 / 192)
    linarith
  have hleft := (abs_le.mp (h.trans hprice)).1
  linarith

def nativeKernel (A : ℝ) (t : ℕ → ℝ) : ℕ → ℕ → ℝ :=
  fun n m ↦ sourceCorrelation explicitSecondDerivative A (t n - t m)

theorem actual_shell_prices_weight_mass (s : Finset ℕ) (b : ℕ → ℝ)
    (t : ℕ → ℝ) {A L : ℝ} (hA : 8 ≤ A)
    (hwidth : ∀ n ∈ s, ∀ m ∈ s, |t n - t m| ≤ 1)
    (hL : 0 ≤ L)
    (hupper : shellForm s b (nativeKernel A t) ≤ L * shellMass s b) :
    (319 / 384 : ℝ) * shellMass s b ≤ L := by
  apply coherent_shell_quadratic_upper_prices_mass s b (nativeKernel A t) hL _ hupper
  intro n hn m hm
  exact actual_coherence_of_distance_le_one hA (hwidth n hn m hm)

theorem actual_coherent_decoder_payment (s : Finset ℕ) (b c : ℕ → ℝ)
    (t : ℕ → ℝ) {A b₀ L : ℝ} (hA : 8 ≤ A)
    (hwidth : ∀ n ∈ s, ∀ m ∈ s, |t n - t m| ≤ 1)
    (hb₀ : 0 < b₀) (hb : ∀ n ∈ s, 0 < b n)
    (hanchor : b₀ ^ 2 ≤ L)
    (hupper : shellForm s b (nativeKernel A t) ≤ L * shellMass s b) :
    Real.sqrt (319 / 384 : ℝ) * (∑ n ∈ s, |c n|) ≤
      L * Real.sqrt (∑ n ∈ s, (c n / (b₀ * b n)) ^ 2) := by
  apply positive_diagonal_decoder_payment s b c hb₀ hb (by norm_num) hanchor
  exact actual_shell_prices_weight_mass s b t hA hwidth ((sq_nonneg b₀).trans hanchor) hupper

def actualShell (A : ℝ) : Finset ℕ :=
  ShellArithmetic.shell (Real.exp (2 * A - 2)) (Real.exp (2 * A - 1))

theorem actual_shell_log_width {A : ℝ} {n m : ℕ}
    (hn : n ∈ actualShell A) (hm : m ∈ actualShell A) :
    |Real.log n - Real.log m| ≤ 1 := by
  have hlog (k : ℕ) (hk : k ∈ actualShell A) :
      2 * A - 2 < Real.log k ∧ Real.log k ≤ 2 * A - 1 := by
    obtain ⟨hkl, hku⟩ := Finset.mem_Ioc.mp hk
    have hlo : Real.exp (2 * A - 2) < (k : ℝ) :=
      (Nat.floor_lt (Real.exp_pos _).le).mp hkl
    have hhi : (k : ℝ) ≤ Real.exp (2 * A - 1) :=
      (show (k : ℝ) ≤ (⌊Real.exp (2 * A - 1)⌋₊ : ℝ) by exact_mod_cast hku).trans
        (Nat.floor_le (Real.exp_pos _).le)
    have hl := Real.log_lt_log (Real.exp_pos _) hlo
    have hu := Real.log_le_log ((Real.exp_pos _).trans hlo) hhi
    rw [Real.log_exp] at hl hu
    exact ⟨hl, hu⟩
  have hnlog := hlog n hn
  have hmlog := hlog m hm
  exact abs_le.mpr ⟨by linarith, by linarith⟩

/-- Absolute coefficient error is explicitly deducted before the coherent decoder is priced. -/
theorem actual_native_replacement_decoder_price (b ĉ : ℕ → ℝ) {A b₀ L : ℝ}
    (hA : 8 ≤ A) (hb₀ : 0 < b₀) (hb : ∀ n ∈ actualShell A, 0 < b n)
    (hanchor : b₀ ^ 2 ≤ L)
    (hupper : shellForm (actualShell A) b (nativeKernel A (fun n ↦ Real.log n)) ≤
      L * shellMass (actualShell A) b) :
    Real.sqrt (319 / 384 : ℝ) *
      ((Real.exp (-1) - Real.exp (-2)) * Real.exp (1 / 2) * Real.exp A / 12 -
        (∑ n ∈ actualShell A, |ShellArithmetic.coefficient n - ĉ n|)) ≤
      L * Real.sqrt (∑ n ∈ actualShell A, (ĉ n / (b₀ * b n)) ^ 2) := by
  have hprice := actual_coherent_decoder_payment (actualShell A) b ĉ
    (fun n ↦ Real.log n) hA (fun n hn m hm ↦ actual_shell_log_width hn hm)
    hb₀ hb hanchor hupper
  have hmass := ShellArithmetic.actual_exponential_shell_mass hA
  change (Real.exp (-1) - Real.exp (-2)) * Real.exp (1 / 2) * Real.exp A / 12 ≤
    ∑ n ∈ actualShell A, |ShellArithmetic.coefficient n| at hmass
  have herr := ShellArithmetic.absolute_replacement_error_prices_shell
    (actualShell A) ShellArithmetic.coefficient ĉ
  have hremaining :
      (Real.exp (-1) - Real.exp (-2)) * Real.exp (1 / 2) * Real.exp A / 12 -
        (∑ n ∈ actualShell A, |ShellArithmetic.coefficient n - ĉ n|) ≤
      ∑ n ∈ actualShell A, |ĉ n| := by linarith
  exact (mul_le_mul_of_nonneg_left hremaining (Real.sqrt_nonneg _)).trans hprice

/-- No replacement error remains when the original arithmetic row is retained. -/
theorem actual_native_exact_decoder_price (b : ℕ → ℝ) {A b₀ L : ℝ}
    (hA : 8 ≤ A) (hb₀ : 0 < b₀) (hb : ∀ n ∈ actualShell A, 0 < b n)
    (hanchor : b₀ ^ 2 ≤ L)
    (hupper : shellForm (actualShell A) b (nativeKernel A (fun n ↦ Real.log n)) ≤
      L * shellMass (actualShell A) b) :
    Real.sqrt (319 / 384 : ℝ) *
      ((Real.exp (-1) - Real.exp (-2)) * Real.exp (1 / 2) * Real.exp A / 12) ≤
      L * Real.sqrt (∑ n ∈ actualShell A, (ShellArithmetic.coefficient n / (b₀ * b n)) ^ 2) := by
  simpa only [sub_self, abs_zero, Finset.sum_const_zero, sub_zero] using
    actual_native_replacement_decoder_price b ShellArithmetic.coefficient hA hb₀ hb hanchor hupper

def actualNativeMatrix (A : ℝ) (s : Finset ℕ) (b₀ : ℝ) (b : ℕ → ℝ) :
    Matrix (Option ↥s) (Option ↥s) ℝ :=
  anchoredMatrix s b₀ b (nativeKernel A (fun n ↦ Real.log n))
    (fun n ↦ sourceCorrelation explicitSecondDerivative A (Real.log n))

def slotWeight (s : Finset ℕ) (b₀ : ℝ) (b : ℕ → ℝ) : Option ↥s → ℝ :=
  fun i ↦ match i with | none => b₀ | some n => b n.val

def slotPosition (s : Finset ℕ) : Option ↥s → ℝ :=
  fun i ↦ match i with | none => 0 | some n => Real.log n.val

/-- This is the literal source translation Gram, including the retained anchor. -/
theorem actual_native_matrix_entries {A : ℝ} (hA : 1 ≤ A)
    (s : Finset ℕ) (b₀ : ℝ) (b : ℕ → ℝ) (i j : Option ↥s) :
    actualNativeMatrix A s b₀ b i j = slotWeight s b₀ b i * slotWeight s b₀ b j *
      sourceCorrelation explicitSecondDerivative A (slotPosition s i - slotPosition s j) := by
  cases i <;> cases j
  · simp only [actualNativeMatrix, anchoredMatrix, slotWeight, slotPosition,
      sub_self, actual_correlation_anchor hA, mul_one]
    ring
  · rename_i m
    simp only [actualNativeMatrix, anchoredMatrix, slotWeight, slotPosition, zero_sub]
    rw [sourceCorrelation_even A (Real.log m.val)]
  · simp only [actualNativeMatrix, anchoredMatrix, slotWeight, slotPosition, sub_zero]
  · rfl

/-- The actual matrix operator norm supplies both finite pricing hypotheses. -/
theorem actual_native_operator_norm_decoder_price (b ĉ : ℕ → ℝ) {A b₀ : ℝ}
    (hA : 8 ≤ A) (hb₀ : 0 < b₀) (hb : ∀ n ∈ actualShell A, 0 < b n) :
    Real.sqrt (319 / 384 : ℝ) *
      ((Real.exp (-1) - Real.exp (-2)) * Real.exp (1 / 2) * Real.exp A / 12 -
        (∑ n ∈ actualShell A, |ShellArithmetic.coefficient n - ĉ n|)) ≤
      operatorNorm (actualNativeMatrix A (actualShell A) b₀ b) *
        Real.sqrt (∑ n ∈ actualShell A, (ĉ n / (b₀ * b n)) ^ 2) := by
  apply actual_native_replacement_decoder_price b ĉ hA hb₀ hb
  · exact anchored_matrix_anchor_bound _ _ _ _ _
  · exact anchored_matrix_shell_bound _ _ _ _ _

end
end GRWTSK.RiemannHypothesis.Conversation.NativeCoherentPricing
