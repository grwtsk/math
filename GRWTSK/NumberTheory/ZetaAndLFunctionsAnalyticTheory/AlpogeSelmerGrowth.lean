import Mathlib.NumberTheory.BernoulliPolynomials
import Mathlib.Data.Nat.Choose.Bounds
import Mathlib.RingTheory.IntegralClosure.IsIntegralClosure.Basic
import Mathlib.SetTheory.Cardinal.Finite
import Mathlib.Tactic.FieldSimp
import Mathlib.Tactic.Ring

/-! # Denominator clearing in the parity component of the strict Selmer bound

The common integer denominator is uniform over all characters of the original
conductor. The accompanying manuscript applies it to the rational product of
imprimitive special values in the refined Coates–Sinnott formula.
-/

namespace GRWTSK.AlpogeSelmerGrowth

private theorem integral_of_dvd_clear {d D : ℕ} (hd : d ∣ D) {x : ℚ}
    (hx : IsIntegral ℤ ((d : ℚ) * x)) : IsIntegral ℤ ((D : ℚ) * x) := by
  obtain ⟨k, rfl⟩ := hd
  rw [Nat.cast_mul, mul_comm (d : ℚ), mul_assoc]
  exact (isIntegral_natCast (R := ℤ) k).mul hx

/-- The elementary Bernoulli recurrence supplies a single integral multiplier
without requiring an estimate for the primes in a Bernoulli denominator. -/
theorem bernoulli_factorial_integral (n : ℕ) :
    IsIntegral ℤ (((n + 1).factorial : ℚ) * bernoulli n) := by
  induction n using Nat.strong_induction_on with
  | h n ih =>
    by_cases hz : n = 0
    · subst n
      simpa using (isIntegral_one : IsIntegral ℤ (1 : ℚ))
    have hrec := sum_bernoulli (n + 1)
    rw [Finset.sum_range_succ, Nat.choose_succ_self_right, ite_eq_right_iff.mpr (by omega)] at hrec
    have hterm : IsIntegral ℤ (∑ j ∈ Finset.range n,
        (n.factorial : ℚ) * ((n + 1).choose j * bernoulli j)) := by
      apply IsIntegral.sum
      intro j hj
      have hj' := Finset.mem_range.mp hj
      have hv := integral_of_dvd_clear (Nat.factorial_dvd_factorial (Nat.succ_le_of_lt hj')) (ih j hj')
      convert (isIntegral_natCast (R := ℤ) ((n + 1).choose j)).mul hv using 1
      simp [mul_left_comm, mul_comm, mul_assoc]
    have hmul := congrArg (fun x : ℚ => (n.factorial : ℚ) * x) hrec
    rw [mul_add, Finset.mul_sum, mul_zero] at hmul
    rw [Nat.factorial_succ, Nat.cast_mul]
    have hneg := eq_neg_of_add_eq_zero_right hmul
    convert hterm.neg using 1
    linear_combination hneg

/-- Clear the denominator of a Bernoulli polynomial at every rational grid
point used by the Hurwitz formula. -/
theorem bernoulli_grid_integral (n m a : ℕ) (hm : m ≠ 0) :
    IsIntegral ℤ (((n + 1).factorial : ℚ) * (m : ℚ) ^ n *
      (Polynomial.bernoulli n).eval ((a : ℚ) / m)) := by
  rw [Polynomial.bernoulli, Polynomial.eval_finsetSum, Finset.mul_sum]
  apply IsIntegral.sum
  intro j hj
  have hj' : j ≤ n := Nat.le_of_lt_succ (Finset.mem_range.mp hj)
  have hi := integral_of_dvd_clear (Nat.factorial_dvd_factorial (Nat.succ_le_succ hj'))
    (bernoulli_factorial_integral j)
  have hpow : (m : ℚ) ^ n = (m : ℚ) ^ j * (m : ℚ) ^ (n-j) := by
    rw [← pow_add, Nat.add_sub_of_le hj']
  have hm' : (m : ℚ) ≠ 0 := by exact_mod_cast hm
  rw [Polynomial.eval_monomial, hpow, div_pow]
  convert (((hi.mul (isIntegral_natCast (R := ℤ) (n.choose j))).mul
      ((isIntegral_natCast (R := ℤ) m).pow j)).mul
      ((isIntegral_natCast (R := ℤ) a).pow (n-j))) using 1
  field_simp

/-- A complete character sum after denominator clearing. The coefficient
hypothesis allows imprimitive characters, which vanish on nonunits. -/
theorem integral_character_sum {A ι : Type*} [CommRing A] [Algebra ℚ A]
    (S : Finset ι) (a : ι → ℕ) (χ : ι → A)
    (hχ : ∀ i ∈ S, IsIntegral ℤ (χ i)) (n m : ℕ) (hm : m ≠ 0) :
    IsIntegral ℤ (∑ i ∈ S, χ i * algebraMap ℚ A
      (((n + 1).factorial : ℚ) * (m : ℚ)^n *
        (Polynomial.bernoulli n).eval ((a i : ℚ) / m))) := by
  apply IsIntegral.sum
  intro i hi
  apply (hχ i hi).mul
  exact (bernoulli_grid_integral n m (a i) hm).algebraMap

/-- A coarse archimedean bound from the same recurrence. Its logarithm is
quadratic in the weight, which suffices for the original uniform budget. -/
theorem abs_bernoulli_le (n : ℕ) : |bernoulli n| ≤ (2 : ℚ) ^ (n+1)^2 := by
  induction n using Nat.strong_induction_on with
  | h n ih =>
    by_cases hz : n = 0
    · subst n
      norm_num
    have hrec := sum_bernoulli (n + 1)
    rw [Finset.sum_range_succ, Nat.choose_succ_self_right, ite_eq_right_iff.mpr (by omega)] at hrec
    have hh : ∀ j ∈ Finset.range n, |((n+1).choose j : ℚ) * bernoulli j| ≤
        (2 : ℚ) ^ n * 2 ^ n^2 := by
      intro j hj
      have hj' := Finset.mem_range.mp hj
      rw [abs_mul, abs_of_nonneg (Nat.cast_nonneg _)]
      apply mul_le_mul (by exact_mod_cast Nat.choose_succ_le_two_pow n j)
        ((ih j hj').trans ?_) (abs_nonneg _) (by positivity)
      exact pow_le_pow_right₀ (by norm_num) (Nat.pow_le_pow_left (Nat.succ_le_of_lt hj') _)
    have hbound : ((n+1 : ℕ) : ℚ) * |bernoulli n| ≤ (n : ℚ) * (2^n * 2^n^2) := by
      calc
        _ = |((n+1 : ℕ) : ℚ) * bernoulli n| := by rw [abs_mul, abs_of_nonneg (show 0 ≤ ((n+1:ℕ):ℚ) from Nat.cast_nonneg _)]
        _ = |∑ j ∈ Finset.range n, ((n+1).choose j : ℚ) * bernoulli j| := by
          rw [eq_neg_of_add_eq_zero_left hrec, abs_neg]
        _ ≤ ∑ j ∈ Finset.range n, |((n+1).choose j : ℚ) * bernoulli j| :=
          Finset.abs_sum_le_sum_abs _ _
        _ ≤ ∑ _j ∈ Finset.range n, (2:ℚ)^n * 2^n^2 := Finset.sum_le_sum hh
        _ = _ := by simp
    have hsmall : |bernoulli n| ≤ (2:ℚ)^n * 2^n^2 := by
      apply (le_of_mul_le_mul_left (a := ((n+1:ℕ):ℚ)) _ (by positivity))
      exact hbound.trans (mul_le_mul_of_nonneg_right (by simp) (by positivity))
    apply hsmall.trans
    rw [← pow_add]
    apply pow_le_pow_right₀ (by norm_num)
    nlinarith

/-- Bound every value on the original rational conductor grid. -/
theorem abs_bernoulli_grid_le (n : ℕ) {x : ℚ} (hx : 0 ≤ x) (hx' : x ≤ 1) :
    |(Polynomial.bernoulli n).eval x| ≤ (n + 1 : ℕ) * ((2 : ℚ) ^ (n+1)^2 * 2^n) := by
  rw [Polynomial.bernoulli, Polynomial.eval_finsetSum]
  calc
    _ ≤ _ := Finset.abs_sum_le_sum_abs _ _
    _ ≤ ∑ _j ∈ Finset.range (n+1), (2:ℚ)^(n+1)^2 * 2^n := by
      apply Finset.sum_le_sum
      intro j hj
      have hj' := Nat.le_of_lt_succ (Finset.mem_range.mp hj)
      rw [Polynomial.eval_monomial, abs_mul, abs_mul, abs_of_nonneg (show 0 ≤ (n.choose j : ℚ) from Nat.cast_nonneg _),
        abs_of_nonneg (pow_nonneg hx _)]
      apply le_trans (mul_le_mul_of_nonneg_left (pow_le_one₀ hx hx') (by positivity))
      rw [mul_one]
      exact mul_le_mul ((abs_bernoulli_le j).trans (pow_le_pow_right₀ (by norm_num)
        (Nat.pow_le_pow_left (Nat.succ_le_succ hj') _)))
        (by exact_mod_cast Nat.choose_le_two_pow n j) (Nat.cast_nonneg _) (by positivity)
    _ = _ := by simp

set_option maxRecDepth 8000 in
/-- After multiplying a putative generator of a norm-two ideal by a power
of the norm-one unit, its norm equation is in this finite box. -/
theorem norm_two_box_321 : ∀ x : Fin 55, ∀ y : Fin 4,
    x.val ^ 2 ≠ 321 * y.val ^ 2 + 8 ∧
    x.val ^ 2 + 8 ≠ 321 * y.val ^ 2 := by
  decide +kernel

/-- Norms of the unit, the element generating the cube of a prime over two,
and the element relating primes over two and five. -/
theorem norm_certificates_321 :
    (215 : ℤ)^2 - 321 * 12^2 = 1 ∧
    (17 : ℤ)^2 - 321 = 4 * (-8) ∧ (19 : ℤ)^2 - 321 = 4 * 10 := by
  decide +kernel

/-- Evaluation on two generators distinguishes crossed homomorphisms, even
when the action on the coefficient module is nontrivial. -/
theorem cocycle_pair_injective {G A : Type*} [Group G] [AddCommGroup A] [DistribMulAction G A]
    (u v : G) (hgen : Subgroup.closure ({u, v} : Set G) = ⊤) :
    Function.Injective (fun f : {f : G → A // ∀ x y, f (x*y) = f x + x • f y} =>
      (f.val u, f.val v)) := by
  intro f g heq
  have hone (c : {c : G → A // ∀ x y, c (x*y) = c x + x • c y}) : c.val 1 = 0 := by
    have he := c.property 1 1
    simpa using he
  apply Subtype.ext
  funext x
  have hx : x ∈ Subgroup.closure ({u,v} : Set G) := by rw [hgen]; trivial
  induction hx using Subgroup.closure_induction with
  | mem y hy =>
    rcases Set.mem_insert_iff.mp hy with rfl | hv
    · exact congrArg Prod.fst heq
    · obtain rfl := Set.mem_singleton_iff.mp hv
      exact congrArg Prod.snd heq
  | one => rw [hone, hone]
  | mul a b _ _ ha hb => rw [f.property, g.property, ha, hb]
  | inv a _ ha =>
    have hf := f.property a⁻¹ a
    have hg := g.property a⁻¹ a
    rw [inv_mul_cancel, hone, ha] at hf
    rw [inv_mul_cancel, hone] at hg
    exact add_right_cancel (hf.symm.trans hg)

/-- The inflation contribution has at most the square of the coefficient
order. Passing to cohomology can only reduce this finite cardinality. -/
theorem cocycle_pair_card_le {G A : Type*} [Group G] [AddCommGroup A] [DistribMulAction G A]
    [Finite A] (u v : G) (hgen : Subgroup.closure ({u,v} : Set G) = ⊤) :
    Nat.card {f : G → A // ∀ x y, f (x*y) = f x + x • f y} ≤ Nat.card A ^ 2 := by
  simpa [Nat.card_prod, pow_two] using Nat.card_le_card_of_injective _
    (cocycle_pair_injective (A := A) u v hgen)

end GRWTSK.AlpogeSelmerGrowth
