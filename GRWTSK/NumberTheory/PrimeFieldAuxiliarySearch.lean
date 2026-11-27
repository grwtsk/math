import Mathlib.Data.ZMod.Basic
import Mathlib.Data.Nat.Prime.Basic
import Mathlib.Tactic.Ring

/-!
# Discovering the auxiliary primes of the prime-field factoring reduction

Local source attribution: grwtsk contributors. OpenAI #142, sections "Auxiliary
primes and primary generators" and "Bit complexity", pins and scope in
`PrimeFieldAuxiliarySearch.md`. This search consumes a numerical bound for
existence and returns the first witness to the paper's actual congruences.
The nonzero dense polynomial and the uniform bound supplier are external to
this subroutine.
-/

namespace GRWTSK.PrimeFieldFactoring

/-- The predicate from the auxiliary table in #142, including all four exclusions.
It is checked in the branch where p and q are already known to be prime. -/
def AuxiliaryPrime (p q l : ℕ) : Prop :=
  l.Prime ∧ l ≠ 2 ∧ l ≠ 3 ∧ l ≠ p ∧ l ≠ q ∧ l % (12 * q) = 1 ∧
  (p : ZMod l) ^ ((l - 1) / q) ≠ 1

instance (p q l : ℕ) : Decidable (AuxiliaryPrime p q l) := by
  unfold AuxiliaryPrime
  infer_instance

/-- Visit fuel consecutive candidates starting at a. The second component
counts actual calls to the predicate including the successful call. -/
def firstWithCount (test : ℕ → Bool) (a : ℕ) : ℕ → Option ℕ × ℕ
  | 0 => (none, 0)
  | fuel+1 =>
    if test a then (some a, 1) else
      let (ans, calls) := firstWithCount test (a+1) fuel
      (ans, calls+1)

theorem firstWithCount_le (test : ℕ → Bool) (a fuel : ℕ) :
    (firstWithCount test a fuel).2 ≤ fuel := by
  induction fuel generalizing a with
  | zero => rfl
  | succ fuel ih =>
    cases h : test a <;> simp [firstWithCount, h, ih]

theorem firstWithCount_found {test : ℕ → Bool} {a fuel l : ℕ} :
    (firstWithCount test a fuel).1 = some l ↔
      a ≤ l ∧ l < a + fuel ∧ test l = true ∧ ∀ j, a ≤ j → j < l → test j = false := by
  induction fuel generalizing a with
  | zero => simp [firstWithCount]; omega
  | succ fuel ih =>
    cases h : test a
    · simp only [firstWithCount, h, Bool.false_eq_true, ↓reduceIte, ih]
      constructor
      · rintro ⟨hl, hu, hy, hprev⟩
        refine ⟨by omega, by omega, hy, ?_⟩
        intro j hj hjl
        by_cases e : j = a
        · simpa [e] using h
        · exact hprev j (by omega) hjl
      · rintro ⟨hl, hu, hy, hprev⟩
        have : a ≠ l := fun e => by simp_all
        exact ⟨by omega, by omega, hy, fun j hj => hprev j (by omega)⟩
    · simp only [firstWithCount, h, ↓reduceIte, Option.some.injEq]
      constructor
      · rintro rfl
        exact ⟨le_rfl, by omega, h, fun j hj hjl => by omega⟩
      · rintro ⟨hl, _, _, hj⟩
        by_contra hn
        have := hj a le_rfl (by omega)
        simp_all

theorem firstWithCount_exists (test : ℕ → Bool) (a fuel : ℕ)
    (h : ∃ j, a ≤ j ∧ j < a + fuel ∧ test j = true) :
    ∃ l, (firstWithCount test a fuel).1 = some l := by
  induction fuel generalizing a with
  | zero => obtain ⟨j, hj, hj', _⟩ := h; omega
  | succ fuel ih =>
    cases ha : test a
    · obtain ⟨j, hj, hj', htest⟩ := h
      have hne : j ≠ a := fun e => by simp_all
      obtain ⟨l, hl⟩ := ih (a+1) ⟨j, by omega, by omega, htest⟩
      exact ⟨l, by simpa [firstWithCount, ha] using hl⟩
    · exact ⟨a, by simp [firstWithCount, ha]⟩

