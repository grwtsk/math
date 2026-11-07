/-
Copyright (c) 2026 grwtsk contributors.
Released under the MIT license as described in the repository LICENSE.
Authors: grwtsk contributors
-/
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.WeilRadiusTwoCompactGaugeBinding

/-!
# Exact aggregate geometric Schur budget

The geometric price is affine in two sums. One sum pairs the squared
node spans with the recorded column multipliers. The other adds the
four recorded generator magnitude caps over all pivots. The remaining
charge comes from the unit correction radii.

The archived tape has larger generator caps near its end. The exact
total can pay these caps directly without changing the local checks
or the reserve. The literal seed comparison, the archive binding and
the complete compact replay remain inputs. Independent mathematical
review is pending.
-/

set_option autoImplicit false
noncomputable section

namespace GRWTSK.NumberTheory.WeilQuadraticForm.RadiusTwoAggregateSchurBudget

open GRWTSK.Algebra.LinearAlgebra
open StructuredSchurIntegerReplay StructuredSchurCompactReplay StructuredSchurNearestEven
open RadiusTwoGeometricSchurBudget RadiusTwoCompactSchurReturn RadiusTwoCandidateSeed
open RadiusTwoCompactGaugeBinding OddLiteralWindow
open scoped BigOperators

/-- Total of the column rounding cap times the column multiplier. -/
def columnTotal (caps : Fin 399936 → StepPrices 2) : ℕ :=
  ∑ i, (span i * (2^21 : ℤ)).toNat * (caps i).colMul

/-- Total of the four generator magnitude caps. -/
def generatorTotal (caps : Fin 399936 → StepPrices 2) : ℕ :=
  ∑ i, ((caps i).maxV 0 + (caps i).maxU 0 + (caps i).maxV 1 + (caps i).maxU 1)

/-- Numerator of the exact geometric price from its two totals. -/
def totalNumerator (column generator : ℕ) : ℕ :=
  399936 * (250 * 2^40 + 126) + 42 * column + 42 * generator

theorem sum_priceNumerator_eq (caps : Fin 399936 → StepPrices 2) :
    (∑ i, priceNumerator (geometricCaps (caps i) (span i))) =
      totalNumerator (columnTotal caps) (generatorTotal caps) := by
  have h (i : Fin 399936) :
      priceNumerator (geometricCaps (caps i) (span i)) =
        (250 * 2^40 + 126) + 42 * ((span i * (2^21 : ℤ)).toNat * (caps i).colMul) +
          42 * ((caps i).maxV 0 + (caps i).maxU 0 + (caps i).maxV 1 + (caps i).maxU 1) := by
    rw [priceNumerator_geometricCaps]
    ring
  calc
    _ = ∑ i : Fin 399936, ((250 * 2^40 + 126) +
        42 * ((span i * (2^21 : ℤ)).toNat * (caps i).colMul) +
        42 * ((caps i).maxV 0 + (caps i).maxU 0 + (caps i).maxV 1 + (caps i).maxU 1)) :=
      Finset.sum_congr rfl (fun i _ => h i)
    _ = _ := by
      rw [Finset.sum_add_distrib, Finset.sum_add_distrib, ← Finset.mul_sum, ← Finset.mul_sum]
      simp only [Finset.sum_const, Finset.card_univ, Fintype.card_fin, nsmul_eq_mul]
      rfl

/-- The two checked integer totals suffice for the original real chain budget. -/
theorem tapePriceSum_le_of_totals (tape : Tape 2 399936)
    (hNodes : ∀ i, tape.node i = (65 + (i.val : ℤ))^2)
    (hBudget : 1000 * totalNumerator (columnTotal tape.caps) (generatorTotal tape.caps) ≤
      39 * (500 * 2^80)) :
    ∑ i, price ((tape.withGeometricCaps (400000^2)).caps i) ≤ (39/1000 : ℝ) := by
  simp only [Tape.withGeometricCaps, hNodes, price]
  change (∑ i, (priceNumerator (geometricCaps (tape.caps i) (span i)) : ℝ) /
    (500 * (generatorScale : ℝ)^2)) ≤ 39/1000
  rw [← Finset.sum_div, ← Nat.cast_sum, sum_priceNumerator_eq]
  generalize totalNumerator (columnTotal tape.caps) (generatorTotal tape.caps) = n at hBudget ⊢
  have hR : (1000 : ℝ) * (n : ℝ) ≤ 39 * (500 * 2^80) := by exact_mod_cast hBudget
  have hDen : (500 : ℝ) * (generatorScale : ℝ)^2 = 500 * 2^80 := by
    norm_num [generatorScale]
  rw [hDen, div_le_iff₀ (by positivity)]
  refine le_of_mul_le_mul_left ?_ (show 0 < (1000 : ℝ) by norm_num)
  calc
    (1000 : ℝ) * (n : ℝ) ≤ 39 * (500 * 2^80) := hR
    _ = 1000 * (39/1000 * (500 * 2^80)) := by ring

/-- The exact aggregate price pays the compact high-floor return in the archived gauge. -/
theorem highFloor_two_of_gaugedCompactBlock_totals
    (tape : Tape 2 399936) (seed : Fin 399936 → GridRow 2)
    (hSource : SeedComparison (coefficientsFromRaw seed))
    (hNodes : ∀ i, tape.node i = (65 + (i.val : ℤ))^2)
    (hRaw : ∀ i, (seed i).v 0 = (65 + (i.val : ℤ)) * 2^31)
    (hBlock : (tape.withGeometricCaps (400000^2)).BlockCaps 0 seed 399936 (by omega))
    (hBudget : 1000 * totalNumerator (columnTotal tape.caps) (generatorTotal tape.caps) ≤
      39 * (500 * 2^80)) :
    HighFloor 2 (-1/2) (1/5) 64 := by
  let paid := tape.withGeometricCaps (400000^2)
  exact highFloor_two_of_checkedCompactBlock paid seed (coefficientsFromRaw seed) hSource hNodes
    (decodedSeed_add_reserve_eq_rawCandidate paid seed hNodes (firstPrimal_of_rawGrid seed hRaw))
    hBlock (tapePriceSum_le_of_totals tape hNodes hBudget)

end GRWTSK.NumberTheory.WeilQuadraticForm.RadiusTwoAggregateSchurBudget
