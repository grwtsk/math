/- Copyright (c) 2026 grwtsk contributors. MIT.
Imported GRWTSK and Mathlib sources retain their upstream licenses. -/
import GRWTSK.Analysis.FiniteSums.PrimeBlockKernel
import GRWTSK.NumberTheory.Moebius.FinitePrimeDivisorExtraction
import GRWTSK.NumberTheory.Moebius.PickupEndpointQuadrature

/-!
# Source-exact growing prime blocks

P is a nodup list of primes, hence an ordered presentation of a finite set.
Adding p means p::P with p not in P. The source identity retains the positive
cofactor inventory, the roughness guard, the floor-divided dilated cutoff,
and the actual Mobius coefficient. Repeated p in the quotient contributes
zero by the existing prime-multiplication theorem, not by deleting a correction.
SOURCE_PROOF_CANDIDATE / compilation, kernel replay and axiom audit NOT_RUN.
-/
set_option autoImplicit false
noncomputable section
open scoped BigOperators
namespace GRWTSK.NumberTheory.Moebius.PickupPrimeBlockExtraction

open GRWTSK.RiemannHypothesis.CCC
open GRWTSK.Analysis.FiniteSums.PrimeBlockKernel
open GRWTSK.NumberTheory.Moebius.FinitePrimeDivisorExtraction
open GRWTSK.NumberTheory.Moebius.PickupCellQuadratic
open GRWTSK.RiemannHypothesis.CCC.LogarithmicSampling

/-- Literal coprimality to every selected prime, including all nonunit cases. -/
def Rough (P : List ℕ) (m : ℕ) : Prop := ∀ p ∈ P, ¬ p ∣ m

@[simp] theorem rough_nil (m : ℕ) : Rough [] m := by simp [Rough]
@[simp] theorem rough_cons (p m : ℕ) (P : List ℕ) :
    Rough (p::P) m ↔ ¬p ∣ m ∧ Rough P m := by simp [Rough]

/-- No density estimate enters this cofactor support identity. -/
theorem rough_prime_mul (P : List ℕ) {p m : ℕ}
    (hp : p.Prime) (hpP : p ∉ P) (hP : ∀ q ∈ P, q.Prime) :
    Rough P (p*m) ↔ Rough P m := by
  constructor
  · intro h q hq hd
    exact h q hq (dvd_mul_of_dvd_right hd p)
  · intro h q hq hd
    rcases (hP q hq).dvd_mul.mp hd with hqp | hqm
    · rcases (Nat.dvd_prime hp).mp hqp with h1 | he
      · exact (hP q hq).ne_one h1
      · subst q; exact hpP hq
    · exact h q hq hqm

/-- The kernel remains supported at or below the same causal cutoff. -/
theorem block_support (P : List ℕ) (hP : ∀ p ∈ P, 1 ≤ p)
    (f : ℕ → ℝ) (N : ℕ) (hf : ∀ n, N < n → f n = 0) :
    ∀ m, N < m → block P f m = 0 := by
  revert hP
  induction P with
  | nil => intro _; exact hf
  | cons p P ih =>
      intro hP m hm
      have hp : 1 ≤ p := hP p (by simp)
      have hrest : ∀ q ∈ P, 1 ≤ q := fun q hq => hP q (by simp [hq])
      have hpm : N < p*m := lt_of_lt_of_le hm (by nlinarith)
      simp only [block_cons, ih hrest m hm, ih hrest (p*m) hpm, sub_self]

/-- The upper quotient cutoff can be extended only because the dilated source is zero. -/
theorem quotient_sum_extend (N p : ℕ) (hp : 0 < p) (g : ℕ → ℝ)
    (hg : ∀ m ∈ Finset.Icc 1 N, N < p*m → g m = 0) :
    (∑ m ∈ Finset.Icc 1 (N/p), g m) = ∑ m ∈ Finset.Icc 1 N, g m := by
  apply Finset.sum_subset
  · intro m hm
    exact Finset.mem_Icc.mpr ⟨(Finset.mem_Icc.mp hm).1,
      (Finset.mem_Icc.mp hm).2.trans (Nat.div_le_self N p)⟩
  · intro m hm hn
    apply hg m hm
    by_contra h
    have hle : m ≤ N/p := (Nat.le_div_iff_mul_le hp).mpr
      (by simpa only [Nat.mul_comm] using (le_of_not_gt h))
    exact hn (Finset.mem_Icc.mpr ⟨(Finset.mem_Icc.mp hm).1, hle⟩)

