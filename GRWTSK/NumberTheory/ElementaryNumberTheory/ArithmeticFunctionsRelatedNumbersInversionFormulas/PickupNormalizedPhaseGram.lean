/- Copyright (c) 2026 grwtsk contributors. MIT.
Imported GRWTSK and Mathlib sources retain their upstream licenses. -/
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses.PickupDiffusionCriterion

/-!
# Exact normalized phase-packet Gram and its signed source allowance

Zero diagonal rows are proved to vanish by compact Cauchy--Schwarz before
normalization. The resulting finite Gram synthesis is exactly nine times the
actual phase average. No identity between a Euclidean transpose and the source
adjoint, uniform Bessel bound, or packet growth witness is assumed.
SOURCE_PROOF_CANDIDATE / NOT_RUN / NOT_KERNEL_AUDITED.
-/
set_option autoImplicit false
noncomputable section
open MeasureTheory
open scoped BigOperators
namespace GRWTSK.NumberTheory.Moebius.PickupNormalizedPhaseGram
open GRWTSK.RiemannHypothesis.CCC
open GRWTSK.Analysis.IntegralInequalities.VolterraEnergyBound
open PickupPhaseQuadratic PickupDiffusionCriterion MertensSignedPairDescent

/-- A zero diagonal kills the whole original row, not just its diagonal term. -/
theorem responseGram_zero_of_diagonal {T : ℝ} (hT : 0 ≤ T)
    {m n : ℕ} (hm : 1 ≤ m) (hn : 1 ≤ n)
    (hz : pickupResponseGram T m m = 0) : pickupResponseGram T m n = 0 := by
  have h := integral_product_sq 0 T hT (pickupResponse m) (pickupResponse n)
    (pickupResponse_continuous hm) (pickupResponse_continuous hn)
  simp only [pow_two] at h
  change pickupResponseGram T m n * pickupResponseGram T m n ≤
    pickupResponseGram T m m * pickupResponseGram T n n at h
  rw [hz, zero_mul] at h
  exact (sq_nonpos_iff).mp (by simpa only [pow_two] using h)

def gramScale (T : ℝ) (n : ℕ) : ℝ := Real.sqrt (pickupResponseGram T n n)

def normalizedGram (T : ℝ) (m n : ℕ) : ℝ :=
  if gramScale T m = 0 ∨ gramScale T n = 0 then 0
  else phaseGram T m n / (gramScale T m * gramScale T n)

/-- No division by a vanishing birth vector is used. -/
theorem phaseGram_factorization {T : ℝ} (hT : 0 ≤ T)
    {m n : ℕ} (hm : 1 ≤ m) (hn : 1 ≤ n) :
    phaseGram T m n = gramScale T m * gramScale T n * normalizedGram T m n := by
  have hm0 : (gramScale T m)^2 = pickupResponseGram T m m :=
    Real.sq_sqrt (responseGram_nonneg hm hm hT)
  have hn0 : (gramScale T n)^2 = pickupResponseGram T n n :=
    Real.sq_sqrt (responseGram_nonneg hn hn hT)
  unfold normalizedGram
  by_cases hz : gramScale T m = 0 ∨ gramScale T n = 0
  · rw [if_pos hz, mul_zero]
    rcases hz with hz | hz
    · have hg : pickupResponseGram T m m = 0 := by rw [hz] at hm0; simpa using hm0.symm
      simp [phaseGram, responseGram_zero_of_diagonal hT hm hn hg]
    · have hg : pickupResponseGram T n n = 0 := by rw [hz] at hn0; simpa using hn0.symm
      have hmn : pickupResponseGram T m n = 0 := by
        rw [responseGram_symm T m n]
        exact responseGram_zero_of_diagonal hT hn hm hg
      simp [phaseGram, hmn]
  · rw [if_neg hz]
    have hmz : gramScale T m ≠ 0 := fun h => hz (Or.inl h)
    have hnz : gramScale T n ≠ 0 := fun h => hz (Or.inr h)
    field_simp [hmz, hnz]

theorem normalizedGram_diagonal {T : ℝ} (hT : 0 ≤ T) {n : ℕ} (hn : 1 ≤ n) :
    normalizedGram T n n = if gramScale T n = 0 then 0 else 1 := by
  unfold normalizedGram
  by_cases hz : gramScale T n = 0
  · simp [hz]
  · simp only [hz, or_self, if_false, phaseGram_diagonal]
    have hs : gramScale T n * gramScale T n = pickupResponseGram T n n := by
      simpa only [pow_two] using Real.sq_sqrt (responseGram_nonneg hn hn hT)
    rw [← hs]
    exact div_self (mul_ne_zero hz hz)

/-- The finite normalized synthesis retains every ordered pair. -/
def packetSynthesis (T : ℝ) : ℝ :=
  ∑ m ∈ Finset.Icc 1 ⌊Real.exp T⌋₊, ∑ n ∈ Finset.Icc 1 ⌊Real.exp T⌋₊,
    packetCoefficient T m * packetCoefficient T n * normalizedGram T m n

theorem packetSynthesis_eq_nine_phaseAverage {T : ℝ} (hT : 0 ≤ T) :
    packetSynthesis T = 9 * phaseAverage T := by
  rw [phaseAverage_eq_gram]
  unfold packetSynthesis
  rw [Finset.mul_sum]
  apply Finset.sum_congr rfl
  intro m hm
  rw [Finset.mul_sum]
  apply Finset.sum_congr rfl
  intro n hn
  rw [phaseGram_factorization hT (Finset.mem_Icc.mp hm).1 (Finset.mem_Icc.mp hn).1]
  unfold packetCoefficient gramScale
  ring

theorem packetSynthesis_nonnegative {T : ℝ} (hT : 0 ≤ T) : 0 ≤ packetSynthesis T := by
  rw [packetSynthesis_eq_nine_phaseAverage hT]
  exact mul_nonneg (by norm_num) (phaseAverage_nonnegative hT)

/-- The negative diagonal is the original diagonal, not an assigned remainder. -/
theorem cross_le_packetSynthesis_sub_diagonal {T : ℝ} (hT : 0 ≤ T) :
    pickupCross T ≤ packetSynthesis T - pickupDiagonal T := by
  rw [packetSynthesis_eq_nine_phaseAverage hT]
  exact cross_le_nine_phaseAverage_sub_diagonal hT

end GRWTSK.NumberTheory.Moebius.PickupNormalizedPhaseGram
