# Complete source: GRWTSK.NumberTheory.AnalyticNumberTheory.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.Variant384f6001ccce889a266ef82a3a0530af8cf85c6f3a6611ce5e3c49e453f18ff2

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `abdc0b023f637d25b287ce5d441b8bbae42b9876` · SHA-256 `384f6001ccce889a266ef82a3a0530af8cf85c6f3a6611ce5e3c49e453f18ff2`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.EstimateSourceCorrelationPolynomial
import Mathlib.Analysis.SpecialFunctions.Gaussian.GaussianIntegral

/-!
# The actual source's signed boundary filter

The nine coefficients retain their signs. The formula is transported from the
actual correlation only on its support interval. Exponential moment cancellation
is not an estimate of the prime discrepancy.
-/

set_option autoImplicit false

namespace FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry
namespace EstimateSourceRieszFilter

open MeasureTheory Set
open FormalResearch.RiemannHypothesis.SourcePairing
open Realization BridgeNormalization PrimePowerDescent
open EstimateSourceCorrelationPolynomial EstimateMertensResidual EstimatePrimeSmoothDefect

noncomputable section

/-- Signed coefficients of the exact boundary expansion of the bump correlation. -/
def boundaryCoefficient (j : ℕ) : ℝ :=
  match j with
  | 9 => 128 / 315
  | 10 => -256 / 315
  | 11 => 2432 / 3465
  | 12 => -1184 / 3465
  | 13 => 4624 / 45045
  | 14 => -16 / 819
  | 15 => 8 / 3465
  | 16 => -1 / 6435
  | 17 => 1 / 218790
  | _ => 0

/-- The complete differential filter, with both subtracted and added terms. -/
def monomialFilter (j : ℕ) (u : ℝ) : ℝ :=
  u ^ j / 16 - (j * (j - 1) : ℕ) * u ^ (j - 2) / 2 +
    (j * (j - 1) * (j - 2) * (j - 3) : ℕ) * u ^ (j - 4)

private theorem degree_inventory : Finset.Icc 9 17 = {9, 10, 11, 12, 13, 14, 15, 16, 17} := by
  decide

/-- Exact expansion at the right support boundary, without an asymptotic remainder. -/
theorem bumpCorrelation_boundary_expansion (d : ℝ) :
    bumpCorrelation (2 - d) =
      ∑ j ∈ Finset.Icc 9 17, boundaryCoefficient j * d ^ j := by
  rw [degree_inventory]
  norm_num [boundaryCoefficient, bumpCorrelation]
  ring

set_option maxHeartbeats 1600000 in
-- Clearing the scale denominators leaves an exact degree-seventeen identity.
/-- The full signed filter equals the unchanged source at every real support point. -/
theorem sourceCorrelation_eq_boundary_filter (A u : ℝ) (hA : 1 ≤ A)
    (hu : 0 ≤ u) (huA : u ≤ 2 * A) :
    sourceNormalization A * sourceCorrelation explicitSecondDerivative A (2 * A - u) =
      ∑ j ∈ Finset.Icc 9 17, boundaryCoefficient j / A ^ j * monomialFilter j u := by
  have hA0 : 0 < A := by linarith
  have hAn := ne_of_gt hA0
  have hv := sourceCorrelation_eq_polynomial A ((2 * A - u) / A) hA
    (div_nonneg (by linarith) hA0.le) ((div_le_iff₀ hA0).2 (by linarith))
  rw [mul_div_cancel₀ _ hAn] at hv
  rw [hv, mul_div_cancel₀ _ (ne_of_gt (source_normalization_pos A hA)), degree_inventory]
  norm_num [boundaryCoefficient, monomialFilter]
  dsimp [bumpCorrelation, bumpCorrelationSecond, bumpCorrelationFourth]
  field_simp
  ring

/-- The upper atom vanishes in each of the nine individual filters. -/
theorem monomialFilter_zero (j : ℕ) (hj : j ∈ Finset.Icc 9 17) :
    monomialFilter j 0 = 0 := by
  have hj9 := (Finset.mem_Icc.mp hj).1
  simp [monomialFilter, Nat.ne_of_gt (show 0 < j by omega),
    Nat.ne_of_gt (show 0 < j - 2 by omega), Nat.ne_of_gt (show 0 < j - 4 by omega)]