/-- A finite dilation with its exact floor and ordinary positive cofactor interval. -/
theorem dilation_reindex (N d : ℕ) (hd : 0 < d) (f : ℕ → ℝ)
    (hf : ∀ n, N < n → f n = 0) (R : ℕ → Prop) :
    (∑ m ∈ Finset.Icc 1 N, if R m then f (d*m) else 0) =
      ∑ n ∈ Finset.Icc 1 N, if d ∣ n ∧ R (n/d) then f n else 0 := by
  classical
  let F : ℕ → ℝ := fun n => if R (n/d) then f n else 0
  have h := sum_divisible_window_eq_quotient 0 N d hd F
  simp only [Nat.zero_add, Nat.add_zero] at h
  have hr : (∑ m ∈ Finset.Icc 1 (N/d), if 0 < d*m then F (d*m) else 0) =
      ∑ m ∈ Finset.Icc 1 (N/d), if R m then f (d*m) else 0 := by
    apply Finset.sum_congr rfl
    intro m hm
    have hmpos : 0 < m := lt_of_lt_of_le Nat.zero_lt_one (Finset.mem_Icc.mp hm).1
    simp only [if_pos (Nat.mul_pos hd hmpos), F, Nat.mul_div_cancel_left m hd]
  rw [hr] at h
  have hx := quotient_sum_extend N d hd (fun m => if R m then f (d*m) else 0)
    (fun m _ hn => by simp [hf (d*m) hn])
  rw [hx] at h
  rw [← h]
  apply Finset.sum_congr rfl
  intro n _
  by_cases hdv : d ∣ n <;> by_cases hR : R (n/d) <;> simp [F, hdv, hR]

/-- Both signed cofactor correlations, before the cutoff is extended. -/
theorem prime_step_cutoffs (P : List ℕ) {p : ℕ} (hp : p.Prime)
    (hpP : p ∉ P) (hP : ∀ q ∈ P, q.Prime) (N : ℕ) (f : ℕ → ℝ) :
    (∑ n ∈ Finset.Icc 1 N, if Rough P n then moebiusReal n*f n else 0) =
      (∑ m ∈ Finset.Icc 1 N, if Rough (p::P) m then moebiusReal m*f m else 0) -
      ∑ m ∈ Finset.Icc 1 (N/p),
        if Rough (p::P) m then moebiusReal m*f (p*m) else 0 := by
  classical
  let F : ℕ → ℝ := fun n => if Rough P n then moebiusReal n*f n else 0
  have hsplit : (∑ n ∈ Finset.Icc 1 N, F n) =
      (∑ n ∈ Finset.Icc 1 N, if ¬p ∣ n then F n else 0) +
      ∑ n ∈ Finset.Icc 1 N, if p ∣ n then F n else 0 := by
    rw [← Finset.sum_add_distrib]
    apply Finset.sum_congr rfl
    intro n _
    by_cases h : p ∣ n <;> simp [h]
  have hq := sum_divisible_window_eq_quotient 0 N p hp.pos F
  simp only [Nat.zero_add, Nat.add_zero] at hq
  have hn : (∑ n ∈ Finset.Icc 1 N, if ¬p ∣ n then F n else 0) =
      ∑ n ∈ Finset.Icc 1 N, if Rough (p::P) n then moebiusReal n*f n else 0 := by
    apply Finset.sum_congr rfl
    intro n _
    by_cases hr : Rough P n <;> by_cases hd : p ∣ n <;> simp [F, hr, hd]
  have hm : (∑ m ∈ Finset.Icc 1 (N/p), if 0 < p*m then F (p*m) else 0) =
      -(∑ m ∈ Finset.Icc 1 (N/p),
        if Rough (p::P) m then moebiusReal m*f (p*m) else 0) := by
    rw [← Finset.sum_neg_distrib]
    apply Finset.sum_congr rfl
    intro m hm
    have hpos : 0 < p*m := Nat.mul_pos hp.pos
      (lt_of_lt_of_le Nat.zero_lt_one (Finset.mem_Icc.mp hm).1)
    have hr := rough_prime_mul P (m := m) hp hpP hP
    simp only [if_pos hpos, F, hr, moebiusReal_prime_mul hp]
    by_cases hR : Rough P m <;> by_cases hd : p ∣ m <;>
      simp [hR, hd]
  rw [hq, hn, hm] at hsplit
  simpa only [F, sub_eq_add_neg] using hsplit

/-- Inserting p changes the kernel and cofactor restriction together. -/
theorem prime_step (P : List ℕ) {p : ℕ} (hp : p.Prime)
    (hpP : p ∉ P) (hP : ∀ q ∈ P, q.Prime) (N : ℕ) (f : ℕ → ℝ)
    (hf : ∀ n, N < n → f n = 0) :
    (∑ n ∈ Finset.Icc 1 N, if Rough P n then moebiusReal n*f n else 0) =
      ∑ m ∈ Finset.Icc 1 N,
        if Rough (p::P) m then moebiusReal m*(f m-f (p*m)) else 0 := by
  classical
  rw [prime_step_cutoffs P hp hpP hP]
  rw [quotient_sum_extend N p hp.pos
    (fun m => if Rough (p::P) m then moebiusReal m*f (p*m) else 0)
    (fun m _ hn => by simp [hf (p*m) hn])]
  rw [← Finset.sum_sub_distrib]
  apply Finset.sum_congr rfl
  intro m _
  by_cases h : Rough (p::P) m <;> simp [h, mul_sub]

