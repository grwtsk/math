/- Copyright (c) 2026 grwtsk contributors. MIT.
SOURCE_PROOF_CANDIDATE / COMPILATION_NOT_RUN / EXPECTED_TYPES_NOT_RUN /
FRESH_KERNEL_NOT_RUN / TRANSITIVE_AXIOM_AUDIT_NOT_RUN. -/
import GRWTSK.ProbabilityTheoryAndStochasticProcesses.FiniteWeightedChannelCovariance

/-!
# Sharp finite complex reconstruction from equicorrelated real multipliers

For a finite joint law, assume its ACTUAL second moments are 1 on the
source diagonal and rho^2 off it. Pairwise-independent signs of common
mean rho supply these moments, but independence of arithmetic values is
neither asserted nor needed. The conclusion is valid for complex amplitudes:

  Q = rho^2 * |sum a|^2 + (1-rho^2) * sum |a|^2.
  m*Q - (1+(m-1)*rho^2)*|sum a|^2
    = (1-rho^2)*(m*sum |a|^2 - |sum a|^2).

Finite Cauchy makes the last line nonnegative for rho^2 <= 1. For m>0
this gives the optimal cost m/(1+(m-1)*rho^2); constant amplitudes attain it.
The rank-one endpoint rho^2=1 is included without inverting a covariance
matrix. Empty support is included in the undivided bound.

Primary proof: reuse the maintained REAL covariance expansion, once on
each coordinate of the SAME complex amplitude and SAME joint law, and
add. These are not independent proof routes. A separate hostile check
is the opposite-amplitude pair: deterministic cancellation need not
survive randomization. The source-integrated consumer is
MoebiusLFunctionBiasedNoiseRecovery.lean. No all-rate arithmetic estimate
or RH/GRH theorem is asserted. No prior-art novelty is claimed.
-/
set_option autoImplicit false
noncomputable section
open scoped BigOperators

namespace GRWTSK.ProbabilityAndMathematicalStatistics.FiniteBiasedNoiseRecovery

open GRWTSK.ProbabilityAndMathematicalStatistics.FiniteWeightedChannelCovariance

variable {Ω ι : Type*} [DecidableEq ι]

/-- A finite weighted second moment, with coherent complex summation first.
It is a probability expectation when p is nonnegative and has total mass one. -/
def complexChoiceMeanSquare (O : Finset Ω) (p : Ω → ℝ)
    (η : Ω → ι → ℝ) (S : Finset ι) (a : ι → ℂ) : ℝ :=
  ∑ ω ∈ O, p ω * ‖∑ i ∈ S, (η ω i : ℂ) * a i‖ ^ 2

/-- An explicit moment condition, weaker than assuming independent signs.
It is not an assumption about Mobius coefficients. -/
def Equicorrelated (O : Finset Ω) (p : Ω → ℝ)
    (η : Ω → ι → ℝ) (S : Finset ι) (ρ : ℝ) : Prop :=
  ∀ i ∈ S, ∀ j ∈ S,
    choiceCorrelation O p η i j = if i = j then 1 else ρ ^ 2

private theorem norm_sq_parts (z : ℂ) :
    ‖z‖ ^ 2 = z.re ^ 2 + z.im ^ 2 := by
  rw [← Complex.normSq_eq_norm_sq]
  simp [Complex.normSq_apply, pow_two]

