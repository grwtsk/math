/- Copyright (c) 2026 grwtsk contributors. MIT.
Mathematical direction: grwtsk contributors; formalization assistance: OpenAI.
SOURCE_PROOF_CANDIDATE / COMPILATION_NOT_RUN / EXPECTED_TYPES_NOT_RUN /
FRESH_KERNEL_NOT_RUN / TRANSITIVE_AXIOM_AUDIT_NOT_RUN.
-/
import GRWTSK.HarmonicAnalysisOnEuclideanSpaces.CMOriginalHighSmoothFiniteComplement
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.MoebiusHighSmoothAllRateProof
import Mathlib.Analysis.SpecialFunctions.Pow.Real
import Mathlib.Analysis.SpecificLimits.Basic
import Mathlib.Tactic

/-!
# The original fixed-prime-bank high support has a positive-halfplane Dirichlet budget

The support is the EXACT union of the existing source highSmoothBlock B (2^s)
(log(2^(s+1))) original integer shells: the predicate is "has a sufficiently
large B-smooth DIVISOR", not "is entirely B-smooth". Each original integer
frequency remains intact, including zero Möbius weights.

For every fixed real sigma>0, independently of Möbius cancellation,
the full nonnegative Dirichlet-weight mass on these shells is bounded by a
convergent geometric series. This is strictly stronger than just the existing
uniform inverse-square-root source response budget.

The finite weight estimates and bounded finite partial sums below are source
proof candidates. The complex locally-uniform convergence/holomorphy gate is
written as an OPEN Prop; it is not asserted to be a kernel-proved theorem.
The low source retains the 1/zeta poles, so no RH conclusion is claimed.
-/

set_option autoImplicit false
noncomputable section
open scoped BigOperators

namespace GRWTSK.Analysis.HarmonicAnalysis.ResidueCircleWaveHilbert.CMOriginalHighSmoothPositiveHalfplane

open GRWTSK.RiemannHypothesis.CCC
open GRWTSK.NumberTheory.LiouvilleFinitePrimeSieveOperator
open GRWTSK.NumberTheory.Moebius.PickupDyadicEndpoint
open GRWTSK.NumberTheory.Moebius.DyadicWeightedCorrelationInterface
open GRWTSK.NumberTheory.Moebius.HighSmoothAllRateProof
open GRWTSK.NumberTheory.Moebius.HighSmoothCofactorCountProof
open GRWTSK.Analysis.HarmonicAnalysis.ResidueCircleWaveHilbert.CMAdaptiveHighSmoothAllShell
open GRWTSK.Analysis.HarmonicAnalysis.ResidueCircleWaveHilbert.CMOriginalHighSmoothDirectEnergy
open GRWTSK.Analysis.HarmonicAnalysis.ResidueCircleWaveHilbert.CMOriginalHighSmoothFiniteComplement

/-- Fixed-bank, positive-real-rate source counting constant, with no sign input. -/
def highCountRateFactor (B : PrimeBand) (σ : ℝ) : ℝ :=
  Real.exp (4 / σ) *
    (1 + 4 * ((B.primes.card : ℝ) + 1) / (σ * Real.log 2)) ^ B.primes.card

theorem highCountRateFactor_nonneg (B : PrimeBand) {σ : ℝ} (hσ : 0 < σ) :
    0 ≤ highCountRateFactor B σ := by
  unfold highCountRateFactor
  have ha : 0 < Real.log (2 : ℝ) := Real.log_pos (by norm_num)
  positivity

private theorem shell_time (s : ℕ) :
    Real.log (2 * (((2 ^ s : ℕ) : ℝ))) = dyadicTime (s + 1) := by
  have h : (((2 ^ (s + 1) : ℕ) : ℝ)) =
      2 * (((2 ^ s : ℕ) : ℝ)) := by
    push_cast [pow_succ]
    ring
  rw [← h]
  exact log_dyadic_cutoff (s + 1)

