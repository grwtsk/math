# Complete source: GRWTSK.NumberTheory.Primes.QuadraticSieveObstruction

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `272f99f579a203c9912264b5ef5edec75c3cc3f3` · SHA-256 `955c8e1e76356b3fc52630d7312ebcc2afe805b74aa092b2cc55746a5ae4577b`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/- Copyright (c) 2026 grwtsk contributors. MIT.
Human research direction: grwtsk contributors. Proof drafting assistance: OpenAI ChatGPT.
Mathlib results retain their upstream authorship and Apache-2.0 license. -/
import Mathlib.Data.Nat.Prime.Basic
import Mathlib.Tactic

set_option autoImplicit false

/-!
# Arbitrarily large composite survivors of any fixed finite divisor sieve

For M>0 put D=M^2+1 and n=M*(1+(B+1)*D). Then n>B; n^2+1
is composite and is divisible by no divisor d>1 of M. Taking M to be a
product of finitely many sieving primes gives the stated obstruction.
This does not refute quadratic-prime infinitude or a growing sieve.

SOURCE_ONLY / NOT_RUN / NOT_KERNEL_AUDITED.
-/

namespace GRWTSK.NumberTheory.Primes.QuadraticSieveObstruction

/-- Explicit index for the fixed-sieve hostile family. -/
def quadraticCompositeSurvivor (M B : ℕ) : ℕ :=
  M * (1 + (B + 1) * (M ^ 2 + 1))

/-- Every declared sieve modulus dividing M divides the constructed index. -/
theorem dvd_quadraticCompositeSurvivor (M B d : ℕ) (hd : d ∣ M) :
    d ∣ quadraticCompositeSurvivor M B := by
  exact dvd_mul_of_dvd_left hd _

/-- No nontrivial divisor of the index can divide its quadratic value. -/
theorem not_dvd_quadraticValue_of_dvd_index {d n : ℕ}
    (hd : 1 < d) (hdn : d ∣ n) : ¬ d ∣ n ^ 2 + 1 := by
  intro h
  have hs : d ∣ n ^ 2 := by
    simpa only [pow_two] using dvd_mul_of_dvd_left hdn n
  have hone : d ∣ 1 := (Nat.dvd_add_iff_right hs).mpr h
  have := Nat.le_of_dvd (by decide : 0 < 1) hone
  omega

/-- The constructed indices are genuinely beyond every supplied lower cutoff. -/
theorem quadraticCompositeSurvivor_gt {M B : ℕ} (hM : 0 < M) :
    B < quadraticCompositeSurvivor M B := by
  have hD : 1 ≤ M ^ 2 + 1 := by omega
  have hprod : B + 1 ≤ (B + 1) * (M ^ 2 + 1) :=
    le_mul_of_one_le_right (Nat.zero_le _) hD
  have houter : 1 + (B + 1) * (M ^ 2 + 1) ≤
      M * (1 + (B + 1) * (M ^ 2 + 1)) :=
    le_mul_of_one_le_left (Nat.zero_le _) hM
  unfold quadraticCompositeSurvivor
  omega

/-- M^2+1 is an actual divisor, not a sieve heuristic. -/
theorem quadraticCompositeSurvivor_value_dvd (M B : ℕ) :
    M ^ 2 + 1 ∣ (quadraticCompositeSurvivor M B) ^ 2 + 1 := by
  refine ⟨1 + 2 * M ^ 2 * (B + 1) +
    M ^ 2 * (B + 1) ^ 2 * (M ^ 2 + 1), ?_⟩
  unfold quadraticCompositeSurvivor
  ring

/-- The divisor is nontrivial and proper, so the value is composite. -/
theorem quadraticCompositeSurvivor_not_prime {M B : ℕ} (hM : 0 < M) :
    ¬ Nat.Prime ((quadraticCompositeSurvivor M B) ^ 2 + 1) := by
  have hM2 : 0 < M ^ 2 := pow_pos hM 2
  have hinner : 0 < (B + 1) * (M ^ 2 + 1) := by positivity
  have hgain : 0 < M * ((B + 1) * (M ^ 2 + 1)) := Nat.mul_pos hM hinner
  have hindex : M < quadraticCompositeSurvivor M B := by
    unfold quadraticCompositeSurvivor
    nlinarith
  have hproper : M ^ 2 + 1 < (quadraticCompositeSurvivor M B) ^ 2 + 1 := by
    nlinarith
  intro hp
  rcases (Nat.dvd_prime hp).mp (quadraticCompositeSurvivor_value_dvd M B) with h | h
  · omega
  · omega

/-- The fixed finite sieve has composite survivors beyond every cutoff.
There is no conclusion here about prime survivors or a growing sieve. -/
theorem unbounded_composite_quadratic_survivors (M : ℕ) (hM : 0 < M) :
    ∀ B : ℕ, ∃ n : ℕ, B < n ∧ ¬ Nat.Prime (n ^ 2 + 1) ∧
      ∀ d : ℕ, d ∣ M → 1 < d → ¬ d ∣ n ^ 2 + 1 := by
  intro B
  refine ⟨quadraticCompositeSurvivor M B,
    quadraticCompositeSurvivor_gt hM,
    quadraticCompositeSurvivor_not_prime hM, ?_⟩
  intro d hd hd1
  exact not_dvd_quadraticValue_of_dvd_index hd1
    (dvd_quadraticCompositeSurvivor M B d hd)

end GRWTSK.NumberTheory.Primes.QuadraticSieveObstruction
```
