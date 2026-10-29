-- corpus-organization-transform:v1
-- Mathematical subject: NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.SourceEventCount.Variante784e99343d57ae904d2e9f2f42a240bc9c766832c93fd3907eee3bc01d058f1","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"e784e99343d57ae904d2e9f2f42a240bc9c766832c93fd3907eee3bc01d058f1","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.NumberTheory.RiemannHypothesis.SourceCorpus.SourceEventCount.Variante784e99343d57ae904d2e9f2f42a240bc9c766832c93fd3907eee3bc01d058f1","mathematical_subject":"NumberTheory.RiemannHypothesis","original_sha256":"e784e99343d57ae904d2e9f2f42a240bc9c766832c93fd3907eee3bc01d058f1","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal.publication/20261007/primary-delta-index-retrieved-b246bcb45ff5/primary-deltas/source/e7/e784e99343d57ae904d2e9f2f42a240bc9c766832c93fd3907eee3bc01d058f1/SourceFiniteGameBridge.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import FormalResearch.RiemannHypothesis.SourceFirstPrimeAbel
import FormalResearch.RiemannHypothesis.FiniteGainCertificates
import FormalResearch.RiemannHypothesis.SourcePrimeMomentScale
import FormalResearch.RiemannHypothesis.PacketTransportCertificates

/-!
# Exact finite gain schedule for the actual RH source

Positive gain improves the requested lower bound. The cursor visits every
integer through the literal closed cutoff. Non-prime-powers and the two
padding positions carry zero; touching upper atoms retain their actual source
value, which vanishes by the source endpoint theorem.

The source decoder and finite reconstruction below are unconditional. A
uniform terminal potential/error budget is an explicit arithmetic premise.
The canonical exact prefix potential supplies no such budget: its terminal
debt is exactly twice the original signed residual.

Research framing, selection, corrections and evaluation: grwtsk contributors.
Computational and formalization assistance: OpenAI Codex / ChatGPT.
-/


namespace GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.SourceEventCount.Variante784e99343d57ae904d2e9f2f42a240bc9c766832c93fd3907eee3bc01d058f1

set_option autoImplicit false

noncomputable section

namespace FormalResearch.RiemannHypothesis.SourceFiniteGameBridge

open SourcePairing SourcePrimeSquareMainTerm SourceDiagonalMainTerm SourceFirstPrimeAbel
open FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry
open Realization PrimePowerDescent EstimateMobiusSplit EstimatePrimeSmoothDefect
open EstimateMertensResidual

/-- A native cursor includes every integer at the closed floor, and terminates
at this count. Two zero padding positions avoid changing the arithmetic labels. -/
def sourceEventCount (A : ℝ) : ℕ := ⌊Real.exp (2 * A)⌋₊ + 1

/-- The exact decoder retains source coefficients, the critical exponential,
the normalization, and the signed correlation. Positive is favorable. -/
def sourceEventGain (A : ℝ) (n : ℕ) : ℝ :=
  if n ∈ primePowerInventory (2 * A) then
    -2 * (ArithmeticFunction.vonMangoldt n * closedPrimeWeight A n)
  else 0

theorem sourceEventGain_of_mem (A : ℝ) {n : ℕ}
    (hn : n ∈ primePowerInventory (2 * A)) :
    sourceEventGain A n =
      -2 * (ArithmeticFunction.vonMangoldt n * closedPrimeWeight A n) := by
  simp [sourceEventGain, hn]

theorem sourceEventGain_zero_of_not_mem (A : ℝ) {n : ℕ}
    (hn : n ∉ primePowerInventory (2 * A)) : sourceEventGain A n = 0 := by
  simp [sourceEventGain, hn]

theorem sourceEventGain_zero_of_not_prime_pow (A : ℝ) {n : ℕ}
    (hn : ¬IsPrimePow n) : sourceEventGain A n = 0 := by
  simp [sourceEventGain, ArithmeticFunction.vonMangoldt_eq_zero_iff.mpr hn]

