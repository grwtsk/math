# Complete source: GRWTSK.CombinatoricsAndDiscreteMathematics.SourceStorageDescent.Variant4fc5ff34a9a4542255106800cd5622bf1f939be2a7da10c992c89c80b3fcd24b

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `f90b39b5be37527e38eb4be69fe78258b705c1bc` · SHA-256 `4fc5ff34a9a4542255106800cd5622bf1f939be2a7da10c992c89c80b3fcd24b`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import FormalResearch.PositiveAtlas.StorageDescent
import FormalResearch.RiemannHypothesis.SourceKapitzaSignedReduction

/-!
# Constant block gauges for the actual closed Kapitza source

The gauge is the signed cumulative energy jump of the native physical cells.
It makes adjacent corrected traces agree, and moves every prime-power event
and cross term into the terminal value. This construction prices no cancelling
sector separately. The final uniform compensated arithmetic cap remains open.

Direction and evaluation: grwtsk contributors. Formalization: OpenAI Codex.
-/

namespace FormalResearch.PositiveAtlas.SourceStorageDescent

noncomputable section

open FormalResearch.RiemannHypothesis
open SourcePairing SourceKapitzaEventBalance SourceKapitzaReconstruction
open SourceKapitzaSourceStorage SourceKapitzaStorage SourceKapitzaSignedReduction
open SourceKapitzaCompensatedReadout
open FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry
open Realization EstimateMertensResidual EstimatePrimeSmoothDefect

/-- Cap the terminal chart at the actual closed inventory, never at an invented next atom. -/
def localEnergy (A : ℝ) (j : ℕ) (s : ℝ) : ℝ :=
  frozenEnergy A (min (j + 1) (cutoff A)) s

def switchEnergy (A : ℝ) (j : ℕ) : ℝ :=
  localEnergy A (j + 1) (node A (j + 1)) - localEnergy A j (node A (j + 1))

/-- The chart gauge sums signed native jumps. It has no absolute-sum premise. -/
def blockGauge (A : ℝ) (j : ℕ) : ℝ := ∑ k ∈ Finset.range j, switchEnergy A k

def correctedEnergy (A : ℝ) (j : ℕ) (s : ℝ) : ℝ :=
  localEnergy A j s - blockGauge A j

theorem blockGauge_succ (A : ℝ) (j : ℕ) :
    blockGauge A (j + 1) = blockGauge A j + switchEnergy A j :=
  Finset.sum_range_succ _ _

/-- Every actual seam has matching corrected energy traces. -/
theorem correctedEnergy_seam (A : ℝ) (j : ℕ) :
    correctedEnergy A (j + 1) (node A (j + 1)) =
      correctedEnergy A j (node A (j + 1)) := by
  unfold correctedEnergy
  rw [blockGauge_succ]
  unfold switchEnergy
  ring

/-- The native local calculus gives the corrected cell drop, with its full signed remainder. -/
theorem corrected_cell_balance (A : ℝ) (hA : 1 ≤ A) (j : ℕ) (hj : j < cutoff A) :
    (∫ s in node A j..node A (j + 1),
      kapitzaWeight A s * frozenState A (j + 1) s) =
      correctedEnergy A j (node A j) - correctedEnergy A j (node A (j + 1)) +
        ∫ s in node A j..node A (j + 1), smoothBalance A (j + 1) s := by
  have hc := frozen_cell_balance A (j + 1) (node A j) (node A (j + 1)) hA
  have hm : min (j + 1) (cutoff A) = j + 1 := min_eq_left (by omega)
  unfold correctedEnergy localEnergy
  rw [hm]
  linarith only [hc]

/-- Actual chart-contained source blocks have a global signed terminal telescope. -/
theorem nonaffineWork_corrected_terminal (A : ℝ) (hA : 1 ≤ A) :
    nonaffineWork A = correctedEnergy A 0 (node A 0) -
      correctedEnergy A (cutoff A) (node A (cutoff A)) + totalSmoothWork A := by
  have hc := actual_cell_partition A (by linarith) (kapitzaWeight A)
    (kapitzaWeight_continuous A (by linarith))
  change nonaffineWork A = _ at hc
  rw [hc]
  have ht := StorageDescent.switched_sum (correctedEnergy A) id (node A) (cutoff A)
  simp only [id_eq, correctedEnergy_seam, sub_self, Finset.sum_const_zero, add_zero] at ht
  calc
    _ = ∑ j ∈ Finset.range (cutoff A),
        (correctedEnergy A j (node A j) - correctedEnergy A j (node A (j + 1)) +
          ∫ s in node A j..node A (j + 1), smoothBalance A (j + 1) s) := by
      apply Finset.sum_congr rfl
      intro j hj
      exact corrected_cell_balance A hA j (Finset.mem_range.mp hj)
    _ = _ := by rw [Finset.sum_add_distrib, ht]; rfl

