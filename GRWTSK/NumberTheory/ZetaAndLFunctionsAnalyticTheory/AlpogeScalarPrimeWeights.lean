import Mathlib.Algebra.BigOperators.Intervals
import Mathlib.Algebra.GCDMonoid.Finset
import Mathlib.Data.Nat.Prime.Basic
import Mathlib.Data.ZMod.Basic
import Mathlib.Tactic

/-! # Reflected scalar rows at prime weights

The adjacent manuscript uses the nonvanishing of a Stickelberger multiplier and
a sieve for primes whose residual order divides a prescribed weight window.
-/

namespace GRWTSK.AlpogeScalarPrimeWeights

/-- Integral numerator of the mirror Stickelberger element with multiplier two. -/
def mirrorSum (p : ℕ) : ℕ := ∑ j ∈ Finset.range p, (2*j/p)*j

/-- For an odd conductor, each upper-half residue appears with coefficient one. -/
theorem mirrorSum_upper (n : ℕ) :
    mirrorSum (2*n+1) = ∑ i ∈ Finset.range n, (n+1+i) := by
  unfold mirrorSum
  have split : 2*n+1 = n+1+n := by omega
  nth_rw 1 [split]
  rw [Finset.sum_range_add]
  have low : ∑ j ∈ Finset.range (n+1), 2*j/(2*n+1)*j = 0 := by
    apply Finset.sum_eq_zero
    intro j hj
    rw [Nat.div_eq_of_lt (by simp at hj; omega), zero_mul]
  rw [low, zero_add]
  apply Finset.sum_congr rfl
  intro i hi
  have hi' := Finset.mem_range.mp hi
  rw [Nat.div_eq_of_lt_le (k := 1) (by omega) (by omega), one_mul]

/-- The full integral identity gives 8 times the mirror multiplier equal to
one modulo the conductor. -/
theorem mirror_identity (n : ℕ) :
    8*mirrorSum (2*n+1) + 4*(2*n+1) = 3*(2*n+1)^2+1 := by
  rw [mirrorSum_upper, Finset.sum_add_distrib]
  simp only [Finset.sum_const, Finset.card_range, nsmul_eq_mul]
  cases n with
  | zero => simp
  | succ n =>
    have hs := Finset.sum_range_id_mul_two (n+1)
    simp only [Nat.add_sub_cancel] at hs
    nlinarith only [hs]

