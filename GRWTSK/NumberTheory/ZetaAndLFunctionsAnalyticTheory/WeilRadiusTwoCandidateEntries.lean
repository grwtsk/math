/-
Copyright (c) 2026 grwtsk contributors.
Released under the MIT license as described in the repository LICENSE.
Authors: grwtsk contributors
-/
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.WeilRadiusTwoPrimeObservations
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.WeilOddTrialResidualMatrix

/-!
# Radius-two retained and rectangular residual observations

The candidate retains 64 physical modes, reconstructs through mode 512,
and observes every remaining row through mode 2048. The scalar tables
provide outward enclosures of the literal diagonal and off-diagonal
gamma entries, the pole, and the prime signals. The physical shift is
`-1/2`, including the diagonals where the trial and residual row ranges
overlap. The signed pole column
and scalar corner retain their source values. The rectangular source
identity propagates the enclosure through an arbitrary reconstruction.
Independent mathematical review is pending.
-/

set_option autoImplicit false
noncomputable section

namespace GRWTSK.NumberTheory.WeilQuadraticForm.RadiusTwoCandidateEntries

open Matrix
open OddRootProjection OddResidualSourceComparison
open OddSchurAccounting OddTrialResidualMatrix OddInclusionWindow LowSchur
open RadiusTwoPrimeObservations
open GRWTSK.Algebra.LinearAlgebra.RationalRealBounds
open GRWTSK.LinearAlgebra.SchurObserver

abbrev Head := Fin 64 ⊕ Unit
abbrev Trial := Fin 512 ⊕ Unit
abbrev ResidualRows := Fin (2048 - 64)

/-- Reusable scalar observations, which may be stored in finite tables. -/
structure ScalarTables where
  gammaOffDiagonal : ℕ → ℕ → Bounds
  gammaDiagonal : ℕ → Bounds
  pole : ℕ → Bounds
  prime : ℕ → Bounds
  primeDiagonal : ℕ → Bounds

structure ScalarTables.Sound (t : ScalarTables) : Prop where
  gammaOffDiagonal : ∀ m n, 0 < m → 0 < n → m ≤ 2048 → n ≤ 512 → m ≠ n →
    Encloses (t.gammaOffDiagonal m n) (sineArchimedeanEntry 2 (gammaConstant 1 0) 0 m n)
  gammaDiagonal : ∀ n, 0 < n → n ≤ 512 → Encloses (t.gammaDiagonal n)
    (sineArchimedeanEntry 2 (gammaConstant 1 0) 0 n n)
  pole : ∀ n, 0 < n → n ≤ 2048 → Encloses (t.pole n) (literalPoleEntry 2 n)
  prime : ∀ n, 0 < n → n ≤ 2048 → Encloses (t.prime n) (primeSignal 2 (n : ℝ))
  primeDiagonal : ∀ n, 0 < n → n ≤ 512 → Encloses (t.primeDiagonal n)
    (∑ q ∈ activePrimePowers 2, primeWeight q * sineShiftEntry 2 n n (Real.log q))

/-- Supply the three gamma and pole tables and use the checked prime endpoints. -/
def scalarTablesFrom (bits : ℕ) (gammaOffDiagonal : ℕ → ℕ → Bounds)
    (gammaDiagonal pole : ℕ → Bounds) : ScalarTables :=
  ⟨gammaOffDiagonal, gammaDiagonal, pole, primeSignalBounds bits, primeDiagonalBounds bits⟩

theorem scalarTablesFrom_sound (bits : ℕ) {gammaOffDiagonal : ℕ → ℕ → Bounds}
    {gammaDiagonal pole : ℕ → Bounds}
    (ho : ∀ m n, 0 < m → 0 < n → m ≤ 2048 → n ≤ 512 → m ≠ n →
      Encloses (gammaOffDiagonal m n) (sineArchimedeanEntry 2 (gammaConstant 1 0) 0 m n))
    (hg : ∀ n, 0 < n → n ≤ 512 → Encloses (gammaDiagonal n)
      (sineArchimedeanEntry 2 (gammaConstant 1 0) 0 n n))
    (hp : ∀ n, 0 < n → n ≤ 2048 → Encloses (pole n) (literalPoleEntry 2 n)) :
    (scalarTablesFrom bits gammaOffDiagonal gammaDiagonal pole).Sound :=
  ⟨ho, hg, hp, fun n _ _ => primeSignalBounds_sound bits n,
    fun _ hn _ => primeDiagonalBounds_sound bits hn⟩

