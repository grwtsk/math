/- Copyright (c) 2026 grwtsk contributors. MIT.
Imported GRWTSK and Mathlib results retain their upstream attribution/licenses. -/
import GRWTSK.MeasureAndIntegration.PickupGrowingPrimeBlocks
import GRWTSK.NumberTheory.ElementaryNumberTheory.ArithmeticFunctionsRelatedNumbersInversionFormulas.FiniteDivisorFloorDiscrepancy

/-!
# Growing-stage floor discrepancy returned to the actual response

The concurrent double-divisor floor module bounds its literal divisor sum.
Here the same rounding mechanism is applied to the ACTUAL periodic coefficient
through its proved prime insertion recurrence, with no unproved identification
of divisor inventories. The resulting 4^length bound is uniform in the cutoff
and independent of the much larger product-of-prime-squares period.
The remaining signed negative channel and the arithmetic main term are retained.
SOURCE_PROOF_CANDIDATE / compilation, kernel replay and axiom audit NOT_RUN.
-/
set_option autoImplicit false
noncomputable section
open scoped BigOperators
namespace GRWTSK.NumberTheory.Moebius.PickupPrimeBlockFloorReturn

open GRWTSK.RiemannHypothesis.CCC
open GRWTSK.Analysis.FiniteSums.PrimeBlockKernel
open GRWTSK.NumberTheory.Moebius.FinitePrimeDivisorExtraction
open GRWTSK.NumberTheory.Moebius.PickupPrimeBlockExtraction
open GRWTSK.NumberTheory.Moebius.PickupTwoPrimeBound
open GRWTSK.NumberTheory.Moebius.PickupGrowingPrimeBlocks

/-- Explicit product coefficient; no unspecified fixed-period constant. -/
def eulerMean : List ℕ → ℝ
  | [] => 1
  | p::P => (1-(p:ℝ)⁻¹)^2 * eulerMean P

def realPrefix (P : List ℕ) (x : ℝ) : ℝ :=
  prefix (periodicCoefficient P) ⌊x⌋₊

theorem coefficient_mul_fresh (P : List ℕ) {p : ℕ}
    (hp : p.Prime) (hpP : p ∉ P) (hP : ∀ q ∈ P, q.Prime) (n : ℕ) :
    periodicCoefficient P (p*n) = periodicCoefficient P n := by
  have hc (q : ℕ) (hq : q ∈ P) : q.Coprime p := by
    apply (hP q hq).coprime_iff_not_dvd.mpr
    intro h
    rcases (Nat.dvd_prime hp).mp h with h1 | he
    · exact (hP q hq).ne_one h1
    · subst q; exact hpP hq
  have hg : ∀ Q : List ℕ, (∀ q ∈ Q, q.Coprime p) →
      periodicCoefficient Q (p*n)=periodicCoefficient Q n := by
    intro Q
    induction Q with
    | nil => intro _; rfl
    | cons q Q ih =>
        intro hQ
        simp only [periodicCoefficient, localFactor_mul_of_coprime q p n (hQ q (by simp)),
          ih (fun r hr => hQ r (by simp [hr]))]
  exact hg P hc

