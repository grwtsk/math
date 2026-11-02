/- Copyright (c) 2026 grwtsk contributors. MIT.
SOURCE_PROOF_CANDIDATE / COMPILATION_NOT_RUN / EXPECTED_TYPES_NOT_RUN /
FRESH_KERNEL_NOT_RUN / TRANSITIVE_AXIOM_AUDIT_NOT_RUN.
-/
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.MoebiusDecoderPositiveResponse
import Mathlib.Tactic

/-!
# Gaussian logarithmic-frequency heat of the ACTUAL signed Möbius pickup

The arithmetic index n, actual Mathlib μ(n), original causal pickupResponse,
closed positive-integer inventory, signed waveform, and full positive square
energy are retained. Only a SECOND, artificial, nonnegative heat time s is
introduced. It is NEVER identified with physical time u or endpoint time T.

This finite diagonal heat multiplier is exp(-s*(log n)^2). It is a
Tao/de Bruijn–Newman-inspired negative-deformation-time LOG-FREQUENCY
model, not a theorem identifying the original Möbius pickup with the
Rodgers–Tao theta/xi deformation. In Dobner's arithmetic normalization,
the corresponding formal deformation parameter is t=-4*s.
The Rodgers–Tao xi deformation ∂_t H_t=-∂_z² H_t uses a DISTINCT
Fourier variable and an independent analytic source map.

The original source is reconstructed EXACTLY:
  μ(n) = exp(-s*(log n)^2)*μ(n) +
    (1-exp(-s*(log n)^2))*μ(n).
All original signs and squareful zeros remain. The correction is measured
by the PREVIOUS actual positive radius wave, not dropped or assumed small.

Coefficient-l2 heat contraction DOES NOT imply contraction of the actual
signed pickup response Gram. The latter is bounded both ways by adding
twice the complete positive reconstruction-radius energy.
-/
set_option autoImplicit false
noncomputable section
open scoped BigOperators

namespace GRWTSK.NumberTheory.Moebius.GaussianLogHeatSource

open MeasureTheory Set
open GRWTSK.RiemannHypothesis.CCC
open GRWTSK.NumberTheory.AutomircronCanonicalPrimeTyping
open GRWTSK.NumberTheory.Moebius.FiniteTorsionResolutionReturn
open GRWTSK.NumberTheory.Moebius.FinitePhaseDecoderBudget
open GRWTSK.NumberTheory.Moebius.WeightedDecoderEnergyTransfer
open GRWTSK.NumberTheory.Moebius.DecoderPositiveResponse

/-- Frequency of an original integer source atom. It is NOT the
de Bruijn–Newman theta-kernel integration variable. -/
def logFrequency (n : ℕ) : ℝ := Real.log (n : ℝ)

/-- Separate forward heat time s; true source coefficient stays attached
to the complete original integer n. -/
def logHeatMultiplier (s : ℝ) (n : ℕ) : ℝ :=
  Real.exp (-s * (logFrequency n) ^ 2)

theorem logHeatMultiplier_pos (s : ℝ) (n : ℕ) :
    0 < logHeatMultiplier s n :=
  Real.exp_pos _

theorem logHeatMultiplier_le_one {s : ℝ} (hs : 0 ≤ s)
    (n : ℕ) : logHeatMultiplier s n ≤ 1 := by
  unfold logHeatMultiplier
  apply Real.exp_le_one_iff.mpr
  exact mul_nonpos_of_nonpos_of_nonneg
    (neg_nonpos.mpr hs) (sq_nonneg _)

theorem logHeatMultiplier_at_zero (n : ℕ) :
    logHeatMultiplier 0 n = 1 := by
  simp [logHeatMultiplier]

theorem logHeatMultiplier_at_one (s : ℝ) :
    logHeatMultiplier s 1 = 1 := by
  simp [logHeatMultiplier, logFrequency]

