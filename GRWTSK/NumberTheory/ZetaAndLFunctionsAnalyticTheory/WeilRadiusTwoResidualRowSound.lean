/-
Copyright (c) 2026 grwtsk contributors.
Released under the MIT license as described in the repository LICENSE.
Authors: grwtsk contributors
-/
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.WeilRadiusTwoCandidateEntries

/-!
# Radius-two residual observations by physical row

A residual row uses its own pole and prime signal, the trial-mode prime
signals, and its archimedean entries. The diagonal inputs are needed only
when the row mode is inside the trial support. This allows an observation
block outside that support to return its literal bounds independently of
the diagonal replay. The pole entry and the shift on overlapping physical
coordinates use the original source.

The comparison is for an individual observed row. Its use in a complete
window requires all observed rows and the remote allowance. Independent
mathematical review is pending.
-/

set_option autoImplicit false

namespace GRWTSK.NumberTheory.WeilQuadraticForm.RadiusTwoCandidateEntries

open OddResidualSourceComparison OddTrialResidualMatrix OddRootProjection LowSchur
open RadiusTwoPrimeObservations
open GRWTSK.Algebra.LinearAlgebra.RationalRealBounds

/-- Physical sine mode of an observed row. -/
abbrev residualMode (i : ResidualRows) : ℕ := 65 + i.val

/-- Source obligations restricted to the inputs of one observed row. -/
structure ResidualRowSound (t : ScalarTables) (i : ResidualRows) : Prop where
  gammaOffDiagonal : ∀ j : Fin 512, residualMode i ≠ j.val + 1 →
    Encloses (t.gammaOffDiagonal (residualMode i) (j.val + 1))
      (sineArchimedeanEntry 2 (gammaConstant 1 0) 0 (residualMode i) (j.val + 1))
  diagonal : residualMode i ≤ 512 →
    Encloses (sub (t.gammaDiagonal (residualMode i)) (t.primeDiagonal (residualMode i)))
      (literalCoreEntry 2 (residualMode i) (residualMode i))
  pole : Encloses (t.pole (residualMode i)) (literalPoleEntry 2 (residualMode i))
  primeAtRow : Encloses (t.prime (residualMode i)) (primeSignal 2 (residualMode i : ℝ))
  primeAtTrial : ∀ j : Fin 512,
    Encloses (t.prime (j.val + 1)) (primeSignal 2 ((j.val + 1 : ℕ) : ℝ))

/-- Full scalar soundness supplies each local collection of source observations. -/
theorem ScalarTables.Sound.residualRow {t : ScalarTables} (ht : t.Sound) (i : ResidualRows) :
    ResidualRowSound t i := by
  have hi := i.isLt
  have hm : 0 < residualMode i := by unfold residualMode; omega
  have hm' : residualMode i ≤ 2048 := by unfold residualMode; omega
  refine ⟨?_, ?_, ht.pole _ hm hm', ht.prime _ hm hm', ?_⟩
  · intro j hne
    have hj := j.isLt
    exact ht.gammaOffDiagonal _ _ hm (by omega) hm' (by omega) hne
  · intro h
    simp only [literalCoreEntry]
    exact sub_sound (ht.gammaDiagonal _ hm h) (ht.primeDiagonal _ hm h)
  · intro j
    have hj := j.isLt
    exact ht.prime _ (by omega) (by omega)

/-- The exact rectangular source entry follows from this row's scalar comparisons. -/
theorem ResidualRowSound.bounds {t : ScalarTables} {i : ResidualRows}
    (ht : ResidualRowSound t i) (bits : ℕ) (j : Trial) :
    Encloses (residualBoundsFrom bits t i j)
      (literalTrialResidualMatrix 2 (-1 / 2) 64 512 2048 i j) := by
  rcases j with j | ⟨⟩
  · change Encloses (physicalBoundsFrom bits t (residualMode i) (j.val + 1))
      (literalCoreEntry 2 (residualMode i) (j.val + 1) -
        (if residualMode i = j.val + 1 then (-1 / 2 : ℝ) else 0))
    unfold physicalBoundsFrom
    apply round_sound
    split_ifs with h
    · have hj := j.isLt
      rw [← h]
      rw [show (-1 : ℝ) / 2 = -(1 / 2) by ring, sub_neg_eq_add]
      simpa only [Rat.cast_div, Rat.cast_one, Rat.cast_ofNat] using
        add_sound (ht.diagonal (by omega)) (point_sound (1 / 2 : ℚ))
    · unfold literalCoreEntry
      simpa only [sub_zero] using sub_sound (ht.gammaOffDiagonal j h)
        (primeOffDiagonalBoundsFrom_sound (by unfold residualMode; omega) (by omega) h
          ht.primeAtRow (ht.primeAtTrial j))
  · exact ht.pole

/-- Midpoint and radius enclose each literal entry of the checked row. -/
theorem ResidualRowSound.entryAbs_le {t : ScalarTables} {i : ResidualRows}
    (ht : ResidualRowSound t i) (bits : ℕ) (j : Trial) :
    |literalTrialResidualMatrix 2 (-1 / 2) 64 512 2048 i j - (residualCenters bits t i j : ℝ)| ≤
      (residualRadii bits t i j : ℝ) := by
  obtain ⟨hLo, hHi⟩ := ht.bounds bits j
  rw [abs_le]
  push_cast [residualCenters, residualRadii]
  exact ⟨by linarith only [hLo], by linarith only [hHi]⟩

end GRWTSK.NumberTheory.WeilQuadraticForm.RadiusTwoCandidateEntries
