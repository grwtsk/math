# Complete source: GRWTSK.NumberTheory.Zeta.Riemann.QuadraticThetaPrimeTriangularIntegerFrequencyPartitionProof

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `2744776d23e1692aab74adee20a889dacb811c6d` · SHA-256 `4a8368e38af49c0953da2a1e73b95f8e5c05507f8fe7d816bae05a6c7d6df5f1`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/- Copyright (c) 2026 grwtsk contributors. MIT.
Human mathematical direction: grwtsk contributors. Formalization assistance: OpenAI ChatGPT. -/
import GRWTSK.NumberTheory.Zeta.Riemann.QuadraticThetaPrimeTriangularIntegerFrequencyPartition
import Mathlib.Tactic

set_option autoImplicit false
noncomputable section
open scoped BigOperators

namespace GRWTSK.RiemannHypothesis

/-- The integer interval [-N,N] is exactly the decomposition used by the
assembled triangular frequency sum, together with the two endpoint frequencies
whose coefficients vanish. -/
theorem triangularIntegerFrequencyPartition :
    TriangularIntegerFrequencyPartitionClaim := by
  intro N
  ext k
  constructor
  · intro hk
    have hkIcc := Finset.mem_Icc.mp hk
    by_cases hleft : k = -(N : ℤ)
    · apply Finset.mem_union.mpr
      exact Or.inr (by simp [hleft])
    by_cases hright : k = (N : ℤ)
    · apply Finset.mem_union.mpr
      exact Or.inr (by simp [hright])
    rcases lt_trichotomy k 0 with hkneg | hkzero | hkpos
    · have hkLower : -(N : ℤ) < k :=
        lt_of_le_of_ne hkIcc.1 (Ne.symm hleft)
      let d : ℕ := k.natAbs
      have hdpos : 0 < d := by
        exact Int.natAbs_pos.mpr (ne_of_lt hkneg)
      have hcast : (d : ℤ) = -k := by
        dsimp [d]
        exact Int.ofNat_natAbs_of_nonpos hkneg.le
      have hdltInt : (d : ℤ) < (N : ℤ) := by
        rw [hcast]
        omega
      have hdlt : d < N := by
        exact_mod_cast hdltInt
      have hn : k ∈ triangularNegativeFrequencies N := by
        apply mem_triangularNegativeFrequencies.mpr
        refine ⟨d, Finset.mem_Ico.mpr ⟨hdpos, hdlt⟩, ?_⟩
        omega
      apply Finset.mem_union.mpr
      apply Or.inl
      apply Finset.mem_union.mpr
      apply Or.inl
      apply Finset.mem_union.mpr
      exact Or.inl hn
    · subst k
      apply Finset.mem_union.mpr
      apply Or.inl
      apply Finset.mem_union.mpr
      apply Or.inl
      apply Finset.mem_union.mpr
      exact Or.inr (by simp [triangularZeroFrequency])
    · have hkUpper : k < (N : ℤ) :=
        lt_of_le_of_ne hkIcc.2 hright
      let d : ℕ := k.natAbs
      have hdpos : 0 < d := by
        exact Int.natAbs_pos.mpr (ne_of_gt hkpos)
      have hcast : (d : ℤ) = k := by
        dsimp [d]
        exact Int.natAbs_of_nonneg hkpos.le
      have hdltInt : (d : ℤ) < (N : ℤ) := by
        rw [hcast]
        exact hkUpper
      have hdlt : d < N := by
        exact_mod_cast hdltInt
      have hp : k ∈ triangularPositiveFrequencies N := by
        apply mem_triangularPositiveFrequencies.mpr
        refine ⟨d, Finset.mem_Ico.mpr ⟨hdpos, hdlt⟩, ?_⟩
        exact hcast.symm
      apply Finset.mem_union.mpr
      apply Or.inl
      apply Finset.mem_union.mpr
      exact Or.inr hp
  · intro hk
    rcases Finset.mem_union.mp hk with hleft | hend
    · rcases Finset.mem_union.mp hleft with hnz | hp
      · rcases Finset.mem_union.mp hnz with hn | hz
        · rw [mem_triangularNegativeFrequencies] at hn
          rcases hn with ⟨d, hd, rfl⟩
          have hd' := Finset.mem_Ico.mp hd
          apply Finset.mem_Icc.mpr
          constructor
          · omega
          · omega
        · simp [triangularZeroFrequency] at hz
          subst k
          exact Finset.mem_Icc.mpr (by omega)
      · rw [mem_triangularPositiveFrequencies] at hp
        rcases hp with ⟨d, hd, rfl⟩
        have hd' := Finset.mem_Ico.mp hd
        apply Finset.mem_Icc.mpr
        constructor
        · omega
        · omega
    · simp at hend
      rcases hend with rfl | rfl <;> simp

/-- The assembled positive/zero/negative frequency expression is exactly the
symmetric triangular kernel. -/
theorem triangularAssembledFrequencyKernel :
    TriangularAssembledFrequencyKernelClaim :=
  integerFrequencyPartition_to_assembledKernel
    triangularIntegerFrequencyPartition

/-- The geometric block autocorrelation identity for the explicit symmetric
triangular kernel is now source-proved. -/
theorem symmetricTriangularKernel_autocorrelation :
    SymmetricTriangularKernelAutocorrelationClaim :=
  assembledKernel_to_autocorrelation
    triangularAssembledFrequencyKernel

end GRWTSK.RiemannHypothesis
```
