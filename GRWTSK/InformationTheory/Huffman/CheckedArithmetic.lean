import Std

/-!
# Checked natural arithmetic for the Huffman implementations

`checkedAdd` and `checkedMul` are the success/refusal semantics of Rust's
`u64::checked_add` and `u64::checked_mul`, expressed using the natural values
of their operands. The theorems identify exact numerical domains; they do not
assert a Rust compiler or library operational semantics. Python integers have
the same natural arithmetic results without the `u64` refusal boundary.

The left-to-right folds below match the arithmetic order of `Tree::bit_len`,
the frequency-total fold in `decode`, and the increment loops in `encode`
and `decode`, in `rust/src/huffman.rs`.
-/

namespace GRWTSK.InformationTheory.Huffman.CheckedArithmetic

def maxU64 : Nat := 2 ^ 64 - 1

def checkedAdd (a b : Nat) : Option Nat :=
  if a + b ≤ maxU64 then some (a + b) else none

def checkedMul (a b : Nat) : Option Nat :=
  if a * b ≤ maxU64 then some (a * b) else none

def checkedSucc (a : Nat) : Option Nat := checkedAdd a 1

theorem checkedAdd_eq_some_iff (a b result : Nat) :
    checkedAdd a b = some result ↔ a + b ≤ maxU64 ∧ result = a + b := by
  simp only [checkedAdd]
  split <;> simp_all [eq_comm] <;> omega

theorem checkedAdd_eq_none_iff (a b : Nat) :
    checkedAdd a b = none ↔ maxU64 < a + b := by
  simp [checkedAdd]

theorem checkedMul_eq_some_iff (a b result : Nat) :
    checkedMul a b = some result ↔ a * b ≤ maxU64 ∧ result = a * b := by
  simp only [checkedMul]
  split <;> simp_all [eq_comm] <;> omega

theorem checkedMul_eq_none_iff (a b : Nat) :
    checkedMul a b = none ↔ maxU64 < a * b := by
  simp [checkedMul]

theorem checkedSucc_eq_some_iff (a result : Nat) :
    checkedSucc a = some result ↔ a < maxU64 ∧ result = a + 1 := by
  rw [checkedSucc, checkedAdd_eq_some_iff]
  omega

theorem checkedSucc_eq_none_iff (a : Nat) :
    checkedSucc a = none ↔ maxU64 ≤ a := by
  rw [checkedSucc, checkedAdd_eq_none_iff]
  omega

theorem checkedAdd_at_boundary (a b : Nat) (boundary : a + b = maxU64) :
    checkedAdd a b = some maxU64 := by
  exact (checkedAdd_eq_some_iff a b maxU64).mpr ⟨by omega, boundary.symm⟩

theorem checkedSucc_max : checkedSucc maxU64 = none :=
  (checkedSucc_eq_none_iff maxU64).mpr (Nat.le_refl _)

theorem checkedMul_at_boundary (a b : Nat) (boundary : a * b = maxU64) :
    checkedMul a b = some maxU64 := by
  exact (checkedMul_eq_some_iff a b maxU64).mpr ⟨by omega, boundary.symm⟩

/-- A fixed-width success branch, with the same natural overflow guard. -/
def checkedWordAdd (a b : UInt64) : Option UInt64 :=
  if a.toNat + b.toNat ≤ maxU64 then some (a + b) else none

def checkedWordMul (a b : UInt64) : Option UInt64 :=
  if a.toNat * b.toNat ≤ maxU64 then some (a * b) else none

theorem wordAdd_no_wrap (a b : UInt64) (bounded : a.toNat + b.toNat ≤ maxU64) :
    (a + b).toNat = a.toNat + b.toNat := by
  rw [UInt64.toNat_add]
  apply Nat.mod_eq_of_lt
  unfold maxU64 at bounded
  omega

theorem wordMul_no_wrap (a b : UInt64) (bounded : a.toNat * b.toNat ≤ maxU64) :
    (a * b).toNat = a.toNat * b.toNat := by
  rw [UInt64.toNat_mul]
  apply Nat.mod_eq_of_lt
  unfold maxU64 at bounded
  omega

/-- The natural model also agrees with actual Lean `UInt64` addition in every
accepted branch; it is not using unbounded arithmetic after a silent wrap. -/
theorem checkedWordAdd_refines (a b : UInt64) :
    (checkedWordAdd a b).map UInt64.toNat = checkedAdd a.toNat b.toNat := by
  by_cases bounded : a.toNat + b.toNat ≤ maxU64
  · simp [checkedWordAdd, checkedAdd, bounded, wordAdd_no_wrap a b bounded]
  · simp [checkedWordAdd, checkedAdd, bounded]

