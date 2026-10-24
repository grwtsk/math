# Complete source: GRWTSK.Analysis.RealAnalysis.Integration.SourceBoundaryArithmetic.Variant46e723628c18b0dedf36d91299105d82955916f76a6cbfd59424db4aa806dfb8

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `59ec5915b8dfee9c21e64d40e8e2eff231e0241c` · SHA-256 `b5090d02be8cdc27bb663b2b6241ac5c910b5cefffd5e8062b3515ef57d517de`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: Analysis.RealAnalysis.Integration
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Analysis.RealAnalysis.Integration.BoundaryDistance.Variant979c9ff8e37a10dde1eee84620ec438f3ccae744f04c133e2befe70331ded31c","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"979c9ff8e37a10dde1eee84620ec438f3ccae744f04c133e2befe70331ded31c","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Analysis.Integration.SourceCorpus.BoundaryDistance.Variant979c9ff8e37a10dde1eee84620ec438f3ccae744f04c133e2befe70331ded31c","mathematical_subject":"Analysis.Integration","original_sha256":"979c9ff8e37a10dde1eee84620ec438f3ccae744f04c133e2befe70331ded31c","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal.publication/20261007/cache-source-audit/source/979c9ff8e37a10dde1eee84620ec438f3ccae744f04c133e2befe70331ded31c.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import FormalResearch.RiemannHypothesis.SourceBoundaryLayer
import FormalResearch.RiemannHypothesis.PoleFrontierInvariance

/-!
# Exact arithmetic and continuum coordinates at the moving source cutoff

The native strict inventory is retained in the coordinate `2 * A - log n`.
The complete prime-power sum and the prime-and-square restriction have separate
finite definitions. Reflection of the genuine continuum integral then gives
the exact boundary-coordinate discrepancy. Their difference is transported
only through the previously proved bounded higher-power correction.

These are exact coordinate identities, not arithmetic cancellation estimates.
The factor `exp A / A ^ 9` is not a bounded positive normalization, and no
ordinary uniform-tail equivalence is inferred from a bounded normalized
boundary pairing. No zero-simplicity, RH or prime-error premise is used.

AI attribution: Codex authored this module and its proofs.
-/


namespace GRWTSK.Analysis.RealAnalysis.Integration.BoundaryDistance.Variant979c9ff8e37a10dde1eee84620ec438f3ccae744f04c133e2befe70331ded31c

namespace FormalResearch.RiemannHypothesis.SourceBoundaryArithmetic

open MeasureTheory
open FormalResearch.RiemannHypothesis.SourcePairing
open FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry
open EstimateTailReduction EstimateHigherPrimePowers PrimePowerPhaseDefect Realization
open SourceBoundaryLayer PoleFrontierInvariance
open scoped BigOperators

noncomputable section

/-- The exact logarithmic distance of an arithmetic atom from the strict cutoff. -/
def boundaryDistance (A : ℝ) (n : ℕ) : ℝ := 2 * A - Real.log n

/-- The normalized boundary pairing of all native prime-power atoms. -/
def fullBoundaryPairing (A : ℝ) : ℝ :=
  Real.exp (-2 * A) *
      (∑ n ∈ primeIndices A, ArithmeticFunction.vonMangoldt n *
        Real.exp (boundaryDistance A n / 2) * boundaryKernel A (boundaryDistance A n)) -
    ∫ y in (0 : ℝ)..2 * A, Real.exp (-y / 2) * boundaryKernel A y

/-- The normalized boundary pairing restricted to native primes and prime squares. -/
def lowerBoundaryPairing (A : ℝ) : ℝ :=
  Real.exp (-2 * A) *
      (∑ n ∈ lowerPowerInventory A, ArithmeticFunction.vonMangoldt n *
        Real.exp (boundaryDistance A n / 2) * boundaryKernel A (boundaryDistance A n)) -
    ∫ y in (0 : ℝ)..2 * A, Real.exp (-y / 2) * boundaryKernel A y

/-- The genuine finite boundary measure with the original von Mangoldt weights. -/
def finiteBoundaryMeasure (A : ℝ) (S : Finset ℕ) : Measure ℝ :=
  ∑ n ∈ S, ENNReal.ofReal (ArithmeticFunction.vonMangoldt n / Real.exp (2 * A)) •
    Measure.dirac (boundaryDistance A n)

/-- The boundary measure of the entire unchanged strict native inventory. -/
def fullBoundaryMeasure (A : ℝ) : Measure ℝ := finiteBoundaryMeasure A (primeIndices A)

