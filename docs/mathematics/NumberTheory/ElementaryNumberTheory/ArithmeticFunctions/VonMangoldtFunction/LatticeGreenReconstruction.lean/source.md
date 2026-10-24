# Complete source: GRWTSK.NumberTheory.VonMangoldt.LatticeGreenReconstruction

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `79567f164b371dfa37c94802004d9d1b6bc9d8bb` · SHA-256 `dcea966b8245515987dbaade6af0c7c65604da63a1ea82a962d19e04eb1f6e60`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Copyright (c) 2026 grwtsk contributors. Released under the MIT license.
Research direction: grwtsk contributors. Formalization assistance: ChatGPT.
Status: candidate proof source, NOT elaborated in the pinned environment.
-/
import GRWTSK.NumberTheory.VonMangoldt.LatticeCellSource

/-! # Exact integer-lattice Green reconstruction
The continuous mesh defect depends only on log(1+t), not on the prime weights.
The quantitative mesh bound is supplied as a paper proof in MATHEMATICS.md;
it is not claimed as a compiled theorem or an arithmetic all-scale bound.
-/
set_option autoImplicit false
noncomputable section
open MeasureTheory Set
open scoped BigOperators
namespace GRWTSK.NumberTheory.VonMangoldt.LatticeGreenReconstruction
open GRWTSK.Analysis.GreenKernel.UnitInterval
open GRWTSK.Analysis.Integral.UnitIntervalPrimitives
open GRWTSK.NumberTheory.VonMangoldt.DyadicDiscrepancy
open GRWTSK.NumberTheory.VonMangoldt.CenteredReadout
open GRWTSK.NumberTheory.VonMangoldt.LatticeCellSource
open GRWTSK.Analysis.FiniteSum.DyadicVariance

def cellSquare (X k : ℕ) (c : ℝ) : ℝ :=
  cellPrimitive (prefix X k-c) (1+edge X (k+1))-
  cellPrimitive (prefix X k-c) (1+edge X k)

def cellLogDefect (X k : ℕ) : ℝ :=
  cellPrimitive 0 (1+edge X (k+1))-
  cellPrimitive 0 (1+edge X k)-(cellMeanLog X k)^2/(X:ℝ)

def logMeshDefect (X : ℕ) : ℝ := ∑ k∈Finset.range X, cellLogDefect X k

def latticeCoarseGreen (X : ℕ) : ℝ :=
  (∑ k∈Finset.range X, (cellMeanSource X k-center X)^2)/(X:ℝ)

def latticeCompleteEnergy (X : ℕ) : ℝ :=
  latticeCoarseGreen X+(mass0 X)^2+(mass1 X)^2

/-- One-cell identity with its complete signed source and common log defect. -/
theorem cell_square_completion {X : ℕ} (hX : 0<X) (k : ℕ) (c : ℝ) :
    cellSquare X k c=(cellMeanSource X k-c)^2/(X:ℝ)+cellLogDefect X k := by
  have hx : (X:ℝ)≠0 := by exact_mod_cast Nat.ne_of_gt hX
  have hw : (1+edge X (k+1))-(1+edge X k)=1/(X:ℝ) := by
    linarith [edge_width hX k]
  have h := primitive_completion (prefix X k-c) (X:ℝ)
    (1+edge X k) (1+edge X (k+1))
    (Real.log (1+edge X k)) (Real.log (1+edge X (k+1))) hx hw
  unfold cellSquare cellLogDefect cellMeanSource cellMeanLog cellPrimitive logPrimitive
  convert h using 1 <;> ring

/-- Integrability inherited from the actual source, then restricted to the cell. -/
theorem source_square_intervalIntegrable {X k : ℕ} (hX : 0<X) (hk : k<X) (c : ℝ) :
    IntervalIntegrable (fun t ↦ (cumulative X t-c)^2) volume
      (edge X k) (edge X (k+1)) := by
  have hsq := GRWTSK.MeasureTheory.Integral.Centering.shifted_square_integrable
    unitVolume (cumulative X) c (cumulative_integrable X) (cumulative_square_integrable X)
  change IntegrableOn (fun t ↦ (cumulative X t-c)^2) (Icc (0:ℝ) 1) at hsq
  have hu := edges_in_unit hX hk
  have hsub : Icc (edge X k) (edge X (k+1)) ⊆ Icc (0:ℝ) 1 := by
    intro t ht
    exact ⟨hu.1.trans ht.1, ht.2.trans hu.2⟩
  apply IntegrableOn.intervalIntegrable
  simpa [uIcc_of_le (edge_lt_next hX k).le] using hsq.mono_set hsub

/-- Every cell is present exactly once; the endpoints only vanish in the integral. -/
theorem green_eq_sum_cellSquares {X : ℕ} (hX : 0<X) :
    greenEnergy X=∑ k∈Finset.range X, cellSquare X k (center X) := by
  have hsum := intervalIntegral.sum_integral_adjacent_intervals
    (a := edge X) (n := X)
    (fun k hk ↦ source_square_intervalIntegrable hX hk (center X))
  have hright :
      (∑ k∈Finset.range X, ∫ t in edge X k..edge X (k+1),
        (cumulative X t-center X)^2)=
      ∑ k∈Finset.range X, cellSquare X k (center X) := by
    apply Finset.sum_congr rfl
    intro k hk
    exact integral_square_cell hX (Finset.mem_range.mp hk) (center X)
  rw [hright, edge_zero, edge_last hX] at hsum
  unfold greenEnergy
  rw [unit_integral_eq_interval]
  exact hsum.symm

/-- Source-specific exact lattice decomposition, with no source-norm hypothesis. -/
theorem green_eq_lattice_plus_logDefect {X : ℕ} (hX : 0<X) :
    greenEnergy X=latticeCoarseGreen X+logMeshDefect X := by
  rw [green_eq_sum_cellSquares hX]
  simp_rw [cell_square_completion hX, Finset.sum_add_distrib]
  unfold latticeCoarseGreen logMeshDefect
  rw [Finset.sum_div]

/-- Both boundary moments remain unchanged in the complete return. -/
theorem augmented_eq_lattice_plus_logDefect {X : ℕ} (hX : 0<X) :
    augmentedEnergy X=latticeCompleteEnergy X+logMeshDefect X := by
  unfold augmentedEnergy latticeCompleteEnergy
  rw [green_eq_lattice_plus_logDefect hX]
  ring

end GRWTSK.NumberTheory.VonMangoldt.LatticeGreenReconstruction
```
