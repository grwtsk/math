/- Copyright (c) 2026 grwtsk contributors. MIT.
Human mathematical direction: grwtsk contributors. Formalization assistance: OpenAI Codex.
Mathlib results retain upstream authorship and Apache-2.0 licensing. -/
import Mathlib.NumberTheory.ArithmeticFunction.Moebius

/-!
# Finite Möbius filters for coprimality

The integer Möbius function is the canonical `ArithmeticFunction.moebius` from
Mathlib. Its signed common-divisor sum is an exact coprimality indicator.
The bounded version retains positive arguments and an explicit cutoff covering
their minimum; it makes no estimate or asymptotic claim.
-/

set_option autoImplicit false

namespace GRWTSK.NumberTheory.ElementaryNumberTheory.ArithmeticFunctions.CoprimeDivisorFilter

open scoped ArithmeticFunction.zeta

variable {R : Type*} [Ring R]

/-- The signed Möbius sum over all divisors, including Mathlib's empty divisor
set at zero. -/
theorem sum_moebius_divisors (n : ℕ) :
    (∑ d ∈ n.divisors, (ArithmeticFunction.moebius d : R)) =
      if n = 1 then 1 else 0 := by
  have h := congrArg (fun f : ArithmeticFunction R => f n)
    (ArithmeticFunction.coe_zeta_mul_coe_moebius (R := R))
  rw [ArithmeticFunction.coe_zeta_mul_apply] at h
  simpa only [ArithmeticFunction.intCoe_apply, ArithmeticFunction.one_apply] using h

/-- The Möbius sum over common divisors is exactly the coprimality indicator.
No positivity is needed when the divisor set of the gcd is used directly. -/
theorem sum_moebius_gcd_divisors (a b : ℕ) :
    (∑ d ∈ (Nat.gcd a b).divisors, (ArithmeticFunction.moebius d : R)) =
      if Nat.Coprime a b then 1 else 0 := by
  simpa only [Nat.coprime_iff_gcd_eq_one] using
    (sum_moebius_divisors (R := R) (Nat.gcd a b))

/-- Common divisors of positive arguments lie in a cutoff covering their
minimum. This equality retains the full common-divisor inventory. -/
theorem gcd_divisors_eq_filter_Icc {a b N : ℕ}
    (ha : 0 < a) (hb : 0 < b) (hcutoff : min a b ≤ N) :
    (Nat.gcd a b).divisors = (Finset.Icc 1 N).filter (fun d => d ∣ a ∧ d ∣ b) := by
  ext d
  rw [Finset.mem_filter]
  constructor
  · intro hd
    have hcommon := Nat.dvd_gcd_iff.mp (Nat.dvd_of_mem_divisors hd)
    refine ⟨Finset.mem_Icc.mpr ⟨Nat.pos_of_mem_divisors hd, ?_⟩, hcommon⟩
    exact (le_min (Nat.le_of_dvd ha hcommon.1)
      (Nat.le_of_dvd hb hcommon.2)).trans hcutoff
  · intro hd
    exact Nat.mem_divisors.mpr ⟨Nat.dvd_gcd hd.2.1 hd.2.2,
      (Nat.gcd_pos_of_pos_left b ha).ne'⟩

/-- The bounded signed common-divisor filter equals the coprimality indicator.
Both arguments are positive and the closed cutoff covers their minimum. -/
theorem sum_moebius_common_divisors_Icc {a b N : ℕ}
    (ha : 0 < a) (hb : 0 < b) (hcutoff : min a b ≤ N) :
    (∑ d ∈ Finset.Icc 1 N,
      if d ∣ a ∧ d ∣ b then (ArithmeticFunction.moebius d : R) else 0) =
      if Nat.Coprime a b then 1 else 0 := by
  rw [← Finset.sum_filter, ← gcd_divisors_eq_filter_Icc ha hb hcutoff]
  exact sum_moebius_gcd_divisors a b

end GRWTSK.NumberTheory.ElementaryNumberTheory.ArithmeticFunctions.CoprimeDivisorFilter
