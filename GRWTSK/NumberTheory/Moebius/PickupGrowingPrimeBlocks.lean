/- Copyright (c) 2026 grwtsk contributors. MIT.
Imported GRWTSK and Mathlib sources retain their upstream licenses. -/
import GRWTSK.NumberTheory.Moebius.PickupTwoPrimeBound
import GRWTSK.Analysis.FiniteSums.PeriodicPrefixDiscrepancy
import GRWTSK.NumberTheory.Moebius.PickupPrimeFactorLayers

/-!
# Signed growing-stage budgets, periodic discrepancy, and the actual source mass

The negative budget is max(K_P(pm)-K_P(m),0), with both cutoff regions retained.
The Mobius correlations with its positive and negative channels remain explicit.
P may depend on the OUTER horizon; it is frozen while the inner u integral is taken.
The two forcing sources are not conflated: no all-vector mass is claimed.
SOURCE_PROOF_CANDIDATE / compilation, kernel replay and axiom audit NOT_RUN.
-/
set_option autoImplicit false
noncomputable section
open scoped BigOperators
namespace GRWTSK.NumberTheory.Moebius.PickupGrowingPrimeBlocks

open MeasureTheory Set
open GRWTSK.RiemannHypothesis.CCC
open GRWTSK.RiemannHypothesis.CCC.LogarithmicSampling
open GRWTSK.Analysis.FiniteSums.PrimeBlockKernel
open GRWTSK.Analysis.FiniteSums.PeriodicPrefixDiscrepancy
open GRWTSK.NumberTheory.Moebius.PickupPrimeBlockExtraction
open GRWTSK.NumberTheory.Moebius.PickupTwoPrimeBound

/-- A finite arithmetic stage, with no density requirement or dropped nonunits. -/
def active (P : List ℕ) (N : ℕ) : Finset ℕ :=
  (Finset.Icc 1 N).filter (Rough P)

/-- Exact unweighted signed block sum, not its absolute majorant. -/
def unsignedBlock (P : List ℕ) (f : ℕ → ℝ) (N : ℕ) : ℝ :=
  ∑ m ∈ active P N, block P f m

def positiveCorrelation (P : List ℕ) (p : ℕ) (u : ℝ) : ℝ :=
  ∑ m ∈ active (p::P) ⌊Real.exp u⌋₊,
    moebiusReal m * positiveStep P p (fun n => pickupResponse n u) m

def negativeCorrelation (P : List ℕ) (p : ℕ) (u : ℝ) : ℝ :=
  ∑ m ∈ active (p::P) ⌊Real.exp u⌋₊,
    moebiusReal m * negativeStep P p (fun n => pickupResponse n u) m

def negativeBudget (P : List ℕ) (p : ℕ) (u : ℝ) : ℝ :=
  ∑ m ∈ active (p::P) ⌊Real.exp u⌋₊,
    negativeStep P p (fun n => pickupResponse n u) m

/-- Both actual correlations survive. No independent absolute allowances are imposed. -/
theorem source_channels (P : List ℕ) (hdup : P.Nodup) (hP : ∀ q ∈ P, q.Prime)
    {p : ℕ} (hp : p.Prime) (hpP : p ∉ P) {u : ℝ} (hu : 0 ≤ u) :
    wholePickup u = positiveCorrelation P p u-negativeCorrelation P p u := by
  rw [wholePickup_eq_blocks (p::P) (List.nodup_cons.mpr ⟨hpP,hdup⟩)
    (by intro q hq; rcases List.mem_cons.mp hq with rfl|hq; exact hp; exact hP q hq) hu]
  unfold positiveCorrelation negativeCorrelation active
  rw [Finset.sum_filter, Finset.sum_filter, ← Finset.sum_sub_distrib]
  apply Finset.sum_congr rfl
  intro m _
  by_cases h : Rough (p::P) m
  · simp only [if_pos h, signed_step]; ring
  · simp [h]

/-- Squaring is done AFTER the two signed arithmetic channels have been combined. -/
theorem source_square (P : List ℕ) (hdup : P.Nodup) (hP : ∀ q ∈ P, q.Prime)
    {p : ℕ} (hp : p.Prime) (hpP : p ∉ P) {u : ℝ} (hu : 0 ≤ u) :
    wholePickup u^2 = positiveCorrelation P p u^2 -
      2*positiveCorrelation P p u*negativeCorrelation P p u + negativeCorrelation P p u^2 := by
  rw [source_channels P hdup hP hp hpP hu]
  ring

