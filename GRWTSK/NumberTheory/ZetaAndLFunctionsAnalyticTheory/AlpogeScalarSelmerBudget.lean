import Mathlib.GroupTheory.OrderOfElement
import Mathlib.NumberTheory.Divisors
import Mathlib.Data.Nat.Factorization.Defs
import Mathlib.Tactic

/-! # Residual orders and relative units in the scalar Selmer bound -/

namespace GRWTSK.AlpogeScalarSelmerBudget

/-- Test the degree of a character raised to the weight on a generator. -/
theorem power_order_dvd_iff {G : Type*} [Group G] (g : G) (e d : ℕ) :
    orderOf (g^e) ∣ d ↔ orderOf g ∣ e*d := by
  rw [orderOf_dvd_iff_pow_eq_one, orderOf_dvd_iff_pow_eq_one, pow_mul]

/-- For a given weight and residual order, every possible prime occurs in
an explicit image of the divisor set of the weight. -/
theorem candidate_mem_divisor_image (p e r : ℕ) (hp : 1 < p) (he : 0 < e)
    (hr : p-1 = (p-1).gcd e * r) :
    p ∈ e.divisors.image (fun g => g*r + 1) := by
  apply Finset.mem_image.mpr
  refine ⟨(p-1).gcd e, Nat.mem_divisors.mpr ⟨Nat.gcd_dvd_right _ _, he.ne'⟩, ?_⟩
  omega

/-- At the totally ramified prime the two subfield norms of a relative unit
have signs as values. Their reductions force the square of its residue to be one. -/
theorem residue_square_eq_one {G : Type*} [Group G] (x : G)
    (h₄ : x^4 = 1) (h₆ : x^6 = 1) : x^2 = 1 := by
  calc
    x^2 = x^4 * x^2 := by rw [h₄, one_mul]
    _ = x^6 := by rw [← pow_add]
    _ = 1 := h₆

/-- Three reciprocal pairs of logarithms give the hexagonal regulator norm. -/
theorem sextic_log_energy (a b : ℝ) :
    3*(|a| + |b| + |a-b|)^2 ≤ 16*(a^2 + b^2 - a*b) := by
  simp only [abs_eq_max_neg, max_def]
  split_ifs <;> nlinarith [sq_nonneg (a+b), sq_nonneg (a-2*b), sq_nonneg (2*a-b)]

/-- With L=log p and b=log 2, the sextic relative class number bound
is strictly below the conductor throughout L≥16b. -/
theorem sextic_cutoff (L b c : ℝ) (hb : 0 < b) (hL : 16*b ≤ L)
    (hc : 0 ≤ c) (hc' : c ≤ b) : (L+c)^2 < 3*(L-6*b)^2 := by
  have h : 10*(L+c) ≤ 17*(L-6*b) := by linarith
  have hsq := mul_self_le_mul_self (by linarith : 0 ≤ 10*(L+c)) h
  nlinarith [sq_pos_of_pos (by linarith : 0 < L-6*b)]

/-- A product of positive class-number factors smaller than the conductor
has no conductor-primary component. -/
theorem conductor_not_dvd_product (p a b c : ℕ) (hp : p.Prime)
    (ha : 0 < a) (hb : 0 < b) (hc : 0 < c)
    (ha' : a < p) (hb' : b < p) (hc' : c < p) : ¬ p ∣ a*b*c := by
  rw [hp.dvd_mul, hp.dvd_mul]
  exact not_or.mpr ⟨not_or.mpr ⟨Nat.not_dvd_of_pos_of_lt ha ha',
    Nat.not_dvd_of_pos_of_lt hb hb'⟩, Nat.not_dvd_of_pos_of_lt hc hc'⟩

/-- The number of possible primes at fixed residual degree is bounded by
the number of divisors of the weight, independently of that degree. -/
theorem fixed_order_candidate_count (S : Finset ℕ) (e r : ℕ) (he : 0 < e)
    (hS : ∀ p ∈ S, 1 < p ∧ p-1 = (p-1).gcd e*r) : S.card ≤ e.divisors.card := by
  have sub : S ⊆ e.divisors.image (fun g => g*r+1) := by
    intro p hp
    exact candidate_mem_divisor_image p e r (hS p hp).1 he (hS p hp).2
  exact (Finset.card_le_card sub).trans Finset.card_image_le

/-- Truncating each elementary divisor at depth a costs at most a
times the number of nonzero elementary divisors. -/
theorem bounded_depth_length {ι : Type*} (s : Finset ι) (length : ι → ℕ) (a : ℕ) :
    ∑ i ∈ s, min a (length i) ≤ s.card*a := by
  simpa using Finset.sum_le_sum (s := s) (fun i _ => min_le_left a (length i))

/-- Local lengths bounded by the weight valuations consume a divisor of
the weight, even when the number of contributing primes varies. -/
theorem primary_product_dvd_weight (e : ℕ) (length : ℕ →₀ ℕ)
    (h : ∀ p, length p ≤ e.factorization p) : length.prod (· ^ ·) ∣ e :=
  Nat.prod_pow_dvd_of_le_factorization h

end GRWTSK.AlpogeScalarSelmerBudget