/-- The residual remains an actual finite von Mangoldt sum with its complete signed filter. -/
theorem mertensResidual_eq_filtered_prime_sum (A : ℝ) (hA : 1 ≤ A) :
    mertensResidual A = (1 / sourceNormalization A) *
      ∑ j ∈ Finset.Icc 9 17, boundaryCoefficient j / A ^ j *
        ∑ n ∈ primePowerInventory (2 * A),
          ArithmeticFunction.vonMangoldt n / Real.sqrt n *
            monomialFilter j (2 * A - Real.log n) := by
  rw [mertensResidual_eq_closedPrimeMoment A hA, closedPrimeMoment]
  rw [Finset.mul_sum]
  simp_rw [Finset.mul_sum]
  rw [Finset.sum_comm]
  apply Finset.sum_congr rfl
  intro n hn
  have hn2 := (Finset.mem_Icc.mp hn).1
  have hlog : 0 ≤ Real.log n := Real.log_nonneg (by norm_cast; omega)
  have hlog2 := (inventory_log_bounds (2 * A) n hn).2
  have hc := sourceCorrelation_eq_boundary_filter A (2 * A - Real.log n) hA
    (by linarith) (by linarith)
  rw [sub_sub_cancel] at hc
  rw [exponentialTest_log _ n (by omega)]
  have hZ := ne_of_gt (source_normalization_pos A hA)
  calc
    _ = (ArithmeticFunction.vonMangoldt n / Real.sqrt n) *
        ((1 / sourceNormalization A) *
          ∑ j ∈ Finset.Icc 9 17, boundaryCoefficient j / A ^ j *
            monomialFilter j (2 * A - Real.log n)) := by rw [← hc]; field_simp
    _ = _ := by
      rw [← mul_assoc, Finset.mul_sum]
      apply Finset.sum_congr rfl
      intro j _
      ring

/-- Normalized finite logarithmic means of the actual von Mangoldt sequence,
including its zero atom at one. -/
def logarithmicRieszMean (m : ℕ) (T : ℝ) : ℝ :=
  (1 / (m.factorial : ℝ)) * ∑ n ∈ Finset.Icc 1 ⌊Real.exp T⌋₊,
    ArithmeticFunction.vonMangoldt n / Real.sqrt n * (T - Real.log n) ^ m

/-- Including one in the prime inventory changes no weighted sum: `Λ(1)=0`.
This is independent of the nonzero Möbius atom at one. -/
theorem prime_inventory_sum_eq_include_one (T : ℝ) (f : ℕ → ℝ) :
    (∑ n ∈ primePowerInventory T,
      ArithmeticFunction.vonMangoldt n / Real.sqrt n * f n) =
    ∑ n ∈ Finset.Icc 1 ⌊Real.exp T⌋₊,
      ArithmeticFunction.vonMangoldt n / Real.sqrt n * f n := by
  apply Finset.sum_subset
  · intro n hn
    simp only [primePowerInventory, Finset.mem_Icc] at hn ⊢
    exact ⟨by omega, hn.2⟩
  · intro n hn hnot
    have hn1 : n = 1 := by
      simp only [primePowerInventory, Finset.mem_Icc] at hn hnot
      omega
    subst n
    simp

/-- Finite algebra identifies the three Riesz means only as their signed filter. -/
theorem filtered_prime_sum_eq_riesz (j : ℕ) (hj : j ∈ Finset.Icc 9 17) (T : ℝ) :
    (∑ n ∈ primePowerInventory T,
      ArithmeticFunction.vonMangoldt n / Real.sqrt n * monomialFilter j (T - Real.log n)) =
    (j.factorial : ℝ) * (logarithmicRieszMean (j - 4) T -
      logarithmicRieszMean (j - 2) T / 2 + logarithmicRieszMean j T / 16) := by
  rw [prime_inventory_sum_eq_include_one]
  unfold logarithmicRieszMean
  simp_rw [Finset.mul_sum, Finset.sum_div]
  rw [← Finset.sum_sub_distrib, ← Finset.sum_add_distrib, Finset.mul_sum]
  apply Finset.sum_congr rfl
  intro n _
  obtain ⟨hj9, hj17⟩ := Finset.mem_Icc.mp hj
  interval_cases j <;> norm_num [monomialFilter] <;> ring

/-- The exact nine-term Riesz representation keeps every signed coefficient and
all three terms in each filter. It is not an upper bound. -/
theorem mertensResidual_eq_riesz_filter (A : ℝ) (hA : 1 ≤ A) :
    mertensResidual A = (1 / sourceNormalization A) *
      ∑ j ∈ Finset.Icc 9 17, boundaryCoefficient j * (j.factorial : ℝ) / A ^ j *
        (logarithmicRieszMean (j - 4) (2 * A) -
          logarithmicRieszMean (j - 2) (2 * A) / 2 +
          logarithmicRieszMean j (2 * A) / 16) := by
  rw [mertensResidual_eq_filtered_prime_sum A hA]
  congr 1
  apply Finset.sum_congr rfl
  intro j hj
  rw [filtered_prime_sum_eq_riesz j hj]
  ring

end
end EstimateSourceRieszFilter
end FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry
```
