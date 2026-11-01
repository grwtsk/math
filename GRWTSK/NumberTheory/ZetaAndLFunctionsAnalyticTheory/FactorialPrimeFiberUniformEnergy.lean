/- Copyright (c) 2026 grwtsk contributors. MIT.
SOURCE_PROOF_CANDIDATE / COMPILATION_NOT_RUN / EXPECTED_TYPES_NOT_RUN /
FRESH_KERNEL_NOT_RUN / TRANSITIVE_AXIOM_AUDIT_NOT_RUN.
-/
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.SignedWaveformEnergyTarget
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.LiouvilleCausalPhysicalGramIntegrability
import Mathlib

/-!
# Factorial prime-length ports and the original signed causal energy

The finite arithmetic fibers use the actual integers `(p + 1)! + 2 + a`,
with `a : Fin p`. Each fiber point is composite for `p >= 2`.
The original real Möbius coefficients and literal causal responses are
retained. Splitting the complete source uses both complementary channels;
its square is formed only after their signed sum.

There are two mathematically distinct budgets:
* an unconditional theorem for any finite positive source inventory, bounded
  by its actual Möbius-weighted reciprocal-square-root mass;
* the analytical factorial-block bound `9*T/25`, whose infinite-prime
  arithmetic mass estimate is here an EXPLICIT premise, not an axiom or an
  asserted Lean theorem. The existing all-rate dense complement/RH-facing
  `UniformSignedWaveformEnergyBudget` is NOT proved or instantiated.

The successful mathematical derivation of the infinite factorial tail is in
`documentation/mathematics/_support/reviews/
uniform-energy-reflected-factorial-fibers-and-dense-matching-gate.md`.
Formal acceptance requires separate compilation, fresh kernel replay,
expected-type check, and transitive axiom audit at this exact source.
-/

set_option autoImplicit false
noncomputable section
open scoped BigOperators
open MeasureTheory Set
open GRWTSK.RiemannHypothesis.CCC
open GRWTSK.NumberTheory.SignedWaveformEnergy
open GRWTSK.NumberTheory.LiouvilleCausalPhysicalGramIntegrability
open GRWTSK.NumberTheory.LiouvillePrimeOverlapReconstruction

namespace GRWTSK.NumberTheory.FactorialPrimeFiberUniformEnergy

classical

/-- The original positive integer assigned to a prime-length phase digit. -/
def blockIndex (p : ℕ) (a : Fin p) : ℕ :=
  (p + 1).factorial + (a.val + 2)

/-- Each phase retains the full integer, not merely its prime tag. -/
theorem blockIndex_injective (p : ℕ) : Function.Injective (blockIndex p) := by
  intro a b h
  apply Fin.ext
  dsimp [blockIndex] at h
  omega

/-- The factorial interval has a strict, nontrivial divisor at each phase. -/
theorem blockIndex_composite (p : ℕ) (hp : 2 ≤ p) (a : Fin p) :
    ¬ Nat.Prime (blockIndex p a) := by
  let k : ℕ := a.val + 2
  have hkpos : 0 < k := by dsimp [k]; omega
  have hkle : k ≤ p + 1 := by
    dsimp [k]
    have ha := a.isLt
    omega
  have hdiv : k ∣ blockIndex p a := by
    have hf : k ∣ (p + 1).factorial := Nat.dvd_factorial hkpos hkle
    dsimp [blockIndex, k]
    exact dvd_add hf (dvd_refl _)
  intro hprime
  rcases hprime.eq_one_or_self_of_dvd k hdiv with hk | hk
  · dsimp [k] at hk
    omega
  · have hfact : 0 < (p + 1).factorial := Nat.factorial_pos _
    dsimp [blockIndex, k] at hk
    omega

/-- The actual prime-length factorial-block membership, not the distinct
`P_T`-roughness predicate. -/
def InFactorialPrimeBlock (n : ℕ) : Prop :=
  ∃ p : ℕ, Nat.Prime p ∧ ∃ a : Fin p, blockIndex p a = n

/-- All members of these source blocks are rigorously composite. -/
theorem not_prime_of_mem_block {n : ℕ}
    (hn : InFactorialPrimeBlock n) : ¬ Nat.Prime n := by
  rcases hn with ⟨p, hp, a, rfl⟩
  exact blockIndex_composite p hp.two_le a

