/- Copyright (c) 2026 grwtsk contributors. MIT. -/
import GRWTSK.NumberTheory.MultiplicativeNumberTheory.GoldbachModThreeSourceSectors

set_option autoImplicit false
noncomputable section
open scoped BigOperators

/-! Complete target-dependent residue source, including prime-three pairs.
All sums use the original inclusive ordered box. This decomposition
supplies no arithmetic distribution or moment upper estimate.
SOURCE_PROOF_CANDIDATES / NOT_RUN / NOT_KERNEL_AUDITED. -/
namespace GRWTSK.NumberTheory.Primes.GoldbachModThreeCompleteSource
open GoldbachWeighted GoldbachModThreeSourceSectors

def allowedSector (N : ℕ) (uv : ℕ × ℕ) : Prop :=
  (N % 3 = 0 ∧ crossSectors uv) ∨
  (N % 3 = 1 ∧ uv.1 % 3 = 2 ∧ uv.2 % 3 = 2) ∨
  (N % 3 = 2 ∧ uv.1 % 3 = 1 ∧ uv.2 % 3 = 1)

noncomputable def regularTerm (N : ℕ) (uv : ℕ × ℕ) : ℝ := by
  classical
  exact if uv.1 ≠ 3 ∧ uv.2 ≠ 3 ∧ allowedSector N uv then goldbachLogTerm N uv else 0

noncomputable def exceptionalTerm (N : ℕ) (uv : ℕ × ℕ) : ℝ := by
  classical
  exact if uv.1 = 3 ∨ uv.2 = 3 then goldbachLogTerm N uv else 0

theorem complete_term_split (N : ℕ) (uv : ℕ × ℕ) :
    goldbachLogTerm N uv = regularTerm N uv + exceptionalTerm N uv := by
  classical
  by_cases he : uv.1 = 3 ∨ uv.2 = 3
  · have hn : ¬ (uv.1 ≠ 3 ∧ uv.2 ≠ 3 ∧ allowedSector N uv) := by tauto
    simp [regularTerm, exceptionalTerm, he, hn]
  · have hn : uv.1 ≠ 3 ∧ uv.2 ≠ 3 := by tauto
    by_cases ha : allowedSector N uv
    · simp [regularTerm, exceptionalTerm, he, hn, ha]
    · have hz : goldbachLogTerm N uv = 0 := by
        apply le_antisymm _ (goldbachLogTerm_nonneg N uv)
        apply not_lt.mp
        intro ht
        obtain ⟨hp, hq, hs⟩ := (goldbachLogTerm_pos_iff N uv.1 uv.2).mp ht
        exact ha (nonexceptional_pair_sectors N uv.1 uv.2 hp hq hn.1 hn.2 hs)
      simp [regularTerm, exceptionalTerm, he, ha, hz]

noncomputable def regularMass (N : ℕ) : ℝ :=
  ∑ uv ∈ goldbachBox N, regularTerm N uv
noncomputable def exceptionalMass (N : ℕ) : ℝ :=
  ∑ uv ∈ goldbachBox N, exceptionalTerm N uv

theorem complete_source_split (N : ℕ) :
    goldbachLogMass N = regularMass N + exceptionalMass N := by
  unfold goldbachLogMass regularMass exceptionalMass
  rw [← Finset.sum_add_distrib]
  exact Finset.sum_congr rfl (fun uv _ => complete_term_split N uv)

theorem complete_source_second_moment (N : ℕ) :
    goldbachLogMass N ^ 2 = regularMass N ^ 2 +
      2 * regularMass N * exceptionalMass N + exceptionalMass N ^ 2 := by
  rw [complete_source_split]
  ring

end GRWTSK.NumberTheory.Primes.GoldbachModThreeCompleteSource
