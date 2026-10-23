/- Copyright (c) 2026 grwtsk contributors. MIT.
Human mathematical direction: grwtsk contributors. Formalization assistance: OpenAI ChatGPT.
Mathlib results retain upstream authorship and Apache-2.0 license. -/
import GRWTSK.NumberTheory.Zeta.Riemann.PinnedVonMangoldtCoefficientSource
import Mathlib.Data.Nat.Factorization.PrimePow
import Mathlib.Data.Nat.Prime.Infinite
import Mathlib.Data.Nat.Prime.Int
import Mathlib.Tactic

set_option autoImplicit false
noncomputable section

/-!
# Canonical increasing prime-power schedule

The arithmetic event selector is independent of detector fitting.

For each natural threshold N, select the least natural prime power q>N.  Such a
q always exists because there is a prime at least N+1.  Recover its unique
prime/exponent representation canonically from minFac and factorization.

Iterating this successor enumerates prime-power events in strict arithmetic
order.  Between one selected value and its successor there is no omitted prime
power.

SOURCE_DRAFT / NOT_RUN / NOT_KERNEL_AUDITED /
CANONICAL_PRIME_POWER_SELECTOR_DEFINED.
-/

namespace GRWTSK.RiemannHypothesis

/-- There is an actual prime power strictly above every natural threshold. -/
theorem exists_primePower_gt (n : ℕ) :
    ∃ q : ℕ, n < q ∧ IsPrimePow q := by
  obtain ⟨p, hnp, hp⟩ := Nat.exists_infinite_primes (n + 1)
  exact ⟨p, by omega, hp.isPrimePow⟩

/-- Least natural prime-power value strictly above n. -/
def nextPrimePowerValue (n : ℕ) : ℕ :=
  Nat.find (exists_primePower_gt n)

theorem nextPrimePowerValue_gt (n : ℕ) :
    n < nextPrimePowerValue n :=
  (Nat.find_spec (exists_primePower_gt n)).1

theorem nextPrimePowerValue_isPrimePow (n : ℕ) :
    IsPrimePow (nextPrimePowerValue n) :=
  (Nat.find_spec (exists_primePower_gt n)).2

/-- Minimality: every other prime power strictly above n is at least the
selected next value. -/
theorem nextPrimePowerValue_le
    (n q : ℕ) (hnq : n < q) (hq : IsPrimePow q) :
    nextPrimePowerValue n ≤ q :=
  Nat.find_min' (exists_primePower_gt n) ⟨hnq, hq⟩

/-- Canonical prime/exponent representation of one known natural prime power. -/
def canonicalPrimePowerEvent (q : ℕ) (hq : IsPrimePow q) :
    PrimePowerEvent where
  prime := ⟨q.minFac, Nat.minFac_prime (IsPrimePow.ne_one hq)⟩
  exponent := q.factorization q.minFac
  exponent_pos := by
    have hpow := hq.minFac_pow_factorization_eq
    by_contra h
    have hk : q.factorization q.minFac = 0 := Nat.eq_zero_of_not_pos h
    rw [hk, pow_zero] at hpow
    exact (IsPrimePow.ne_one hq) hpow.symm

@[simp]
theorem canonicalPrimePowerEvent_natValue
    (q : ℕ) (hq : IsPrimePow q) :
    (canonicalPrimePowerEvent q hq).natValue = q := by
  simpa [canonicalPrimePowerEvent, PrimePowerEvent.natValue] using
    hq.minFac_pow_factorization_eq