private theorem shell_time_succ (s : ℕ) :
    dyadicTime (s + 1) = dyadicTime s + Real.log (2 : ℝ) := by
  unfold dyadicTime time
  push_cast
  ring

/-- SOURCE-specific high-smooth-divisor counting at an arbitrary positive
exponential rate: the two prior *real-variable* lemmas supply the rate.
No PNT, Mertens, RH, or signed-correlation hypothesis. -/
theorem highShell_card_le_positive_rate (B : PrimeBand) {σ : ℝ}
    (hσ : 0 < σ) (s : ℕ) :
    ((highShell B s).card : ℝ) ≤
      highCountRateFactor B σ *
        Real.exp ((σ / 2) * dyadicTime (s + 1)) := by
  let a : ℝ := Real.log 2
  let T : ℝ := dyadicTime (s + 1)
  let r : ℕ := B.primes.card
  let C : ℝ := (1 + 4 * ((r : ℝ) + 1) / (σ * a)) ^ r
  have ha : 0 < a := Real.log_pos (by norm_num)
  have hT : 0 ≤ T := dyadicTime_nonnegative (s + 1)
  have hroot0 := two_sqrt_le_linear_rate (σ / 2) T
    (by positivity : 0 < σ / 2) hT
  have hroot1 : 2 * Real.sqrt T ≤ 4 / σ + (σ / 4) * T := by
    convert hroot0 using 1 <;> (try field_simp [hσ.ne']) <;> ring
  have hroot :
      Real.exp (2 * Real.sqrt T) ≤
        Real.exp (4 / σ) * Real.exp ((σ / 4) * T) := by
    calc
      _ ≤ Real.exp (4 / σ + (σ / 4) * T) :=
        Real.exp_le_exp.mpr hroot1
      _ = _ := Real.exp_add _ _
  have hpoly0 := one_add_div_pow_le_exp_rate r a (σ / 2) T
    ha (by positivity : 0 < σ / 2) hT
  have hcoef :
      1 + 2 * ((r : ℝ) + 1) / ((σ / 2) * a) =
        1 + 4 * ((r : ℝ) + 1) / (σ * a) := by
    field_simp [hσ.ne', ha.ne']
    ring
  have hpoly :
      (1 + T / a) ^ r ≤ C * Real.exp ((σ / 4) * T) := by
    rw [hcoef, show ((σ / 2) / 2) * T = (σ / 4) * T by ring] at hpoly0
    exact hpoly0
  have hprod :
      Real.exp (2 * Real.sqrt T) * (1 + T / a) ^ r ≤
        (Real.exp (4 / σ) * Real.exp ((σ / 4) * T)) *
          (C * Real.exp ((σ / 4) * T)) := by
    exact mul_le_mul hroot hpoly (by positivity) (by positivity)
  have hcount := highSmoothCofactorCount_target B (2 ^ s)
    (by positivity : 1 ≤ 2 ^ s)
  calc
    ((highShell B s).card : ℝ) ≤
        Real.exp (2 * Real.sqrt T) * (1 + T / a) ^ r := by
          simpa only [highShell, shell_time, T, a, r] using hcount
    _ ≤ (Real.exp (4 / σ) * Real.exp ((σ / 4) * T)) *
          (C * Real.exp ((σ / 4) * T)) := hprod
    _ = highCountRateFactor B σ *
          Real.exp ((σ / 2) * T) := by
      have he : Real.exp ((σ / 4) * T) * Real.exp ((σ / 4) * T) =
          Real.exp ((σ / 2) * T) := by
        rw [← Real.exp_add]
        congr 1
        ring
      rw [← he]
      dsimp [highCountRateFactor, C, a, r, T]
      ring

/-- The exact positive real Dirichlet-weight mass of one original shell. -/
def highShellPowerMass (B : PrimeBand) (σ : ℝ) (s : ℕ) : ℝ :=
  ∑ n ∈ highShell B s, (n : ℝ) ^ (-σ)

def finiteHighPowerMass (B : PrimeBand) (σ : ℝ) (j : ℕ) : ℝ :=
  ∑ s ∈ Finset.range j, highShellPowerMass B σ s

theorem highShellPowerMass_nonneg (B : PrimeBand) (σ : ℝ) (s : ℕ) :
    0 ≤ highShellPowerMass B σ s := by
  unfold highShellPowerMass
  apply Finset.sum_nonneg
  intro n hn
  exact Real.rpow_nonneg (Nat.cast_nonneg _) _

private theorem dyadic_negative_rpow (σ : ℝ) (s : ℕ) :
    (((2 ^ s : ℕ) : ℝ)) ^ (-σ) =
      Real.exp (-σ * dyadicTime s) := by
  rw [← exp_dyadicTime, Real.rpow_def_of_pos (Real.exp_pos _), Real.log_exp]
  congr 1
  ring

/-- The original finite high-shell mass is controlled by its genuine
source count, without replacing the arithmetic coefficient by a model. -/
theorem highShellPowerMass_le_count (B : PrimeBand) {σ : ℝ}
    (hσ : 0 < σ) (s : ℕ) :
    highShellPowerMass B σ s ≤
      ((highShell B s).card : ℝ) *
        (((2 ^ s : ℕ) : ℝ)) ^ (-σ) := by
  unfold highShellPowerMass
  calc
    _ ≤ ∑ _n ∈ highShell B s, (((2 ^ s : ℕ) : ℝ)) ^ (-σ) := by
      apply Finset.sum_le_sum
      intro n hn
      have hX : (0 : ℝ) < (((2 ^ s : ℕ) : ℝ)) := by positivity
      have hn : (((2 ^ s : ℕ) : ℝ)) ≤ (n : ℝ) := by
        exact_mod_cast (Nat.le_of_lt (highShell_gt_lower B s n hn))
      exact Real.rpow_le_rpow_of_nonpos hX hn (by linarith)
    _ = _ := by simp

/-- The precise canonical ratio for arbitrary real Dirichlet exponent. -/
def positiveShellRatio (σ : ℝ) : ℝ :=
  Real.exp (-(σ / 2) * Real.log 2)

def positiveShellFactor (B : PrimeBand) (σ : ℝ) : ℝ :=
  highCountRateFactor B σ * Real.exp ((σ / 2) * Real.log 2)

theorem positiveShellRatio_nonneg {σ : ℝ} (hσ : 0 < σ) :
    0 ≤ positiveShellRatio σ := by
  unfold positiveShellRatio
  positivity

theorem positiveShellRatio_lt_one {σ : ℝ} (hσ : 0 < σ) :
    positiveShellRatio σ < 1 := by
  unfold positiveShellRatio
  have ha : 0 < Real.log (2 : ℝ) := Real.log_pos (by norm_num)
  have h : -(σ / 2) * Real.log 2 < 0 := by
    nlinarith
  simpa only [Real.exp_zero] using Real.exp_lt_exp.mpr h

private theorem positiveShellRatio_pow (σ : ℝ) (s : ℕ) :
    positiveShellRatio σ ^ s =
      Real.exp (-(σ / 2) * dyadicTime s) := by
  unfold positiveShellRatio dyadicTime time
  have h :
      (-(σ / 2) * Real.log 2) * (s : ℝ) =
        -(σ / 2) * ((s : ℝ) * Real.log 2) := by ring
  rw [← Real.exp_nat_mul]
  congr 1
  ring

/-- The key geometric cancellation is between the sparse source count
exp(+sigma*T/2) and the ORIGINAL Dirichlet damping n^(-sigma). -/
theorem highShellPowerMass_le_geometric (B : PrimeBand) {σ : ℝ}
    (hσ : 0 < σ) (s : ℕ) :
    highShellPowerMass B σ s ≤
      positiveShellFactor B σ * positiveShellRatio σ ^ s := by
  have hr : 0 ≤ (((2 ^ s : ℕ) : ℝ)) ^ (-σ) :=
    Real.rpow_nonneg (by positivity) _
  have hcount := highShell_card_le_positive_rate B hσ s
  have hweight := highShellPowerMass_le_count B hσ s
  calc
    highShellPowerMass B σ s ≤
        ((highShell B s).card : ℝ) *
          (((2 ^ s : ℕ) : ℝ)) ^ (-σ) := hweight
    _ ≤ (highCountRateFactor B σ *
          Real.exp ((σ / 2) * dyadicTime (s + 1))) *
          (((2 ^ s : ℕ) : ℝ)) ^ (-σ) :=
        mul_le_mul_of_nonneg_right hcount hr
    _ = positiveShellFactor B σ * positiveShellRatio σ ^ s := by
      rw [dyadic_negative_rpow, positiveShellRatio_pow]
      dsimp [positiveShellFactor]
      have he :
          Real.exp ((σ / 2) * dyadicTime (s + 1)) *
              Real.exp (-σ * dyadicTime s) =
            Real.exp ((σ / 2) * Real.log 2) *
              Real.exp (-(σ / 2) * dyadicTime s) := by
        rw [← Real.exp_add, ← Real.exp_add]
        congr 1
        rw [shell_time_succ]
        ring
      rw [mul_assoc, he]
      ring

/-- The central unconditional FINITE theorem: every positive exponent
has a uniform-in-cutoff absolute Dirichlet high-support mass.
The source cardinal lemma is genuinely about original integer indices. -/
theorem finiteHighPowerMass_uniform (B : PrimeBand) {σ : ℝ}
    (hσ : 0 < σ) :
    ∃ C : ℝ, 0 ≤ C ∧
      ∀ j : ℕ, finiteHighPowerMass B σ j ≤ C := by
  let q := positiveShellRatio σ
  let D := positiveShellFactor B σ
  have hq0 : 0 ≤ q := positiveShellRatio_nonneg hσ
  have hq1 : q < 1 := positiveShellRatio_lt_one hσ
  have hD : 0 ≤ D := by
    dsimp [D, positiveShellFactor]
    exact mul_nonneg (highCountRateFactor_nonneg B hσ) (Real.exp_pos _).le
  have hden : 0 < 1 - q := by linarith
  refine ⟨D * (1 - q)⁻¹, mul_nonneg hD (by positivity), ?_⟩
  intro j
  have hgeom :
      (∑ s ∈ Finset.range j, q ^ s) ≤ (1 - q)⁻¹ := by
    calc
      _ ≤ ∑' s : ℕ, q ^ s :=
        (summable_geometric_of_lt_one hq0 hq1).sum_le_tsum
          (Finset.range j) (fun s hs => pow_nonneg hq0 s)
      _ = (1 - q)⁻¹ := tsum_geometric_of_lt_one hq0 hq1
  calc
    finiteHighPowerMass B σ j ≤
        ∑ s ∈ Finset.range j, D * q ^ s := by
      unfold finiteHighPowerMass
      apply Finset.sum_le_sum
      intro s hs
      exact highShellPowerMass_le_geometric B hσ s
    _ = D * ∑ s ∈ Finset.range j, q ^ s := by rw [Finset.mul_sum]
    _ ≤ D * (1 - q)⁻¹ := mul_le_mul_of_nonneg_left hgeom hD

/-- Same original high indices, but now in the complex Dirichlet plane. -/
def highShellDirichletWave (B : PrimeBand) (s : ℕ) (z : ℂ) : ℂ :=
  ∑ n ∈ highShell B s,
    (((moebiusReal n : ℝ) : ℂ) * (n : ℂ) ^ (-z))

def finiteHighDirichletWave (B : PrimeBand) (j : ℕ) (z : ℂ) : ℂ :=
  ∑ n ∈ highIndexUnion B j,
    (((moebiusReal n : ℝ) : ℂ) * (n : ℂ) ^ (-z))

theorem highShellDirichletWave_norm_le_mass
    (B : PrimeBand) (s : ℕ) (z : ℂ) :
    ‖highShellDirichletWave B s z‖ ≤ highShellPowerMass B z.re s := by
  unfold highShellDirichletWave highShellPowerMass
  calc
    ‖∑ n ∈ highShell B s,
      (((moebiusReal n : ℝ) : ℂ) * (n : ℂ) ^ (-z))‖ ≤
        ∑ n ∈ highShell B s,
          ‖(((moebiusReal n : ℝ) : ℂ) * (n : ℂ) ^ (-z))‖ :=
      norm_sum_le _ _
    _ ≤ ∑ n ∈ highShell B s, (n : ℝ) ^ (-z.re) := by
      apply Finset.sum_le_sum
      intro n hn
      have hnpos : 0 < n := by
        have hlt := highShell_gt_lower B s n hn
        omega
      have hmu : |moebiusReal n| ≤ 1 := by
        rcases ArithmeticFunction.moebius_eq_or n with h | h | h <;>
          simp [moebiusReal, h]
      have hnorm : ‖(n : ℂ) ^ (-z)‖ =
          (n : ℝ) ^ (-z.re) := by
        simpa only [Complex.neg_re] using
          (norm_natCast_cpow_of_pos hnpos (-z))
      rw [norm_mul, hnorm]
      have hcast : ‖((moebiusReal n : ℝ) : ℂ)‖ ≤ 1 := by
        simpa using hmu
      calc
        ‖((moebiusReal n : ℝ) : ℂ)‖ *
          (n : ℝ) ^ (-z.re) ≤
            1 * (n : ℝ) ^ (-z.re) :=
          mul_le_mul_of_nonneg_right hcast
            (Real.rpow_nonneg (Nat.cast_nonneg _) _)
        _ = _ := one_mul _

theorem finiteHighDirichletWave_norm_le_mass
    (B : PrimeBand) (j : ℕ) (z : ℂ) :
    ‖finiteHighDirichletWave B j z‖ ≤
      finiteHighPowerMass B z.re j := by
  classical
  have heq : finiteHighDirichletWave B j z =
      ∑ s ∈ Finset.range j, highShellDirichletWave B s z := by
    unfold finiteHighDirichletWave highIndexUnion highShellDirichletWave
    rw [Finset.sum_biUnion (highShell_pairwise_disjoint B j)]
  rw [heq]
  calc
    ‖∑ s ∈ Finset.range j, highShellDirichletWave B s z‖ ≤
        ∑ s ∈ Finset.range j, ‖highShellDirichletWave B s z‖ :=
      norm_sum_le _ _
    _ ≤ ∑ s ∈ Finset.range j, highShellPowerMass B z.re s := by
      apply Finset.sum_le_sum
      intro s hs
      exact highShellDirichletWave_norm_le_mass B s z
    _ = finiteHighPowerMass B z.re j := rfl

/-- A verified scalar budget would control the actual complex high correction
uniformly over all ORIGINAL dyadic cutoffs for every Re(z)>0. -/
theorem finiteHighDirichletWave_uniform (B : PrimeBand) (z : ℂ)
    (hz : 0 < z.re) :
    ∃ C : ℝ, 0 ≤ C ∧ ∀ j : ℕ,
      ‖finiteHighDirichletWave B j z‖ ≤ C := by
  obtain ⟨C, hC, hb⟩ := finiteHighPowerMass_uniform B hz
  exact ⟨C, hC, fun j =>
    (finiteHighDirichletWave_norm_le_mass B j z).trans (hb j)⟩


/-- The ORIGINAL positive-integer Dirichlet polynomial, without a source
modulus, smoothing, new sign, or changed integer cutoff. -/
def originalFiniteDirichletWave (j : ℕ) (z : ℂ) : ℂ :=
  ∑ n ∈ indices j,
    (((moebiusReal n : ℝ) : ℂ) * (n : ℂ) ^ (-z))

/-- Every integer not in an actually selected high shell remains LOW. -/
def originalLowDirichletWave (B : PrimeBand) (j : ℕ) (z : ℂ) : ℂ :=
  ∑ n ∈ indices j,
    if n ∈ highIndexUnion B j then 0
    else (((moebiusReal n : ℝ) : ℂ) * (n : ℂ) ^ (-z))

/-- The original Dirichlet source equals the complete true high plus
true LOW correction at each finite dyadic cutoff. This exact algebraic
return does not assert the analytic infinite-series identity. -/
theorem originalFiniteDirichlet_eq_high_add_low
    (B : PrimeBand) (j : ℕ) (z : ℂ) :
    originalFiniteDirichletWave j z =
      finiteHighDirichletWave B j z +
        originalLowDirichletWave B j z := by
  classical
  let H : Finset ℕ := highIndexUnion B j
  have hsub : H ⊆ indices j := highIndexUnion_subset_indices B j
  have hfilter : (indices j).filter (fun n => n ∈ H) = H := by
    ext n
    simp only [Finset.mem_filter]
    constructor
    · intro hn
      exact hn.2
    · intro hn
      exact ⟨hsub hn, hn⟩
  have hhigh :
      finiteHighDirichletWave B j z =
        ∑ n ∈ indices j,
          if n ∈ H then
            (((moebiusReal n : ℝ) : ℂ) * (n : ℂ) ^ (-z))
          else 0 := by
    calc
      finiteHighDirichletWave B j z =
          ∑ n ∈ H, (((moebiusReal n : ℝ) : ℂ) *
            (n : ℂ) ^ (-z)) := rfl
      _ = ∑ n ∈ (indices j).filter (fun n => n ∈ H),
            (((moebiusReal n : ℝ) : ℂ) * (n : ℂ) ^ (-z)) := by
          rw [hfilter]
      _ = _ := by rw [Finset.sum_filter]
  unfold originalFiniteDirichletWave originalLowDirichletWave
  rw [hhigh, ← Finset.sum_add_distrib]
  apply Finset.sum_congr rfl
  intro n hn
  by_cases hm : n ∈ H <;> simp [hm]

/-- Original global support. Every source index is still a genuine integer. -/
def highGlobalIndex (B : PrimeBand) (n : ℕ) : Prop :=
  ∃ s : ℕ, n ∈ highShell B s

def highDirichletTerm (B : PrimeBand) (z : ℂ) (n : ℕ) : ℂ :=
  if highGlobalIndex B n then
    (((moebiusReal n : ℝ) : ℂ) * (n : ℂ) ^ (-z))
  else 0

def highDirichletSeries (B : PrimeBand) (z : ℂ) : ℂ :=
  ∑' n : ℕ, highDirichletTerm B z n

/-- Standard locally uniform convergence of the globally selected Dirichlet
subseries requires an additional pinned Lean analytic proof. It is a
PAPER-DERIVED proposition here, NOT asserted as a theorem or axiom. -/
def HighPositiveHalfplaneHolomorphy : Prop :=
  ∀ B : PrimeBand,
    DifferentiableOn ℂ (highDirichletSeries B)
      {z : ℂ | 0 < z.re}

/-- The genuine LOW Dirichlet series carries all 1/zeta poles in Re(z)>0
because subtracting the holomorphic high subseries cannot cancel a pole.
The analytic continuation/source identification is NOT asserted as a
kernel-proved theorem here. The original RH-strength low arithmetic
supplier remains OPEN. -/

end GRWTSK.Analysis.HarmonicAnalysis.ResidueCircleWaveHilbert.CMOriginalHighSmoothPositiveHalfplane