def discover (p q E : ℕ) : Option ℕ × ℕ :=
  firstWithCount (fun l => decide (AuxiliaryPrime p q l)) 0 (E+1)

/-- An existence cap yields a computably found, independently checkable
least witness, with at most E+1 tests. -/
theorem discover_complete {p q E : ℕ} (hex : ∃ l ≤ E, AuxiliaryPrime p q l) :
    ∃ l, (discover p q E).1 = some l ∧ l ≤ E ∧ AuxiliaryPrime p q l ∧
      (∀ j, j < l → ¬ AuxiliaryPrime p q j) ∧ (discover p q E).2 ≤ E + 1 := by
  obtain ⟨j, hj, h⟩ := hex
  obtain ⟨l, hl⟩ := firstWithCount_exists (fun k => decide (AuxiliaryPrime p q k)) 0 (E+1)
    ⟨j, Nat.zero_le _, by omega, decide_eq_true h⟩
  obtain ⟨_, hle, htest, hprev⟩ := firstWithCount_found.mp hl
  exact ⟨l, hl, by omega, of_decide_eq_true htest,
    fun j hj hp => by simpa [hp] using hprev j (Nat.zero_le j) hj,
    firstWithCount_le _ _ _⟩

/-- Exhaustion rules out witnesses only up to the supplied cap. -/
theorem discover_none_iff {p q E : ℕ} :
    (discover p q E).1 = none ↔ ∀ l ≤ E, ¬ AuxiliaryPrime p q l := by
  constructor
  · intro hnone l hl h
    obtain ⟨a, ha, _⟩ := discover_complete ⟨l, hl, h⟩
    simp [hnone] at ha
  · intro h
    cases ha : (discover p q E).1 with
    | none => rfl
    | some l =>
      obtain ⟨_, hl, ht, _⟩ := firstWithCount_found.mp ha
      exact False.elim (h l (by omega) (of_decide_eq_true ht))

-- The first candidate for this small pair that passes all checks is 73.
-- The large-characteristic branch is unnecessary for this finite predicate test.
set_option maxRecDepth 16384 in
example : discover 5 2 72 = (none, 73) := by decide
set_option maxRecDepth 16384 in
example : discover 5 2 73 = (some 73, 74) := by decide

/-- Exact numeric substitution into the algebraic reduction's two cost terms.
Uniform quantification of c,d before all input parameters is required by the
polynomial conclusion. -/
theorem algebraic_cost_of_cap {B E c d : ℕ} (hB : 1 ≤ B) (hE : E ≤ c * B ^ d) :
    B ^ 500000 + B ^ 100 * E ^ 20 ≤
      (1 + c ^ 20) * B ^ (max 500000 (100 + d * 20)) := by
  have ha := Nat.pow_le_pow_right hB (Nat.le_max_left 500000 (100+d*20))
  have hb := Nat.pow_le_pow_right hB (Nat.le_max_right 500000 (100+d*20))
  have hc := Nat.pow_le_pow_left hE 20
  have he : B ^ 100 * E ^ 20 ≤ c^20 * B^(100+d*20) := calc
    _ ≤ B ^ 100 * (c * B ^ d)^20 := Nat.mul_le_mul_left _ hc
    _ = _ := by rw [mul_pow, pow_add, pow_mul]; ac_rfl
  calc
    _ ≤ B ^ max 500000 (100 + d * 20) + c^20 * B ^ max 500000 (100 + d * 20) :=
      Nat.add_le_add ha (he.trans (Nat.mul_le_mul_left _ hb))
    _ = _ := (one_add_mul _ _).symm

end GRWTSK.PrimeFieldFactoring