/-- Any prime/exponent representation of q has the same prime and exponent as
the canonical minFac/factorization representation. -/
theorem primePowerEvent_representation_unique
    (q : ℕ) (hq : IsPrimePow q)
    (event : PrimePowerEvent)
    (hevent : event.natValue = q) :
    event.prime.1 = (canonicalPrimePowerEvent q hq).prime.1 ∧
      event.exponent = (canonicalPrimePowerEvent q hq).exponent := by
  let canonical := canonicalPrimePowerEvent q hq
  have hcanon : canonical.natValue = q :=
    canonicalPrimePowerEvent_natValue q hq
  have hpows :
      event.prime.1 ^ event.exponent =
        canonical.prime.1 ^ canonical.exponent := by
    change event.natValue = canonical.natValue
    exact hevent.trans hcanon.symm
  exact event.prime.property.pow_inj'
    canonical.prime.property event.exponent_pos.ne'
      canonical.exponent_pos.ne' hpows

/-- Canonical next event above a natural threshold. -/
def nextPrimePowerEvent (n : ℕ) : PrimePowerEvent :=
  canonicalPrimePowerEvent
    (nextPrimePowerValue n) (nextPrimePowerValue_isPrimePow n)

@[simp]
theorem nextPrimePowerEvent_natValue (n : ℕ) :
    (nextPrimePowerEvent n).natValue = nextPrimePowerValue n :=
  canonicalPrimePowerEvent_natValue _ _

theorem nextPrimePowerEvent_gt (n : ℕ) :
    n < (nextPrimePowerEvent n).natValue := by
  rw [nextPrimePowerEvent_natValue]
  exact nextPrimePowerValue_gt n

/-- Increasing sequence of all successive natural prime-power values, beginning
with the least prime power strictly above one. -/
def canonicalPrimePowerValueSequence : ℕ → ℕ
  | 0 => nextPrimePowerValue 1
  | n + 1 => nextPrimePowerValue (canonicalPrimePowerValueSequence n)

theorem canonicalPrimePowerValueSequence_isPrimePow :
    ∀ n, IsPrimePow (canonicalPrimePowerValueSequence n)
  | 0 => nextPrimePowerValue_isPrimePow 1
  | n + 1 => nextPrimePowerValue_isPrimePow
      (canonicalPrimePowerValueSequence n)

theorem canonicalPrimePowerValueSequence_strict (n : ℕ) :
    canonicalPrimePowerValueSequence n <
      canonicalPrimePowerValueSequence (n + 1) := by
  change canonicalPrimePowerValueSequence n <
    nextPrimePowerValue (canonicalPrimePowerValueSequence n)
  exact nextPrimePowerValue_gt _

/-- There is no skipped prime power before the next selected value. -/
theorem canonicalPrimePowerValueSequence_next_le
    (n q : ℕ)
    (hleft : canonicalPrimePowerValueSequence n < q)
    (hq : IsPrimePow q) :
    canonicalPrimePowerValueSequence (n + 1) ≤ q := by
  change nextPrimePowerValue (canonicalPrimePowerValueSequence n) ≤ q
  exact nextPrimePowerValue_le _ q hleft hq

/-- Canonical event sequence obtained from the canonical natural values. -/
def canonicalPrimePowerEventSequence (n : ℕ) : PrimePowerEvent :=
  canonicalPrimePowerEvent
    (canonicalPrimePowerValueSequence n)
    (canonicalPrimePowerValueSequence_isPrimePow n)

@[simp]
theorem canonicalPrimePowerEventSequence_natValue (n : ℕ) :
    (canonicalPrimePowerEventSequence n).natValue =
      canonicalPrimePowerValueSequence n :=
  canonicalPrimePowerEvent_natValue _ _

theorem canonicalPrimePowerEventSequence_strict (n : ℕ) :
    (canonicalPrimePowerEventSequence n).natValue <
      (canonicalPrimePowerEventSequence (n + 1)).natValue := by
  simp only [canonicalPrimePowerEventSequence_natValue]
  exact canonicalPrimePowerValueSequence_strict n

/-- The pinned von Mangoldt packing point attached to the canonical event. -/
def canonicalPrimePowerPackingPoint (n : ℕ) : PackingPoint :=
  (canonicalPrimePowerEventSequence n).packingPoint

end GRWTSK.RiemannHypothesis