/-- The correction pays exactly the original signed event sector, including quadratic atoms. -/
theorem terminalGauge_eq_events (A : ℝ) (hA : 1 ≤ A) :
    blockGauge A (cutoff A) = totalEventWork A + totalQuadraticWork A := by
  have hc := nonaffineWork_corrected_terminal A hA
  have hn : 1 ≤ cutoff A := by
    unfold cutoff
    exact (Nat.one_le_floor_iff _).mpr (Real.one_le_exp (by linarith))
  have hi : localEnergy A 0 (node A 0) = sourceStorage A 0 := by
    rw [node_zero A (by linarith)]
    unfold localEnergy
    rw [min_eq_left hn]
    exact frozenEnergy_initial A
  have he : localEnergy A (cutoff A) (node A (cutoff A)) = 0 := by
    rw [node_cutoff A (by linarith)]
    unfold localEnergy
    rw [min_eq_right (Nat.le_succ _)]
    exact frozenEnergy_terminal A
  have hb : blockGauge A 0 = 0 := by simp [blockGauge]
  unfold correctedEnergy at hc
  rw [hi, he, hb] at hc
  have hc' := nonaffineWork_complete_balance A hA
  linarith only [hc, hc']

/-- The actual terminal expression includes the transported initial energy and all remainders. -/
theorem combinedTerminal_eq_corrected (A : ℝ) (hA : 1 ≤ A) :
    combinedTerminalWork A + totalQuadraticWork A =
      trendValue A + correctedEnergy A 0 (node A 0) -
        correctedEnergy A (cutoff A) (node A (cutoff A)) + totalSmoothWork A := by
  have hc := nonaffineWork_corrected_terminal A hA
  have hc' := nonaffineWork_complete_balance A hA
  unfold combinedTerminalWork
  linarith only [hc, hc']

/-- The terminal quantity includes the already finite quadratic impulses. -/
def terminalCost (A : ℝ) : ℝ :=
  trendValue A + correctedEnergy A 0 (node A 0) -
    correctedEnergy A (cutoff A) (node A (cutoff A)) + totalSmoothWork A

theorem terminalCost_eq_compensated (A : ℝ) (hA : 1 ≤ A) :
    terminalCost A = compensatedSourceSum A - 1 + quadratureError A := by
  rw [terminalCost, ← combinedTerminal_eq_corrected A hA]
  exact combined_terminal_eq_compensated A hA

/-- A finite radius prices quadrature at 10/R, retaining cancellation of the unit traces. -/
theorem terminalCost_le_of_compensated (R A B : ℝ) (hR : 1 ≤ R) (hRA : R ≤ A)
    (hS : compensatedSourceSum A ≤ B) : terminalCost A ≤ B + 10 / R := by
  have hA := hR.trans hRA
  have hd := (abs_le.mp (quadratureError_abs_le A hA)).2
  have hi : 10 / A ≤ 10 / R :=
    div_le_div_of_nonneg_left (by norm_num) (by linarith) hRA
  rw [terminalCost_eq_compensated A hA]
  linarith only [hS, hd, hi]

theorem compensated_le_of_terminalCost (R A B : ℝ) (hR : 1 ≤ R) (hRA : R ≤ A)
    (hT : terminalCost A ≤ B) : compensatedSourceSum A ≤ B + 2 + 10 / R := by
  have hA := hR.trans hRA
  have hd := (abs_le.mp (quadratureError_abs_le A hA)).1
  have hi : 10 / A ≤ 10 / R :=
    div_le_div_of_nonneg_left (by norm_num) (by linarith) hRA
  rw [terminalCost_eq_compensated A hA] at hT
  linarith only [hT, hd, hi]

/-- The exact consumer prices the complete terminal cost once, without an extra impulse loss. -/
theorem original_lower_of_corrected_terminal (R B : ℝ) (hR : 1 ≤ R)
    (hbudget : ∀ A : ℝ, R ≤ A → terminalCost A ≤ B) :
    ∀ A : ℝ, 1 ≤ A →
      min (originalPrefixFloor R)
        (archimedeanMultiplier 0 + 2 - 2 * B - 2 * continuousDefect R) ≤
          sourceQuadraticValue explicitSecondDerivative A := by
  intro A hA
  by_cases hRA : R ≤ A
  · have hr := native_residual_complete_balance A hA
    have ht := combinedTerminal_eq_corrected A hA
    change combinedTerminalWork A + totalQuadraticWork A = terminalCost A at ht
    have hb := hbudget A hRA
    have hd := continuousDefect_antitone (by linarith : 0 ≤ R) hRA
    have ha := SourceCorrectionEstimate.actual_archimedean_lower A hA
    have hp : primePowerContribution explicitSecondDerivative A = mertensResidual A := by
      rw [primePowerContribution_eq_closedPrimeMoment A hA,
        mertensResidual_eq_closedPrimeMoment A hA]
    apply (min_le_right _ _).trans
    unfold sourceQuadraticValue
    rw [hp]
    linarith only [hr, ht, hb, hd, ha]
  · exact (min_le_left _ _).trans
      (originalPrefixFloor_le R A hA (le_of_not_ge hRA))

/-- A uniform bound on the one combined terminal expression reaches
the unchanged #16 target.
This hypothesis is the remaining arithmetic provider; the cap itself is open. -/
theorem estimate_of_corrected_terminal_budget (R B : ℝ) (hR : 1 ≤ R)
    (hbudget : ∀ A : ℝ, R ≤ A →
      trendValue A + correctedEnergy A 0 (node A 0) -
        correctedEnergy A (cutoff A) (node A (cutoff A)) + totalSmoothWork A ≤ B) :
    CorrelationAssembly.EstimateObligation := by
  exact ⟨_, original_lower_of_corrected_terminal R B hR hbudget⟩

theorem terminal_tail_iff_compensated_tail :
    (∃ R : ℝ, 1 ≤ R ∧ ∃ B : ℝ, ∀ A : ℝ, R ≤ A → terminalCost A ≤ B) ↔
      CompensatedTailUpperBound := by
  constructor
  · rintro ⟨R, hR, B, hB⟩
    exact ⟨R, hR, B + 2 + 10 / R, fun A hRA =>
      compensated_le_of_terminalCost R A B hR hRA (hB A hRA)⟩
  · rintro ⟨R, hR, B, hB⟩
    exact ⟨R, hR, B + 10 / R, fun A hRA =>
      terminalCost_le_of_compensated R A B hR hRA (hB A hRA)⟩

end
end FormalResearch.PositiveAtlas.SourceStorageDescent
```