/-- Real equicorrelation specialization of the existing full covariance theorem. -/
theorem realMeanSquare_eq_mixture (O : Finset Ω) (p : Ω → ℝ)
    (η : Ω → ι → ℝ) (S : Finset ι) (b : ι → ℝ) (ρ : ℝ)
    (h : Equicorrelated O p η S ρ) :
    choiceMeanSquare O p η S b =
      ρ ^ 2 * (∑ i ∈ S, b i) ^ 2 +
        (1 - ρ ^ 2) * ∑ i ∈ S, b i ^ 2 := by
  classical
  rw [choiceMeanSquare_eq_covariance]
  have hrow (i : ι) (hi : i ∈ S) :
      (∑ j ∈ S, b i * b j * choiceCorrelation O p η i j) =
        (ρ ^ 2 * b i) * (∑ j ∈ S, b j) +
          (1 - ρ ^ 2) * b i ^ 2 := by
    calc
      _ = ∑ j ∈ S,
          ((ρ ^ 2 * b i) * b j +
            if j = i then (1 - ρ ^ 2) * b i ^ 2 else 0) := by
        apply Finset.sum_congr rfl
        intro j hj
        rw [h i hi j hj]
        by_cases hij : i = j
        · subst j
          simp only [ite_true]
          ring
        · simp only [hij, Ne.symm hij, ite_false, add_zero]
          ring
      _ = _ := by
        rw [Finset.sum_add_distrib, ← Finset.mul_sum]
        simp [hi]
  calc
    _ = ∑ i ∈ S,
        ((ρ ^ 2 * b i) * (∑ j ∈ S, b j) +
          (1 - ρ ^ 2) * b i ^ 2) :=
      Finset.sum_congr rfl hrow
    _ = _ := by
      rw [Finset.sum_add_distrib, ← Finset.sum_mul,
        ← Finset.mul_sum, ← Finset.mul_sum]
      ring

/-- Both real coordinates use the same joint law; all complex phases survive. -/
theorem complexChoiceMeanSquare_eq_real_add_imag
    (O : Finset Ω) (p : Ω → ℝ) (η : Ω → ι → ℝ)
    (S : Finset ι) (a : ι → ℂ) :
    complexChoiceMeanSquare O p η S a =
      choiceMeanSquare O p η S (fun i => (a i).re) +
        choiceMeanSquare O p η S (fun i => (a i).im) := by
  classical
  unfold complexChoiceMeanSquare choiceMeanSquare
  rw [← Finset.sum_add_distrib]
  apply Finset.sum_congr rfl
  intro ω hω
  rw [norm_sq_parts]
  simp [Complex.mul_re, Complex.mul_im, mul_add]

/-- Exact complex identity, assuming actual second moments rather than a label. -/
theorem complexMeanSquare_eq_mixture
    (O : Finset Ω) (p : Ω → ℝ) (η : Ω → ι → ℝ)
    (S : Finset ι) (a : ι → ℂ) (ρ : ℝ)
    (h : Equicorrelated O p η S ρ) :
    complexChoiceMeanSquare O p η S a =
      ρ ^ 2 * ‖∑ i ∈ S, a i‖ ^ 2 +
        (1 - ρ ^ 2) * ∑ i ∈ S, ‖a i‖ ^ 2 := by
  rw [complexChoiceMeanSquare_eq_real_add_imag,
    realMeanSquare_eq_mixture O p η S _ ρ h,
    realMeanSquare_eq_mixture O p η S _ ρ h]
  simp_rw [norm_sq_parts]
  simp only [Complex.re_sum, Complex.im_sum, Finset.sum_add_distrib]
  ring

/-- Finite complex Cauchy, proved from the maintained real finite inequality. -/
theorem complex_sum_sq_le_card (S : Finset ι) (a : ι → ℂ) :
    ‖∑ i ∈ S, a i‖ ^ 2 ≤ (S.card : ℝ) * ∑ i ∈ S, ‖a i‖ ^ 2 := by
  have hr := sq_sum_le_card_mul_sum_sq (s := S) (f := fun i => (a i).re)
  have hi := sq_sum_le_card_mul_sum_sq (s := S) (f := fun i => (a i).im)
  simp_rw [norm_sq_parts]
  simp only [Complex.re_sum, Complex.im_sum, Finset.sum_add_distrib]
  nlinarith

/-- Exact deficit: this is the quantitative content behind sharp recovery. -/
theorem recovery_deficit (O : Finset Ω) (p : Ω → ℝ)
    (η : Ω → ι → ℝ) (S : Finset ι) (a : ι → ℂ) (ρ : ℝ)
    (h : Equicorrelated O p η S ρ) :
    (S.card : ℝ) * complexChoiceMeanSquare O p η S a -
        (1 + ((S.card : ℝ) - 1) * ρ ^ 2) * ‖∑ i ∈ S, a i‖ ^ 2 =
      (1 - ρ ^ 2) *
        ((S.card : ℝ) * ∑ i ∈ S, ‖a i‖ ^ 2 - ‖∑ i ∈ S, a i‖ ^ 2) := by
  rw [complexMeanSquare_eq_mixture O p η S a ρ h]
  ring

