/-
Copyright (c) 2026 grwtsk contributors.
Released under the MIT license as described in the repository LICENSE.
Authors: grwtsk contributors
-/
import GRWTSK.LinearAndMultilinearAlgebraMatrixTheory.BasicLinearAlgebra.StructuredSchurPackedArchive
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.WeilRadiusTwoAggregateSchurBudget

/-!
# Packed geometric Schur price for the radius-two window

The literal pivot at offset `i` has squared node `(65+i)^2`.
The column weight uses its difference from `400000^2`, multiplied
by the original grid factor and the decoded column multiplier. The
generator weight adds the four unsigned magnitude caps. The positional
archive sum therefore gives the two existing geometric price totals
of the same compact tape, with zero column span at the final pivot.

A checked inequality on the two integer totals pays the real geometric
price of that tape. Archive input, its numerical inequality, exact seed
comparison, and complete recurrence checks are separate premises of the
radius-two high-floor return. Independent mathematical review is pending.
-/

set_option autoImplicit false

namespace GRWTSK.NumberTheory.WeilQuadraticForm.RadiusTwoPackedSchurBudget

open GRWTSK.Algebra.LinearAlgebra
open StructuredSchurIntegerReplay StructuredSchurCompactReplay
open PackedRadixFold RadiusTwoAggregateSchurBudget
open scoped BigOperators

/-- The fixed column price weight at a literal pivot offset. -/
def columnWeight (offset : ℕ) (caps : StepPrices 2) : ℕ :=
  ((400000^2 - (65 + (offset : ℤ))^2) * (2^21 : ℤ)).toNat * caps.colMul

/-- The sum of the four recorded generator magnitude caps. -/
def generatorWeight (caps : StepPrices 2) : ℕ :=
  caps.maxV 0 + caps.maxU 0 + caps.maxV 1 + caps.maxU 1

/-- Use the same price projection for every record of the literal tape. -/
def recordWeight (offset word : ℕ) : ℕ × ℕ :=
  let caps := PackedWords.caps word
  (columnWeight offset caps, generatorWeight caps)

/-- The complete compact tape for the literal radius-two pivot grid. -/
def tape (archive : Archive 0 399936) : Tape 2 399936 :=
  archive.tape (fun i => (65 + (i.val : ℤ))^2)

private theorem pair_sum_range (n : ℕ) (f g : ℕ → ℕ) :
    ((∑ j ∈ Finset.range n, f j), (∑ j ∈ Finset.range n, g j)) =
      ((∑ i : Fin n, f i.val), (∑ i : Fin n, g i.val)) := by
  rw [Fin.sum_univ_eq_sum_range f n, Fin.sum_univ_eq_sum_range g n]

/-- The positional price sums are the existing column and generator totals of the tape. -/
theorem tapeTotals (archive : Archive 0 399936) :
    Archive.totals recordWeight archive =
      (columnTotal (tape archive).caps, generatorTotal (tape archive).caps) := by
  rw [Archive.totals_eq]
  simp only [Nat.zero_add, recordWeight]
  exact pair_sum_range 399936
    (fun j => columnWeight j (PackedWords.caps (archive.record j)))
    (fun j => generatorWeight (PackedWords.caps (archive.record j)))

/-- A checked pair of archive totals gives the integer budget used by the high-floor return. -/
theorem budgetCheck (cert : CertifiedArchive recordWeight 0 399936)
    (paid : 1000 * totalNumerator cert.totals.1 cert.totals.2 ≤ 39 * (500 * 2^80)) :
    1000 * totalNumerator (columnTotal (tape cert.archive).caps)
      (generatorTotal (tape cert.archive).caps) ≤ 39 * (500 * 2^80) := by
  simpa only [← cert.checked, tapeTotals] using paid

/-- The checked integer budget pays the real geometric price of the same tape. -/
theorem tapePriceSum_le (cert : CertifiedArchive recordWeight 0 399936)
    (paid : 1000 * totalNumerator cert.totals.1 cert.totals.2 ≤ 39 * (500 * 2^80)) :
    ∑ i, price (((tape cert.archive).withGeometricCaps (400000^2)).caps i) ≤ (39/1000 : ℝ) :=
  tapePriceSum_le_of_totals (tape cert.archive) (fun _ => rfl) (budgetCheck cert paid)

end GRWTSK.NumberTheory.WeilQuadraticForm.RadiusTwoPackedSchurBudget
