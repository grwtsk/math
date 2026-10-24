# Complete source: GRWTSK.NumberTheory.Zeta.Riemann.QuadraticThetaPrimeTriangularOrderRegionReindexing

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `fda3c14d19fd3d8c073df52a6e1562259e446227` · SHA-256 `b79427812a83b8402b15ea490e64240488b2d6518807edabe01162dbd54477e1`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/- Copyright (c) 2026 grwtsk contributors. MIT.
Human mathematical direction: grwtsk contributors. Formalization assistance: OpenAI ChatGPT. -/
import GRWTSK.NumberTheory.Zeta.Riemann.QuadraticThetaPrimeTriangularPairPartition
import Mathlib.Tactic

set_option autoImplicit false
noncomputable section
open scoped BigOperators

namespace GRWTSK.RiemannHypothesis

def triangularPositiveDiagonalPairs (N d : ℕ) : Finset (ℕ × ℕ) :=
  (Finset.range (N - d)).image (fun b => (b + d, b))

def triangularNegativeDiagonalPairs (N d : ℕ) : Finset (ℕ × ℕ) :=
  (Finset.range (N - d)).image (fun b => (b, b + d))

theorem mem_triangularPositiveDiagonalPairs
    {N d : ℕ} {p : ℕ × ℕ} :
    p ∈ triangularPositiveDiagonalPairs N d ↔
      ∃ b < N - d, p = (b + d, b) := by
  simp [triangularPositiveDiagonalPairs]

theorem mem_triangularNegativeDiagonalPairs
    {N d : ℕ} {p : ℕ × ℕ} :
    p ∈ triangularNegativeDiagonalPairs N d ↔
      ∃ b < N - d, p = (b, b + d) := by
  simp [triangularNegativeDiagonalPairs]

theorem triangularPositiveOffsetPairs_eq_biUnion_diagonals
    (N : ℕ) :
    triangularPositiveOffsetPairs N =
      (Finset.Ico 1 N).biUnion
        (triangularPositiveDiagonalPairs N) := by
  ext p
  simp [triangularPositiveOffsetPairs, triangularAutocorrelationPairs,
    mem_triangularPositiveDiagonalPairs]
  constructor
  · rintro ⟨haN, hbN, hba⟩
    refine ⟨p.1 - p.2, ?_, ?_, p.2, ?_, ?_⟩
    · omega
    · omega
    · omega
    · apply Prod.ext <;> simp <;> omega
  · rintro ⟨d, hd1, hdN, b, hb, rfl⟩
    simp
    omega

theorem triangularNegativeOffsetPairs_eq_biUnion_diagonals
    (N : ℕ) :
    triangularNegativeOffsetPairs N =
      (Finset.Ico 1 N).biUnion
        (triangularNegativeDiagonalPairs N) := by
  ext p
  simp [triangularNegativeOffsetPairs, triangularAutocorrelationPairs,
    mem_triangularNegativeDiagonalPairs]
  constructor
  · rintro ⟨haN, hbN, hab⟩
    refine ⟨p.2 - p.1, ?_, ?_, p.1, ?_, ?_⟩
    · omega
    · omega
    · omega
    · apply Prod.ext <;> simp <;> omega
  · rintro ⟨d, hd1, hdN, b, hb, rfl⟩
    simp
    omega

theorem triangularPositiveDiagonalPairs_pairwiseDisjoint
    (N : ℕ) :
    ((Finset.Ico 1 N : Finset ℕ) : Set ℕ).PairwiseDisjoint
      (triangularPositiveDiagonalPairs N) := by
  intro d hd e he hde
  rw [Finset.disjoint_left]
  intro p hpd hpe
  rw [mem_triangularPositiveDiagonalPairs] at hpd hpe
  rcases hpd with ⟨b, hb, rfl⟩
  rcases hpe with ⟨c, hc, hpair⟩
  have hsecond : b = c := by
    exact congrArg Prod.snd hpair
  subst c
  have hfirst : b + d = b + e := by
    exact congrArg Prod.fst hpair
  omega

theorem triangularNegativeDiagonalPairs_pairwiseDisjoint
    (N : ℕ) :
    ((Finset.Ico 1 N : Finset ℕ) : Set ℕ).PairwiseDisjoint
      (triangularNegativeDiagonalPairs N) := by
  intro d hd e he hde
  rw [Finset.disjoint_left]
  intro p hpd hpe
  rw [mem_triangularNegativeDiagonalPairs] at hpd hpe
  rcases hpd with ⟨b, hb, rfl⟩
  rcases hpe with ⟨c, hc, hpair⟩
  have hfirst : b = c := by
    exact congrArg Prod.fst hpair
  subst c
  have hsecond : b + d = b + e := by
    exact congrArg Prod.snd hpair
  omega

theorem triangularPositiveRegion_sum_eq_diagonals
    (N : ℕ) (t : ℝ) :
    (∑ p ∈ triangularPositiveOffsetPairs N,
        triangularPairTerm t p) =
      ∑ d ∈ Finset.Ico 1 N,
        triangularPositiveDiagonal N d t := by
  rw [triangularPositiveOffsetPairs_eq_biUnion_diagonals]
  rw [Finset.sum_biUnion
    (triangularPositiveDiagonalPairs_pairwiseDisjoint N)]
  apply Finset.sum_congr rfl
  intro d hd
  unfold triangularPositiveDiagonal triangularPositiveDiagonalPairs
  rw [Finset.sum_image]
  · rfl
  · intro a ha b hb hab
    exact Nat.add_left_cancel (congrArg Prod.fst hab)

theorem triangularNegativeRegion_sum_eq_diagonals
    (N : ℕ) (t : ℝ) :
    (∑ p ∈ triangularNegativeOffsetPairs N,
        triangularPairTerm t p) =
      ∑ d ∈ Finset.Ico 1 N,
        triangularNegativeDiagonal N d t := by
  rw [triangularNegativeOffsetPairs_eq_biUnion_diagonals]
  rw [Finset.sum_biUnion
    (triangularNegativeDiagonalPairs_pairwiseDisjoint N)]
  apply Finset.sum_congr rfl
  intro d hd
  unfold triangularNegativeDiagonal triangularNegativeDiagonalPairs
  rw [Finset.sum_image]
  · rfl
  · intro a ha b hb hab
    exact congrArg Prod.fst hab

theorem triangularOrderRegionsToDiagonals :
    TriangularOrderRegionsToDiagonalsClaim := by
  intro N hN t
  exact ⟨triangularPositiveRegion_sum_eq_diagonals N t,
    triangularNegativeRegion_sum_eq_diagonals N t⟩

end GRWTSK.RiemannHypothesis
```