/-- The finite ORIGINAL inventory selected by the global block predicate.
Zero and every unsupported integer are excluded without changing labels. -/
def activeBlock (N : ℕ) : Finset ℕ := by
  classical
  exact (Finset.Icc 1 N).filter InFactorialPrimeBlock

/-- Original signed response over ANY fixed positive source inventory. -/
def finiteWave (S : Finset ℕ) (u : ℝ) : ℝ :=
  ∑ n ∈ S, moebiusReal n * pickupResponse n u

/-- The actual Möbius-weighted (not positive-only replacement) finite mass. -/
def sourceWeight (n : ℕ) : ℝ :=
  |moebiusReal n| * (2 * (Real.sqrt (n : ℝ))⁻¹)

def sourceWeightBudget (S : Finset ℕ) : ℝ :=
  ∑ n ∈ S, sourceWeight n

/-- No source coefficient has magnitude exceeding one. -/
theorem abs_moebiusReal_le_one (n : ℕ) : |moebiusReal n| ≤ 1 := by
  have h : |(ArithmeticFunction.moebius n : ℤ)| ≤ 1 :=
    ArithmeticFunction.abs_moebius_le_one
  unfold moebiusReal
  exact_mod_cast h

/-- The literal causal pickup is nonnegative and bounded by its birth weight.
The positive-index premise prevents a spurious log(0) conversion. -/
theorem pickupResponse_bounds (n : ℕ) (hn : 0 < n) (u : ℝ) :
    0 ≤ pickupResponse n u ∧
      pickupResponse n u ≤ 2 * (Real.sqrt (n : ℝ))⁻¹ := by
  have hnreal : 0 < (n : ℝ) := by exact_mod_cast hn
  have hsqrt :
      (Real.sqrt (n : ℝ))⁻¹ = Real.exp (-Real.log (n : ℝ) / 2) := by
    calc
      (Real.sqrt (n : ℝ))⁻¹ =
          (Real.exp (Real.log (n : ℝ) / 2))⁻¹ := by
            rw [Real.exp_half, Real.exp_log hnreal]
      _ = Real.exp (-(Real.log (n : ℝ) / 2)) := by
            rw [Real.exp_neg]
      _ = Real.exp (-Real.log (n : ℝ) / 2) := by ring
  by_cases hbirth : Real.log (n : ℝ) ≤ u
  · have hexp : Real.exp (-u / 2) ≤ (Real.sqrt (n : ℝ))⁻¹ := by
      rw [hsqrt]
      exact Real.exp_le_exp.mpr (by linarith)
    simp only [pickupResponse, if_pos hbirth]
    constructor
    · nlinarith
    · nlinarith [Real.exp_pos (-u / 2)]
  · simp [pickupResponse, hbirth]
    positivity

/-- Pointwise amplitude bound after COMPLETE signed summation.
This inequality is unconditional and its RHS retains the ACTUAL mu zeros. -/
theorem finiteWave_abs_le_weightBudget (S : Finset ℕ)
    (hpositive : ∀ n ∈ S, 0 < n) (u : ℝ) :
    |finiteWave S u| ≤ sourceWeightBudget S := by
  unfold finiteWave sourceWeightBudget
  calc
    |∑ n ∈ S, moebiusReal n * pickupResponse n u| ≤
        ∑ n ∈ S, |moebiusReal n * pickupResponse n u| :=
      Finset.abs_sum_le_sum_abs _ _
    _ ≤ ∑ n ∈ S, sourceWeight n := by
      apply Finset.sum_le_sum
      intro n hn
      obtain ⟨hr0, hrle⟩ := pickupResponse_bounds n (hpositive n hn) u
      unfold sourceWeight
      rw [abs_mul, abs_of_nonneg hr0]
      exact mul_le_mul_of_nonneg_left hrle (abs_nonneg _)

/-- Finite original-index source is continuous, using the previously
written literal birth-joining theorem (not a smoothed replacement). -/
theorem finiteWave_continuous (S : Finset ℕ)
    (hpositive : ∀ n ∈ S, 0 < n) : Continuous (finiteWave S) := by
  unfold finiteWave
  exact continuous_finsetSum S (fun n hn =>
    continuous_const.mul (pickupResponse_continuous n (hpositive n hn)))