/-- Beyond the dilated cutoff the OLD negative block survives; it is not zero in general. -/
theorem negativeStep_after_cutoff (P : List ℕ) (hP : ∀ q ∈ P, q.Prime)
    (p m N : ℕ) (f : ℕ → ℝ) (hf : ∀ n, N<n → f n=0) (hm : N<p*m) :
    negativeStep P p f m = max (-block P f m) 0 := by
  unfold negativeStep
  rw [block_support P (fun q hq => (hP q hq).one_le) f N hf (p*m) hm, zero_sub]

/-- Exact inherited-negative contribution above floor(exp(u))/p. -/
theorem negative_budget_cutoff_split (P : List ℕ) (hP : ∀ q ∈ P, q.Prime)
    {p : ℕ} (hp : 0<p) (u : ℝ) :
    negativeBudget P p u =
      (∑ m ∈ active (p::P) ⌊Real.exp u⌋₊,
        if m ≤ ⌊Real.exp u⌋₊/p then negativeStep P p (fun n => pickupResponse n u) m else 0) +
      ∑ m ∈ active (p::P) ⌊Real.exp u⌋₊,
        if ⌊Real.exp u⌋₊/p < m then max (-block P (fun n => pickupResponse n u) m) 0 else 0 := by
  unfold negativeBudget
  rw [← Finset.sum_add_distrib]
  apply Finset.sum_congr rfl
  intro m _
  by_cases h : m ≤ ⌊Real.exp u⌋₊/p
  · simp [h, not_lt_of_ge h]
  · have hm : ⌊Real.exp u⌋₊ < p*m := by
      by_contra hb
      apply h
      exact (Nat.le_div_iff_mul_le hp).mpr (by simpa [Nat.mul_comm] using le_of_not_gt hb)
    simp only [if_neg h, if_pos (lt_of_not_ge h), zero_add]
    exact negativeStep_after_cutoff P hP p m _ _ (response_support u) hm

/-- The identical cutoff split keeps the remaining mu(m) correlations. -/
theorem negative_correlation_cutoff_split (P : List ℕ) (hP : ∀ q ∈ P, q.Prime)
    {p : ℕ} (hp : 0<p) (u : ℝ) :
    negativeCorrelation P p u =
      (∑ m ∈ active (p::P) ⌊Real.exp u⌋₊,
        if m ≤ ⌊Real.exp u⌋₊/p then
          moebiusReal m*negativeStep P p (fun n => pickupResponse n u) m else 0) +
      ∑ m ∈ active (p::P) ⌊Real.exp u⌋₊,
        if ⌊Real.exp u⌋₊/p < m then
          moebiusReal m*max (-block P (fun n => pickupResponse n u) m) 0 else 0 := by
  unfold negativeCorrelation
  rw [← Finset.sum_add_distrib]
  apply Finset.sum_congr rfl
  intro m _
  by_cases h : m ≤ ⌊Real.exp u⌋₊/p
  · simp [h, not_lt_of_ge h]
  · have hm : ⌊Real.exp u⌋₊ < p*m := by
      by_contra hb
      exact h ((Nat.le_div_iff_mul_le hp).mpr (by simpa [Nat.mul_comm] using le_of_not_gt hb))
    rw [if_neg h, if_pos (lt_of_not_ge h), zero_add,
      negativeStep_after_cutoff P hP p m _ _ (response_support u) hm]

/-- The inherited tail does vanish at the two-prime start, for a proved reason. -/
theorem third_stage_negative_tail_zero {p m : ℕ} (hm : 1 ≤ m) (u : ℝ)
    (hcut : ⌊Real.exp u⌋₊ < p*m) :
    negativeStep [2,3] p (fun n => pickupResponse n u) m = 0 := by
  rw [negativeStep_after_cutoff [2,3]
    (by intro q hq; simp at hq; rcases hq with rfl|rfl <;> norm_num)
    p m _ _ (response_support u) hcut]
  exact max_eq_right (neg_nonpos.mpr
    (two_prime_block_nonnegative (p:=2) (q:=3) (by norm_num) (by norm_num) (by omega) hm u))

