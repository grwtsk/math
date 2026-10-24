# Complete source: GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.Prototype.Variant54061dbb8254b8429453045f910e1f118b316e2de9d497a7e14263fb645a11f6

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `66d9e227987336c9bcb8a228e4e664eafaed0502` · SHA-256 `54061dbb8254b8429453045f910e1f118b316e2de9d497a7e14263fb645a11f6`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import FormalResearch.RiemannHypothesis.SourcePrimeSquareTailWork
import FormalResearch.RiemannHypothesis.SourcePairedTailQuadrature

/-!
# Private exact first-plus-square paired-tail quadrature

This scratch candidate retains the complete square baseline, closed atom
inventory, both paired endpoints and the full continuous drift. Compilation
status is recorded externally. No maintained export, complete acceptance,
eventual signed lower witness or RH conclusion is claimed.

AI attribution: developed with OpenAI Codex; Lean checks the proof terms.
-/

set_option autoImplicit false
noncomputable section
namespace FormalResearch.RiemannHypothesis.SourcePairedSquareQuadrature

open MeasureTheory Set
open scoped Interval
open SourcePrimeSquareTailWork SourcePairedTailQuadrature SourcePairedTailTest
open SourcePairedPrimeWork SourcePairedPrimeAverages SourceFirstPrimeAbel
open WeightedPrimeAbel
open FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry
open PrimePowerDescent

/-- The actual complete closed square readout; the touching atom remains in its inventory. -/
def pairedSquareReadout (A : ℝ) : ℝ :=
  ∑ p ∈ primeLogInventory A, squarePrefixCoefficient p *
    pairedTailTest A (2 * Real.log (p : ℝ))

/-- Fixed finite-step Abel retains the closed upper square atom before its endpoint vanishes. -/
theorem squarePrefix_pairedTail_work {A : ℝ} (hA : 1 ≤ A) :
    (∫ u in 0..2 * A, squarePrefix u * deriv (pairedTailTest A) u) =
      -pairedSquareReadout A := by
  have he := integral_finite_steps_deriv 0 (2 * A) (primeLogInventory A)
    (fun p => 2 * Real.log (p : ℝ)) squarePrefixCoefficient
    (fun p hp => by
      have hb := primeLogInventory_log_bounds A p hp
      constructor <;> linarith) (pairedTailTest A) (pairedTailTest_contDiff hA)
  have hsteps : (∫ u in 0..2 * A, squarePrefix u * deriv (pairedTailTest A) u) =
      ∫ u in 0..2 * A, ∑ p ∈ primeLogInventory A,
        squarePrefixCoefficient p *
          (if 2 * Real.log (p : ℝ) ≤ u then deriv (pairedTailTest A) u else 0) := by
    apply intervalIntegral.integral_congr
    intro u hu
    dsimp only
    rw [squarePrefix_eq_steps (2 * A) u
      ((uIcc_of_le (by linarith : 0 ≤ 2 * A) ▸ hu).2)]
    simp only [show 2 * A / 2 = A by ring, Finset.sum_mul]
    apply Finset.sum_congr rfl
    intro p hp
    split_ifs <;> simp
  rw [hsteps, he, pairedTailTest_at_upper hA, pairedSquareReadout,
    ← Finset.sum_neg_distrib]
  apply Finset.sum_congr rfl
  intro p hp
  ring

/-- The complete baseline has zero paired endpoint contribution, with no removal of its atoms. -/
theorem squareTail_pairedTail_work {A : ℝ} (hA : 1 ≤ A) :
    (∫ u in 0..2 * A, squareTail u * deriv (pairedTailTest A) u) =
      pairedSquareReadout A := by
  have hd := (pairedTailTest_contDiff hA).continuous_deriv_one.intervalIntegrable
    (μ := volume) 0 (2 * A)
  simp_rw [squareTail, sub_mul]
  rw [intervalIntegral.integral_sub (hd.const_mul squarePrefixBaseline)
    (squarePrefix_mul_deriv_intervalIntegrable 0 (2 * A) (by linarith)
      (pairedTailTest A) (pairedTailTest_contDiff hA)),
    intervalIntegral.integral_const_mul, intervalIntegral.integral_deriv_eq_sub
      (fun u _ => (pairedTailTest_contDiff hA).differentiable (by norm_num) u) hd,
    pairedTailTest_at_zero hA, pairedTailTest_at_upper hA,
    squarePrefix_pairedTail_work hA]
  ring

/-- Both actual slope phases reconstruct the paired test derivative before any bound. -/
theorem squareTailPairedWork_eq_neg_integral_pairedTail_deriv {A : ℝ} (hA : 1 ≤ A) :
    squareTailPairedWork A =
      -(∫ u in 0..2 * A, squareTail u * deriv (pairedTailTest A) u) := by
  have hp : 0 < A := by linarith
  have hi := squareTail_intervalIntegrable hp
  have hip := hi.mul_continuousOn (positiveSlope_continuous hp).continuousOn
  have hin := hi.mul_continuousOn (negativeSlope_continuous hp).continuousOn
  have hf : (fun u => squareTail u * deriv (pairedTailTest A) u) =
      (fun u => -(squareTail u * positiveSlope A u) +
        (positiveMass A / negativeMass A) * (squareTail u * negativeSlope A u)) := by
    funext u
    rw [pairedTailTest_deriv hA]
    ring
  rw [hf, intervalIntegral.integral_add hip.neg (hin.const_mul _),
    intervalIntegral.integral_neg, intervalIntegral.integral_const_mul]
  unfold squareTailPairedWork squareTailNegativeMean
  ring

/-- The actual paired square-tail work is the negative of its closed D readout. -/
theorem squareTailPairedWork_eq_neg_readout {A : ℝ} (hA : 1 ≤ A) :
    squareTailPairedWork A = -pairedSquareReadout A := by
  rw [squareTailPairedWork_eq_neg_integral_pairedTail_deriv hA,
    squareTail_pairedTail_work hA]

/-- The full drift remains beside the same complete first and square inventories. -/
theorem squareRemovedPairedWork_eq_first_square_quadrature {A : ℝ} (hA : 1 ≤ A) :
    squareRemovedPairedWork A =
      primeLogSum (2 * A) (pairedTailTest A) + pairedSquareReadout A -
        (negativeTimeMean A - criticalContinuousMoment A) := by
  rw [squareRemovedPairedWork_eq hA, pairedErrorContrast_eq_prime_quadrature hA,
    squareTailPairedWork_eq_neg_readout hA]
  ring

end FormalResearch.RiemannHypothesis.SourcePairedSquareQuadrature
```
