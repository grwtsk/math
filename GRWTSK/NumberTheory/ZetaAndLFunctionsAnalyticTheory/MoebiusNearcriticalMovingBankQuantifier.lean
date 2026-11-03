/- Copyright (c) 2026 grwtsk contributors. MIT.
Local mathematical attribution: grwtsk contributors.
Formalization assistance: OpenAI ChatGPT.
SOURCE_PROOF_CANDIDATE / COMPILATION_NOT_RUN /
EXPECTED_TYPES_NOT_RUN / FRESH_KERNEL_NOT_RUN /
TRANSITIVE_AXIOM_AUDIT_NOT_RUN. -/

import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.MoebiusChebyshevWeightedPrimeAbel

/-!
# Eventual nearcritical moving prime-bank cutoff

For each fixed alpha < 2 and epsilon > 0, the exact natural cutoff

  floor (T^2 * (log T)^alpha)

is eventually at least 256 and satisfies the existing 64-coefficient
Euler budget. Floor does not lose a single natural prime label:
p <= floor(R) iff (p : Real) <= R.

We use the pinned real-power limits, rather than importing a
prime-number theorem or postulating the desired budget. The two
signed ordered mixed estimates are inherited separately from
MoebiusChebyshevWeightedPrimeAbel. Their residual 1/2 exponent
is NOT signed cancellation at every positive rate.
-/

set_option autoImplicit false
noncomputable section
open Filter Set

namespace GRWTSK.NumberTheory.Moebius.NearcriticalMovingBank

open GRWTSK.RiemannHypothesis.CCC
open GRWTSK.NumberTheory.LiouvilleFinitePrimeSieveOperator
open GRWTSK.NumberTheory.Moebius.BalancedTwoSidedPNTDense
open GRWTSK.NumberTheory.Moebius.GrowingPrimeBankEulerCost
open GRWTSK.NumberTheory.Moebius.DyadicBirthHighLowLongGap
open GRWTSK.NumberTheory.Moebius.ChebyshevWeightedPrimeAbel

/-- Rounding DOWN is exact on natural labels and pays no upward
square-root error. This is meaningful at T > 1. -/
def nearcriticalPrimeCutoff (α T : ℝ) : ℕ :=
  ⌊T ^ (2 : ℕ) * (Real.log T) ^ α⌋₊

private def logTimeCutoff (α t : ℝ) : ℕ :=
  ⌊(Real.exp t) ^ (2 : ℕ) * t ^ α⌋₊

private theorem realRaw_eq_exp (α t : ℝ) (ht : 0 < t) :
    (Real.exp t) ^ (2 : ℕ) * t ^ α =
      Real.exp (2 * t + α * Real.log t) := by
  rw [Real.exp_add, Real.rpow_def_of_pos ht]
  rw [show (2 : ℝ) * t = t + t by ring, Real.exp_add]
  rw [show Real.log t * α = α * Real.log t by ring]
  ring

/-- Each original genuinely selected prime is covered if and only
if its real label is at most the unrounded cutoff. -/
theorem prime_mem_nearcritical_primesLE
    (α T : ℝ) (hT : 1 < T) (p : ℕ) (hp : p.Prime) :
    p ∈ Nat.primesLE (nearcriticalPrimeCutoff α T) ↔
      (p : ℝ) ≤ T ^ (2 : ℕ) * (Real.log T) ^ α := by
  have hlog : 0 ≤ Real.log T := (Real.log_pos hT).le
  have hraw : 0 ≤ T ^ (2 : ℕ) * (Real.log T) ^ α :=
    mul_nonneg (sq_nonneg T) (Real.rpow_nonneg hlog α)
  constructor
  · intro hmem
    have hpY : p ≤ nearcriticalPrimeCutoff α T :=
      (Nat.mem_primesLE.mp hmem).1
    have hpYR : (p : ℝ) ≤ (nearcriticalPrimeCutoff α T : ℝ) := by
      exact_mod_cast hpY
    exact hpYR.trans (by
      simpa only [nearcriticalPrimeCutoff] using (Nat.floor_le hraw))
  · intro hpRaw
    exact Nat.mem_primesLE.mpr
      ⟨Nat.le_floor hpRaw, hp⟩