/-- Optional absolute envelope: the growing negative budget is paid exactly twice. -/
theorem source_absolute_budget (P : List ℕ) (hdup : P.Nodup) (hP : ∀ q ∈ P, q.Prime)
    {p : ℕ} (hp : p.Prime) (hpP : p ∉ P) {u : ℝ} (hu : 0 ≤ u) :
    |wholePickup u| ≤ unsignedBlock (p::P) (fun n => pickupResponse n u) ⌊Real.exp u⌋₊ +
      2*negativeBudget P p u := by
  rw [wholePickup_eq_blocks (p::P) (List.nodup_cons.mpr ⟨hpP,hdup⟩)
    (by intro q hq; rcases List.mem_cons.mp hq with rfl|hq; exact hp; exact hP q hq) hu]
  have h := absolute_aggregate (active (p::P) ⌊Real.exp u⌋₊) moebiusReal
    (fun m => block P (fun n => pickupResponse n u) m)
    (fun m => block P (fun n => pickupResponse n u) (p*m))
    (fun m _ => by
      unfold moebiusReal
      exact_mod_cast (ArithmeticFunction.abs_moebius_le_one (n:=m)))
  simpa only [active, Finset.sum_filter, block_cons, unsignedBlock, negativeBudget,
    negativeStep] using h

/-- Literal signed local sieve factor; square-divisibility is retained. -/
def localFactor (p n : ℕ) : ℝ :=
  if p*p ∣ n then 0 else if p ∣ n then -1 else 1

/-- Divisibility by p and p² is unchanged by multiplying by a coprime q. -/
theorem localFactor_mul_of_coprime (p q m : ℕ) (hc : p.Coprime q) :
    localFactor p (q*m)=localFactor p m := by
  have hc2 : (p*p).Coprime q := by
    simpa only [pow_two] using (Nat.coprime_pow_left_iff (by norm_num : 0 < 2) p q).mpr hc
  simp only [localFactor, hc.dvd_mul_left, hc2.dvd_mul_left]

