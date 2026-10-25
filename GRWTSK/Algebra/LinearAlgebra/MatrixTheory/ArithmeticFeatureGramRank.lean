/- Copyright (c) 2026 grwtsk contributors. MIT.
Human mathematical direction: grwtsk contributors. Formalization assistance: OpenAI.
Mathlib results retain their upstream authorship and Apache-2.0 license. -/
import GRWTSK.Algebra.LinearAlgebra.MatrixTheory.ArithmeticFeatureGram
import Mathlib.LinearAlgebra.Matrix.Rank
import Mathlib.LinearAlgebra.Matrix.ToLinearEquiv
import Lean.Elab.Tactic.Omega

set_option autoImplicit false

open scoped ComplexOrder

/-!
# Finite arithmetic Gram rank and dimension obstruction

The exact sample set remains 2,...,N, with N >= 2 stated explicitly. The
generic finite Gram rank bound is applied to BOTH the untwisted and character
families already defined in ArithmeticFeatureGram. No independence or
nondegeneracy of the features is assumed, so only an upper rank bound follows.

When the coordinate count exceeds N-1, each matrix has determinant zero and a
nonzero vector in the kernel of its actual mulVec map. Consequently it is not
positive definite. This is a finite algebraic obstruction, not a claim about
a physical Hamiltonian, a continuum gap, or every smaller coordinate family.

SOURCE_PROOF_CANDIDATES / NOT_RUN / NOT_KERNEL_AUDITED.
-/

namespace GRWTSK.Algebra.LinearAlgebra.MatrixTheory.ArithmeticFeatureGramRank

open GRWTSK.Algebra.LinearAlgebra.MatrixTheory.ArithmeticFeatureGram
open GRWTSK.Analysis.ErrorBounds.HermitianGramRealification

noncomputable section

universe u v

/-- The retained full interval has exactly N-1 samples under the stated cutoff premise. -/
theorem window_card (N : ℕ) (_hN : 2 ≤ N) : Fintype.card (Window N) = N - 1 := by
  change Fintype.card ↥(Finset.Icc 2 N) = N - 1
  rw [Fintype.card_coe, Nat.card_Icc]
  omega

/-- A finite Gram has at most as much rank as its full feature population. -/
theorem complexGram_rank_le_card {ι : Type u} {κ : Type v} [Fintype ι] [Fintype κ]
    (f : κ → ι → ℂ) :
    (fun i j => complexGram f (i, j)).rank ≤ Fintype.card κ := by
  let A : Matrix ι κ ℂ := fun i k => f k i
  have hGram : (fun i j => complexGram f (i, j)) = A * Matrix.conjTranspose A := by
    funext i j
    rfl
  rw [hGram]
  exact (Matrix.rank_mul_le_left A (Matrix.conjTranspose A)).trans
    (Matrix.rank_le_card_width A)

theorem baseGram_rank_le {ι : Type u} [Fintype ι]
    (N : ℕ) (hN : 2 ≤ N) (τ : ℝ) (s : ι → ℂ) :
    (baseGram N τ s).rank ≤ N - 1 := by
  simpa only [window_card N hN] using complexGram_rank_le_card (baseFeature N τ s)

theorem arithmeticGram_rank_le {ι : Type u} [Fintype ι]
    (N : ℕ) (hN : 2 ≤ N) (τ : ℝ) (level : ι → ℕ)
    (χ : ∀ i, DirichletCharacter ℂ (level i)) (s : ι → ℂ) :
    (arithmeticGram N τ level χ s).rank ≤ N - 1 := by
  simpa only [window_card N hN] using complexGram_rank_le_card (feature N τ level χ s)

/-- More coordinates than samples force singularity; no generic full-rank premise is inserted. -/
theorem baseGram_det_eq_zero {ι : Type u} [Fintype ι] [DecidableEq ι]
    (N : ℕ) (hN : 2 ≤ N) (τ : ℝ) (s : ι → ℂ)
    (hdim : N - 1 < Fintype.card ι) : (baseGram N τ s).det = 0 := by
  by_contra hdet
  have hbound := baseGram_rank_le N hN τ s
  rw [Matrix.rank_of_det_ne_zero hdet] at hbound
  exact (Nat.not_le_of_gt hdim) hbound

theorem arithmeticGram_det_eq_zero {ι : Type u} [Fintype ι] [DecidableEq ι]
    (N : ℕ) (hN : 2 ≤ N) (τ : ℝ) (level : ι → ℕ)
    (χ : ∀ i, DirichletCharacter ℂ (level i)) (s : ι → ℂ)
    (hdim : N - 1 < Fintype.card ι) : (arithmeticGram N τ level χ s).det = 0 := by
  by_contra hdet
  have hbound := arithmeticGram_rank_le N hN τ level χ s
  rw [Matrix.rank_of_det_ne_zero hdet] at hbound
  exact (Nat.not_le_of_gt hdim) hbound

/-- A kernel witness for the actual untwisted finite matrix action. -/
theorem baseGram_exists_kernel {ι : Type u} [Fintype ι]
    (N : ℕ) (hN : 2 ≤ N) (τ : ℝ) (s : ι → ℂ)
    (hdim : N - 1 < Fintype.card ι) :
    ∃ test : ι → ℂ, test ≠ 0 ∧ (baseGram N τ s).mulVec test = 0 := by
  classical
  apply Matrix.exists_mulVec_eq_zero_iff.mpr
  exact baseGram_det_eq_zero N hN τ s hdim

/-- The character family has the same dimension obstruction, with every level/character retained. -/
theorem arithmeticGram_exists_kernel {ι : Type u} [Fintype ι]
    (N : ℕ) (hN : 2 ≤ N) (τ : ℝ) (level : ι → ℕ)
    (χ : ∀ i, DirichletCharacter ℂ (level i)) (s : ι → ℂ)
    (hdim : N - 1 < Fintype.card ι) :
    ∃ test : ι → ℂ, test ≠ 0 ∧ (arithmeticGram N τ level χ s).mulVec test = 0 := by
  classical
  apply Matrix.exists_mulVec_eq_zero_iff.mpr
  exact arithmeticGram_det_eq_zero N hN τ level χ s hdim

theorem baseGram_not_posDef {ι : Type u} [Fintype ι]
    (N : ℕ) (hN : 2 ≤ N) (τ : ℝ) (s : ι → ℂ)
    (hdim : N - 1 < Fintype.card ι) : ¬ (baseGram N τ s).PosDef := by
  intro hpos
  obtain ⟨test, htest, hzero⟩ := baseGram_exists_kernel N hN τ s hdim
  simpa [hzero] using hpos.dotProduct_mulVec_pos htest

theorem arithmeticGram_not_posDef {ι : Type u} [Fintype ι]
    (N : ℕ) (hN : 2 ≤ N) (τ : ℝ) (level : ι → ℕ)
    (χ : ∀ i, DirichletCharacter ℂ (level i)) (s : ι → ℂ)
    (hdim : N - 1 < Fintype.card ι) : ¬ (arithmeticGram N τ level χ s).PosDef := by
  intro hpos
  obtain ⟨test, htest, hzero⟩ := arithmeticGram_exists_kernel N hN τ level χ s hdim
  simpa [hzero] using hpos.dotProduct_mulVec_pos htest

end

end GRWTSK.Algebra.LinearAlgebra.MatrixTheory.ArithmeticFeatureGramRank