/-- Physical-time energy of a frozen finite inventory. -/
def finiteEnergy (S : Finset ℕ) (T : ℝ) : ℝ :=
  ∫ u in (0 : ℝ)..T, |finiteWave S u| ^ 2

/-- A proved unconditional uniform-in-time energy estimate for EVERY finite
positive source inventory. No arithmetic bound on its total mass is assumed. -/
theorem finiteEnergy_le_weightBudget_sq
    (S : Finset ℕ) (hpositive : ∀ n ∈ S, 0 < n)
    (T : ℝ) (hT : 0 ≤ T) :
    finiteEnergy S T ≤ T * (sourceWeightBudget S) ^ 2 := by
  have hcontinuity : Continuous (finiteWave S) :=
    finiteWave_continuous S hpositive
  have hint : IntervalIntegrable
      (fun u : ℝ => |finiteWave S u| ^ 2) volume 0 T :=
    (hcontinuity.abs.pow 2).intervalIntegrable 0 T
  have hbudget0 : 0 ≤ sourceWeightBudget S := by
    unfold sourceWeightBudget sourceWeight
    apply Finset.sum_nonneg
    intro n hn
    exact mul_nonneg (abs_nonneg _) (by positivity)
  calc
    finiteEnergy S T ≤
        ∫ u in (0 : ℝ)..T, (sourceWeightBudget S) ^ 2 := by
      unfold finiteEnergy
      apply intervalIntegral.integral_mono_on hT hint intervalIntegrable_const
      intro u hu
      have habs := finiteWave_abs_le_weightBudget S hpositive u
      have h0 : 0 ≤ |finiteWave S u| := abs_nonneg _
      nlinarith
    _ = T * (sourceWeightBudget S) ^ 2 := by simp [smul_eq_mul]

/-- Exact physical-time return to the original complete signed Gram.
Both ordered directions, all diagonal terms and mixed parities are present.
This holds for any finite positive inventory, without a cancellation premise. -/
theorem finiteEnergy_eq_full_signedGram
    (S : Finset ℕ) (hpositive : ∀ n ∈ S, 0 < n) (T : ℝ) :
    finiteEnergy S T =
      ∑ n ∈ S, ∑ m ∈ S,
        moebiusReal n * moebiusReal m * pickupResponseGram T n m := by
  have hint : ∀ n ∈ S, ∀ m ∈ S,
      IntervalIntegrable
        (fun u : ℝ =>
          (moebiusReal n * moebiusReal m) *
            (pickupResponse n u * pickupResponse m u)) volume 0 T := by
    intro n hn m hm
    exact (pickupResponse_product_intervalIntegrable n m
      (hpositive n hn) (hpositive m hm) T).const_mul
      (moebiusReal n * moebiusReal m)
  calc
    finiteEnergy S T =
        ∫ u in (0 : ℝ)..T, ∑ n ∈ S, ∑ m ∈ S,
          (moebiusReal n * moebiusReal m) *
            (pickupResponse n u * pickupResponse m u) := by
      unfold finiteEnergy
      apply intervalIntegral.integral_congr
      intro u _
      dsimp only [finiteWave]
      rw [sq_abs, pow_two, Finset.sum_mul_sum]
      apply Finset.sum_congr rfl
      intro n hn
      apply Finset.sum_congr rfl
      intro m hm
      ring
    _ = ∑ n ∈ S, ∑ m ∈ S,
          ∫ u in (0 : ℝ)..T,
            (moebiusReal n * moebiusReal m) *
              (pickupResponse n u * pickupResponse m u) :=
      integrate_finite_double_sum S T
        (fun n m u =>
          (moebiusReal n * moebiusReal m) *
            (pickupResponse n u * pickupResponse m u)) hint
    _ = ∑ n ∈ S, ∑ m ∈ S,
          moebiusReal n * moebiusReal m * pickupResponseGram T n m := by
      apply Finset.sum_congr rfl
      intro n hn
      apply Finset.sum_congr rfl
      intro m hm
      rw [intervalIntegral.integral_const_mul]
      rfl