/-- The shifted physical enclosure for the head and for trial-overlap rows. -/
def physicalBoundsFrom (bits : ℕ) (t : ScalarTables) (m n : ℕ) : Bounds :=
  round bits (if m = n then
    add (sub (t.gammaDiagonal n) (t.primeDiagonal n)) (point (1 / 2))
  else sub (t.gammaOffDiagonal m n) (primeOffDiagonalBoundsFrom t.prime m n))

theorem physicalBoundsFrom_sound (bits : ℕ) {t : ScalarTables} (ht : t.Sound) {m n : ℕ}
    (hm : 0 < m) (hn : 0 < n) (hm' : m ≤ 2048) (hn' : n ≤ 512) :
    Encloses (physicalBoundsFrom bits t m n)
      (literalCoreEntry 2 m n - (if m = n then (-1 / 2 : ℝ) else 0)) := by
  unfold physicalBoundsFrom literalCoreEntry
  apply round_sound
  split_ifs with hmn
  · subst m
    rw [show (-1 : ℝ) / 2 = -(1 / 2) by ring, sub_neg_eq_add]
    simpa using add_sound (sub_sound (ht.gammaDiagonal n hn hn') (ht.primeDiagonal n hn hn'))
      (point_sound (1 / 2 : ℚ))
  · simpa only [sub_zero] using sub_sound
      (ht.gammaOffDiagonal m n hm hn hm' hn' hmn)
      (primeOffDiagonalBoundsFrom_sound hm hn hmn (ht.prime m hm hm') (ht.prime n hn (by omega)))

/-- The same recipe supplies the retained head and the larger reconstruction head. -/
def headBoundsFrom (bits : ℕ) (t : ScalarTables) {P : ℕ} :
    (Fin P ⊕ Unit) → (Fin P ⊕ Unit) → Bounds
  | .inl i, .inl j => physicalBoundsFrom bits t (i.val + 1) (j.val + 1)
  | .inl i, .inr _ => t.pole (i.val + 1)
  | .inr _, .inl j => t.pole (j.val + 1)
  | .inr _, .inr _ => point (1 / 2)

theorem headBoundsFrom_sound (bits : ℕ) {t : ScalarTables} (ht : t.Sound)
    {P : ℕ} (hP : P ≤ 512) (i j : Fin P ⊕ Unit) :
    Encloses (headBoundsFrom bits t i j)
      (shiftedBlock (borderedSourceMatrix 2 P) poleShiftMetric (-1 / 2) i j) := by
  rcases i with i | ⟨⟩ <;> rcases j with j | ⟨⟩
  · rw [shiftedBordered_physicalEntry 2 (by norm_num) i j (-1 / 2)]
    have hij : (i.val + 1 = j.val + 1) ↔ i = j := by simp [Fin.ext_iff]
    have hi := i.isLt
    have hj := j.isLt
    simpa only [headBoundsFrom, hij] using physicalBoundsFrom_sound bits ht
      (m := i.val + 1) (n := j.val + 1) (by omega) (by omega) (by omega) (by omega)
  · rw [shiftedBordered_poleColumn 2 i (-1 / 2)]
    exact ht.pole (i.val + 1) (by omega) (by have := i.isLt; omega)
  · have hEntry : shiftedBlock (borderedSourceMatrix 2 P) poleShiftMetric (-1 / 2)
        (Sum.inr ()) (Sum.inl j) = literalPoleEntry 2 (j.val + 1) := by
      rw [borderedSourceMatrix, shiftedBlock_poleBorderedBlock]
      rfl
    rw [hEntry]
    exact ht.pole (j.val + 1) (by omega) (by have := j.isLt; omega)
  · have hEntry : shiftedBlock (borderedSourceMatrix 2 P) poleShiftMetric (-1 / 2)
        (Sum.inr ()) (Sum.inr ()) = 1 / 2 := by
      rw [borderedSourceMatrix, shiftedBlock_poleBorderedBlock]
      rfl
    rw [hEntry]
    simpa only [headBoundsFrom, Rat.cast_div, Rat.cast_one, Rat.cast_ofNat] using point_sound (1 / 2 : ℚ)

/-- Observe all 1984 residual rows and all 513 trial coordinates. -/
def residualBoundsFrom (bits : ℕ) (t : ScalarTables) (i : ResidualRows) : Trial → Bounds
  | .inl j => physicalBoundsFrom bits t (64 + 1 + i.val) (j.val + 1)
  | .inr _ => t.pole (64 + 1 + i.val)

theorem residualBoundsFrom_sound (bits : ℕ) {t : ScalarTables} (ht : t.Sound)
    (i : ResidualRows) (j : Trial) :
    Encloses (residualBoundsFrom bits t i j) (literalTrialResidualMatrix 2 (-1 / 2) 64 512 2048 i j) := by
  have hi := i.isLt
  rcases j with j | ⟨⟩
  · have hj := j.isLt
    exact physicalBoundsFrom_sound bits ht (m := 64 + 1 + i.val) (n := j.val + 1)
      (by omega) (by omega) (by omega) (by omega)
  · exact ht.pole (64 + 1 + i.val) (by omega) (by omega)

def residualCenters (bits : ℕ) (t : ScalarTables) : Matrix ResidualRows Trial ℚ :=
  fun i j => ((residualBoundsFrom bits t i j).1 + (residualBoundsFrom bits t i j).2) / 2

def residualRadii (bits : ℕ) (t : ScalarTables) : Matrix ResidualRows Trial ℚ :=
  fun i j => ((residualBoundsFrom bits t i j).2 - (residualBoundsFrom bits t i j).1) / 2

theorem residualEntryAbs_le (bits : ℕ) {t : ScalarTables} (ht : t.Sound)
    (i : ResidualRows) (j : Trial) :
    |literalTrialResidualMatrix 2 (-1 / 2) 64 512 2048 i j - (residualCenters bits t i j : ℝ)| ≤
      (residualRadii bits t i j : ℝ) := by
  obtain ⟨hLo, hHi⟩ := residualBoundsFrom_sound bits ht i j
  rw [abs_le]
  push_cast [residualCenters, residualRadii]
  exact ⟨by linarith only [hLo], by linarith only [hHi]⟩

/-- Propagate the full rectangular observation through the supplied reconstruction. -/
theorem residualReconstructionErrorSq_le (bits : ℕ) {t : ScalarTables} (ht : t.Sound)
    (X : Matrix Trial Head ℝ) (v : Head → ℝ) :
    let O := (residualCenters bits t).map ((↑) : ℚ → ℝ)
    let E := (residualRadii bits t).map ((↑) : ℚ → ℝ)
    (∑ i : ResidualRows,
      (literalAugmentedRow 512 2 (inclusionTrial (X.mulVec v ∘ Sum.inl))
        (X.mulVec v (Sum.inr ())) (-1 / 2) (64 + 1 + i.val) - (O * X).mulVec v i) ^ 2) ≤
      (∑ i : ResidualRows, ∑ j : Head, ((E * Matrix.of (fun k l => |X k l|)) i j) ^ 2) *
        (∑ j : Head, (v j) ^ 2) := by
  dsimp only
  exact literalTrialResidualErrorSq_reconstruction_le 2 (-1 / 2) X _ _ v
    (fun i j => literalTrialResidual_mul_entry_radius 2 (-1 / 2) X _ _
      (residualEntryAbs_le bits ht) i j)

end GRWTSK.NumberTheory.WeilQuadraticForm.RadiusTwoCandidateEntries