/-- The repeated-prime factor has coefficient +1 in this difference recurrence;
it is not omitted even though the final local factor vanishes at p². -/
theorem coefficient_insertion (P : List ℕ) {p : ℕ}
    (hp : p.Prime) (hpP : p ∉ P) (hP : ∀ q ∈ P, q.Prime) (n : ℕ) :
    periodicCoefficient (p::P) n = periodicCoefficient P n -
      2*(if p ∣ n then periodicCoefficient P (n/p) else 0) +
        (if p*p ∣ n then periodicCoefficient P (n/(p*p)) else 0) := by
  have hdiv (h : p ∣ n) : periodicCoefficient P (n/p)=periodicCoefficient P n := by
    have he := coefficient_mul_fresh P hp hpP hP (n/p)
    rw [Nat.mul_div_cancel' h] at he
    exact he.symm
  have hdiv2 (h : p*p ∣ n) :
      periodicCoefficient P (n/(p*p))=periodicCoefficient P n := by
    have h1 := coefficient_mul_fresh P hp hpP hP (n/(p*p))
    have h2 := coefficient_mul_fresh P hp hpP hP (p*(n/(p*p)))
    rw [← Nat.mul_assoc, Nat.mul_div_cancel' h] at h2
    exact (h2.trans h1).symm
  by_cases h2 : p*p ∣ n
  · have h1 : p ∣ n := dvd_trans (dvd_mul_right p p) h2
    simp only [periodicCoefficient, localFactor, if_pos h2, if_pos h1, hdiv h1, hdiv2 h2]
    ring
  · by_cases h1 : p ∣ n
    · simp only [periodicCoefficient, localFactor, if_neg h2, if_pos h1, hdiv h1]
      ring
    · simp [periodicCoefficient, localFactor, h2, h1]

/-- Exact quotient reindexing before any floor estimate. -/
theorem divisible_quotient_prefix (a : ℕ → ℝ) (N d : ℕ) (hd : 0<d) :
    (∑ n ∈ Finset.Icc 1 N, if d ∣ n then a (n/d) else 0) = prefix a (N/d) := by
  have h := sum_divisible_window_eq_quotient 0 N d hd (fun n => a (n/d))
  simp only [Nat.zero_add, Nat.add_zero] at h
  rw [h]
  apply Finset.sum_congr rfl
  intro m hm
  have hmpos : 0<m := lt_of_lt_of_le Nat.zero_lt_one (Finset.mem_Icc.mp hm).1
  simp only [if_pos (Nat.mul_pos hd hmpos), Nat.mul_div_cancel_left _ hd]

/-- The literal prime insertion preserves both divided causal cutoffs. -/
theorem prefix_insertion (P : List ℕ) {p : ℕ}
    (hp : p.Prime) (hpP : p ∉ P) (hP : ∀ q ∈ P, q.Prime) (N : ℕ) :
    prefix (periodicCoefficient (p::P)) N =
      prefix (periodicCoefficient P) N - 2*prefix (periodicCoefficient P) (N/p) +
        prefix (periodicCoefficient P) (N/(p*p)) := by
  unfold prefix
  simp_rw [coefficient_insertion P hp hpP hP]
  rw [Finset.sum_add_distrib, Finset.sum_sub_distrib, ← Finset.mul_sum,
    divisible_quotient_prefix _ N p hp.pos,
    divisible_quotient_prefix _ N (p*p) (Nat.mul_pos hp.pos hp.pos)]

/-- floor(x/d)=floor(x)/d, derived from the pinned floor multiplication theorem. -/
theorem floor_div_nat (x : ℝ) (d : ℕ) (hd : 0<d) :
    ⌊x/(d:ℝ)⌋₊ = ⌊x⌋₊/d := by
  have h := Nat.mul_cast_floor_div_cancel (R:=ℝ) (Nat.ne_of_gt hd) (x/(d:ℝ))
  have hne : (d:ℝ) ≠ 0 := by exact_mod_cast (Nat.ne_of_gt hd)
  simpa only [div_mul_cancel₀ x hne] using h.symm

/-- A real cutoff is not replaced by a fixed-P asymptotic. -/
theorem realPrefix_insertion (P : List ℕ) {p : ℕ}
    (hp : p.Prime) (hpP : p ∉ P) (hP : ∀ q ∈ P, q.Prime) (x : ℝ) :
    realPrefix (p::P) x = realPrefix P x - 2*realPrefix P (x/(p:ℝ)) +
      realPrefix P (x/((p:ℝ)*(p:ℝ))) := by
  unfold realPrefix
  rw [prefix_insertion P hp hpP hP, floor_div_nat x p hp.pos]
  rw [← Nat.cast_mul, floor_div_nat x (p*p) (Nat.mul_pos hp.pos hp.pos)]

/-- The exact source coefficient has the same 4^k rounding cost as the
concurrent double-divisor calculation; no period-size bound is used. -/
theorem prefix_floor_error (P : List ℕ) (hdup : P.Nodup)
    (hP : ∀ p ∈ P, p.Prime) {x : ℝ} (hx : 0≤x) :
    |realPrefix P x-eulerMean P*x| ≤ (4:ℝ)^P.length := by
  revert x
  revert hP
  revert hdup
  induction P with
  | nil =>
      intro _ _ x hx
      have h := FiniteDivisorFloorDiscrepancy.weighted_floor_error_le_one 1 1 hx
      simpa [realPrefix, prefix, periodicCoefficient, eulerMean, Nat.card_Icc,
        FiniteDivisorFloorDiscrepancy.moebiusValue, ArithmeticFunction.moebius_apply_one] using h
  | cons p P ih =>
      intro hdup hP x hx
      obtain ⟨hpP,hdupP⟩ := List.nodup_cons.mp hdup
      have hp : p.Prime := hP p (by simp)
      have hs : ∀ q ∈ P, q.Prime := fun q hq => hP q (by simp [hq])
      have hpR : (0:ℝ)<p := by exact_mod_cast hp.pos
      have h0 := ih hdupP hs hx
      have h1 := ih hdupP hs (div_nonneg hx hpR.le)
      have h2 := ih hdupP hs (div_nonneg hx (mul_nonneg hpR.le hpR.le))
      have he : realPrefix (p::P) x-eulerMean (p::P)*x =
          (realPrefix P x-eulerMean P*x) -
          2*(realPrefix P (x/(p:ℝ))-eulerMean P*(x/(p:ℝ))) +
          (realPrefix P (x/((p:ℝ)*(p:ℝ)))-eulerMean P*(x/((p:ℝ)*(p:ℝ)))) := by
        rw [realPrefix_insertion P hp hpP hs]
        unfold eulerMean
        field_simp [hpR.ne']
        <;> ring
      rw [he]
      calc
        _ ≤ |realPrefix P x-eulerMean P*x| +
            2*|realPrefix P (x/(p:ℝ))-eulerMean P*(x/(p:ℝ))| +
            |realPrefix P (x/((p:ℝ)*(p:ℝ)))-eulerMean P*(x/((p:ℝ)*(p:ℝ)))| := by
          calc
            _ ≤ |(realPrefix P x-eulerMean P*x) -
              2*(realPrefix P (x/(p:ℝ))-eulerMean P*(x/(p:ℝ)))| +
              |realPrefix P (x/((p:ℝ)*(p:ℝ)))-eulerMean P*(x/((p:ℝ)*(p:ℝ)))| := abs_add _ _
            _ ≤ _ := by
              have ht := abs_sub (realPrefix P x-eulerMean P*x)
                (2*(realPrefix P (x/(p:ℝ))-eulerMean P*(x/(p:ℝ))))
              rw [abs_mul, abs_of_pos (by norm_num : (0:ℝ)<2)] at ht
              linarith
        _ ≤ (4:ℝ)^P.length+2*(4:ℝ)^P.length+(4:ℝ)^P.length := by linarith
        _ = (4:ℝ)^(p::P).length := by simp only [List.length_cons, pow_succ]; ring

/-- Return the floor discrepancy through the actual monotone response, whose
terminal value vanishes by the original causal birth definition. -/
theorem response_floor_error (P : List ℕ) (hdup : P.Nodup)
    (hP : ∀ p ∈ P, p.Prime) (u : ℝ) :
    |unsignedBlock P (fun n => pickupResponse n u) ⌊Real.exp u⌋₊ -
      eulerMean P*(∑ n ∈ Finset.Icc 1 ⌊Real.exp u⌋₊, pickupResponse n u)| ≤
      (4:ℝ)^P.length*pickupResponse 1 u := by
  rw [unsignedBlock_eq_periodic P hdup hP _ _ (response_support u)]
  let a : ℕ → ℝ := fun n => periodicCoefficient P n-eulerMean P
  have hpre (n : ℕ) : |prefix a n| ≤ (4:ℝ)^P.length := by
    have hh := prefix_floor_error P hdup hP (x:=(n:ℝ)) (Nat.cast_nonneg n)
    simpa [a, realPrefix, prefix, Finset.sum_sub_distrib, Nat.card_Icc, mul_comm] using hh
  have hterminal : pickupResponse (⌊Real.exp u⌋₊+1) u=0 :=
    response_support u _ (Nat.lt_succ_self _)
  have hpos (n : ℕ) (hn : n ∈ Finset.Icc 1 ⌊Real.exp u⌋₊) :
      0 ≤ pickupResponse n u-pickupResponse (n+1) u :=
    sub_nonneg.mpr (response_antitone (Finset.mem_Icc.mp hn).1 (Nat.le_succ n) u)
  have hupper := affine_prefix_bound a (fun n => pickupResponse n u) ⌊Real.exp u⌋₊
    0 ((4:ℝ)^P.length) (fun n _ => by simpa using (abs_le.mp (hpre n)).2) hpos hterminal
  have hlower := affine_prefix_bound (fun n => -a n) (fun n => pickupResponse n u) ⌊Real.exp u⌋₊
    0 ((4:ℝ)^P.length) (by
      intro n _
      have hh := (abs_le.mp (hpre n)).1
      simpa [prefix, Finset.sum_neg_distrib] using (neg_le_neg hh)) hpos hterminal
  have he : (∑ n ∈ Finset.Icc 1 ⌊Real.exp u⌋₊, a n*pickupResponse n u) =
      (∑ n ∈ Finset.Icc 1 ⌊Real.exp u⌋₊, periodicCoefficient P n*pickupResponse n u) -
        eulerMean P*(∑ n ∈ Finset.Icc 1 ⌊Real.exp u⌋₊, pickupResponse n u) := by
    simp only [a, sub_mul, Finset.sum_sub_distrib, Finset.mul_sum]
  have hen : (∑ n ∈ Finset.Icc 1 ⌊Real.exp u⌋₊, -a n*pickupResponse n u) =
      -(∑ n ∈ Finset.Icc 1 ⌊Real.exp u⌋₊, a n*pickupResponse n u) := by
    simp only [neg_mul, Finset.sum_neg_distrib]
  rw [he] at hupper
  rw [hen, he] at hlower
  simp only [zero_mul, zero_add] at hupper hlower
  exact abs_le.mpr ⟨by linarith, hupper⟩

/-- Prime count, not product size, is the new growing-stage discrepancy cost.
The whole negative channel is still retained. -/
theorem source_floor_negative_budget (P : List ℕ) (hdup : P.Nodup)
    (hP : ∀ q ∈ P, q.Prime) {p : ℕ} (hp : p.Prime) (hpP : p ∉ P)
    {u : ℝ} (hu : 0≤u) :
    |wholePickup u| ≤ eulerMean (p::P)*
        (∑ n ∈ Finset.Icc 1 ⌊Real.exp u⌋₊, pickupResponse n u) +
      (4:ℝ)^(P.length+1)*pickupResponse 1 u + 2*negativeBudget P p u := by
  have he := response_floor_error (p::P) (List.nodup_cons.mpr ⟨hpP,hdup⟩)
    (by intro q hq; rcases List.mem_cons.mp hq with rfl|hq; exact hp; exact hP q hq) u
  have hs := source_absolute_budget P hdup hP hp hpP hu
  simp only [List.length_cons] at he
  linarith [(abs_le.mp he).2]

/-- An explicit every-positive-rate error schedule. It does NOT bound the
remaining arithmetic main term or the mu-weighted negative channel. -/
theorem count_schedule_error {T δ : ℝ} {k : ℕ}
    (hδ : 0<δ) (hk : (k:ℝ)^2 ≤ T) :
    (4:ℝ)^k ≤ Real.exp ((Real.log 4)^2/(4*δ))*Real.exp (δ*T) := by
  have hquad : (k:ℝ)*Real.log 4 ≤ δ*T+(Real.log 4)^2/(4*δ) := by
    apply (le_of_mul_le_mul_left ?_ (by positivity : (0:ℝ)<4*δ))
    have he : (4*δ)*(δ*T+(Real.log 4)^2/(4*δ)) =
        4*δ^2*T+(Real.log 4)^2 := by field_simp [hδ.ne']; ring
    rw [he]
    nlinarith [sq_nonneg (2*δ*(k:ℝ)-Real.log 4)]
  have hpow : (4:ℝ)^k=Real.exp ((k:ℝ)*Real.log 4) := by
    rw [Real.exp_nat_mul, Real.exp_log (by norm_num : (0:ℝ)<4)]
  rw [hpow]
  calc
    _ ≤ Real.exp (δ*T+(Real.log 4)^2/(4*δ)) := Real.exp_le_exp.mpr hquad
    _ = _ := by rw [Real.exp_add]; ring

/-- The original birth-at-zero forcing has a uniform pointwise allowance. -/
theorem response_one_le_two (u : ℝ) : pickupResponse 1 u ≤ 2 := by
  by_cases hu : 0 ≤ u
  · simp only [pickupResponse, Nat.cast_one, Real.log_one, if_pos hu,
      Real.sqrt_one, inv_one]
    linarith [Real.exp_pos (-u/2)]
  · simp [pickupResponse, hu]

/-- The entire periodic discrepancy is now an every-rate error for a square-root
prime-count schedule, independently of the possibly enormous arithmetic period.
The original source and its two signed channels are NOT estimated by this theorem. -/
theorem scheduled_response_floor_error (P : ℝ → List ℕ)
    (hdup : ∀ T, (P T).Nodup) (hP : ∀ T p, p ∈ P T → p.Prime)
    (T u δ : ℝ) (hδ : 0<δ) (hcount : ((P T).length:ℝ)^2 ≤ T) :
    |unsignedBlock (P T) (fun n => pickupResponse n u) ⌊Real.exp u⌋₊ -
      eulerMean (P T)*(∑ n ∈ Finset.Icc 1 ⌊Real.exp u⌋₊, pickupResponse n u)| ≤
        (2*Real.exp ((Real.log 4)^2/(4*δ)))*Real.exp (δ*T) := by
  have h := response_floor_error (P T) (hdup T) (hP T) u
  have hc := count_schedule_error hδ hcount
  calc
    _ ≤ (4:ℝ)^(P T).length*pickupResponse 1 u := h
    _ ≤ (4:ℝ)^(P T).length*2 :=
      mul_le_mul_of_nonneg_left (response_one_le_two u) (by positivity)
    _ ≤ (Real.exp ((Real.log 4)^2/(4*δ))*Real.exp (δ*T))*2 :=
      mul_le_mul_of_nonneg_right hc (by norm_num)
    _ = _ := by ring

end GRWTSK.NumberTheory.Moebius.PickupPrimeBlockFloorReturn