/-- Actual causal waveform with the active factorial-prime source labels. -/
def blockWave (u : ℝ) : ℝ :=
  finiteWave (activeBlock ⌊Real.exp u⌋₊) u

/-- The longer frozen inventory changes NO value at earlier physical times. -/
theorem blockWave_eq_fixed_of_le (T u : ℝ) (hu : u ≤ T) :
    blockWave u = finiteWave (activeBlock ⌊Real.exp T⌋₊) u := by
  classical
  have hfloor : ⌊Real.exp u⌋₊ ≤ ⌊Real.exp T⌋₊ :=
    Nat.floor_mono (Real.exp_le_exp.mpr hu)
  have hsub : activeBlock ⌊Real.exp u⌋₊ ⊆
      activeBlock ⌊Real.exp T⌋₊ := by
    intro n hn
    have hs := Finset.mem_filter.mp hn
    apply Finset.mem_filter.mpr
    exact ⟨Finset.mem_Icc.mpr
      ⟨(Finset.mem_Icc.mp hs.1).1,
       (Finset.mem_Icc.mp hs.1).2.trans hfloor⟩, hs.2⟩
  unfold blockWave finiteWave
  apply Finset.sum_subset hsub
  intro n hn hnot
  have hlarge : ⌊Real.exp u⌋₊ < n := by
    by_contra hh
    have hle : n ≤ ⌊Real.exp u⌋₊ := Nat.le_of_not_gt hh
    exact hnot (Finset.mem_filter.mpr
      ⟨Finset.mem_Icc.mpr
        ⟨(Finset.mem_Icc.mp (Finset.mem_filter.mp hn).1).1, hle⟩,
       (Finset.mem_filter.mp hn).2⟩)
  rw [pickupResponse_zero_of_floor_lt n u hlarge]
  ring

/-- Full actual-source factorial-block energy with dynamic births. -/
def blockEnergy (T : ℝ) : ℝ :=
  ∫ u in (0 : ℝ)..T, |blockWave u| ^ 2

theorem blockEnergy_eq_frozen (T : ℝ) (hT : 0 ≤ T) :
    blockEnergy T = finiteEnergy (activeBlock ⌊Real.exp T⌋₊) T := by
  unfold blockEnergy finiteEnergy
  apply intervalIntegral.integral_congr
  intro u hu
  rw [blockWave_eq_fixed_of_le T u hu.2]

/-- The original dynamically born factorial block has exactly the old
signed physical-time Gram over the complete frozen active inventory. -/
theorem blockEnergy_eq_full_signedGram (T : ℝ) (hT : 0 ≤ T) :
    blockEnergy T =
      ∑ n ∈ activeBlock ⌊Real.exp T⌋₊,
        ∑ m ∈ activeBlock ⌊Real.exp T⌋₊,
          moebiusReal n * moebiusReal m * pickupResponseGram T n m := by
  rw [blockEnergy_eq_frozen T hT]
  apply finiteEnergy_eq_full_signedGram
  intro n hn
  exact (Finset.mem_Icc.mp (Finset.mem_filter.mp hn).1).1

/-- Dense complementary original integer source; squareful zeros and n=1
remain part of the source. The factorial-block / rough-number masks differ. -/
def denseWave (u : ℝ) : ℝ :=
  ∑ n ∈ Finset.Icc 1 ⌊Real.exp u⌋₊,
    if InFactorialPrimeBlock n then 0
    else moebiusReal n * pickupResponse n u

/-- Exact total-source partition, formed before squaring. -/
theorem waveform_eq_block_add_dense (u : ℝ) :
    waveform u = blockWave u + denseWave u := by
  classical
  unfold waveform blockWave finiteWave activeBlock denseWave
  simp only [Finset.sum_filter]
  rw [← Finset.sum_add_distrib]
  apply Finset.sum_congr rfl
  intro n hn
  by_cases h : InFactorialPrimeBlock n <;> simp [h]