/-- Thus the Stickelberger eigenvalue is nonzero modulo every odd prime. -/
theorem mirror_not_dvd (n : ℕ) (hn : 0 < n) : ¬(2*n+1 ∣ mirrorSum (2*n+1)) := by
  rintro ⟨k, hk⟩
  have h := mirror_identity n
  rw [hk] at h
  have hd : 2*n+1 ∣ 3*(2*n+1)^2+1 := by
    rw [← h]
    exact ⟨8*k+4, by ring⟩
  have hd' : 2*n+1 ∣ 3*(2*n+1)^2 := ⟨3*(2*n+1), by ring⟩
  have ho := (Nat.dvd_add_iff_right hd').mpr hd
  have := Nat.le_of_dvd Nat.one_pos ho
  omega

/-- First-order power expansion in the ring modulo the conductor squared.
This is used for the floor-sum test with an arbitrary multiplier. -/
theorem first_order_power {A : Type*} [CommRing A] (x y : A) (hy : y^2=0) (k : ℕ) :
    (x+y)^(k+1) = x^(k+1) + (k+1 : A)*x^k*y := by
  induction k with
  | zero => simp
  | succ k ih =>
    rw [pow_succ (x+y), ih]
    push_cast
    linear_combination (k+1 : A)*x^k*hy

/-- Expand the actual least residue of a product, keeping the floor
coefficient in the ring modulo the conductor squared. -/
theorem floor_power_mod_square (p b j s : ℕ) :
    (((b*j)%p : ℕ) : ZMod (p^2))^(s+1) =
      ((b : ZMod (p^2))*j)^(s+1) -
        (s+1 : ZMod (p^2))*((b : ZMod (p^2))*j)^s*(p*((b*j)/p : ℕ)) := by
  have hp : (p : ZMod (p^2))^2 = 0 := by
    rw [← Nat.cast_pow, ZMod.natCast_self]
  have yr : ((b*j%p : ℕ) : ZMod (p^2)) =
      (b : ZMod (p^2))*j + (-(p : ZMod (p^2))*((b*j/p : ℕ) : ZMod (p^2))) := by
    have h := congrArg (fun n : ℕ => (n : ZMod (p^2))) (Nat.mod_add_div (b*j) p)
    push_cast at h
    linear_combination h
  have hy : (-(p : ZMod (p^2))*((b*j/p : ℕ) : ZMod (p^2)))^2=0 := by
    rw [mul_pow, neg_sq, hp, zero_mul]
  rw [yr, first_order_power _ _ hy]
  ring

/-- Multiplication by a unit permutes the summands. Summing their individual
expansions gives the exact floor-sum congruence before Bernoulli evaluation. -/
theorem floor_sum_mod_square (p s : ℕ) [NeZero p] (b : (ZMod p)ˣ) :
    let a := (b : ZMod p).val
    ((a : ZMod (p^2))^(s+1)-1) * ∑ j : ZMod p, (j.val : ZMod (p^2))^(s+1) =
      (s+1 : ZMod (p^2))*a^s*p *
        ∑ j : ZMod p, ((a*j.val/p : ℕ) : ZMod (p^2))*(j.val : ZMod (p^2))^s := by
  dsimp only
  let a := (b : ZMod p).val
  let f (j : ZMod p) : ZMod (p^2) := (j.val : ZMod (p^2))^(s+1)
  have perm := b.mulLeft_bijective.sum_comp f
  simp only [f, ZMod.val_mul] at perm
  change (∑ j : ZMod p, (((a*j.val)%p : ℕ) : ZMod (p^2))^(s+1)) = _ at perm
  simp_rw [floor_power_mod_square] at perm
  rw [Finset.sum_sub_distrib] at perm
  simp_rw [mul_pow] at perm
  rw [← Finset.mul_sum] at perm
  have rewriteTerm (j : ZMod p) :
      (s+1 : ZMod (p^2))*((a : ZMod (p^2))^s*(j.val : ZMod (p^2))^s)*
        (p*((a*j.val/p : ℕ) : ZMod (p^2))) =
      ((s+1 : ZMod (p^2))*a^s*p) * (((a*j.val/p : ℕ) : ZMod (p^2))*
        (j.val : ZMod (p^2))^s) := by ring
  simp_rw [rewriteTerm] at perm
  rw [← Finset.mul_sum] at perm
  change ((a : ZMod (p^2))^(s+1)-1) * _ = _
  linear_combination perm

/-- If the weight is prime, the conductor half is either the residual order
itself or that order times the weight. -/
theorem prime_weight_split (m h : ℕ) (hm : m.Prime) :
    h = h / h.gcd m ∨ h = (h / h.gcd m)*m := by
  have decomp := Nat.div_mul_cancel (Nat.gcd_dvd_left h m)
  rcases (Nat.dvd_prime hm).mp (Nat.gcd_dvd_right h m) with hg | hg
  · left
    simp [hg]
  · right
    simpa [hg] using decomp.symm

/-- A fixed proper divisor of a candidate large conductor. -/
theorem candidate_composite (k m : ℕ) (hk : 0 < k) (hm : 1 < m)
    (h : 2*k+1 ∣ m+1) : ¬(2*(k+1)*m+1).Prime := by
  intro hprime
  obtain ⟨a, ha⟩ := h
  have hd : 2*k+1 ∣ 2*(k+1)*m+1 := ⟨m+a, by nlinarith only [ha]⟩
  rcases (Nat.dvd_prime hprime).mp hd with h₁ | h₂
  · omega
  · nlinarith only [h₂, Nat.mul_le_mul_left (2*(k+1)) hm.le]

/-- If the divisor of a possibly composite weight is congruent to either
sign at the relevant modulus, a nontrivial order forces that divisor to be one. -/
theorem signed_divisor_sieve (k d : ℕ) (hk : 0 < k) (hd : 0 < d)
    (hp : (2*(k+1)*d+1).Prime)
    (hs : 2*(k+1)+1 ∣ d-1 ∨ 2*k+1 ∣ d+1) : d=1 := by
  by_contra hne
  rcases hs with ⟨a, ha⟩ | hminus
  · have ha' : d = (2*(k+1)+1)*a+1 := by omega
    have hf : 2*(k+1)+1 ∣ 2*(k+1)*d+1 := by
      refine ⟨2*(k+1)*a+1, ?_⟩
      rw [ha']
      ring
    rcases (Nat.dvd_prime hp).mp hf with h₁ | h₂
    · omega
    · have hprod := Nat.mul_le_mul_left (2*(k+1)) (show 2 ≤ d by omega)
      omega
  · exact candidate_composite k d hk (by omega) hminus hp

/-- The modulus for eliminating all residual orders through R. -/
def weightModulus (R : ℕ) : ℕ := (Finset.range (2*R+1)).lcm (fun j => j+1)

/-- The convenient modulus also contains 2R+1, which does not change the
logarithmic order of its size. -/
theorem divisor_weightModulus {n R : ℕ} (hn : 0 < n) (hb : n ≤ 2*R+1) :
    n ∣ weightModulus R := by
  obtain ⟨a, rfl⟩ := Nat.exists_eq_succ_of_ne_zero hn.ne'
  exact Finset.dvd_lcm (Finset.mem_range.mpr (by omega : a < 2*R+1))

/-- Complete sieve for an odd prime written 2h+1. If the order is at most R,
it must be trivial or its conductor half divides m+1. -/
theorem prime_weight_sieve (m h R : ℕ) (hm : m.Prime) (hp : (2*h+1).Prime)
    (hc : weightModulus R ∣ m+1) (hr : h/h.gcd m ≤ R) :
    h/h.gcd m = 1 ∨ h ∣ m+1 := by
  have hh : 0 < h := by by_contra! hzero; have ht := hp.two_le; omega
  obtain hsmall | hlarge := prime_weight_split m h hm
  · right
    exact (divisor_weightModulus hh (by omega)).trans hc
  · generalize hk : h/h.gcd m = r at hlarge hr ⊢
    rcases r with _ | k
    · simp at hlarge; omega
    · by_cases hk0 : k=0
      · left; omega
      · exfalso
        have hd := (divisor_weightModulus (n := 2*k+1) (R := R) (by omega) (by omega)).trans hc
        apply candidate_composite k m (by omega) hm.one_lt hd
        convert hp using 1
        nlinarith only [hlarge]

end GRWTSK.AlpogeScalarPrimeWeights
