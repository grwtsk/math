/- Copyright (c) 2026 grwtsk contributors. MIT.
Mathematical direction: grwtsk contributors; formalization assistance: OpenAI.
SOURCE_PROOF_CANDIDATE / COMPILATION_NOT_RUN / EXPECTED_TYPES_NOT_RUN /
FRESH_KERNEL_NOT_RUN / TRANSITIVE_AXIOM_AUDIT_NOT_RUN. -/
import GRWTSK.NumberTheory.AlgebraicNumberTheoryGlobalFields.TotientInvariantCharacterLoop
import Mathlib.NumberTheory.ArithmeticFunction.Moebius
import Mathlib.NumberTheory.ArithmeticFunction.VonMangoldt
import Mathlib.Data.Nat.Totient
import Mathlib.Tactic

/-!
# Totient, Möbius inversion and the additive Ramanujan observation

Pinned Mathlib provides the ORIGINAL arithmetic functions: Nat.totient,
ArithmeticFunction.moebius, and vonMangoldt. The totient prime-power and
prime-factor product identities are consumed without reinvention.
Möbius inversion of Nat.sum_totient proves the full divisor-antidiagonal
formula for totient.

The same divisor kernel D(q,m) is defined with its complete condition
d | m. At m=0 it returns phi(q); at m=1 it returns mu(q), for q>0.
This proves the arithmetic kernel laws, NOT a proof that an arbitrary
additive U(1) Fourier sum is equal to that divisor kernel.

An actual unit-group additive Fourier sum is also defined and its
zero-frequency return phi(q) is proved. The deeper nonzero-frequency
Ramanujan sum/divisor-kernel equivalence is a SEPARATE UNPROVED consumer:
it must not be silently filled by the known formulas or treated as a
Lean theorem because of an analytic analogy.

Hostile counterexample: the two-prime mixed walk 2*3 returns to one
modulo 5, but Λ(6)=0. A generic graph-loop trace therefore does not
equal a von Mangoldt prime-power trace without an exact orbit filter.
-/
set_option autoImplicit false
noncomputable section
open scoped BigOperators

namespace GRWTSK.NumberTheory.AlgebraicNumberTheoryGlobalFields.TotientMobiusRamanujan

theorem totient_prime_power (p k : ℕ) (hp : Nat.Prime p) (hk : 0 < k) :
    Nat.totient (p ^ k) = p ^ (k - 1) * (p - 1) :=
  Nat.totient_prime_pow hp hk

theorem totient_prime_factor_product (q : ℕ) :
    (Nat.totient q : ℚ) =
      q * ∏ p ∈ q.primeFactors, (1 - (p : ℚ)⁻¹) :=
  Nat.totient_eq_mul_prod_factors q

/-- Möbius inversion of the original divisor-sum formula for totient.
The exact divisorsAntidiagonal index retains both complementary factors. -/
theorem totient_moebius_antidiagonal (q : ℕ) (hq : 0 < q) :
    (∑ a ∈ q.divisorsAntidiagonal,
      (ArithmeticFunction.moebius a.1 : ℤ) * (a.2 : ℤ)) =
        (Nat.totient q : ℤ) := by
  have hsum : ∀ n : ℕ, 0 < n →
      (∑ d ∈ n.divisors, (Nat.totient d : ℤ)) = (n : ℤ) := by
    intro n hn
    exact_mod_cast Nat.sum_totient n
  have h := (ArithmeticFunction.sum_eq_iff_sum_mul_moebius_eq
    (f := fun n : ℕ => (Nat.totient n : ℤ))
    (g := fun n : ℕ => (n : ℤ))).mp hsum q hq
  simpa only using h.symm

/-- The exact arithmetic Ramanujan divisor kernel before any additive
character Fourier representation theorem is used. -/
def divisorRamanujan (q m : ℕ) : ℤ :=
  ∑ a ∈ q.divisorsAntidiagonal,
    if a.2 ∣ m then
      (ArithmeticFunction.moebius a.1 : ℤ) * (a.2 : ℤ)
    else 0

theorem divisorRamanujan_zero (q : ℕ) (hq : 0 < q) :
    divisorRamanujan q 0 = (Nat.totient q : ℤ) := by
  simpa [divisorRamanujan] using
    (totient_moebius_antidiagonal q hq)

theorem divisorRamanujan_one (q : ℕ) (hq : 0 < q) :
    divisorRamanujan q 1 = ArithmeticFunction.moebius q := by
  have hq0 : q ≠ 0 := Nat.ne_of_gt hq
  unfold divisorRamanujan
  rw [Finset.sum_eq_single (q, 1)]
  · simp
  · intro a ha hneq
    have hnot : ¬a.2 ∣ 1 := by
      intro hd
      have hsecond : a.2 = 1 := Nat.dvd_one.mp hd
      have hprod : a.1 * a.2 = q :=
        (Nat.mem_divisorsAntidiagonal.mp ha).1
      have hfirst : a.1 = q := by simpa [hsecond] using hprod
      exact hneq (Prod.ext hfirst hsecond)
    simp [hnot]
  · intro hnot
    exact False.elim (hnot
      ((Nat.mem_divisorsAntidiagonal).2 ⟨by simp, hq0⟩))

variable (q : ℕ) [NeZero q]

/-- Original additive U(1) phase for each genuine invertible residue. -/
def unitPhaseAngle (m : ℕ) (a : (ZMod q)ˣ) : ℝ :=
  2 * Real.pi * (m : ℝ) * (((a : ZMod q).val : ℝ)) / (q : ℝ)

def unitFourierPhase (m : ℕ) (a : (ZMod q)ˣ) : ℂ :=
  Complex.exp ((unitPhaseAngle q m a : ℂ) * Complex.I)

/-- The actual unit-residue additive Ramanujan sum. -/
def additiveRamanujan (m : ℕ) : ℂ :=
  ∑ a : (ZMod q)ˣ, unitFourierPhase q m a

theorem additiveRamanujan_zero :
    additiveRamanujan q 0 = (Nat.totient q : ℂ) := by
  have hterm (a : (ZMod q)ˣ) : unitFourierPhase q 0 a = 1 := by
    simp [unitFourierPhase, unitPhaseAngle]
  calc
    additiveRamanujan q 0 =
        ∑ a : (ZMod q)ˣ, (1 : ℂ) := by
          unfold additiveRamanujan
          apply Finset.sum_congr rfl
          intro a _
          exact hterm a
    _ = (Fintype.card (ZMod q)ˣ : ℂ) := by simp
    _ = (Nat.totient q : ℂ) := by rw [ZMod.card_units_eq_totient]

/-- The two moduli have equal totients but distinct unit-group dynamics.
Equality of cardinalities does not identify their character phases. -/
theorem totient_five_eight :
    Nat.totient 5 = 4 ∧ Nat.totient 8 = 4 := by decide

/-- A mixed prime walk can close in the unit group without representing
a prime-power contribution of the actual Weil explicit formula. -/
theorem mixed_prime_loop_not_vonMangoldt :
    ((2 : ZMod 5) * (3 : ZMod 5) = 1) ∧
      ArithmeticFunction.vonMangoldt 6 = 0 := by
  constructor
  · decide
  · exact (ArithmeticFunction.vonMangoldt_eq_zero_iff).2 (by decide)

end GRWTSK.NumberTheory.AlgebraicNumberTheoryGlobalFields.TotientMobiusRamanujan