/-- Exact finite Möbius synthesis for an arbitrary supported response. -/
theorem block_source (P : List ℕ) (hnodup : P.Nodup)
    (hP : ∀ p ∈ P, p.Prime) (N : ℕ) (f : ℕ → ℝ)
    (hf : ∀ n, N < n → f n = 0) :
    (∑ n ∈ Finset.Icc 1 N, moebiusReal n*f n) =
      ∑ m ∈ Finset.Icc 1 N, if Rough P m then moebiusReal m*block P f m else 0 := by
  classical
  revert hnodup hP
  induction P with
  | nil => intro _ _; simp [Rough, block]
  | cons p P ih =>
      intro hnodup hP
      obtain ⟨hpP, hdup⟩ := List.nodup_cons.mp hnodup
      have hp : p.Prime := hP p (by simp)
      have hrest : ∀ q ∈ P, q.Prime := fun q hq => hP q (by simp [hq])
      rw [ih hdup hrest]
      exact prime_step P hp hpP hrest N (block P f)
        (block_support P (fun q hq => (hrest q hq).one_le) f N hf)

/-- A response above the closed causal cutoff is zero. The equality-at-birth
case is supplied separately by the existing pickupResponse_at_event theorem. -/
theorem response_support (u : ℝ) :
    ∀ n, ⌊Real.exp u⌋₊ < n → pickupResponse n u = 0 := by
  intro n hn
  have hnpos : (0:ℝ) < n := by exact_mod_cast (by omega : 0 < n)
  have hexp : Real.exp u < n := by
    have h := Nat.lt_floor_add_one (Real.exp u)
    have hle : ((⌊Real.exp u⌋₊+1:ℕ):ℝ) ≤ n := by exact_mod_cast (Nat.succ_le_of_lt hn)
    exact h.trans_le (by simpa only [Nat.cast_add, Nat.cast_one] using hle)
  have hlog : u < Real.log (n:ℝ) := (Real.lt_log_iff_exp_lt hnpos).mpr hexp
  simp [pickupResponse, not_le.mpr hlog]

/-- Every signed stage returns the existing source, not a surrogate polynomial. -/
theorem wholePickup_eq_blocks (P : List ℕ) (hnodup : P.Nodup)
    (hP : ∀ p ∈ P, p.Prime) {u : ℝ} (hu : 0 ≤ u) :
    wholePickup u = ∑ m ∈ Finset.Icc 1 ⌊Real.exp u⌋₊,
      if Rough P m then moebiusReal m*block P (fun n => pickupResponse n u) m else 0 := by
  rw [wholePickup_fixed_inventory hu le_rfl]
  exact block_source P hnodup hP _ _ (response_support u)

/-- The two cutoff-separated correlations of one growing stage. -/
theorem wholePickup_prime_step (P : List ℕ) (hnodup : P.Nodup)
    (hP : ∀ q ∈ P, q.Prime) {p : ℕ} (hp : p.Prime) (hpP : p ∉ P)
    {u : ℝ} (hu : 0 ≤ u) :
    wholePickup u =
      (∑ m ∈ Finset.Icc 1 ⌊Real.exp u⌋₊, if Rough (p::P) m then
        moebiusReal m*block P (fun n => pickupResponse n u) m else 0) -
      ∑ m ∈ Finset.Icc 1 (⌊Real.exp u⌋₊ / p), if Rough (p::P) m then
        moebiusReal m*block P (fun n => pickupResponse n u) (p*m) else 0 := by
  rw [wholePickup_eq_blocks P hnodup hP hu]
  exact prime_step_cutoffs P hp hpP hP _ _

/-- A horizon-dependent finite stage may be frozen throughout its whole integration interval. -/
theorem scheduled_source (P : ℝ → List ℕ)
    (hnodup : ∀ T, (P T).Nodup) (hP : ∀ T p, p ∈ P T → p.Prime)
    (T u : ℝ) (hu : 0 ≤ u) :
    wholePickup u = ∑ m ∈ Finset.Icc 1 ⌊Real.exp u⌋₊,
      if Rough (P T) m then moebiusReal m*block (P T) (fun n => pickupResponse n u) m else 0 :=
  wholePickup_eq_blocks (P T) (hnodup T) (hP T) hu

/-- Same-source transition: no unrecorded sieve jump in the arithmetic waveform. -/
theorem stage_transition (P Q : List ℕ) (hPdup : P.Nodup) (hQdup : Q.Nodup)
    (hP : ∀ p ∈ P, p.Prime) (hQ : ∀ p ∈ Q, p.Prime)
    {u : ℝ} (hu : 0 ≤ u) :
    (∑ m ∈ Finset.Icc 1 ⌊Real.exp u⌋₊,
      if Rough P m then moebiusReal m*block P (fun n => pickupResponse n u) m else 0) =
    ∑ m ∈ Finset.Icc 1 ⌊Real.exp u⌋₊,
      if Rough Q m then moebiusReal m*block Q (fun n => pickupResponse n u) m else 0 := by
  rw [← wholePickup_eq_blocks P hPdup hP hu, ← wholePickup_eq_blocks Q hQdup hQ hu]

end GRWTSK.NumberTheory.Moebius.PickupPrimeBlockExtraction