/-- The real cutoff exponent is increasing once the log-time is
at least max(1,-alpha); no assertion is made about the singular
small-time region when alpha is negative. -/
private theorem realRaw_mono_logtime
    (α t₁ t₂ : ℝ)
    (h₁ : max (1 : ℝ) (-α) ≤ t₁)
    (h₁₂ : t₁ ≤ t₂) :
    (Real.exp t₁) ^ (2 : ℕ) * t₁ ^ α ≤
      (Real.exp t₂) ^ (2 : ℕ) * t₂ ^ α := by
  have ht₁ : 0 < t₁ := by
    have h := (le_max_left (1 : ℝ) (-α)).trans h₁
    linarith
  have ht₂ : 0 < t₂ := ht₁.trans_le h₁₂
  have hlog : 0 ≤ Real.log t₂ - Real.log t₁ := by
    exact sub_nonneg.mpr (Real.log_le_log ht₁ h₁₂)
  have hquot : 0 < t₂ / t₁ := div_pos ht₂ ht₁
  have hlogquot := Real.log_le_sub_one_of_pos hquot
  rw [Real.log_div (ne_of_gt ht₂) (ne_of_gt ht₁)] at hlogquot
  have hweighted :
      t₁ * (Real.log t₂ - Real.log t₁) ≤ t₂ - t₁ := by
    have hm := mul_le_mul_of_nonneg_left hlogquot ht₁.le
    have heq : t₁ * (t₂ / t₁ - 1) = t₂ - t₁ := by
      field_simp [ne_of_gt ht₁]
      ring
    exact hm.trans_eq heq
  have hα : -α ≤ t₁ :=
    (le_max_right (1 : ℝ) (-α)).trans h₁
  have hm := mul_le_mul_of_nonneg_right hα hlog
  have hexponent :
      2 * t₁ + α * Real.log t₁ ≤
        2 * t₂ + α * Real.log t₂ := by
    nlinarith [hm.trans hweighted, h₁₂]
  calc
    _ = Real.exp (2 * t₁ + α * Real.log t₁) :=
      realRaw_eq_exp α t₁ ht₁
    _ ≤ Real.exp (2 * t₂ + α * Real.log t₂) :=
      Real.exp_le_exp.mpr hexponent
    _ = _ := (realRaw_eq_exp α t₂ ht₂).symm

/-- The actual integer cutoff is eventually monotone in T.
The threshold explicitly depends on alpha. -/
theorem nearcriticalPrimeCutoff_mono
    (α T₁ T₂ : ℝ)
    (h₁ : Real.exp (max (1 : ℝ) (-α)) ≤ T₁)
    (h₁₂ : T₁ ≤ T₂) :
    nearcriticalPrimeCutoff α T₁ ≤
      nearcriticalPrimeCutoff α T₂ := by
  have hT₁ : 0 < T₁ :=
    (Real.exp_pos _).trans_le h₁
  have hT₂ : 0 < T₂ := hT₁.trans_le h₁₂
  have ht₁ : max (1 : ℝ) (-α) ≤ Real.log T₁ := by
    calc
      _ = Real.log (Real.exp (max (1 : ℝ) (-α))) :=
        (Real.log_exp _).symm
      _ ≤ Real.log T₁ :=
        Real.log_le_log (Real.exp_pos _) h₁
  have ht₁₂ : Real.log T₁ ≤ Real.log T₂ :=
    Real.log_le_log hT₁ h₁₂
  have hraw := realRaw_mono_logtime α
    (Real.log T₁) (Real.log T₂) ht₁ ht₁₂
  rw [Real.exp_log hT₁, Real.exp_log hT₂] at hraw
  exact Nat.floor_mono hraw