/-- The separate boundary measure of the native prime-and-square inventory. -/
def lowerBoundaryMeasure (A : ℝ) : Measure ℝ :=
  finiteBoundaryMeasure A (lowerPowerInventory A)

/-- Every real test is genuinely integrable against this finite atomic measure. -/
theorem finite_boundary_measure_integrable (A : ℝ) (S : Finset ℕ) (f : ℝ → ℝ) :
    Integrable f (finiteBoundaryMeasure A S) := by
  unfold finiteBoundaryMeasure
  apply integrable_finsetSum_measure.mpr
  intro n _
  exact (integrable_dirac (by simp)).smul_measure ENNReal.ofReal_ne_top

/-- The finite measure's Bochner integral equals its literal weighted atomic sum. -/
theorem finite_boundary_measure_integral (A : ℝ) (S : Finset ℕ) (f : ℝ → ℝ) :
    (∫ y, f y ∂finiteBoundaryMeasure A S) =
      ∑ n ∈ S, (ArithmeticFunction.vonMangoldt n / Real.exp (2 * A)) *
        f (boundaryDistance A n) := by
  unfold finiteBoundaryMeasure
  rw [integral_finsetSum_measure]
  · apply Finset.sum_congr rfl
    intro n _
    rw [integral_smul_measure, integral_dirac, ENNReal.toReal_ofReal
      (div_nonneg ArithmeticFunction.vonMangoldt_nonneg (Real.exp_pos _).le)]
    rfl
  · intro n _
    exact (integrable_dirac (by simp)).smul_measure ENNReal.ofReal_ne_top

/-- Normalization by the multiplicative cutoff is exact in the finite measure integral. -/
theorem finite_boundary_measure_integral_scaled (A : ℝ) (S : Finset ℕ) (f : ℝ → ℝ) :
    (∫ y, f y ∂finiteBoundaryMeasure A S) =
      Real.exp (-2 * A) *
        (∑ n ∈ S, ArithmeticFunction.vonMangoldt n * f (boundaryDistance A n)) := by
  rw [finite_boundary_measure_integral, Finset.mul_sum]
  apply Finset.sum_congr rfl
  intro n _
  rw [show -2 * A = -(2 * A) by ring, Real.exp_neg]
  ring

/-- The existing closed finite step count is the distributional cumulative test of this measure. -/
theorem finite_boundary_measure_closed_step (A : ℝ) (S : Finset ℕ) (t : ℝ) :
    (∫ y, (if y ≤ t then (1 : ℝ) else 0) ∂finiteBoundaryMeasure A S) =
      PoleAbelTransform.finiteStepCount S (boundaryDistance A)
        (fun n ↦ ArithmeticFunction.vonMangoldt n / Real.exp (2 * A)) t := by
  rw [finite_boundary_measure_integral]
  rfl

/-- The full pairing is the exact genuine finite-measure discrepancy. -/
theorem full_boundary_pairing_eq_measure (A : ℝ) :
    fullBoundaryPairing A =
      (∫ y, Real.exp (y / 2) * boundaryKernel A y ∂fullBoundaryMeasure A) -
        ∫ y in (0 : ℝ)..2 * A, Real.exp (-y / 2) * boundaryKernel A y := by
  rw [fullBoundaryMeasure, finite_boundary_measure_integral_scaled]
  unfold fullBoundaryPairing
  congr 2
  apply Finset.sum_congr rfl
  intro n _
  ring

/-- The lower pairing uses its own genuine measure, with no inventory substitution. -/
theorem lower_boundary_pairing_eq_measure (A : ℝ) :
    lowerBoundaryPairing A =
      (∫ y, Real.exp (y / 2) * boundaryKernel A y ∂lowerBoundaryMeasure A) -
        ∫ y in (0 : ℝ)..2 * A, Real.exp (-y / 2) * boundaryKernel A y := by
  rw [lowerBoundaryMeasure, finite_boundary_measure_integral_scaled]
  unfold lowerBoundaryPairing
  congr 2
  apply Finset.sum_congr rfl
  intro n _
  ring