/-- Undivided sharp bound also covers the empty support and zero bias. -/
theorem recovery_mul (O : Finset Ω) (p : Ω → ℝ)
    (η : Ω → ι → ℝ) (S : Finset ι) (a : ι → ℂ) (ρ : ℝ)
    (hρ : ρ ^ 2 ≤ 1) (h : Equicorrelated O p η S ρ) :
    (1 + ((S.card : ℝ) - 1) * ρ ^ 2) * ‖∑ i ∈ S, a i‖ ^ 2 ≤
      (S.card : ℝ) * complexChoiceMeanSquare O p η S a := by
  have hc := complex_sum_sq_le_card S a
  have hn := mul_nonneg (sub_nonneg.mpr hρ) (sub_nonneg.mpr hc)
  rw [← recovery_deficit O p η S a ρ h] at hn
  exact sub_nonneg.mp hn

/-- The denominator is strictly positive for nonempty source support. -/
theorem recovery_denominator_pos (S : Finset ι) (ρ : ℝ)
    (hS : S.Nonempty) : 0 < 1 + ((S.card : ℝ) - 1) * ρ ^ 2 := by
  have hm : (1 : ℝ) ≤ (S.card : ℝ) := by
    exact_mod_cast (Nat.succ_le_of_lt (Finset.card_pos.mpr hS))
  have hp := mul_nonneg (sub_nonneg.mpr hm) (sq_nonneg ρ)
  linarith

/-- Sharp uniform finite reconstruction cost. Empty support has zero energy;
the total-field division convention also makes the stated inequality true there. -/
theorem recovery (O : Finset Ω) (p : Ω → ℝ)
    (η : Ω → ι → ℝ) (S : Finset ι) (a : ι → ℂ) (ρ : ℝ)
    (hρ : ρ ^ 2 ≤ 1) (h : Equicorrelated O p η S ρ) :
    ‖∑ i ∈ S, a i‖ ^ 2 ≤
      ((S.card : ℝ) / (1 + ((S.card : ℝ) - 1) * ρ ^ 2)) *
        complexChoiceMeanSquare O p η S a := by
  by_cases hS : S.Nonempty
  · have hd := recovery_denominator_pos S ρ hS
    have hb := recovery_mul O p η S a ρ hρ h
    have hb' : ‖∑ i ∈ S, a i‖ ^ 2 ≤
        ((S.card : ℝ) * complexChoiceMeanSquare O p η S a) /
          (1 + ((S.card : ℝ) - 1) * ρ ^ 2) := by
      apply (le_div_iff₀ hd).2
      calc
        _ = (1 + ((S.card : ℝ) - 1) * ρ ^ 2) * ‖∑ i ∈ S, a i‖ ^ 2 :=
          mul_comm _ _
        _ ≤ _ := hb
    simpa only [div_mul_eq_mul_div] using hb'
  · have he : S = ∅ := Finset.not_nonempty_iff_eq_empty.mp hS
    subst S
    simp [complexChoiceMeanSquare]

/-- Constant amplitudes attain equality; no smaller uniform cost is possible
when S is nonempty and the amplitude is nonzero. -/
theorem constant_amplitude_equality (O : Finset Ω) (p : Ω → ℝ)
    (η : Ω → ι → ℝ) (S : Finset ι) (z : ℂ) (ρ : ℝ)
    (h : Equicorrelated O p η S ρ) :
    (S.card : ℝ) * complexChoiceMeanSquare O p η S (fun _ => z) =
      (1 + ((S.card : ℝ) - 1) * ρ ^ 2) * ‖∑ _i ∈ S, z‖ ^ 2 := by
  rw [complexMeanSquare_eq_mixture O p η S (fun _ => z) ρ h]
  simp only [Finset.sum_const, nsmul_eq_mul]
  simp [norm_mul, mul_pow] <;> ring

end GRWTSK.ProbabilityAndMathematicalStatistics.FiniteBiasedNoiseRecovery