/-- Pinned limiting inputs: exp(t) dominates every fixed real
power t^(-alpha); and t^(alpha/2-1) tends to zero for alpha<2.
The returned t0 is a genuine uniform threshold for all t >= t0. -/
private theorem logTimeCutoff_budget
    (α ε : ℝ) (hα : α < 2) (hε : 0 < ε) :
    ∃ t₀ : ℝ, 256 ≤ t₀ ∧
      ∀ t ≥ t₀,
        256 ≤ logTimeCutoff α t ∧
        64 * Real.sqrt (logTimeCutoff α t : ℝ) /
          Real.log (logTimeCutoff α t : ℝ) ≤
          ε * Real.exp t := by
  have hδ : 0 < 1 - α / 2 := by linarith
  have hgrowth :
      ∀ᶠ t : ℝ in atTop,
        (2 : ℝ) ≤ Real.exp t / t ^ (-α) :=
    (Real.tendsto_exp_div_rpow_atTop (-α)).eventually
      (eventually_ge_atTop (2 : ℝ))
  have hcostLim :
      Tendsto (fun t : ℝ => (64 : ℝ) *
        t ^ (-(1 - α / 2))) atTop (𝓝 (0 : ℝ)) := by
    simpa using
      (Real.tendsto_rpow_neg_atTop hδ).const_mul (64 : ℝ)
  have hsmall :
      ∀ᶠ t : ℝ in atTop,
        (64 : ℝ) * t ^ (-(1 - α / 2)) < ε :=
    hcostLim.eventually (Iio_mem_nhds hε)
  obtain ⟨tGrowth, htGrowth⟩ := eventually_atTop.mp hgrowth
  obtain ⟨tCost, htCost⟩ := eventually_atTop.mp hsmall
  refine ⟨max (256 : ℝ) (max tGrowth tCost), ?_, ?_⟩
  · exact le_max_left _ _
  intro t ht
  have ht256 : (256 : ℝ) ≤ t :=
    (le_max_left _ _).trans ht
  have htGrowth' : tGrowth ≤ t :=
    (le_max_left _ _).trans ((le_max_right _ _).trans ht)
  have htCost' : tCost ≤ t :=
    (le_max_right _ _).trans ((le_max_right _ _).trans ht)
  have htpos : 0 < t := by linarith
  have hratio : (2 : ℝ) ≤ Real.exp t / t ^ (-α) :=
    htGrowth t htGrowth'
  have hratio' : (2 : ℝ) ≤ Real.exp t * t ^ α := by
    simpa only [Real.rpow_neg htpos.le, div_inv_eq_mul] using hratio
  let R : ℝ := (Real.exp t) ^ (2 : ℕ) * t ^ α
  let Y : ℕ := logTimeCutoff α t
  have hRnonneg : 0 ≤ R := by
    dsimp [R]
    exact mul_nonneg (sq_nonneg _) (Real.rpow_nonneg htpos.le α)
  have hRge : 2 * Real.exp t ≤ R := by
    calc
      2 * Real.exp t ≤ (Real.exp t * t ^ α) * Real.exp t :=
        mul_le_mul_of_nonneg_right hratio' (Real.exp_pos t).le
      _ = R := by dsimp [R]; ring
  have hYle : (Y : ℝ) ≤ R := by
    simpa only [Y, logTimeCutoff, R] using (Nat.floor_le hRnonneg)
  have hYfloor : R < (Y : ℝ) + 1 := by
    simpa only [Y, logTimeCutoff, R] using (Nat.lt_floor_add_one R)
  have hExpOne : (1 : ℝ) ≤ Real.exp t := by
    have h := Real.add_one_le_exp t
    linarith
  have hYgeT : Real.exp t ≤ (Y : ℝ) := by
    linarith
  have hExp256 : (256 : ℝ) ≤ Real.exp t := by
    have h := Real.add_one_le_exp t
    linarith
  have hYlarge : (256 : ℕ) ≤ Y := by
    exact_mod_cast hExp256.trans hYgeT
  have hlogY : t ≤ Real.log (Y : ℝ) := by
    calc
      t = Real.log (Real.exp t) := (Real.log_exp t).symm
      _ ≤ Real.log (Y : ℝ) :=
        Real.log_le_log (Real.exp_pos t) hYgeT
  have hlogYpos : 0 < Real.log (Y : ℝ) :=
    htpos.trans_le hlogY
  have hPowSq : (t ^ (α / 2)) ^ (2 : ℕ) = t ^ α := by
    calc
      _ = t ^ ((α / 2) * (2 : ℝ)) :=
        (Real.rpow_mul_natCast htpos.le (α / 2) 2).symm
      _ = t ^ α := by congr 1; ring
  have hrootR : Real.sqrt R =
      Real.exp t * t ^ (α / 2) := by
    apply (Real.sqrt_eq_iff_mul_self_eq
      hRnonneg (by positivity)).2
    have hsq :
        (Real.exp t * t ^ (α / 2)) ^ (2 : ℕ) = R := by
      dsimp [R]
      rw [mul_pow, hPowSq]
    calc
      R = (Real.exp t * t ^ (α / 2)) ^ (2 : ℕ) := hsq.symm
      _ = _ := pow_two _
  have hrootY : Real.sqrt (Y : ℝ) ≤
      Real.exp t * t ^ (α / 2) := by
    exact (Real.sqrt_le_sqrt hYle).trans_eq hrootR
  have hcostPower : 64 * t ^ (α / 2 - 1) ≤ ε := by
    have hc := (htCost t htCost').le
    simpa only [show -(1 - α / 2) = α / 2 - 1 by ring] using hc
  have hpower : 64 * t ^ (α / 2) ≤ ε * t := by
    have hDiv : t ^ (α / 2 - 1) = t ^ (α / 2) / t := by
      simpa only [Real.rpow_one] using
        (Real.rpow_sub htpos (α / 2) (1 : ℝ))
    rw [hDiv] at hcostPower
    have hm := mul_le_mul_of_nonneg_right hcostPower htpos.le
    calc
      64 * t ^ (α / 2) =
          (64 * (t ^ (α / 2) / t)) * t := by
            field_simp [ne_of_gt htpos]
            ring
      _ ≤ ε * t := hm
  have hnumerator :
      64 * Real.sqrt (Y : ℝ) ≤
        (ε * Real.exp t) * Real.log (Y : ℝ) := by
    calc
      64 * Real.sqrt (Y : ℝ) ≤
          64 * (Real.exp t * t ^ (α / 2)) :=
        mul_le_mul_of_nonneg_left hrootY (by norm_num)
      _ = Real.exp t * (64 * t ^ (α / 2)) := by ring
      _ ≤ Real.exp t * (ε * t) :=
        mul_le_mul_of_nonneg_left hpower (Real.exp_pos t).le
      _ ≤ Real.exp t * (ε * Real.log (Y : ℝ)) := by
        apply mul_le_mul_of_nonneg_left _ (Real.exp_pos t).le
        exact mul_le_mul_of_nonneg_left hlogY hε.le
      _ = (ε * Real.exp t) * Real.log (Y : ℝ) := by ring
  exact ⟨hYlarge, (div_le_iff₀ hlogYpos).2 hnumerator⟩

/-- The exact user-facing quantifier bridge. The integer floor,
log domain, cutoff size and coefficient-64 numerical budget are
all discharged eventually, uniformly for the fixed alpha, epsilon. -/
theorem nearcriticalPrimeCutoff_eventual_budget
    (α ε : ℝ) (hα : α < 2) (hε : 0 < ε) :
    ∃ T₀ : ℝ, 1 < T₀ ∧
      ∀ T ≥ T₀,
        256 ≤ nearcriticalPrimeCutoff α T ∧
        64 * Real.sqrt (nearcriticalPrimeCutoff α T : ℝ) /
          Real.log (nearcriticalPrimeCutoff α T : ℝ) ≤
          ε * T := by
  obtain ⟨t₀, ht₀, htime⟩ :=
    logTimeCutoff_budget α ε hα hε
  refine ⟨Real.exp t₀, ?_, ?_⟩
  · have ht₀pos : 0 < t₀ := by linarith
    simpa using (Real.exp_lt_exp.mpr ht₀pos :
      Real.exp 0 < Real.exp t₀)
  intro T hT
  have hTpos : 0 < T := (Real.exp_pos _).trans_le hT
  have hlog : t₀ ≤ Real.log T := by
    calc
      t₀ = Real.log (Real.exp t₀) := (Real.log_exp t₀).symm
      _ ≤ Real.log T :=
        Real.log_le_log (Real.exp_pos _) hT
  have h := htime (Real.log T) hlog
  simpa only [nearcriticalPrimeCutoff, logTimeCutoff,
    Real.exp_log hTpos] using h

/-- The exact old Euler bank cost is eventually exp(epsilon*T).
The bank may change arbitrarily with T; the genuine source-prime
support hypothesis is a separate, visible, necessary condition. -/
theorem movingBank_euler_eventual
    (α ε : ℝ) (hα : α < 2) (hε : 0 < ε) :
    ∃ T₀ : ℝ, 1 < T₀ ∧
      ∀ T ≥ T₀, ∀ B : PrimeBand,
        (∀ p ∈ B.primes,
          (p : ℝ) ≤ T ^ (2 : ℕ) * (Real.log T) ^ α) →
        bankSquareRootWeight B.primes ≤ Real.exp (ε * T) := by
  obtain ⟨T₀, hT₀, hbudget⟩ :=
    nearcriticalPrimeCutoff_eventual_budget α ε hα hε
  refine ⟨T₀, hT₀, ?_⟩
  intro T hT B hsupport
  obtain ⟨hYlarge, hYbudget⟩ := hbudget T hT
  have hY : ∀ p ∈ B.primes,
      p ≤ nearcriticalPrimeCutoff α T := by
    intro p hp
    exact Nat.le_floor (hsupport p hp)
  exact bankSquareRootWeight_le_exp_of_nearcritical_budget
    B (nearcriticalPrimeCutoff α T) T ε
    hYlarge hY hYbudget

/-- The two original ordered signed physical masks, without
symmetrization of coefficient tags or loss of either sector. -/
def BothOrderedSignedMixedBound
    (B : PrimeBand) (a b : Bool) (A : Finset ℕ)
    (X : ℕ) (ε : ℝ) : Prop :=
  (|maskedTaggedBlock B.primes a b A
      (highSmoothBlock B X (Real.log (2 * (X : ℝ))))
      (lowSmoothBlock B X (Real.log (2 * (X : ℝ))))
      (Real.log (2 * (X : ℝ)))| ≤
    4 * Real.log 2 * Real.sqrt (2 * (X : ℝ)) *
      Real.exp (Real.sqrt (Real.log (2 * (X : ℝ))) +
        ε * Real.log (2 * (X : ℝ)))) ∧
  (|maskedTaggedBlock B.primes a b A
      (lowSmoothBlock B X (Real.log (2 * (X : ℝ))))
      (highSmoothBlock B X (Real.log (2 * (X : ℝ))))
      (Real.log (2 * (X : ℝ)))| ≤
    4 * Real.log 2 * Real.sqrt (2 * (X : ℝ)) *
      Real.exp (Real.sqrt (Real.log (2 * (X : ℝ))) +
        ε * Real.log (2 * (X : ℝ))))

/-- Original two signed orientations at moving bank cutoff
Y(log(2X)), uniformly for ANY family of genuine PrimeBands.
The still-existing prefactor sqrt(2X) gives exponential rate
1/2+o(1); no signed all-positive-rate cancellation is asserted. -/
theorem bothOrderedSignedMixed_eventual
    (α ε : ℝ) (hα : α < 2) (hε : 0 < ε) :
    ∃ X₀ : ℕ, ∀ X ≥ X₀,
      ∀ (B : PrimeBand) (a b : Bool) (A : Finset ℕ),
        (∀ p ∈ B.primes,
          (p : ℝ) ≤
            (Real.log (2 * (X : ℝ))) ^ (2 : ℕ) *
              (Real.log (Real.log (2 * (X : ℝ)))) ^ α) →
        BothOrderedSignedMixedBound B a b A X ε := by
  obtain ⟨T₀, hT₀pos, hbudget⟩ :=
    nearcriticalPrimeCutoff_eventual_budget α ε hα hε
  refine ⟨max 1 ⌈Real.exp T₀⌉₊, ?_⟩
  intro X hX B a b A hsupport
  have hXone : 1 ≤ X := (le_max_left _ _).trans hX
  have hXExp : Real.exp T₀ ≤ (X : ℝ) := by
    have hc : Real.exp T₀ ≤ (⌈Real.exp T₀⌉₊ : ℝ) :=
      Nat.le_ceil _
    have hn : ⌈Real.exp T₀⌉₊ ≤ X :=
      (le_max_right _ _).trans hX
    exact hc.trans (by exact_mod_cast hn)
  have hTlarge :
      T₀ ≤ Real.log (2 * (X : ℝ)) := by
    have hcomp : Real.exp T₀ ≤ 2 * (X : ℝ) := by
      have hx : (0 : ℝ) ≤ (X : ℝ) := Nat.cast_nonneg _
      linarith
    calc
      T₀ = Real.log (Real.exp T₀) := (Real.log_exp _).symm
      _ ≤ Real.log (2 * (X : ℝ)) :=
        Real.log_le_log (Real.exp_pos _) hcomp
  let T : ℝ := Real.log (2 * (X : ℝ))
  let Y : ℕ := nearcriticalPrimeCutoff α T
  have hYdata : 256 ≤ Y ∧
      64 * Real.sqrt (Y : ℝ) / Real.log (Y : ℝ) ≤ ε * T := by
    simpa only [T, Y] using hbudget T hTlarge
  have hY : ∀ p ∈ B.primes, p ≤ Y := by
    intro p hp
    exact Nat.le_floor (by simpa only [T, Y] using hsupport p hp)
  change _ ∧ _
  exact ⟨
    original_masked_high_low_nearcritical_budget
      B a b A X Y hXone ε hYdata.1 hY hYdata.2,
    original_masked_low_high_nearcritical_budget
      B a b A X Y hXone ε hYdata.1 hY hYdata.2⟩

end GRWTSK.NumberTheory.Moebius.NearcriticalMovingBank
