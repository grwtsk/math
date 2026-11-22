/-
Copyright (c) 2026 grwtsk contributors.
Released under the MIT license as described in the repository LICENSE.
-/
import GRWTSK.NumberTheory.SpecificationAndPrimeEnumeration

/-!
# A finite prime bootstrap without spectral input

The executable object is a bounded filter using decidable `Nat.Prime`.
Its completeness theorem returns to the existing canonical increasing prime
sequence; it does not introduce a new notion of primality or a zero oracle.
This is a simple finite enumeration, not an optimized sieve or a complexity
claim. The unbounded canonical sequence remains noncomputable in this API.

Consumer: exact prime input for HS arithmetic and prime-power construction.
No zero locations, RH hypothesis, floating-point values, or spectral model
occur in the input type. This does not reconstruct primes from zeta zeros.

Source comparison and verification obligations: accompanying provenance record
and grwtsk/math#124. New-source elaboration, kernel replay, and axiom audit:
NOT_RUN. No root umbrella import or dependency-pin change is made.
-/

set_option autoImplicit false

namespace GRWTSK.NumberTheory.ElementaryNumberTheory.PrimeBootstrap

open GRWTSK.NumberTheory.ElementaryNumberTheory.SequentialPrimeAndFiniteAddressData.Variant46f3923eb08b8087.SequentialPrimeSpecification

/-- Enumerate exactly the primes at most `X`, using only bounded integer data. -/
def primesUpTo (X : ℕ) : Finset ℕ :=
  (Finset.range (X + 1)).filter Nat.Prime

@[simp]
theorem mem_primesUpTo {X p : ℕ} :
    p ∈ primesUpTo X ↔ p ≤ X ∧ Nat.Prime p := by
  simp only [primesUpTo, Finset.mem_filter, Finset.mem_range, Nat.lt_succ_iff]

@[simp]
theorem primesUpTo_zero : primesUpTo 0 = ∅ := by
  decide

/-- The next bounded computation needs only the next integer primality test. -/
theorem primesUpTo_succ (X : ℕ) :
    primesUpTo (X + 1) =
      if Nat.Prime (X + 1) then insert (X + 1) (primesUpTo X) else primesUpTo X := by
  simp only [primesUpTo, Finset.range_succ, Finset.filter_insert]

theorem primesUpTo_mono {X Y : ℕ} (hXY : X ≤ Y) :
    primesUpTo X ⊆ primesUpTo Y := by
  intro p hp
  obtain ⟨hpX, hprime⟩ := mem_primesUpTo.mp hp
  exact mem_primesUpTo.mpr ⟨hpX.trans hXY, hprime⟩

/-- The finite arithmetic bootstrap agrees with the already-maintained
canonical prime enumeration, including completeness rather than only soundness. -/
theorem mem_primesUpTo_iff_canonical {X p : ℕ} :
    p ∈ primesUpTo X ↔
      ∃ k : ℕ, canonicalPrimeEnumeration.value k = p ∧ p ≤ X := by
  constructor
  · intro hp
    obtain ⟨hpX, hprime⟩ := mem_primesUpTo.mp hp
    refine ⟨Nat.count Nat.Prime p, ?_, hpX⟩
    change Nat.nth Nat.Prime (Nat.count Nat.Prime p) = p
    exact Nat.nth_count hprime
  · rintro ⟨k, hk, hpX⟩
    exact mem_primesUpTo.mpr ⟨hpX, hk ▸ canonicalPrimeEnumeration_prime k⟩

/-- Every actual prime occurs once the finite bound reaches that integer.
This is an exhaustion theorem, not an assertion that a fixed finite bootstrap
already contains all primes. -/
theorem prime_iff_mem_some_primesUpTo (p : ℕ) :
    Nat.Prime p ↔ ∃ X : ℕ, p ∈ primesUpTo X := by
  constructor
  · intro hp
    exact ⟨p, mem_primesUpTo.mpr ⟨le_rfl, hp⟩⟩
  · rintro ⟨X, hp⟩
    exact (mem_primesUpTo.mp hp).2

end GRWTSK.NumberTheory.ElementaryNumberTheory.PrimeBootstrap