theorem checkedWordMul_refines (a b : UInt64) :
    (checkedWordMul a b).map UInt64.toNat = checkedMul a.toNat b.toNat := by
  by_cases bounded : a.toNat * b.toNat ≤ maxU64
  · simp [checkedWordMul, checkedMul, bounded, wordMul_no_wrap a b bounded]
  · simp [checkedWordMul, checkedMul, bounded]

def sumFrom : Nat → List Nat → Option Nat
  | total, [] => some total
  | total, value :: tail =>
    match checkedAdd total value with
    | none => none
    | some next => sumFrom next tail

theorem sumFrom_spec (values : List Nat) (total : Nat) (initial : total ≤ maxU64) :
    sumFrom total values =
      if total + values.sum ≤ maxU64 then some (total + values.sum) else none := by
  induction values generalizing total with
  | nil => simp [sumFrom, initial]
  | cons value tail ih =>
    simp only [sumFrom, List.sum_cons]
    by_cases step : total + value ≤ maxU64
    · simp only [checkedAdd, if_pos step]
      rw [ih (total + value) step]
      simp only [Nat.add_assoc]
      rfl
    · have overflow : ¬total + (value + tail.sum) ≤ maxU64 := by omega
      simp only [checkedAdd, if_neg step]
      exact (if_neg overflow).symm

theorem sumFrom_eq_some_iff (values : List Nat) (total result : Nat)
    (initial : total ≤ maxU64) :
    sumFrom total values = some result ↔
      total + values.sum ≤ maxU64 ∧ result = total + values.sum := by
  rw [sumFrom_spec values total initial]
  split <;> simp_all [eq_comm] <;> omega

theorem sumFrom_eq_none_iff (values : List Nat) (total : Nat)
    (initial : total ≤ maxU64) :
    sumFrom total values = none ↔ maxU64 < total + values.sum := by
  rw [sumFrom_spec values total initial]
  split <;> simp_all

def products (pairs : List (Nat × Nat)) : Nat :=
  (pairs.map fun pair => pair.1 * pair.2).sum

/-- Both the multiplication and following addition are checked, in that order. -/
def dotFrom : Nat → List (Nat × Nat) → Option Nat
  | total, [] => some total
  | total, pair :: tail =>
    match checkedMul pair.1 pair.2 with
    | none => none
    | some term =>
      match checkedAdd total term with
      | none => none
      | some next => dotFrom next tail

theorem dotFrom_spec (pairs : List (Nat × Nat)) (total : Nat)
    (initial : total ≤ maxU64) :
    dotFrom total pairs =
      if total + products pairs ≤ maxU64 then some (total + products pairs) else none := by
  induction pairs generalizing total with
  | nil => simp [dotFrom, products, initial]
  | cons pair tail ih =>
    have hproducts : products (pair :: tail) = pair.1 * pair.2 + products tail := rfl
    simp only [dotFrom, hproducts]
    by_cases term : pair.1 * pair.2 ≤ maxU64
    · by_cases step : total + pair.1 * pair.2 ≤ maxU64
      · simp only [checkedMul, if_pos term, checkedAdd, if_pos step]
        rw [ih (total + pair.1 * pair.2) step]
        simp only [Nat.add_assoc]
      · have overflow : ¬total + (pair.1 * pair.2 + products tail) ≤ maxU64 := by omega
        simp only [checkedMul, if_pos term, checkedAdd, if_neg step, if_neg overflow]
    · have overflow : ¬total + (pair.1 * pair.2 + products tail) ≤ maxU64 := by omega
      simp only [checkedMul, if_neg term, if_neg overflow]

theorem dotFrom_eq_some_iff (pairs : List (Nat × Nat)) (total result : Nat)
    (initial : total ≤ maxU64) :
    dotFrom total pairs = some result ↔
      total + products pairs ≤ maxU64 ∧ result = total + products pairs := by
  rw [dotFrom_spec pairs total initial]
  split <;> simp_all [eq_comm] <;> omega

theorem dotFrom_eq_none_iff (pairs : List (Nat × Nat)) (total : Nat)
    (initial : total ≤ maxU64) :
    dotFrom total pairs = none ↔ maxU64 < total + products pairs := by
  rw [dotFrom_spec pairs total initial]
  split <;> simp_all

end GRWTSK.InformationTheory.Huffman.CheckedArithmetic
