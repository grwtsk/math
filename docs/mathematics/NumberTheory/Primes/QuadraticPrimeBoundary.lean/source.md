# Complete source: GRWTSK.NumberTheory.Primes.QuadraticPrimeBoundary

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `adf6335fb82b24d5738099ea00cf39f815adac73` · SHA-256 `6c8d5ae3bfe1d00d9458e1851bd5fabf920655aaa9a50878343ab311f7a9d15c`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/- Copyright (c) 2026 grwtsk contributors. MIT.
Human research direction: grwtsk contributors. Proof drafting assistance: OpenAI ChatGPT.
Mathlib results retain their upstream authorship and Apache-2.0 license. -/
import GRWTSK.NumberTheory.Primes.QuadraticGaussianLine
import Mathlib.Tactic

set_option autoImplicit false

/-!
# Prime-value boundary for `n^2 + 1`

The exact prime-only logarithmic source is connected both to the merged
`quadraticCount` consumer and to the Gaussian norm on the fixed line `n+i`.
An arbitrary analytic or sieve source may reach the count only after its full
correction is bounded below the announced main term.

No local root product, almost-prime count, two-dimensional Gaussian average,
or positive operator is treated as a prime-value lower bound.

SOURCE_ONLY / NOT_RUN / NOT_KERNEL_AUDITED.
-/

namespace GRWTSK.NumberTheory.Primes.QuadraticPrimeBoundary

open scoped BigOperators
open Finset
open GRWTSK.NumberTheory.Primes.ConfigurationCounts
open GRWTSK.NumberTheory.Primes.QuadraticGaussianLine

noncomputable section

/-- Prime-only logarithmic weight at one positive index. -/
def quadraticPrimeLogWeight (n : ℕ) : ℝ :=
  if 1 ≤ n ∧ Nat.Prime (n ^ 2 + 1) then
    Real.log (n ^ 2 + 1)
  else 0

/-- Bounded prime-only logarithmic mass. -/
def quadraticPrimeLogMass (X : ℕ) : ℝ :=
  ∑ n ∈ Finset.Icc 1 X,
    quadraticPrimeLogWeight n

/-- Every prime-only weight is nonnegative. -/
theorem quadraticPrimeLogWeight_nonneg
    (n : ℕ) :
    0 ≤ quadraticPrimeLogWeight n := by
  by_cases h : 1 ≤ n ∧ Nat.Prime (n ^ 2 + 1)
  · rw [quadraticPrimeLogWeight, if_pos h]
    exact Real.log_nonneg
      (by exact_mod_cast h.2.one_le)
  · simp [quadraticPrimeLogWeight, h]

/-- An actual prime value at a positive index has positive logarithmic
weight. -/
theorem quadraticPrimeLogWeight_pos
    {n : ℕ} (hn : 1 ≤ n)
    (hp : Nat.Prime (n ^ 2 + 1)) :
    0 < quadraticPrimeLogWeight n := by
  rw [quadraticPrimeLogWeight, if_pos ⟨hn, hp⟩]
  exact Real.log_pos (by exact_mod_cast hp.one_lt)

/-- Positivity of the weighted source is exactly positivity of the existing
exact index count. -/
theorem quadraticPrimeLogMass_pos_iff
    (X : ℕ) :
    0 < quadraticPrimeLogMass X ↔
      0 < quadraticCount X := by
  constructor
  · intro hmass
    by_contra hcount
    have hnoexist :
        ¬ ∃ n, n ≤ X ∧ 1 ≤ n ∧
          Nat.Prime (n ^ 2 + 1) := by
      intro hex
      exact hcount ((quadraticCount_pos_iff X).2 hex)
    have hzero : quadraticPrimeLogMass X = 0 := by
      unfold quadraticPrimeLogMass
      apply Finset.sum_eq_zero
      intro n hn
      have hnX := (Finset.mem_Icc.mp hn).2
      have hn1 := (Finset.mem_Icc.mp hn).1
      have hnot :
          ¬ (1 ≤ n ∧ Nat.Prime (n ^ 2 + 1)) := by
        intro h
        exact hnoexist ⟨n, hnX, h.1, h.2⟩
      simp [quadraticPrimeLogWeight, hnot]
    linarith
  · intro hcount
    rcases (quadraticCount_pos_iff X).1 hcount with
      ⟨n, hnX, hn1, hp⟩
    have hnmem : n ∈ Finset.Icc 1 X :=
      Finset.mem_Icc.mpr ⟨hn1, hnX⟩
    have hsingle :
        quadraticPrimeLogWeight n ≤
          quadraticPrimeLogMass X := by
      unfold quadraticPrimeLogMass
      exact Finset.single_le_sum
        (fun m hm => quadraticPrimeLogWeight_nonneg m)
        hnmem
    exact lt_of_lt_of_le
      (quadraticPrimeLogWeight_pos hn1 hp) hsingle