theorem prime_square_quotient {p n : ℕ} (hp : 0<p) (hpn : p ∣ n) :
    p*p ∣ n ↔ p ∣ n/p := by
  constructor
  · rintro ⟨k,hk⟩
    refine ⟨k, ?_⟩
    rw [hk, show (p*p)*k=p*(p*k) by ring, Nat.mul_div_cancel_left _ hp]
  · rintro ⟨k,hk⟩
    refine ⟨k, ?_⟩
    calc
      n = p*(n/p) := (Nat.mul_div_cancel' hpn).symm
      _ = p*(p*k) := by rw [hk]
      _ = (p*p)*k := by ring

/-- The unsigned cofactor expansion is still SIGNED in its divisor blocks. -/
theorem unsigned_step (P : List ℕ) {p : ℕ} (hp : p.Prime) (hpP : p ∉ P)
    (hP : ∀ q ∈ P, q.Prime) (N : ℕ) (f : ℕ → ℝ)
    (hf : ∀ n, N<n → f n=0) :
    unsignedBlock (p::P) f N =
      ∑ n ∈ active P N, localFactor p n*block P f n := by
  classical
  have hsupport := block_support P (fun q hq => (hP q hq).one_le) f N hf
  have hsplit : unsignedBlock (p::P) f N =
      (∑ m ∈ Finset.Icc 1 N, if Rough (p::P) m then block P f m else 0) -
      ∑ m ∈ Finset.Icc 1 N, if Rough (p::P) m then block P f (p*m) else 0 := by
    unfold unsignedBlock active
    rw [Finset.sum_filter, ← Finset.sum_sub_distrib]
    apply Finset.sum_congr rfl
    intro m _
    by_cases h : Rough (p::P) m <;> simp [h, block_cons]
  rw [hsplit, dilation_reindex N p hp.pos (block P f) hsupport,
    ← Finset.sum_sub_distrib]
  unfold active
  rw [Finset.sum_filter]
  apply Finset.sum_congr rfl
  intro n _
  by_cases hd : p ∣ n
  · have hr := rough_prime_mul P (m:=n/p) hp hpP hP
    rw [Nat.mul_div_cancel' hd] at hr
    have hs := prime_square_quotient hp.pos hd
    by_cases hR : Rough P n <;> by_cases hh : p ∣ n/p <;>
      simp [rough_cons, localFactor, hd, hs, ← hr, hR, hh]
  · have hsq : ¬p*p ∣ n := fun h => hd (dvd_trans (dvd_mul_right p p) h)
    by_cases hR : Rough P n <;> simp [rough_cons, localFactor, hd, hsq, hR]

def periodicCoefficient : List ℕ → ℕ → ℝ
  | [], _ => 1
  | p::P, n => localFactor p n*periodicCoefficient P n

/-- Exact periodic source coefficients of the complete block majorant. -/
theorem unsignedBlock_eq_periodic (P : List ℕ) (hdup : P.Nodup)
    (hP : ∀ p ∈ P, p.Prime) (N : ℕ) (f : ℕ → ℝ)
    (hf : ∀ n, N<n → f n=0) :
    unsignedBlock P f N = ∑ n ∈ Finset.Icc 1 N, periodicCoefficient P n*f n := by
  revert f
  revert hP
  revert hdup
  induction P with
  | nil => intro _ _ f _; simp [unsignedBlock, active, Rough, block, periodicCoefficient]
  | cons p P ih =>
      intro hdup hP f hf
      obtain ⟨hpP,hrestdup⟩ := List.nodup_cons.mp hdup
      have hp : p.Prime := hP p (by simp)
      have hrest : ∀ q ∈ P, q.Prime := fun q hq => hP q (by simp [hq])
      have hcop (q : ℕ) (hq : q ∈ P) : p.Coprime q := by
        apply hp.coprime_iff_not_dvd.mpr
        intro hd
        rcases (Nat.dvd_prime (hrest q hq)).mp hd with h1 | he
        · exact hp.ne_one h1
        · subst q; exact hpP hq
      have hw := block_weight P (localFactor p) f
        (fun q hq m => localFactor_mul_of_coprime p q m (hcop q hq))
      rw [unsigned_step P hp hpP hrest N f hf]
      have he : (∑ n ∈ active P N, localFactor p n*block P f n) =
          unsignedBlock P (fun n => localFactor p n*f n) N := by
        unfold unsignedBlock
        apply Finset.sum_congr rfl
        intro n _
        exact (hw n).symm
      rw [he, ih hrestdup hrest _ (fun n hn => by simp [hf n hn])]
      apply Finset.sum_congr rfl
      intro n _
      simp only [periodicCoefficient]
      ring

def period : List ℕ → ℕ
  | [] => 1
  | p::P => (p*p)*period P

@[simp] theorem period_cons (p : ℕ) (P : List ℕ) : period (p::P) = p*p*period P := rfl

theorem period_eq_square_product (P : List ℕ) : period P = P.prod^2 := by
  induction P with
  | nil => norm_num [period]
  | cons p P ih => simp only [period, List.prod_cons, ih]; ring

theorem period_positive (P : List ℕ) (hP : ∀ p ∈ P, p.Prime) : 0 < period P := by
  revert hP
  induction P with
  | nil => intro _; norm_num [period]
  | cons p P ih =>
      intro hP
      exact Nat.mul_pos (Nat.mul_pos (hP p (by simp)).pos (hP p (by simp)).pos)
        (ih (fun q hq => hP q (by simp [hq])))

theorem prime_square_dvd_period {P : List ℕ} {p : ℕ} (hp : p ∈ P) : p*p ∣ period P := by
  induction P with
  | nil => simp at hp
  | cons q P ih =>
      rcases List.mem_cons.mp hp with rfl | h
      · exact dvd_mul_right _ _
      · exact dvd_mul_of_dvd_right (ih h) _

theorem localFactor_period (p L n : ℕ) (hL : p*p ∣ L) :
    localFactor p (n+L) = localFactor p n := by
  have hpL : p ∣ L := dvd_trans (dvd_mul_right p p) hL
  simp only [localFactor, Nat.dvd_iff_mod_eq_zero, Nat.add_mod,
    Nat.mod_eq_zero_of_dvd hL, Nat.mod_eq_zero_of_dvd hpL, Nat.add_zero, Nat.mod_mod]

/-- The actual period is the product of prime squares, not merely its radical. -/
theorem coefficient_period (P : List ℕ) (n : ℕ) :
    periodicCoefficient P (n+period P) = periodicCoefficient P n := by
  have hgeneral : ∀ Q : List ℕ, (∀ p ∈ Q, p*p ∣ period P) →
      periodicCoefficient Q (n+period P) = periodicCoefficient Q n := by
    intro Q
    induction Q with
    | nil => intro _; rfl
    | cons q Q ih =>
        intro hQ
        simp only [periodicCoefficient, localFactor_period q (period P) n (hQ q (by simp)),
          ih (fun r hr => hQ r (by simp [hr]))]
  exact hgeneral P (fun p hp => prime_square_dvd_period hp)

theorem coefficient_abs_le_one (P : List ℕ) (n : ℕ) : |periodicCoefficient P n| ≤ 1 := by
  induction P with
  | nil => norm_num [periodicCoefficient]
  | cons p P ih =>
      rw [periodicCoefficient, abs_mul]
      have h : |localFactor p n| ≤ 1 := by unfold localFactor; split_ifs <;> norm_num
      exact (mul_le_mul h ih (abs_nonneg _) (by norm_num)).trans_eq (by ring)

/-- Each stage gets its own literal finite-period mean and discrepancy budget. -/
def stageMean (P : List ℕ) : ℝ := mean (periodicCoefficient P) (period P)
def stageDiscrepancy (P : List ℕ) : ℝ := radius (periodicCoefficient P) (period P)

theorem stage_prefix_exact (P : List ℕ) (hP : ∀ p ∈ P, p.Prime) (N : ℕ) :
    prefix (periodicCoefficient P) N = stageMean P*(N:ℝ) +
      discrepancy (periodicCoefficient P) (period P) (N % period P) :=
  prefix_decomposition _ (period_positive P hP) (coefficient_period P) N

theorem stage_discrepancy_cost (P : List ℕ) (hP : ∀ p ∈ P, p.Prime) :
    |stageMean P| ≤ 1 ∧ stageDiscrepancy P ≤ 2*(period P:ℝ) :=
  mean_and_radius_bounds _ (period_positive P hP) (fun n _ => coefficient_abs_le_one P n)

/-- Exact source-weighted discrepancy; no fixed-period asymptotic is used. -/
theorem periodic_response_error (P : List ℕ) (hP : ∀ p ∈ P, p.Prime) (u : ℝ) :
    |(∑ n ∈ Finset.Icc 1 ⌊Real.exp u⌋₊, periodicCoefficient P n*pickupResponse n u) -
      stageMean P*(∑ n ∈ Finset.Icc 1 ⌊Real.exp u⌋₊, pickupResponse n u)| ≤
      stageDiscrepancy P*pickupResponse 1 u :=
  weighted_error _ _ (period_positive P hP) (coefficient_period P) _
    (fun n hn => sub_nonneg.mpr (response_antitone (Finset.mem_Icc.mp hn).1 (Nat.le_succ n) u))
    (response_support u _ (Nat.lt_succ_self _))

/-- The discrepancy theorem is applied to the ACTUAL cofactor kernel sum. -/
theorem unsignedBlock_response_error (P : List ℕ) (hdup : P.Nodup)
    (hP : ∀ p ∈ P, p.Prime) (u : ℝ) :
    |unsignedBlock P (fun n => pickupResponse n u) ⌊Real.exp u⌋₊ -
      stageMean P*(∑ n ∈ Finset.Icc 1 ⌊Real.exp u⌋₊, pickupResponse n u)| ≤
      stageDiscrepancy P*pickupResponse 1 u := by
  rw [unsignedBlock_eq_periodic P hdup hP _ _ (response_support u)]
  exact periodic_response_error P hP u

/-- All growing-stage costs remain visible, including the complete negative budget. -/
theorem source_periodic_negative_budget (P : List ℕ) (hdup : P.Nodup)
    (hP : ∀ q ∈ P, q.Prime) {p : ℕ} (hp : p.Prime) (hpP : p ∉ P)
    {u : ℝ} (hu : 0 ≤ u) :
    |wholePickup u| ≤
      stageMean (p::P)*(∑ n ∈ Finset.Icc 1 ⌊Real.exp u⌋₊, pickupResponse n u) +
      stageDiscrepancy (p::P)*pickupResponse 1 u + 2*negativeBudget P p u := by
  have hd := unsignedBlock_response_error (p::P) (List.nodup_cons.mpr ⟨hpP,hdup⟩)
    (by intro q hq; rcases List.mem_cons.mp hq with rfl|hq; exact hp; exact hP q hq) u
  have hs := source_absolute_budget P hdup hP hp hpP hu
  have he := (abs_le.mp hd).2
  linarith

/-- Scheduled periods remain in the bound; no hidden O_P constant survives. -/
theorem scheduled_periodic_response_error (P : ℝ → List ℕ)
    (hP : ∀ T p, p ∈ P T → p.Prime) (T u : ℝ) :
    |(∑ n ∈ Finset.Icc 1 ⌊Real.exp u⌋₊, periodicCoefficient (P T) n*pickupResponse n u) -
      stageMean (P T)*(∑ n ∈ Finset.Icc 1 ⌊Real.exp u⌋₊, pickupResponse n u)| ≤
      stageDiscrepancy (P T)*pickupResponse 1 u :=
  periodic_response_error (P T) (hP T) u

/-- The exact signed stage energy, frozen at one outer horizon. -/
def signedStageEnergy (P : List ℕ) (p : ℕ) (T : ℝ) : ℝ :=
  ∫ u in (0:ℝ)..T, (positiveCorrelation P p u-negativeCorrelation P p u)^2

theorem signedStageEnergy_eq_source (P : List ℕ) (hdup : P.Nodup)
    (hP : ∀ q ∈ P, q.Prime) {p : ℕ} (hp : p.Prime) (hpP : p ∉ P)
    {T : ℝ} (hT : 0 ≤ T) : signedStageEnergy P p T = pickupEnergy T := by
  unfold signedStageEnergy pickupEnergy
  apply intervalIntegral.integral_congr
  intro u hu
  rw [Set.uIcc_of_le hT] at hu
  rw [← source_channels P hdup hP hp hpP hu.1]

/-- This is a source-only mass identity. It does not quantify over a second forcing vector. -/
theorem source_mass_iff_signed_stage
    (P : ℕ → List ℕ) (p : ℕ → ℕ)
    (hdup : ∀ j, (P j).Nodup) (hP : ∀ j q, q ∈ P j → q.Prime)
    (hp : ∀ j, (p j).Prime) (hnew : ∀ j, p j ∉ P j) (mass : ℕ → ℝ) :
    PickupPrimeFactorLayers.SourceMassComparison mass ↔
      ∀ j, mass j*signedStageEnergy (P j) (p j) (PickupDyadicEndpoint.dyadicTime j) ≤
        PickupPrimeFactorLayers.layerEnergy j PickupPrimeFactorLayers.firstCoordinate := by
  have hf : GRWTSK.Algebra.LinearAlgebra.LinearMap.CausalBidiagonalInverse.forward
      PickupPrimeFactorLayers.sourceCoordinates = PickupPrimeFactorLayers.firstCoordinate :=
    GRWTSK.Algebra.LinearAlgebra.LinearMap.CausalBidiagonalInverse.forward_alternating
  have he (j : ℕ) : signedStageEnergy (P j) (p j) (PickupDyadicEndpoint.dyadicTime j) =
      pickupEnergy (PickupDyadicEndpoint.dyadicTime j) :=
    signedStageEnergy_eq_source (P j) (hdup j) (hP j) (hp j) (hnew j)
      (PickupDyadicEndpoint.dyadicTime_nonnegative j)
  unfold PickupPrimeFactorLayers.SourceMassComparison
  constructor
  · intro h j
    have hh := h j
    rw [hf, PickupPrimeFactorLayers.source_layerEnergy_eq] at hh
    rw [he j]
    exact hh
  · intro h j
    rw [hf, PickupPrimeFactorLayers.source_layerEnergy_eq]
    have hh := h j
    rwa [he j] at hh

/-- The existing all-positive-rate source-mass consumer is applied, not strengthened. -/
theorem layer_bound_of_signed_stage_mass
    (P : ℕ → List ℕ) (p : ℕ → ℕ)
    (hdup : ∀ j, (P j).Nodup) (hP : ∀ j q, q ∈ P j → q.Prime)
    (hp : ∀ j, (p j).Prime) (hnew : ∀ j, p j ∉ P j)
    (mass : ℕ → ℝ) (hpos : ∀ j, 0 < mass j)
    (hcomparison : ∀ j,
      mass j*signedStageEnergy (P j) (p j) (PickupDyadicEndpoint.dyadicTime j) ≤
        PickupPrimeFactorLayers.layerEnergy j PickupPrimeFactorLayers.firstCoordinate)
    (hinverse : PickupPrimeFactorLayers.SourceInverseMassSubexponential mass) :
    PickupPrimeFactorLayers.LayerEnergyBound :=
  PickupPrimeFactorLayers.layer_bound_of_source_mass_inverse_subexponential mass hpos
    ((source_mass_iff_signed_stage P p hdup hP hp hnew mass).mpr hcomparison) hinverse

end GRWTSK.NumberTheory.Moebius.PickupGrowingPrimeBlocks
