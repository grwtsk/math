# Complete source: GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.Captured029SourceCurvaturePacketLedger.Variantd0e9979812c4d4507f79a128451b166944f8c8faf8f5695aa6aa88f62aa21e00

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `481d6071da1c5b251c5a1a20e3a0763107eaca21` · SHA-256 `d0e9979812c4d4507f79a128451b166944f8c8faf8f5695aa6aa88f62aa21e00`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import FormalResearch.RiemannHypothesis.CurvaturePacketCertificates
import FormalResearch.RiemannHypothesis.SourceMangoldtAbel
import FormalResearch.RiemannHypothesis.SourceFiniteGameBridge

/-!
# Exact endpoint packetization of the full logarithmic atom sector

Every closed prime-power atom is an affine endpoint block minus a three-point
packet. Unmatched mass and first moment remain in the endpoint ledger. The
native quadratic expression retains its complete archimedean term separately.
This exact identity supplies no uniform bound on the signed combination.

Research direction, selection and evaluation: grwtsk contributors.
Computational and formalization assistance: OpenAI Codex / ChatGPT.
-/

set_option autoImplicit false
noncomputable section

namespace FormalResearch.RiemannHypothesis.SourceCurvaturePacketLedger

open SourcePairing SourceMangoldtAbel SourceFirstPrimeAbel SourceFiniteGameBridge
open CurvaturePacketCertificates
open FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry
open Realization PrimePowerDescent EstimateMertensResidual

/-- The two endpoint atoms retain the exact affine trace at a possibly touching atom. -/
theorem endpoint_packet_formula (Φ : ℝ → ℝ) {L : ℝ} (hL : L ≠ 0) (s : ℝ) :
    packetValue Φ s (L - s) s =
      (1 - s / L) * Φ 0 + (s / L) * Φ L - Φ s := by
  unfold packetValue
  rw [show L - s + s = L by ring, show s + (L - s) = L by ring, sub_self]
  field_simp [hL]
  ring

/-- The full critical test includes the retained unit initial trace and zero final trace. -/
theorem critical_endpoint_packet_formula {A : ℝ} (hA : 1 ≤ A) (s : ℝ) :
    packetValue (criticalPrimeTest A) s (2 * A - s) s =
      1 - s / (2 * A) - criticalPrimeTest A s := by
  rw [endpoint_packet_formula _ (show 2 * A ≠ 0 by linarith),
    criticalPrimeTest_at_zero A hA, criticalPrimeTest_at_upper A (by linarith)]
  ring

/-- The exact initial endpoint coefficient; it may grow with A. -/
def affineEndpointLedger (A : ℝ) : ℝ :=
  ∑ n ∈ primePowerInventory (2 * A),
    ArithmeticFunction.vonMangoldt n / (n : ℝ) * (1 - Real.log n / (2 * A))

/-- Every original coefficient is retained, including square and higher prime powers. -/
def criticalPacketLedger (A : ℝ) : ℝ :=
  ∑ n ∈ primePowerInventory (2 * A),
    ArithmeticFunction.vonMangoldt n / (n : ℝ) *
      packetValue (criticalPrimeTest A) (Real.log n) (2 * A - Real.log n) (Real.log n)

/-- Genuine finite source reconstruction: packets and unmatched affine endpoints are joined. -/
theorem closedPrimeMoment_eq_endpoint_sub_packets {A : ℝ} (hA : 1 ≤ A) :
    closedPrimeMoment A = affineEndpointLedger A - criticalPacketLedger A := by
  rw [closedPrimeMoment_eq_mangoldtLogSum]
  unfold mangoldtLogSum affineEndpointLedger criticalPacketLedger
  rw [← Finset.sum_sub_distrib]
  apply Finset.sum_congr rfl
  intro n _
  rw [critical_endpoint_packet_formula hA]
  ring

/-- Native Q retains the signed endpoint compensation and full continuous contribution. -/
theorem sourceQuadraticValue_eq_packet_ledger {A : ℝ} (hA : 1 ≤ A) :
    sourceQuadraticValue explicitSecondDerivative A =
      archimedeanValue explicitSecondDerivative A - 2 * affineEndpointLedger A +
        2 * criticalPacketLedger A := by
  rw [sourceQuadraticValue_eq_event_sum A hA, sum_sourceEventGain A hA,
    mertensResidual_eq_closedPrimeMoment A hA, closedPrimeMoment_eq_endpoint_sub_packets hA]
  ring

/-- Source-real packet gains retain their adverse affine compensation in the decoder. -/
theorem sourceEventGain_eq_packet_gain {A : ℝ} (hA : 1 ≤ A) {n : ℕ}
    (hn : n ∈ primePowerInventory (2 * A)) :
    sourceEventGain A n = ArithmeticFunction.vonMangoldt n / (n : ℝ) *
      (2 * packetValue (criticalPrimeTest A) (Real.log n)
        (2 * A - Real.log n) (Real.log n) - 2 * (1 - Real.log n / (2 * A))) := by
  have hn0 : 0 < n := by have := (Finset.mem_Icc.mp hn).1; omega
  rw [sourceEventGain_of_mem A hn, natural_source_coefficient_eq_critical_test A hn0,
    critical_endpoint_packet_formula hA]
  ring

end FormalResearch.RiemannHypothesis.SourceCurvaturePacketLedger
```