/-- True coefficient-space finite spectral heat semigroup,
not a claim about the nonlinear/signed original response Gram. -/
theorem logHeatMultiplier_add (s t : ℝ) (n : ℕ) :
    logHeatMultiplier (s + t) n =
      logHeatMultiplier s n * logHeatMultiplier t n := by
  unfold logHeatMultiplier
  rw [show -(s + t) * logFrequency n ^ 2 =
      -s * logFrequency n ^ 2 + -t * logFrequency n ^ 2 by ring,
      Real.exp_add]

/-- Exact comparison with the negative-deformation arithmetic Gaussian
factor. This is a normalization identity, NOT an xi equality. -/
theorem logHeatMultiplier_dobner_negative_time (s : ℝ) (n : ℕ) :
    logHeatMultiplier s n =
      Real.exp (((-4 * s) / 4) * (logFrequency n) ^ 2) := by
  unfold logHeatMultiplier
  congr 1
  ring

/-- The source's actual signed Möbius coefficient with Gaussian damping. -/
def sourceHeatCoeff (s : ℝ) (n : ℕ) : ℝ :=
  logHeatMultiplier s n * moebiusReal n

/-- The original positive integer is retained instead of compressing all
integers into a fixed finite residue or torsion state. -/
def sourceHeatPhase : SourceAtom → ℕ := sourceIndex

/-- EXACT source reconstruction error, coefficient by coefficient. -/
theorem sourceHeatCoeff_error (s : ℝ) (n : ℕ) (hn : 1 ≤ n) :
    coefficientError sourceHeatPhase (sourceHeatCoeff s) n =
      moebiusReal n * (1 - logHeatMultiplier s n) := by
  unfold coefficientError observedCoeff sourceHeatPhase sourceHeatCoeff
  rw [sourceIndex_encode hn]
  ring

/-- Positive per-index error radius for forward s>=0. No invented
independence, sampling, or stochastic source assumption. -/
def sourceHeatRadius (s : ℝ) (n : ℕ) : ℝ :=
  |moebiusReal n| * (1 - logHeatMultiplier s n)

theorem sourceHeatRadius_nonneg {s : ℝ} (hs : 0 ≤ s) (n : ℕ) :
    0 ≤ sourceHeatRadius s n := by
  unfold sourceHeatRadius
  exact mul_nonneg (abs_nonneg _)
    (sub_nonneg.mpr (logHeatMultiplier_le_one hs n))

theorem sourceHeatRadius_le_abs_moebius {s : ℝ} (hs : 0 ≤ s)
    (n : ℕ) : sourceHeatRadius s n ≤ |moebiusReal n| := by
  unfold sourceHeatRadius
  have h : 1 - logHeatMultiplier s n ≤ 1 := by
    linarith [logHeatMultiplier_pos s n]
  simpa only [mul_one] using
    mul_le_mul_of_nonneg_left h (abs_nonneg _)

/-- The error radius comes from the actual source coefficient and true
heat factor at EVERY original index in the final endpoint inventory. -/
theorem sourceHeat_errorCertificate
    {s : ℝ} (hs : 0 ≤ s) (T : ℝ) :
    ErrorCertificate sourceHeatPhase (sourceHeatCoeff s)
      (sourceHeatRadius s) T := by
  intro n hn
  rw [sourceHeatCoeff_error s n (Finset.mem_Icc.mp hn).1]
  unfold sourceHeatRadius
  rw [abs_mul, abs_of_nonneg
    (sub_nonneg.mpr (logHeatMultiplier_le_one hs n))]

/-- Heat leaves the arithmetic root n=1 unchanged. -/
theorem sourceHeatCoeff_one (s : ℝ) :
    sourceHeatCoeff s 1 = moebiusReal 1 := by
  simp [sourceHeatCoeff, logHeatMultiplier_at_one]