/-- The COMPLETE mixed quadratic is not a sum of independent positive
per-fiber variances. In particular the two mixed orientations survive. -/
theorem waveform_sq_eq_complete_mixed (u : ℝ) :
    |waveform u| ^ 2 =
      |blockWave u| ^ 2 +
        2 * blockWave u * denseWave u + |denseWave u| ^ 2 := by
  rw [waveform_eq_block_add_dense]
  simp only [sq_abs]
  ring

/-- Source-exact full physical-time integral, without erasing mixed terms. -/
theorem energy_eq_complete_mixed_integral (T : ℝ) :
    energy T =
      ∫ u in (0 : ℝ)..T,
        (|blockWave u| ^ 2 +
          2 * blockWave u * denseWave u + |denseWave u| ^ 2) := by
  unfold energy
  apply intervalIntegral.integral_congr
  intro u _
  exact waveform_sq_eq_complete_mixed u

/-- Elementary pointwise energy comparison, retaining a rigorous allowance
for the signed mixed term rather than declaring it zero. -/
theorem waveform_sq_le_two_component_squares (u : ℝ) :
    |waveform u| ^ 2 ≤
      2 * |blockWave u| ^ 2 + 2 * |denseWave u| ^ 2 := by
  rw [waveform_eq_block_add_dense]
  simp only [sq_abs]
  nlinarith [sq_nonneg (blockWave u - denseWave u)]

/-- The **remaining finite arithmetic lemma** in the published analytic
9/25 proof: every finite factorial-prime inventory, with its ACTUAL mu signs
and squareful zeros, has total inverse-sqrt mass at most 3/5. It is a Prop,
not an axiom or a theorem asserted without an elaborated proof. -/
def FactorialBlockArithmeticWeightBound : Prop :=
  ∀ N : ℕ, sourceWeightBudget (activeBlock N) ≤ (3 : ℝ) / 5

/-- Exact conditional return of the arithmetic weight lemma to the proved
finite-inventory energy and original dynamic birth source. -/
theorem blockEnergy_le_nine_twentyfifths_of_weightBound
    (hweight : FactorialBlockArithmeticWeightBound)
    (T : ℝ) (hT : 0 ≤ T) :
    blockEnergy T ≤ (9 : ℝ) / 25 * T := by
  let S := activeBlock ⌊Real.exp T⌋₊
  have hpos : ∀ n ∈ S, 0 < n := by
    intro n hn
    exact (Finset.mem_Icc.mp (Finset.mem_filter.mp hn).1).1
  have hmass : sourceWeightBudget S ≤ (3 : ℝ) / 5 :=
    hweight ⌊Real.exp T⌋₊
  have hnonneg : 0 ≤ sourceWeightBudget S := by
    unfold sourceWeightBudget sourceWeight
    apply Finset.sum_nonneg
    intro n hn
    exact mul_nonneg (abs_nonneg _) (by positivity)
  have hsquared : (sourceWeightBudget S) ^ 2 ≤ (9 : ℝ) / 25 := by
    nlinarith [sq_nonneg (sourceWeightBudget S)]
  calc
    blockEnergy T = finiteEnergy S T := blockEnergy_eq_frozen T hT
    _ ≤ T * (sourceWeightBudget S) ^ 2 :=
      finiteEnergy_le_weightBudget_sq S hpos T hT
    _ ≤ (9 : ℝ) / 25 * T := by
      nlinarith [mul_nonneg hT (sub_nonneg.mpr hsquared)]