/-- The same prime-only source, expressed through the norm of the actual
Gaussian element `n+i`. -/
def quadraticGaussianPrimeLogMass
    (X : ℕ) : ℝ :=
  ∑ n ∈ Finset.Icc 1 X,
    if Nat.Prime
        (quadraticGaussianLine (n : ℤ)).norm.natAbs then
      Real.log
        (quadraticGaussianLine (n : ℤ)).norm.natAbs
    else 0

/-- The Gaussian norm adapter preserves every term of the prime-only source. -/
theorem quadraticGaussianPrimeLogMass_eq
    (X : ℕ) :
    quadraticGaussianPrimeLogMass X =
      quadraticPrimeLogMass X := by
  unfold quadraticGaussianPrimeLogMass
    quadraticPrimeLogMass
  apply Finset.sum_congr rfl
  intro n hn
  have hnorm :
      (quadraticGaussianLine (n : ℤ)).norm.natAbs =
        n ^ 2 + 1 := by
    rw [quadraticGaussianLine_norm_nat]
    exact Int.natAbs_natCast (n ^ 2 + 1)
  rw [hnorm]
  have hn1 : 1 ≤ n := (Finset.mem_Icc.mp hn).1
  simp [quadraticPrimeLogWeight, hn1]

/-- Generic source/correction boundary.  A proposed analytic source reaches an
actual prime value only after its full correction is bounded strictly below
the lower source. -/
theorem quadraticCount_pos_of_source_correction_bounds
    {X : ℕ}
    {source correction mainLower correctionError : ℝ}
    (hidentity :
      source = quadraticPrimeLogMass X + correction)
    (hmain : mainLower ≤ source)
    (hcorrection : correction ≤ correctionError)
    (hstrict : correctionError < mainLower) :
    0 < quadraticCount X := by
  have hmass : 0 < quadraticPrimeLogMass X := by
    rw [hidentity] at hmain
    linarith
  exact (quadraticPrimeLogMass_pos_iff X).1 hmass

/-- Signed-residual version used by a thin Gaussian or polynomial-sieve
supplier.  Main, signed residual, and prime-detection correction remain
separate. -/
theorem quadraticCount_pos_of_bilinear_residual_bounds
    {X : ℕ}
    {mainSource signedResidual correction : ℝ}
    {mainLower residualError correctionError : ℝ}
    (hidentity :
      mainSource + signedResidual =
        quadraticPrimeLogMass X + correction)
    (hmain : mainLower ≤ mainSource)
    (hresidual : |signedResidual| ≤ residualError)
    (hcorrection : correction ≤ correctionError)
    (hstrict :
      residualError + correctionError < mainLower) :
    0 < quadraticCount X := by
  apply quadraticCount_pos_of_source_correction_bounds
    (source := mainSource + signedResidual)
    (correction := correction)
    (mainLower := mainLower - residualError)
    (correctionError := correctionError)
  · exact hidentity
  · have hlower : -residualError ≤ signedResidual :=
      (abs_le.mp hresidual).1
    linarith
  · exact hcorrection
  · linarith

end
end GRWTSK.NumberTheory.Primes.QuadraticPrimeBoundary
```