/-- The cutoff coordinate is exactly the logarithm of the multiplicative cutoff ratio. -/
theorem boundary_distance_eq_log_cutoff_ratio (A : ℝ) (n : ℕ) (hn : 0 < n) :
    boundaryDistance A n = Real.log (Real.exp (2 * A) / n) := by
  have hn' : (n : ℝ) ≠ 0 := by exact_mod_cast (Nat.ne_of_gt hn)
  rw [Real.log_div (Real.exp_ne_zero _) hn', Real.log_exp]
  rfl

/-- Every native atom has strictly positive distance; the cutoff is not closed. -/
theorem boundary_distance_pos_of_mem_primeIndices (A : ℝ) (n : ℕ)
    (hn : n ∈ primeIndices A) : 0 < boundaryDistance A n := by
  obtain ⟨hn2, hncut⟩ := (mem_primeIndices_iff A n).mp hn
  have hnpos : (0 : ℝ) < n := by exact_mod_cast (by omega : 0 < n)
  have hlog : Real.log n < 2 * A := by
    simpa only [Real.log_exp] using Real.log_lt_log hnpos hncut
  unfold boundaryDistance
  linarith

/-- The native lower endpoint is `n ≥ 2`, so every atom also lies below `2 * A`. -/
theorem boundary_distance_lt_two_mul_of_mem_primeIndices (A : ℝ) (n : ℕ)
    (hn : n ∈ primeIndices A) : boundaryDistance A n < 2 * A := by
  have hn2 := ((mem_primeIndices_iff A n).mp hn).1
  have hlog : 0 < Real.log n := Real.log_pos (by exact_mod_cast (by omega : 1 < n))
  unfold boundaryDistance
  linarith

/-- The included prime-two endpoint gives the exact upper coordinate bound. -/
theorem boundary_distance_le_cutoff_sub_log_two (A : ℝ) (n : ℕ)
    (hn : n ∈ primeIndices A) :
    boundaryDistance A n ≤ 2 * A - Real.log 2 := by
  have hn2 := ((mem_primeIndices_iff A n).mp hn).1
  have hn2' : (2 : ℝ) ≤ n := by exact_mod_cast hn2
  have hlog : Real.log 2 ≤ Real.log n := Real.log_le_log (by norm_num) hn2'
  unfold boundaryDistance
  linarith

/-- The lower-power inventory inherits the same strict coordinate interval. -/
theorem lower_power_boundary_distance_bounds (A : ℝ) (n : ℕ)
    (hn : n ∈ lowerPowerInventory A) :
    0 < boundaryDistance A n ∧ boundaryDistance A n < 2 * A := by
  classical
  have hfull : n ∈ primeIndices A := (Finset.mem_filter.mp hn).1
  exact ⟨boundary_distance_pos_of_mem_primeIndices A n hfull,
    boundary_distance_lt_two_mul_of_mem_primeIndices A n hfull⟩

/-- Prime-power exponents remain explicit in the boundary coordinate. -/
theorem boundary_distance_prime_power (A : ℝ) (p k : ℕ) :
    boundaryDistance A (p ^ k) = 2 * A - k * Real.log p := by
  simp only [boundaryDistance, Nat.cast_pow, Real.log_pow]

/-- The prime sector retains the first logarithmic threshold. -/
theorem boundary_distance_prime (A : ℝ) (p : ℕ) :
    boundaryDistance A p = 2 * A - Real.log p := rfl

/-- The prime-square sector retains twice the logarithmic threshold. -/
theorem boundary_distance_prime_square (A : ℝ) (p : ℕ) :
    boundaryDistance A (p ^ 2) = 2 * A - 2 * Real.log p := by
  simpa only [Nat.cast_ofNat] using boundary_distance_prime_power A p 2

/-- The original source value at an atom is the boundary kernel with its exact scale restored. -/
theorem correlation_at_log_eq_boundary (A : ℝ) (hA : 0 < A) (n : ℕ) :
    sourceCorrelation explicitSecondDerivative A (Real.log n) =
      boundaryKernel A (boundaryDistance A n) / A ^ 9 := by
  have hA0 : A ≠ 0 := ne_of_gt hA
  unfold boundaryKernel boundaryDistance
  rw [show 2 * A - (2 * A - Real.log n) = Real.log n by ring]
  field_simp

/-- The reciprocal square-root atom weight is exact in the moving boundary coordinate. -/
theorem reciprocal_sqrt_eq_boundary_exp (A : ℝ) (n : ℕ) (hn : 0 < n) :
    1 / Real.sqrt n = Real.exp (-A + boundaryDistance A n / 2) := by
  have hn' : (0 : ℝ) < n := by exact_mod_cast hn
  have hsqrt : Real.sqrt n = Real.exp (Real.log n / 2) := by
    rw [Real.exp_half, Real.exp_log hn']
  rw [hsqrt, one_div, ← Real.exp_neg]
  congr 1
  unfold boundaryDistance
  ring

private theorem weighted_atom_boundary (A : ℝ) (hA : 0 < A) (n : ℕ) (hn : 0 < n) :
    ArithmeticFunction.vonMangoldt n / Real.sqrt n *
        sourceCorrelation explicitSecondDerivative A (Real.log n) =
      (Real.exp (-A) / A ^ 9) *
        (ArithmeticFunction.vonMangoldt n * Real.exp (boundaryDistance A n / 2) *
          boundaryKernel A (boundaryDistance A n)) := by
  rw [div_eq_mul_one_div, reciprocal_sqrt_eq_boundary_exp A n hn,
    correlation_at_log_eq_boundary A hA n]
  rw [Real.exp_add]
  ring

/-- Exact boundary coordinates for the complete native strict prime-power sum. -/
theorem prime_power_contribution_boundary_coordinate_exact (A : ℝ) (hA : 1 ≤ A) :
    primePowerContribution explicitSecondDerivative A =
      Real.exp (-A) / A ^ 9 *
        (∑ n ∈ primeIndices A, ArithmeticFunction.vonMangoldt n *
          Real.exp (boundaryDistance A n / 2) * boundaryKernel A (boundaryDistance A n)) := by
  change (∑ n ∈ primeIndices A, _) = _
  rw [Finset.mul_sum]
  apply Finset.sum_congr rfl
  intro n hn
  exact weighted_atom_boundary A (by linarith) n
    (by have := ((mem_primeIndices_iff A n).mp hn).1; omega)

/-- Exact boundary coordinates for the separate native prime-and-square restriction. -/
theorem lower_power_contribution_boundary_coordinate_exact (A : ℝ) (hA : 1 ≤ A) :
    lowerPowerContribution A =
      Real.exp (-A) / A ^ 9 *
        (∑ n ∈ lowerPowerInventory A, ArithmeticFunction.vonMangoldt n *
          Real.exp (boundaryDistance A n / 2) * boundaryKernel A (boundaryDistance A n)) := by
  classical
  unfold lowerPowerContribution primeWeight
  rw [Finset.mul_sum]
  apply Finset.sum_congr rfl
  intro n hn
  have hfull : n ∈ primeIndices A := (Finset.mem_filter.mp hn).1
  exact weighted_atom_boundary A (by linarith) n
    (by have := ((mem_primeIndices_iff A n).mp hfull).1; omega)

/-- The reflected continuum integrand is genuinely interval integrable. -/
theorem boundary_continuum_integrable (A : ℝ) (hA : 1 ≤ A) :
    IntervalIntegrable (fun y ↦ Real.exp (-y / 2) * boundaryKernel A y) volume 0 (2 * A) := by
  have hc := CorrelationRegularity.sourceCorrelation_contDiff A (by linarith) |>.continuous
  apply Continuous.intervalIntegrable
  unfold boundaryKernel
  exact (by fun_prop : Continuous (fun y : ℝ ↦ Real.exp (-y / 2))).mul
    (continuous_const.mul (hc.comp (by fun_prop)))

/-- The original continuum integrand is genuinely interval integrable. -/
theorem source_continuum_integrable (A : ℝ) (hA : 1 ≤ A) :
    IntervalIntegrable (fun t ↦ Real.exp (t / 2) *
      sourceCorrelation explicitSecondDerivative A t) volume 0 (2 * A) := by
  exact (by fun_prop : Continuous (fun t : ℝ ↦ Real.exp (t / 2))).mul
    (CorrelationRegularity.sourceCorrelation_contDiff A (by linarith) |>.continuous)
    |>.intervalIntegrable _ _

/-- Interval reflection gives the exact continuum reference in the boundary coordinate. -/
theorem continuum_boundary_coordinate_exact (A : ℝ) (hA : 1 ≤ A) :
    (∫ t in (0 : ℝ)..2 * A, Real.exp (t / 2) *
        sourceCorrelation explicitSecondDerivative A t) =
      Real.exp A / A ^ 9 *
        (∫ y in (0 : ℝ)..2 * A, Real.exp (-y / 2) * boundaryKernel A y) := by
  let f : ℝ → ℝ := fun t ↦ Real.exp (t / 2) *
    sourceCorrelation explicitSecondDerivative A t
  calc
    _ = ∫ y in (0 : ℝ)..2 * A, f (2 * A - y) := by
      simpa only [sub_self, sub_zero] using
        (intervalIntegral.integral_comp_sub_left f (2 * A) (a := 0) (b := 2 * A)).symm
    _ = ∫ y in (0 : ℝ)..2 * A,
        (Real.exp A / A ^ 9) * (Real.exp (-y / 2) * boundaryKernel A y) := by
      apply intervalIntegral.integral_congr
      intro y _
      dsimp [f, boundaryKernel]
      rw [show (2 * A - y) / 2 = A + (-y / 2) by ring, Real.exp_add]
      field_simp
    _ = _ := intervalIntegral.integral_const_mul _ _

/-- The lower-power discrepancy is exactly its independently defined normalized boundary pairing. -/
theorem discrepancy_boundary_coordinate_exact (A : ℝ) (hA : 1 ≤ A) :
    sourceDiscrepancyValue A = Real.exp A / A ^ 9 * lowerBoundaryPairing A := by
  unfold sourceDiscrepancyValue lowerBoundaryPairing
  rw [lower_power_contribution_boundary_coordinate_exact A hA,
    continuum_boundary_coordinate_exact A hA]
  have he : Real.exp A * Real.exp (-2 * A) = Real.exp (-A) := by
    rw [← Real.exp_add]
    congr 1
    ring
  rw [mul_sub]
  rw [← he]
  ring

/-- The complete arithmetic discrepancy has its own full-inventory boundary pairing. -/
theorem full_discrepancy_boundary_coordinate_exact (A : ℝ) (hA : 1 ≤ A) :
    primePowerContribution explicitSecondDerivative A -
        (∫ t in (0 : ℝ)..2 * A, Real.exp (t / 2) *
          sourceCorrelation explicitSecondDerivative A t) =
      Real.exp A / A ^ 9 * fullBoundaryPairing A := by
  unfold fullBoundaryPairing
  rw [prime_power_contribution_boundary_coordinate_exact A hA,
    continuum_boundary_coordinate_exact A hA]
  have he : Real.exp A * Real.exp (-2 * A) = Real.exp (-A) := by
    rw [← Real.exp_add]
    congr 1
    ring
  rw [mul_sub]
  rw [← he]
  ring

/-- Restoring scale separates the full and lower inventories by the native higher-power term. -/
theorem full_boundary_pairing_scaled_difference (A : ℝ) (hA : 1 ≤ A) :
    Real.exp A / A ^ 9 * (fullBoundaryPairing A - lowerBoundaryPairing A) =
      higherPowerContribution A := by
  rw [mul_sub, ← discrepancy_boundary_coordinate_exact A hA,
    ← full_discrepancy_boundary_coordinate_exact A hA,
    primePowerContribution_eq_lower_add_higher]
  unfold sourceDiscrepancyValue
  ring

/-- The normalized full pairing restores exactly the native scaled higher-power correction. -/
theorem full_boundary_pairing_eq_lower_add_scaled_higher (A : ℝ) (hA : 1 ≤ A) :
    fullBoundaryPairing A = lowerBoundaryPairing A +
      A ^ 9 * Real.exp (-A) * higherPowerContribution A := by
  have hA0 : A ≠ 0 := by linarith
  have hscale : (A ^ 9 * Real.exp (-A)) * (Real.exp A / A ^ 9) = 1 := by
    rw [Real.exp_neg]
    field_simp
  calc
    _ = lowerBoundaryPairing A + (fullBoundaryPairing A - lowerBoundaryPairing A) := by ring
    _ = lowerBoundaryPairing A + (A ^ 9 * Real.exp (-A)) *
        ((Real.exp A / A ^ 9) * (fullBoundaryPairing A - lowerBoundaryPairing A)) := by
      rw [← mul_assoc, hscale, one_mul]
    _ = _ := by rw [full_boundary_pairing_scaled_difference A hA]

/-- The normalized correction has the exact vanishing prefactor, with its native bound. -/
theorem full_boundary_pairing_difference_abs_le_scaled (A : ℝ) (hA : 1 ≤ A) :
    |fullBoundaryPairing A - lowerBoundaryPairing A| ≤
      A ^ 9 * Real.exp (-A) * higherPowerBound := by
  rw [full_boundary_pairing_eq_lower_add_scaled_higher A hA, add_sub_cancel_left,
    abs_mul, abs_of_nonneg (by positivity : 0 ≤ A ^ 9 * Real.exp (-A))]
  exact mul_le_mul_of_nonneg_left (higherPowerContribution_abs_le_bound A hA) (by positivity)

/-- Only the previously proved bounded higher-power correction relates the two inventories. -/
theorem full_boundary_pairing_scaled_difference_abs_le (A : ℝ) (hA : 1 ≤ A) :
    |Real.exp A / A ^ 9 * (fullBoundaryPairing A - lowerBoundaryPairing A)| ≤
      higherPowerBound := by
  rw [full_boundary_pairing_scaled_difference A hA]
  exact higherPowerContribution_abs_le_bound A hA

end

end FormalResearch.RiemannHypothesis.SourceBoundaryArithmetic
```