/-- Once the actual finite factorial-block arithmetic mass lemma is
proved, the original block energy has an all-positive-rate dyadic budget.
The stated dependence of the constant on δ is explicit. -/
theorem block_allRate_of_weightBound
    (hweight : FactorialBlockArithmeticWeightBound) :
    ∀ δ : ℝ, 0 < δ → ∃ Cδ : ℝ, 0 ≤ Cδ ∧
      ∀ j : ℕ,
        blockEnergy ((j : ℝ) * Real.log 2) ≤
          Cδ * (2 : ℝ) ^ (δ * (j : ℝ)) := by
  intro δ hδ
  let Cδ : ℝ := ((9 : ℝ) / 25) * δ⁻¹
  have hC : 0 ≤ Cδ := by dsimp [Cδ]; positivity
  refine ⟨Cδ, hC, ?_⟩
  intro j
  let T : ℝ := (j : ℝ) * Real.log 2
  have hT : 0 ≤ T := by
    dsimp [T]
    exact mul_nonneg (by positivity) (Real.log_nonneg (by norm_num))
  have hgrowth : δ * T ≤ Real.exp (δ * T) := by
    nlinarith [Real.add_one_le_exp (δ * T)]
  have hInv : 0 ≤ δ⁻¹ := inv_nonneg.mpr hδ.le
  have htime : T ≤ δ⁻¹ * Real.exp (δ * T) := by
    calc
      T = (δ⁻¹ * δ) * T := by rw [inv_mul_cancel₀ hδ.ne']; ring
      _ = δ⁻¹ * (δ * T) := by ring
      _ ≤ δ⁻¹ * Real.exp (δ * T) :=
        mul_le_mul_of_nonneg_left hgrowth hInv
  have hpow :
      (2 : ℝ) ^ (δ * (j : ℝ)) = Real.exp (δ * T) := by
    rw [Real.rpow_def_of_pos (by norm_num : (0 : ℝ) < 2) (δ * (j : ℝ))]
    dsimp [T]
    congr 1
    ring
  calc
    blockEnergy T ≤ (9 : ℝ) / 25 * T :=
      blockEnergy_le_nine_twentyfifths_of_weightBound hweight T hT
    _ ≤ (9 : ℝ) / 25 * (δ⁻¹ * Real.exp (δ * T)) :=
      mul_le_mul_of_nonneg_left htime (by norm_num)
    _ = Cδ * (2 : ℝ) ^ (δ * (j : ℝ)) := by
      rw [hpow]
      dsimp [Cδ]
      ring

/-- Reflected-even and reflected-odd phase profiles on the exact ZMod p
address. They are NOT claimed to be symmetries of the numerical kernel. -/
def evenPhase {p : ℕ} (f : ZMod p → ℝ) (a : ZMod p) : ℝ :=
  (f a + f (-a)) / 2

def oddPhase {p : ℕ} (f : ZMod p → ℝ) (a : ZMod p) : ℝ :=
  (f a - f (-a)) / 2

/-- Pointwise exact reflection decomposition, retaining every source sign. -/
theorem even_add_odd {p : ℕ} (f : ZMod p → ℝ) (a : ZMod p) :
    evenPhase f a + oddPhase f a = f a := by
  unfold evenPhase oddPhase
  ring

theorem odd_reflect_neg {p : ℕ} (f : ZMod p → ℝ) (a : ZMod p) :
    oddPhase f (-a) = -oddPhase f a := by
  simp only [oddPhase, neg_neg]
  ring

/-- An exact signed two-index identity: if reflection changes the actual
source labels, its numerical and arithmetic defect MUST be counted. -/
theorem signed_pair_defect (m n : ℕ) (u : ℝ) :
    moebiusReal m * pickupResponse m u +
      moebiusReal n * pickupResponse n u =
    moebiusReal m * (pickupResponse m u - pickupResponse n u) +
      (moebiusReal m + moebiusReal n) * pickupResponse n u := by
  ring

/-- The dense complementary waveform has its own integral, including its
actual mixed-pair contributions before the square is formed. -/
def denseEnergy (T : ℝ) : ℝ :=
  ∫ u in (0 : ℝ)..T, |denseWave u| ^ 2

/-- The still-OPEN dense every-positive-rate arithmetic target. Its
mathematical equivalence to the original complete budget is explained in
the attached analytical disposition, not claimed kernel checked here. -/
def DenseUniformEnergyBudget : Prop :=
  ∀ δ : ℝ, 0 < δ → ∃ Cδ : ℝ, 0 ≤ Cδ ∧ ∀ j : ℕ,
    denseEnergy ((j : ℝ) * Real.log 2) ≤
      Cδ * (2 : ℝ) ^ (δ * (j : ℝ))

/-- The original all-rate theorem remains exactly the existing research
obligation: this is an alias, NOT a proof or a replacement axiom. -/
def OriginalUniformEnergyResearchTarget : Prop :=
  GRWTSK.NumberTheory.SignedWaveformEnergy.UniformSignedWaveformEnergyBudget

end GRWTSK.NumberTheory.FactorialPrimeFiberUniformEnergy