/-- A squareful zero is still a REAL source atom with zero coefficient
after heat; it is not an absent index or a missing measurement. -/
theorem sourceHeatCoeff_zero_of_source_zero
    (s : ℝ) (n : ℕ) (h : moebiusReal n = 0) :
    sourceHeatCoeff s n = 0 := by
  simp [sourceHeatCoeff, h]

/-- Heat preserves the coefficient-space zero set because exp never
vanishes, at EVERY finite s including negative values. -/
theorem sourceHeatCoeff_eq_zero_iff (s : ℝ) (n : ℕ) :
    sourceHeatCoeff s n = 0 ↔ moebiusReal n = 0 := by
  unfold sourceHeatCoeff
  constructor
  · intro hz
    rcases (mul_eq_zero.mp hz) with h | h
    · exact False.elim ((ne_of_gt (logHeatMultiplier_pos s n)) h)
    · exact h
  · intro hz
    simp [hz]

/-- Heat is a strict identity on coefficients at artificial time zero. -/
theorem sourceHeatCoeff_zero_time (n : ℕ) :
    sourceHeatCoeff 0 n = moebiusReal n := by
  simp [sourceHeatCoeff, logHeatMultiplier_at_zero]

theorem sourceHeatRadius_zero_time (n : ℕ) :
    sourceHeatRadius 0 n = 0 := by
  simp [sourceHeatRadius, logHeatMultiplier_at_zero]

/-- Diagonal spectral semigroup on the ORIGINAL Möbius source. -/
theorem sourceHeatCoeff_semigroup (s t : ℝ) (n : ℕ) :
    sourceHeatCoeff (s + t) n =
      logHeatMultiplier s n * sourceHeatCoeff t n := by
  unfold sourceHeatCoeff
  rw [logHeatMultiplier_add]
  ring

/-- Actual complete signed heat waveform over the SOURCE closed integer
inventory. The original physical response and birth clock are unchanged. -/
def sourceHeatWave (s T u : ℝ) : ℝ :=
  observedWave sourceHeatPhase (sourceHeatCoeff s) T u

/-- Actual ORIGINAL minus heat waveform, not an independently chosen
unknown error term or a replacement by absolute values. -/
def sourceHeatErrorWave (s T u : ℝ) : ℝ :=
  errorWave sourceHeatPhase (sourceHeatCoeff s) T u

/-- The original signed causal pickup is reconstructed pointwise on the
entire physical-time interval, including all closed births. -/
theorem wholePickup_eq_heat_add_exact_error (s : ℝ)
    {T u : ℝ} (hu : 0 ≤ u) (huT : u ≤ T) :
    wholePickup u =
      sourceHeatWave s T u + sourceHeatErrorWave s T u := by
  exact wholePickup_eq_observed_add_error
    sourceHeatPhase (sourceHeatCoeff s) hu huT

/-- This physical-time energy squares the COMPLETE signed heat wave,
not each arithmetic source index independently. -/
def sourceHeatEnergy (s T : ℝ) : ℝ :=
  observedEnergy sourceHeatPhase (sourceHeatCoeff s) T

/-- The POSITIVE causal radius supplies a SOURCE-KNOWN reconstruction
allowance for every original integer at heat time s. -/
def sourceHeatRadiusEnergy (s T : ℝ) : ℝ :=
  radiusEnergy (sourceHeatRadius s) T

/-- Source-stable heat energy inequality. The mixed signed interactions
are paid by the actual Young inequality, not deleted. -/
theorem pickupEnergy_le_heat_add_radius
    {s T : ℝ} (hs : 0 ≤ s) (hT : 0 ≤ T) :
    pickupEnergy T ≤
      2 * sourceHeatEnergy s T +
        2 * sourceHeatRadiusEnergy s T := by
  exact pickupEnergy_le_two_observed_add_radius
    sourceHeatPhase (sourceHeatCoeff s) (sourceHeatRadius s)
    hT (sourceHeat_errorCertificate hs T)

