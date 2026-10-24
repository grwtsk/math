# Complete source: GRWTSK.CombinatoricsAndDiscreteMathematics.PrimeWalkDyadic.Variant458da47dcbec61c911cf344425162d9fcabc61cb4b94d59d1b7f9e8c190adee3

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `a173235a2713200db525d98f6819a8662a476100` · SHA-256 `458da47dcbec61c911cf344425162d9fcabc61cb4b94d59d1b7f9e8c190adee3`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

````lean
module

public import Surface.Core.AnalyticPrimeWalkLogDensity
import Mathlib.Tactic

/-!
# Exact dyadic blocks for the prime-walk observables

This module supplies the finite combinatorial bridge between the native
`Filter.atTop` logarithmic-density layer and its sigma-additive harmonic
measure.  The `j`-th block is the half-open interval

```text
  [2^j, 2^(j+1)).
```

The definitions below only restrict sequences and finite sums to those
blocks.  They do not construct a Fourier multiplier, a Littlewood--Paley
partition of unity, a maximal operator, or any GRH estimate.

`dyadicHarmonicMass` deliberately reuses `harmonicWeight` and
`harmonicMeasure` from `AnalyticPrimeWalkLogDensity`; there is no second notion
of logarithmic density in this file.
-/

public section

namespace Surface.Core.AnalyticPrimeWalk

noncomputable section

open scoped BigOperators ENNReal

/-! ## Finite dyadic restrictions -/

/-- The discrete dyadic interval `[2^j, 2^(j+1))`. -/
@[expose]
def dyadicInterval (j : ℕ) : Finset ℕ :=
  Finset.Ico (2 ^ j) (2 ^ (j + 1))

/-- Restrict a sequence to its `j`-th dyadic block, extending it by zero
outside that block. -/
@[expose]
def discreteDyadicSlice {E : Type*} [Zero E]
    (j : ℕ) (walk : ℕ → E) : ℕ → E :=
  fun k ↦ if k ∈ dyadicInterval j then walk k else 0

/-- Unweighted finite mass of a real observable on one dyadic block. -/
@[expose]
def dyadicBlockMass (j : ℕ) (observable : ℕ → ℝ) : ℝ :=
  ∑ k ∈ dyadicInterval j, observable k

/-- Indices in a set `S` that lie in the `j`-th dyadic block. -/
@[expose]
def dyadicSampleFinset (S : Set ℕ) (j : ℕ) : Finset ℕ := by
  classical
  exact (dyadicInterval j).filter (· ∈ S)

/-- Harmonic `1/k` mass of `S` inside one dyadic block. -/
@[expose]
def dyadicHarmonicMass (S : Set ℕ) (j : ℕ) : ℝ := by
  classical
  exact ∑ k ∈ dyadicInterval j, if k ∈ S then harmonicWeight k else 0

/-- Harmonic normalizer of one complete dyadic block. -/
@[expose]
def dyadicHarmonicNormalizer (j : ℕ) : ℝ :=
  dyadicBlockMass j harmonicWeight

/-! ## Exact endpoints and finite combinatorics -/

/-- Membership in a dyadic block is exactly the expected pair of endpoint
inequalities. -/
@[surface_novel, surface_published]
theorem mem_dyadicInterval_iff (j k : ℕ) :
    k ∈ dyadicInterval j ↔ 2 ^ j ≤ k ∧ k < 2 ^ (j + 1) := by
  simp [dyadicInterval]

/-- Every dyadic block contains its lower endpoint. -/
@[surface_novel, surface_published]
theorem dyadicInterval_lower_mem (j : ℕ) :
    2 ^ j ∈ dyadicInterval j := by
  rw [mem_dyadicInterval_iff]
  constructor
  · rfl
  · rw [pow_succ]
    simpa only [mul_one] using
      (Nat.mul_lt_mul_left (Nat.two_pow_pos j)).2 (by norm_num : 1 < 2)

/-- The upper endpoint is excluded from the half-open dyadic block. -/
@[surface_novel, surface_published]
theorem dyadicInterval_upper_not_mem (j : ℕ) :
    2 ^ (j + 1) ∉ dyadicInterval j := by
  simp [mem_dyadicInterval_iff]

/-- The `j`-th dyadic block contains exactly `2^j` natural indices. -/
@[surface_novel, surface_published]
theorem card_dyadicInterval (j : ℕ) :
    (dyadicInterval j).card = 2 ^ j := by
  rw [dyadicInterval, Nat.card_Ico, pow_succ]
  omega

/-- Consecutive dyadic blocks are disjoint. -/
@[surface_novel, surface_published]
theorem dyadicInterval_disjoint_succ (j : ℕ) :
    Disjoint (dyadicInterval j) (dyadicInterval (j + 1)) := by
  exact Finset.Ico_disjoint_Ico_consecutive _ _ _