/-- Every source atom is actually processed, at its unchanged natural label. -/
theorem source_inventory_covered (A : ℝ) :
    primePowerInventory (2 * A) ⊆ Finset.range (sourceEventCount A) := by
  intro n hn
  have hnN := (Finset.mem_Icc.mp hn).2
  exact Finset.mem_range.mpr (by dsimp [sourceEventCount] at *; omega)

/-- Source processing always advances the cursor; it cannot evade an
unfavorable arithmetic event by remaining in a certified zero cycle. -/
def SourceCursorLegal (A : ℝ) (k k' : ℕ) : Prop :=
  k < sourceEventCount A ∧ k' = k + 1

theorem sourceCursor_actual_step (A : ℝ) {k : ℕ} (hk : k < sourceEventCount A) :
    SourceCursorLegal A k (k + 1) := ⟨hk, rfl⟩

theorem sourceCursor_advances (A : ℝ) {k k' : ℕ} (h : SourceCursorLegal A k k') :
    k < k' := by
  rcases h with ⟨_, rfl⟩
  omega

theorem sourceCursor_terminal (A : ℝ) (k' : ℕ) :
    ¬SourceCursorLegal A (sourceEventCount A) k' := by
  simp [SourceCursorLegal]

/-- The number of mandatory transitions grows with the real cutoff. This
dependence must remain in any finite-state complexity claim. -/
theorem sourceEventCount_bound (A : ℝ) :
    (sourceEventCount A : ℝ) ≤ Real.exp (2 * A) + 1 := by
  dsimp [sourceEventCount]
  push_cast
  linarith [Nat.floor_le (Real.exp_pos (2 * A)).le]

/-- Outside the literal cutoff the raw coefficient vanishes by actual
support. Thus a change of integer inventory cannot create a spurious jump. -/
theorem sourceEventGain_eq_raw (A : ℝ) (hA : 1 ≤ A) {n : ℕ} (hn : 2 ≤ n) :
    sourceEventGain A n =
      -2 * (ArithmeticFunction.vonMangoldt n * closedPrimeWeight A n) := by
  by_cases hi : n ∈ primePowerInventory (2 * A)
  · exact sourceEventGain_of_mem A hi
  · have hN : ⌊Real.exp (2 * A)⌋₊ < n := by
      simpa only [primePowerInventory, Finset.mem_Icc, hn, true_and, not_le] using hi
    have hn0 : (0 : ℝ) < n := by exact_mod_cast (show 0 < n by omega)
    have he : Real.exp (2 * A) < (n : ℝ) := by
      by_contra hh
      have hf := (Nat.le_floor_iff (Real.exp_pos (2 * A)).le).2 (le_of_not_gt hh)
      omega
    have hl : 2 * A ≤ |Real.log (n : ℝ)| :=
      (((Real.lt_log_iff_exp_lt hn0).2 he).le.trans (le_abs_self _))
    have hz := CorrelationRegularity.sourceCorrelation_eq_zero_of_two_mul_le_abs
      A (Real.log n) (by linarith) hl
    simp [sourceEventGain, hi, closedPrimeWeight, exponentialTest, hz]

/-- The touching source atom is retained by the decoder and has zero gain
because the normalized source correlation itself vanishes there. -/
theorem sourceEventGain_touching_atom (A : ℝ) (hA : 1 ≤ A) {n : ℕ}
    (hn : 2 ≤ n) (he : (n : ℝ) = Real.exp (2 * A)) : sourceEventGain A n = 0 := by
  have hl : Real.log (n : ℝ) = 2 * A := by rw [he, Real.log_exp]
  rw [sourceEventGain_eq_raw A hA hn]
  simp [closedPrimeWeight, exponentialTest, hl,
    CorrelationRegularity.sourceCorrelation_upper_endpoint A (by linarith : 0 < A)]

/-- Continuous source lifting includes both one-sided limits at every moving
cutoff: the indicator decoder equals the same actual smooth fixed-index weight. -/
theorem sourceEventGain_continuousOn (n : ℕ) (hn : 2 ≤ n) :
    ContinuousOn (fun A : ℝ => sourceEventGain A n) (Set.Ici 1) := by
  have hr : ContinuousOn
      (fun A : ℝ => -2 * (ArithmeticFunction.vonMangoldt n * closedPrimeWeight A n))
      (Set.Ici 1) := by
    intro A hA
    have hA1 : 1 ≤ A := hA
    have hw : ContinuousAt (fun B : ℝ => closedPrimeWeight B n) A :=
      (SourcePrimeMomentScale.closedPrimeWeight_contDiffAt (by linarith) n).continuousAt
    have hc : ContinuousAt
        (fun B : ℝ => -2 * (ArithmeticFunction.vonMangoldt n * closedPrimeWeight B n)) A :=
      continuousAt_const.mul (continuousAt_const.mul hw)
    exact hc.continuousWithinAt
  apply hr.congr
  intro A hA
  exact sourceEventGain_eq_raw A hA hn

/-- A proved coarse edge bound is scale dependent. A finite-game credit
estimate using state count times this bound therefore is not uniform in A. -/
theorem sourceEventGain_abs_le (A : ℝ) (hA : 1 ≤ A) (n : ℕ) :
    |sourceEventGain A n| ≤ 4 * A := by
  by_cases hi : n ∈ primePowerInventory (2 * A)
  · have hn := (Finset.mem_Icc.mp hi).1
    have hlog : 0 ≤ Real.log (n : ℝ) := Real.log_nonneg (by exact_mod_cast (by omega : 1 ≤ n))
    have hexp : Real.exp (-Real.log (n : ℝ) / 2) ≤ 1 :=
      Real.exp_le_one_iff.mpr (by linarith)
    have hw : |closedPrimeWeight A n| ≤ 1 := by
      rw [closedPrimeWeight, exponentialTest, abs_mul,
        abs_of_pos (Real.exp_pos _)]
      calc
        _ ≤ Real.exp (-Real.log (n : ℝ) / 2) * 1 :=
          mul_le_mul_of_nonneg_left
            (EstimateCorrelation.actual_correlation_abs_le_one A (Real.log n) hA)
            (Real.exp_pos _).le
        _ ≤ 1 := by simpa only [mul_one] using hexp
    have hl : ArithmeticFunction.vonMangoldt n ≤ 2 * A :=
      ArithmeticFunction.vonMangoldt_le_log.trans (inventory_log_bounds (2 * A) n hi).2
    rw [sourceEventGain_of_mem A hi]
    simp only [abs_mul, abs_neg, abs_of_nonneg (by norm_num : (0 : ℝ) ≤ 2),
      abs_of_nonneg ArithmeticFunction.vonMangoldt_nonneg]
    calc
      _ ≤ 2 * (ArithmeticFunction.vonMangoldt n * 1) :=
        mul_le_mul_of_nonneg_left
          (mul_le_mul_of_nonneg_left hw ArithmeticFunction.vonMangoldt_nonneg) (by norm_num)
      _ ≤ 4 * A := by linarith
  · rw [sourceEventGain_zero_of_not_mem A hi, abs_zero]
    linarith

/-- Full signed reconstruction, valid at every real scale where the native
source is used. No analytic term or higher prime power is dropped. -/
theorem sum_sourceEventGain (A : ℝ) (hA : 1 ≤ A) :
    (∑ n ∈ Finset.range (sourceEventCount A), sourceEventGain A n) =
      -2 * mertensResidual A := by
  have hs : (∑ n ∈ Finset.range (sourceEventCount A), sourceEventGain A n) =
      ∑ n ∈ primePowerInventory (2 * A), sourceEventGain A n := by
    symm
    exact Finset.sum_subset (source_inventory_covered A) (fun n _ hn =>
      sourceEventGain_zero_of_not_mem A hn)
  rw [hs, mertensResidual_eq_closedPrimeMoment A hA]
  unfold closedPrimeMoment
  rw [Finset.mul_sum]
  apply Finset.sum_congr rfl
  intro n hn
  rw [sourceEventGain_of_mem A hn]
  rfl

/-- Native quadratic reconstruction. The complete continuous Fourier term is
retained exactly; strict/closed cutoff agreement uses the source endpoint. -/
theorem sourceQuadraticValue_eq_event_sum (A : ℝ) (hA : 1 ≤ A) :
    sourceQuadraticValue explicitSecondDerivative A =
      archimedeanValue explicitSecondDerivative A +
        ∑ n ∈ Finset.range (sourceEventCount A), sourceEventGain A n := by
  rw [sum_sourceEventGain A hA]
  unfold sourceQuadraticValue
  rw [primePowerContribution_eq_closedPrimeMoment A hA,
    mertensResidual_eq_closedPrimeMoment A hA]
  ring

/-- Complete original closed arithmetic labels, including zero coefficients
at non-prime-powers and the touching endpoint. -/
abbrev SourceVertex (A : ℝ) := ↥(primePowerInventory (2 * A))

/-- Exact arithmetic payload; scores or queue features may not replace it. -/
def sourcePayload (A : ℝ) (v : SourceVertex A) : ℝ :=
  ArithmeticFunction.vonMangoldt v.val

/-- The gain observable includes the entire normalized actual kernel. -/
def sourceGainObservable (A : ℝ) (v : SourceVertex A) : ℝ :=
  -2 * closedPrimeWeight A v.val

theorem sourcePayload_readout (A : ℝ) (hA : 1 ≤ A) :
    (∑ v : SourceVertex A, sourceGainObservable A v * sourcePayload A v) =
      -2 * mertensResidual A := by
  rw [mertensResidual_eq_closedPrimeMoment A hA]
  unfold sourceGainObservable sourcePayload SourceVertex
  rw [Finset.sum_coe_sort (primePowerInventory (2 * A))
    (fun n : ℕ => -2 * closedPrimeWeight A n * ArithmeticFunction.vonMangoldt n)]
  unfold closedPrimeMoment
  rw [Finset.mul_sum]
  apply Finset.sum_congr rfl
  intro n _
  ring

/-- Exact source-native geometric decoder. A moved payload pays the complete
nonconstant observable flux; arbitrary seam edges are retained in the price.
No periodicity of the logarithmic cutoff coordinate is assumed. -/
theorem source_flux_decoder (A : ℝ) (hA : 1 ≤ A) {E : Type*} [Fintype E]
    (tail head : E → SourceVertex A) (flux : E → ℝ) :
    (∑ v : SourceVertex A, sourceGainObservable A v *
      (sourcePayload A v + PacketTransportCertificates.divergence tail head flux v)) -
        (∑ e, (sourceGainObservable A (head e) - sourceGainObservable A (tail e)) * flux e) =
      -2 * mertensResidual A := by
  rw [PacketTransportCertificates.decoded_transported_readout]
  exact sourcePayload_readout A hA

/-- The same gains retain the continuous and every higher-power component
when decoded through the literal signed Abel route. -/
theorem sourceEventSum_eq_signed_Abel_sectors (A : ℝ) (hA : 1 ≤ A) :
    (∑ n ∈ Finset.range (sourceEventCount A), sourceEventGain A n) =
      2 * criticalSignedWork A - 2 * criticalContinuousMoment A -
        2 * primeSquareMoment A - 2 * SourcePrimePowerPartition.higherPrimePowerMoment A := by
  rw [sum_sourceEventGain A hA, mertensResidual_eq_closedPrimeMoment A hA,
    SourcePrimePowerPartition.closedPrimeMoment_eq_first_square_higher,
    firstPrimeMoment_eq_continuous_sub_work A hA]
  ring

/-- The first-prime game processes the actual first-prime atoms and one
mandatory negative square-main payment at cursor zero. The other higher-power
terms are handled by the proved uniform replacement error, not discarded. -/
def firstPrimeEventGain (A : ℝ) (n : ℕ) : ℝ :=
  (if n = 0 then -2 * (diagonalMainCoefficient A * A) else 0) +
    if n ∈ WeightedPrimeAbel.primeLogInventory (2 * A) then
      -2 * (ArithmeticFunction.vonMangoldt n * closedPrimeWeight A n)
    else 0

theorem firstPrime_inventory_covered (A : ℝ) :
    WeightedPrimeAbel.primeLogInventory (2 * A) ⊆ Finset.range (sourceEventCount A) := by
  intro n hn
  obtain ⟨hi, hp⟩ := Finset.mem_filter.mp hn
  exact source_inventory_covered A (Finset.mem_Icc.mpr
    ⟨hp.two_le, (Finset.mem_Ioc.mp hi).2⟩)

/-- Exact signed main-term compensation is paid inside the gain schedule. -/
theorem sum_firstPrimeEventGain (A : ℝ) :
    (∑ n ∈ Finset.range (sourceEventCount A), firstPrimeEventGain A n) =
      -2 * (SourcePrimePowerPartition.firstPrimeMoment A + diagonalMainCoefficient A * A) := by
  have hpos : 0 < sourceEventCount A := by dsimp [sourceEventCount]; omega
  have hs : (∑ n ∈ Finset.range (sourceEventCount A),
      if n ∈ WeightedPrimeAbel.primeLogInventory (2 * A) then
        -2 * (ArithmeticFunction.vonMangoldt n * closedPrimeWeight A n) else 0) =
      -2 * SourcePrimePowerPartition.firstPrimeMoment A := by
    calc
      _ = ∑ n ∈ WeightedPrimeAbel.primeLogInventory (2 * A),
          if n ∈ WeightedPrimeAbel.primeLogInventory (2 * A) then
            -2 * (ArithmeticFunction.vonMangoldt n * closedPrimeWeight A n) else 0 := by
        symm
        apply Finset.sum_subset (firstPrime_inventory_covered A)
        intro n _ hn
        simp [hn]
      _ = -2 * SourcePrimePowerPartition.firstPrimeMoment A := by
        unfold SourcePrimePowerPartition.firstPrimeMoment
        rw [Finset.mul_sum]
        apply Finset.sum_congr rfl
        intro n hn
        simp [hn]
  unfold firstPrimeEventGain
  rw [Finset.sum_add_distrib, hs]
  simp only [Finset.sum_ite_eq', Finset.mem_range, hpos, if_true]
  ring

/-- An unconditional arithmetic replacement lemma discharges the square and
higher-power lifting cost for this smaller signed schedule. -/
theorem firstPrime_schedule_native_replacement :
    ∃ E : ℝ, 0 ≤ E ∧ ∀ A : ℝ, 1 ≤ A →
      |sourceQuadraticValue explicitSecondDerivative A -
        (archimedeanValue explicitSecondDerivative A +
          ∑ n ∈ Finset.range (sourceEventCount A), firstPrimeEventGain A n)| ≤ 2 * E := by
  obtain ⟨E, hE, he⟩ :=
    SourcePrimePowerPartition.residual_firstPrime_uniform_replacement_error
  refine ⟨E, hE, ?_⟩
  intro A hA
  rw [sum_firstPrimeEventGain]
  have hq := sourceQuadraticValue_eq_event_sum A hA
  rw [sum_sourceEventGain A hA] at hq
  have hid : sourceQuadraticValue explicitSecondDerivative A -
      (archimedeanValue explicitSecondDerivative A +
        -2 * (SourcePrimePowerPartition.firstPrimeMoment A + diagonalMainCoefficient A * A)) =
      -2 * (mertensResidual A -
        (SourcePrimePowerPartition.firstPrimeMoment A + diagonalMainCoefficient A * A)) := by
    rw [hq]
    ring
  rw [hid, abs_mul]
  norm_num only [abs_neg, abs_of_nonneg (by norm_num : (0 : ℝ) ≤ 2)]
  exact mul_le_mul_of_nonneg_left (he A hA) (by norm_num)

/-- One-sided lifting to the literal complete residual. The source decoder is
proved above; only the supplied edge checks and terminal debt remain. -/
theorem residual_le_of_certificate (A C : ℝ) (hA : 1 ≤ A)
    (h g e : ℕ → ℝ)
    (hc : ∀ i < sourceEventCount A, 0 ≤ g i + h i - h (i + 1))
    (hb : ∀ i < sourceEventCount A, g i - e i ≤ sourceEventGain A i)
    (hbudget : h 0 - h (sourceEventCount A) +
      ∑ i ∈ Finset.range (sourceEventCount A), e i ≤ C) :
    mertensResidual A ≤ C / 2 := by
  have ht := FiniteGainCertificates.terminal_lower id h g (sourceEventGain A) e
    (sourceEventCount A) C hc hb hbudget
  rw [sum_sourceEventGain A hA] at ht
  linarith

/-- The smaller certificate consumes the actual relative first-prime target;
the square main term is already included with its correct unfavorable sign. -/
theorem firstPrime_main_le_of_certificate (A C : ℝ) (h g e : ℕ → ℝ)
    (hc : ∀ i < sourceEventCount A, 0 ≤ g i + h i - h (i + 1))
    (hb : ∀ i < sourceEventCount A, g i - e i ≤ firstPrimeEventGain A i)
    (hbudget : h 0 - h (sourceEventCount A) +
      ∑ i ∈ Finset.range (sourceEventCount A), e i ≤ C) :
    SourcePrimePowerPartition.firstPrimeMoment A + diagonalMainCoefficient A * A ≤ C / 2 := by
  have ht := FiniteGainCertificates.terminal_lower id h g (firstPrimeEventGain A) e
    (sourceEventCount A) C hc hb hbudget
  rw [sum_firstPrimeEventGain] at ht
  linarith

/-- The same certificate is applied immediately to the actual signed Abel
interaction. The continuous half costs its established constant two. -/
theorem criticalSignedWork_lower_of_certificate (A C : ℝ) (hA : 1 ≤ A)
    (h g e : ℕ → ℝ)
    (hc : ∀ i < sourceEventCount A, 0 ≤ g i + h i - h (i + 1))
    (hb : ∀ i < sourceEventCount A, g i - e i ≤ firstPrimeEventGain A i)
    (hbudget : h 0 - h (sourceEventCount A) +
      ∑ i ∈ Finset.range (sourceEventCount A), e i ≤ C) :
    diagonalMainCoefficient A * A - (C / 2 + 2) ≤ criticalSignedWork A := by
  have hf := firstPrime_main_le_of_certificate A C h g e hc hb hbudget
  rw [firstPrimeMoment_eq_continuous_sub_work A hA] at hf
  have hm := (abs_le.mp (criticalContinuousMoment_abs_le_two A hA)).1
  linarith

/-- The native finite-prefix floor, with the original strict inventory. -/
def originalFinitePrefixFloor (R : ℝ) : ℝ :=
  archimedeanMultiplier 0 - 2 * ∑ n ∈ EstimateTailReduction.primeIndices R,
    |ArithmeticFunction.vonMangoldt n / Real.sqrt n|

theorem originalFinitePrefixFloor_le (R A : ℝ) (hA : 1 ≤ A) (hAR : A ≤ R) :
    originalFinitePrefixFloor R ≤ sourceQuadraticValue explicitSecondDerivative A := by
  have hp := EstimateTailReduction.prime_contribution_le_finite_budget A R hA hAR
  have ha := SourceCorrectionEstimate.actual_archimedean_lower A hA
  unfold originalFinitePrefixFloor sourceQuadraticValue
  linarith

/-- Explicit original all-real lower witness, conditional only on actual edge
checks, one-sided source lifting and one fixed combined terminal debt. -/
theorem original_lower_of_source_certificates (C R : ℝ) (hR : 1 ≤ R)
    (h g e : ℝ → ℕ → ℝ)
    (hc : ∀ A : ℝ, R ≤ A → ∀ i < sourceEventCount A,
      0 ≤ g A i + h A i - h A (i + 1))
    (hb : ∀ A : ℝ, R ≤ A → ∀ i < sourceEventCount A,
      g A i - e A i ≤ sourceEventGain A i)
    (hbudget : ∀ A : ℝ, R ≤ A → h A 0 - h A (sourceEventCount A) +
      ∑ i ∈ Finset.range (sourceEventCount A), e A i ≤ C) :
    ∀ A : ℝ, 1 ≤ A →
      min (originalFinitePrefixFloor R) (archimedeanMultiplier 0 - C) ≤
        sourceQuadraticValue explicitSecondDerivative A := by
  intro A hA
  by_cases hRA : R ≤ A
  · have hr := residual_le_of_certificate A C (hR.trans hRA) (h A) (g A) (e A)
      (hc A hRA) (hb A hRA) (hbudget A hRA)
    have ha := SourceCorrectionEstimate.actual_archimedean_lower A hA
    have hq := sourceQuadraticValue_eq_event_sum A hA
    rw [sum_sourceEventGain A hA] at hq
    apply (min_le_right _ _).trans
    linarith
  · exact (min_le_left _ _).trans
      (originalFinitePrefixFloor_le R A hA (le_of_not_ge hRA))

/-- The proved replacement supplier is used in the explicit original
all-real witness for the smaller first-prime schedule. Its finite source loss
is independent of A and is added with the correct lower-bound sign. -/
theorem original_lower_of_firstPrime_certificates (C R : ℝ) (_hR : 1 ≤ R)
    (h g e : ℝ → ℕ → ℝ)
    (hc : ∀ A : ℝ, R ≤ A → ∀ i < sourceEventCount A,
      0 ≤ g A i + h A i - h A (i + 1))
    (hb : ∀ A : ℝ, R ≤ A → ∀ i < sourceEventCount A,
      g A i - e A i ≤ firstPrimeEventGain A i)
    (hbudget : ∀ A : ℝ, R ≤ A → h A 0 - h A (sourceEventCount A) +
      ∑ i ∈ Finset.range (sourceEventCount A), e A i ≤ C) :
    ∃ E : ℝ, 0 ≤ E ∧ ∀ A : ℝ, 1 ≤ A →
      min (originalFinitePrefixFloor R) (archimedeanMultiplier 0 - C - 2 * E) ≤
        sourceQuadraticValue explicitSecondDerivative A := by
  obtain ⟨E, hE, he⟩ := firstPrime_schedule_native_replacement
  refine ⟨E, hE, ?_⟩
  intro A hA
  by_cases hRA : R ≤ A
  · have ht := FiniteGainCertificates.terminal_lower id (h A) (g A)
      (firstPrimeEventGain A) (e A) (sourceEventCount A) C
      (hc A hRA) (hb A hRA) (hbudget A hRA)
    have hx := (abs_le.mp (he A hA)).1
    have ha := SourceCorrectionEstimate.actual_archimedean_lower A hA
    apply (min_le_right _ _).trans
    linarith
  · exact (min_le_left _ _).trans
      (originalFinitePrefixFloor_le R A hA (le_of_not_ge hRA))

/-- Fixed all-real certificate providers reach the live arithmetic consumer.
No scale-dependent credit is accepted as the constant C. -/
theorem estimate_of_firstPrime_certificates (C R : ℝ) (hC : 0 ≤ C) (hR : 1 ≤ R)
    (h g e : ℝ → ℕ → ℝ)
    (hc : ∀ A : ℝ, R ≤ A → ∀ i < sourceEventCount A,
      0 ≤ g A i + h A i - h A (i + 1))
    (hb : ∀ A : ℝ, R ≤ A → ∀ i < sourceEventCount A,
      g A i - e A i ≤ firstPrimeEventGain A i)
    (hbudget : ∀ A : ℝ, R ≤ A → h A 0 - h A (sourceEventCount A) +
      ∑ i ∈ Finset.range (sourceEventCount A), e A i ≤ C) :
    CorrelationAssembly.EstimateObligation := by
  apply SourcePrimePowerPartition.estimate_of_firstPrime_tail
  refine ⟨C / 2, by positivity, R, hR, ?_⟩
  intro A hRA
  exact firstPrime_main_le_of_certificate A C (h A) (g A) (e A)
    (hc A hRA) (hb A hRA) (hbudget A hRA)

/-- Full native certificates can also be consumed without any first-prime
approximation or its replacement error. -/
theorem estimate_of_source_certificates (C R : ℝ) (hC : 0 ≤ C) (hR : 1 ≤ R)
    (h g e : ℝ → ℕ → ℝ)
    (hc : ∀ A : ℝ, R ≤ A → ∀ i < sourceEventCount A,
      0 ≤ g A i + h A i - h A (i + 1))
    (hb : ∀ A : ℝ, R ≤ A → ∀ i < sourceEventCount A,
      g A i - e A i ≤ sourceEventGain A i)
    (hbudget : ∀ A : ℝ, R ≤ A → h A 0 - h A (sourceEventCount A) +
      ∑ i ∈ Finset.range (sourceEventCount A), e A i ≤ C) :
    CorrelationAssembly.EstimateObligation := by
  apply estimate_of_mertens_residual_tail
  refine ⟨C / 2, by positivity, R, hR, ?_⟩
  intro A hRA
  exact residual_le_of_certificate A C (hR.trans hRA) (h A) (g A) (e A)
    (hc A hRA) (hb A hRA) (hbudget A hRA)

/-- The literal finite prefix is a certificate candidate, not an independent
arithmetic estimate. Its storage can have either sign. -/
def exactPrefixPotential (A : ℝ) (k : ℕ) : ℝ :=
  ∑ n ∈ Finset.range k, sourceEventGain A n

theorem exactPrefixPotential_zero (A : ℝ) : exactPrefixPotential A 0 = 0 := by
  simp [exactPrefixPotential]

theorem exactPrefixPotential_step (A : ℝ) (k : ℕ) :
    sourceEventGain A k + exactPrefixPotential A k -
      exactPrefixPotential A (k + 1) = 0 := by
  simp only [exactPrefixPotential, Finset.sum_range_succ]
  ring

/-- This equality exposes why independently bounded storage is necessary.
Constructing a finite equality certificate alone does not bound its debt. -/
theorem exactPrefixPotential_terminal_debt (A : ℝ) (hA : 1 ≤ A) :
    exactPrefixPotential A 0 - exactPrefixPotential A (sourceEventCount A) =
      2 * mertensResidual A := by
  rw [exactPrefixPotential_zero]
  change 0 - (∑ n ∈ Finset.range (sourceEventCount A), sourceEventGain A n) = _
  rw [sum_sourceEventGain A hA]
  ring

/-- Quantitative obstruction to the canonical exact-prefix encoding: its
terminal budget has precisely the unchanged residual frontier. -/
theorem exactPrefix_debt_le_iff (A C : ℝ) (hA : 1 ≤ A) :
    exactPrefixPotential A 0 - exactPrefixPotential A (sourceEventCount A) ≤ C ↔
      mertensResidual A ≤ C / 2 := by
  rw [exactPrefixPotential_terminal_debt A hA]
  constructor <;> intro h <;> linarith

end FormalResearch.RiemannHypothesis.SourceFiniteGameBridge
