import GRWTSK.NumberTheory.IntegerFactorizationAbundance
import Mathlib.Data.Nat.Totient
import Mathlib.Data.Nat.Log
import Mathlib.Data.Nat.Size
import Mathlib.Tactic.Linarith
import Mathlib.Tactic.Ring

/-!
# Recovering the exact totient from one power divisor sum

Authors: grwtsk contributors

Joseph M. Shunia, arXiv:2611.34242v1, Lemma 3.2. We prove an integer
quotient identity under the explicit bound `2 * (w.log2 + 1) ≤ j`.
The algorithm needs only the given integer and the divisor sum of its power.
The canonical rows occur solely in the correctness proof.
-/
namespace GRWTSK.IntegerFactorization.PowerDivisorSum

open ArithmeticFunction

private abbrev mass (w j : ℕ) := w ^ (j+1)
private abbrev retained (w j : ℕ) := w.totient * sigma 1 (w ^ j)

private theorem geom_exact {p : ℕ} (hp : 1 ≤ p) (k : ℕ) :
    (p-1) * (∑ i ∈ Finset.range (k+1), p^i) + 1 = p^(k+1) := by
  have he : p-1+1=p := by omega
  induction k with
  | zero => simp [he]
  | succ k ih =>
    rw [Finset.sum_range_succ, Nat.mul_add]
    calc
      _ = ((p-1) * (∑ i ∈ Finset.range (k+1), p^i) + 1) + (p-1)*p^(k+1) := by ring
      _ = p^(k+1) * (p-1+1) := by rw [ih]; ring
      _ = _ := by rw [he, pow_succ p (k+1)]

private theorem local_bound {p : ℕ} (hp : p.Prime) (e j : ℕ) :
    retained (p^(e+1)) j ≤ mass (p^(e+1)) j ∧
    2^(j+1) * mass (p^(e+1)) j ≤
      2^(j+1) * retained (p^(e+1)) j + mass (p^(e+1)) j := by
  let k := (e+1)*j
  have exactMass : retained (p^(e+1)) j + p^e = mass (p^(e+1)) j := by
    unfold retained mass
    rw [Nat.totient_prime_pow_succ hp, ← pow_mul, sigma_one_apply_prime_pow hp, ← pow_mul]
    calc
      _ = p^e * ((p-1) * (∑ i ∈ Finset.range (k+1), p^i) + 1) := by dsimp [k]; ring
      _ = _ := by rw [geom_exact hp.one_lt.le, ← pow_add]; congr 1; dsimp [k]; ring
  have hsmall : 2^(j+1) * p^e ≤ mass (p^(e+1)) j := by
    calc
      _ ≤ p^(j+1) * p^e := Nat.mul_le_mul_right _ (Nat.pow_le_pow_left hp.two_le _)
      _ = p^(j+1+e) := (pow_add _ _ _).symm
      _ ≤ p^((e+1)*(j+1)) := Nat.pow_le_pow_right hp.pos (by nlinarith)
      _ = _ := pow_mul _ _ _
  exact ⟨by omega, by nlinarith only [congrArg (2^(j+1)* ·) exactMass, hsmall]⟩

private def value (xs : List (ℕ × ℕ)) : ℕ := (xs.map (fun t => t.1 ^ t.2)).prod

private theorem row_bound (xs : List (ℕ × ℕ)) (j : ℕ)
    (ho : xs.Pairwise (fun a b => a.1 < b.1))
    (hv : ∀ t ∈ xs, Nat.Prime t.1 ∧ 0 < t.2) :
    retained (value xs) j ≤ mass (value xs) j ∧
    2^(j+1)*mass (value xs) j ≤ 2^(j+1)*retained (value xs) j + xs.length * mass (value xs) j := by
  induction xs with
  | nil => simp [value, mass, retained]
  | cons t xs ih =>
    obtain ⟨p,e⟩ := t
    have ⟨hp,he⟩ := hv (p,e) List.mem_cons_self
    obtain ⟨ee,rfl⟩ := Nat.exists_eq_succ_of_ne_zero (Nat.ne_of_gt he)
    have hOrd := List.pairwise_cons.mp ho
    have ht := ih hOrd.2 (fun t h => hv t (List.mem_cons_of_mem _ h))
    have hc : Nat.Coprime (p^(ee+1)) (value xs) := by
      apply Nat.coprime_list_prod_right_iff.mpr
      intro z hz
      obtain ⟨a,ha,rfl⟩ := List.mem_map.mp hz
      exact Nat.coprime_pow_primes _ _ hp (hv _ (List.mem_cons_of_mem _ ha)).1 (hOrd.1 _ ha).ne
    have hl := local_bound hp ee j
    have hobs : retained (value ((p,ee+1)::xs)) j =
        retained (p^(ee+1)) j * retained (value xs) j := by
      change (p^(ee+1)*value xs).totient * sigma 1 ((p^(ee+1)*value xs)^j) = _
      rw [Nat.totient_mul hc, mul_pow, isMultiplicative_sigma.map_mul_of_coprime (hc.pow_left j |>.pow_right j)]
      unfold retained
      ring
    have hx : mass (value ((p,ee+1)::xs)) j = mass (p^(ee+1)) j * mass (value xs) j :=
      mul_pow _ _ _
    rw [hobs,hx,List.length_cons]
    refine ⟨Nat.mul_le_mul hl.1 ht.1, ?_⟩
    have h₁ := Nat.mul_le_mul_right (mass (value xs) j) hl.2
    have h₂ := Nat.mul_le_mul_left (retained (p^(ee+1)) j) ht.2
    have h₃ := Nat.mul_le_mul_right (xs.length * mass (value xs) j) hl.1
    nlinarith only [h₁,h₂,h₃]