/-- Two consecutive dyadic blocks form the corresponding two-scale
half-open interval. -/
@[surface_novel, surface_published]
theorem dyadicInterval_union_succ (j : ℕ) :
    dyadicInterval j ∪ dyadicInterval (j + 1) =
      Finset.Ico (2 ^ j) (2 ^ (j + 2)) := by
  exact Finset.Ico_union_Ico_eq_Ico
    (Nat.le_of_lt (Nat.pow_lt_pow_right (by norm_num) (by omega)))
    (Nat.le_of_lt (Nat.pow_lt_pow_right (by norm_num) (by omega)))

/-! ## Slice and sum identities -/

/-- On its block, a dyadic slice agrees exactly with the original sequence. -/
@[surface_novel, surface_published]
theorem discreteDyadicSlice_eq_of_mem {E : Type*} [Zero E]
    (j : ℕ) (walk : ℕ → E) (k : ℕ) (hk : k ∈ dyadicInterval j) :
    discreteDyadicSlice j walk k = walk k := by
  simp [discreteDyadicSlice, hk]

/-- Outside its block, a dyadic slice is exactly zero. -/
@[surface_novel, surface_published]
theorem discreteDyadicSlice_eq_zero_of_not_mem {E : Type*} [Zero E]
    (j : ℕ) (walk : ℕ → E) (k : ℕ) (hk : k ∉ dyadicInterval j) :
    discreteDyadicSlice j walk k = 0 := by
  simp [discreteDyadicSlice, hk]

/-- Summing a slice over its own block recovers the original block mass. -/
@[surface_novel, surface_published]
theorem dyadicBlockMass_slice (j : ℕ) (observable : ℕ → ℝ) :
    dyadicBlockMass j (discreteDyadicSlice j observable) =
      dyadicBlockMass j observable := by
  classical
  apply Finset.sum_congr rfl
  intro k hk
  exact discreteDyadicSlice_eq_of_mem j observable k hk

/-- Block mass is additive across two consecutive dyadic scales. -/
@[surface_novel, surface_published]
theorem dyadicBlockMass_add_succ (j : ℕ) (observable : ℕ → ℝ) :
    dyadicBlockMass j observable + dyadicBlockMass (j + 1) observable =
      ∑ k ∈ Finset.Ico (2 ^ j) (2 ^ (j + 2)), observable k := by
  exact Finset.sum_Ico_consecutive observable
    (Nat.le_of_lt (Nat.pow_lt_pow_right (by norm_num) (by omega)))
    (Nat.le_of_lt (Nat.pow_lt_pow_right (by norm_num) (by omega)))

/-! ## Exact harmonic-measure bridge -/

/-- Dyadic harmonic mass is the generic block-mass operation applied to the
indicator-weighted native harmonic sequence. -/
@[surface_novel, surface_published]
theorem dyadicHarmonicMass_eq_blockMass (S : Set ℕ) (j : ℕ) :
    dyadicHarmonicMass S j =
      dyadicBlockMass j (S.indicator harmonicWeight) := by
  classical
  simp [dyadicHarmonicMass, dyadicBlockMass, Set.indicator_apply]

/-- The harmonic normalizer is the harmonic mass of the full natural-number
set on that block. -/
@[surface_novel, surface_published]
theorem dyadicHarmonicMass_univ (j : ℕ) :
    dyadicHarmonicMass Set.univ j = dyadicHarmonicNormalizer j := by
  simp [dyadicHarmonicMass, dyadicHarmonicNormalizer, dyadicBlockMass]

/-- The sigma-additive native harmonic measure of a finite dyadic sample is
exactly `ofReal` of its dyadic harmonic mass. -/
@[surface_novel, surface_published]
theorem harmonicMeasure_dyadicSample (S : Set ℕ) (j : ℕ) :
    harmonicMeasure (dyadicSampleFinset S j : Set ℕ) =
      ENNReal.ofReal (dyadicHarmonicMass S j) := by
  classical
  rw [harmonicMeasure_finset]
  congr 1
  simp [dyadicSampleFinset, dyadicHarmonicMass, Finset.sum_filter]

/-- The measure of a complete dyadic block is exactly the `ofReal` image of
its native harmonic normalizer. -/
@[surface_novel, surface_published]
theorem harmonicMeasure_dyadicInterval (j : ℕ) :
    harmonicMeasure (dyadicInterval j : Set ℕ) =
      ENNReal.ofReal (dyadicHarmonicNormalizer j) := by
  rw [harmonicMeasure_finset]
  rfl

/-- Harmonic mass decomposes exactly across adjacent dyadic blocks. -/
@[surface_novel, surface_published]
theorem dyadicHarmonicMass_add_succ (S : Set ℕ) (j : ℕ) :
    dyadicHarmonicMass S j + dyadicHarmonicMass S (j + 1) =
      ∑ k ∈ Finset.Ico (2 ^ j) (2 ^ (j + 2)),
        S.indicator harmonicWeight k := by
  classical
  rw [dyadicHarmonicMass_eq_blockMass, dyadicHarmonicMass_eq_blockMass]
  exact dyadicBlockMass_add_succ j (S.indicator harmonicWeight)

end

end Surface.Core.AnalyticPrimeWalk
````