/-- Reverse comparison is required for stability. A small heat energy
alone is NOT an estimate for the original signed waveform. -/
theorem heatEnergy_le_pickup_add_radius
    {s T : ℝ} (hs : 0 ≤ s) (hT : 0 ≤ T) :
    sourceHeatEnergy s T ≤
      2 * pickupEnergy T + 2 * sourceHeatRadiusEnergy s T := by
  exact observedEnergy_le_two_pickup_add_radius
    sourceHeatPhase (sourceHeatCoeff s) (sourceHeatRadius s)
    hT (sourceHeat_errorCertificate hs T)

/-- Actual coefficient-space l2 norm is contracted by positive heat.
This does NOT state monotonicity of sourceHeatEnergy, which uses the
non-diagonal response Gram and arbitrary signed Möbius coefficients. -/
theorem coefficientSquareEnergy_le_original
    {s : ℝ} (hs : 0 ≤ s) (T : ℝ) :
    (∑ n ∈ endpointIndex T, sourceHeatCoeff s n ^ 2) ≤
      ∑ n ∈ endpointIndex T, moebiusReal n ^ 2 := by
  apply Finset.sum_le_sum
  intro n hn
  have hpos : 0 ≤ logHeatMultiplier s n :=
    (logHeatMultiplier_pos s n).le
  have hsq : logHeatMultiplier s n ^ 2 ≤ 1 :=
    (sq_le_sq₀ hpos (by norm_num : (0 : ℝ) ≤ 1)).mpr
      (logHeatMultiplier_le_one hs n)
  have h :=
    mul_le_mul_of_nonneg_right hsq (sq_nonneg (moebiusReal n))
  simpa only [sourceHeatCoeff, mul_pow, one_mul] using h

/-- Elementary hostile countermodel: damping a negative source
coefficient can INCREASE a signed square when sources interfere.
Therefore coefficient-space damping alone is not pickup energy damping. -/
theorem signed_mixing_not_contractive :
    ((1 : ℝ) - 1) ^ 2 <
      ((1 : ℝ) - 1 / 2) ^ 2 := by norm_num

/-- Two retained prefix moments evaluate the exact heated signed wave,
rather than replacing it by a positive absolute coefficient sum. -/
theorem sourceHeatWave_two_active_moments (s T u : ℝ) :
    sourceHeatWave s T u =
      2 * (activeWeightedMoment (sourceHeatCoeff s) T u -
        Real.exp (-u / 2) *
          activeCountMoment (sourceHeatCoeff s) T u) := by
  have hsum :
      sourceHeatWave s T u =
        ∑ n ∈ endpointIndex T,
          sourceHeatCoeff s n * pickupResponse n u := by
    unfold sourceHeatWave observedWave
    apply Finset.sum_congr rfl
    intro n hn
    change sourceHeatCoeff s (sourceIndex (encode n)) *
        pickupResponse n u =
      sourceHeatCoeff s n * pickupResponse n u
    rw [sourceIndex_encode (Finset.mem_Icc.mp hn).1]
  rw [hsum]
  exact responseSum_eq_two_active_moments
    (sourceHeatCoeff s) T u


/-- The actual finite coefficient heat equation: artificial heat-time
derivative equals minus its squared log-frequency generator. This is
a finite scalar ODE, not the Rodgers–Tao xi PDE or a zero-flow law. -/
theorem sourceHeatCoeff_hasDerivAt (s : ℝ) (n : ℕ) :
    HasDerivAt (fun t : ℝ => sourceHeatCoeff t n)
      (-(logFrequency n) ^ 2 * sourceHeatCoeff s n) s := by
  have h :=
    (((hasDerivAt_id s).neg.mul_const (logFrequency n ^ 2)).exp).const_mul
      (moebiusReal n)
  convert h using 1 <;>
    simp only [sourceHeatCoeff, logHeatMultiplier] <;>
    ring

end GRWTSK.NumberTheory.Moebius.GaussianLogHeatSource