/-- One exact divisor-sum answer suffices under this integer error criterion. -/
theorem totient_of_sigma_power {w j : ℕ} (hw : 2 ≤ w)
    (hprec : (canonical w).length * w < 2^(j+1)) :
    w^(j+1) / sigma 1 (w^j) = w.totient := by
  have hc := canonical_complete hw
  have h := row_bound (canonical w) j hc.ordered hc.valid
  have hv : value (canonical w) = w := (prod_expand _).symm.trans hc.product
  rw [hv] at h
  have hwpos : 0 < w^j := pow_pos (by omega) _
  have hσ : w^j ≤ sigma 1 (w^j) := by
    rw [sigma_one_apply]
    exact Finset.single_le_sum (f := id) (fun _ _ => Nat.zero_le _) ((w^j).mem_divisors_self hwpos.ne')
  apply Nat.div_eq_of_lt_le h.1
  have hsmall : (canonical w).length * mass w j < 2^(j+1) * sigma 1 (w^j) := by
    calc
      _ = ((canonical w).length * w) * (w^j) := by unfold mass; rw [pow_succ]; ring
      _ < 2^(j+1)*(w^j) := Nat.mul_lt_mul_of_pos_right hprec hwpos
      _ ≤ _ := Nat.mul_le_mul_left _ hσ
  have hstrict := lt_of_le_of_lt h.2 (Nat.add_lt_add_left hsmall _)
  rw [← Nat.mul_add] at hstrict
  have hresult := Nat.lt_of_mul_lt_mul_left hstrict
  simpa [mass,retained, Nat.add_mul] using hresult

/-- The exponent is chosen from the input alone. Shunia uses
16 times the ceiling of the binary logarithm. -/
theorem totient_of_sigma_power_bits {w j : ℕ} (hw : 2 ≤ w)
    (hj : 2*(w.log2+1) ≤ j) : w^(j+1) / sigma 1 (w^j) = w.totient := by
  apply totient_of_sigma_power hw
  let b := w.log2+1
  have hr : (canonical w).length ≤ 2^b :=
    (canonical_complete hw).length_le.trans (by dsimp [b]; have := Nat.lt_two_pow_self (n := w.log2); omega)
  calc
    _ ≤ 2^b * 2^b := Nat.mul_le_mul hr Nat.lt_log2_self.le
    _ = 2^(2*b) := by rw [← pow_add]; congr 1; omega
    _ < _ := Nat.pow_lt_pow_right (by decide) (by dsimp [b]; omega)

/-- Shunia's original floor statement, also on a residual divisor bounded by the
original input. Natural division is the floor of a nonnegative rational quotient. -/
theorem shunia_lemma_3_2 {w n j : ℕ} (hw : 2 ≤ w) (hwn : w ≤ n)
    (hj : 16 * Nat.clog 2 n ≤ j) :
    w^(j+1) / sigma 1 (w^j) = w.totient := by
  apply totient_of_sigma_power_bits hw
  have h₁ := Nat.log_le_clog 2 w
  have h₂ := Nat.clog_mono_right 2 hwn
  have h₃ := Nat.clog_pos (by decide : 1 < 2) (hw.trans hwn)
  rw [Nat.log2_eq_log_two]
  omega

/-- The expensive operation is abstracted as exactly one call on this argument.
The numerator reuses the constructed power. -/
def powerQuery (w : ℕ) := w ^ (2*(w.log2+1))
def readTotient (ask : ℕ → ℕ) (w : ℕ) : ℕ :=
  let x := powerQuery w
  x * w / ask x

theorem readTotient_correct (ask : ℕ → ℕ) {w : ℕ} (hw : 2 ≤ w)
    (hs : ask (powerQuery w) = sigma 1 (powerQuery w)) :
    readTotient ask w = w.totient := by
  change powerQuery w * w / ask (powerQuery w) = w.totient
  rw [hs]
  unfold powerQuery
  rw [← pow_succ]
  exact totient_of_sigma_power_bits hw le_rfl

/-- Worst-case binary widths for the one query, its response, and the final
division numerator. The oracle response is the exact ordinary divisor sum. -/
theorem readTotient_widths (w : ℕ) :
    let b := w.log2+1
    (powerQuery w).size ≤ 2*b^2 ∧
    (sigma 1 (powerQuery w)).size ≤ 4*b^2 ∧
    (powerQuery w*w).size ≤ 2*b^2+b := by
  dsimp only
  let b := w.log2+1
  have hbase : w < 2^b := Nat.lt_log2_self
  have he : 2*b ≠ 0 := by dsimp [b]; omega
  have hq : powerQuery w < 2^(2*b^2) := by
    calc
      _ < (2^b)^(2*b) := Nat.pow_lt_pow_left hbase he
      _ = _ := by rw [←pow_mul]; congr 1; ring
  refine ⟨Nat.size_le.mpr hq, Nat.size_le.mpr ?_, Nat.size_le.mpr ?_⟩
  · calc
      _ ≤ (powerQuery w)^2 := ArithmeticFunction.sigma_le_pow_succ 1 _
      _ < (2^(2*b^2))^2 := Nat.pow_lt_pow_left hq (by decide)
      _ = _ := by rw [←pow_mul]; dsimp [b]; congr 1; ring
  · calc
      _ < 2^(2*b^2)*2^b := Nat.mul_lt_mul_of_lt_of_le hq hbase.le (by positivity)
      _ = _ := (pow_add _ _ _).symm

end GRWTSK.IntegerFactorization.PowerDivisorSum
