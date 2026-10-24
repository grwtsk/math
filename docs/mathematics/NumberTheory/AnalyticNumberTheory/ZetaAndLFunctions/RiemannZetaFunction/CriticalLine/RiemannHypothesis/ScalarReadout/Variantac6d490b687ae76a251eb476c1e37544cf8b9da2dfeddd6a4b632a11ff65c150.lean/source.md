# Complete source: GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.ScalarReadout.Variantac6d490b687ae76a251eb476c1e37544cf8b9da2dfeddd6a4b632a11ff65c150

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `17cd62b5d2b37c4c6e7670748b1833cdb737f0d1` · SHA-256 `ac6d490b687ae76a251eb476c1e37544cf8b9da2dfeddd6a4b632a11ff65c150`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import FormalResearch.RiemannHypothesis.Conversation.TraceGramConsumer

/-!
# Common-channel splitting and scalar-decoder conservation

Finite algebra for Batches 24–25. The six-slot mean and centered remainder
are exact. A rational linear decoder of a scalar multiple preserves that
scalar or discards it according to the decoder's coefficient. The packet
counterexample also shows why separately centering two factors does not
center their bilinear output.

These are finite interfaces, not recognition of an external number field
or construction of a nonrational source-derived candidate family.
Human framework: grwtsk contributors. Lean implementation: OpenAI Codex.
-/

set_option autoImplicit false

namespace GRWTSK.RiemannHypothesis.Conversation.ScalarReadout

open scoped BigOperators Matrix
noncomputable section

def packetMean (v : Fin 6 → ℚ) : ℚ := (∑ i, v i) / 6
def packetDetail (v : Fin 6 → ℚ) : Fin 6 → ℚ := fun i => v i - packetMean v

theorem common_plus_detail (v : Fin 6 → ℚ) (i : Fin 6) :
    packetMean v + packetDetail v i = v i := by unfold packetDetail; ring

theorem packetDetail_centered (v : Fin 6 → ℚ) : (∑ i, packetDetail v i) = 0 := by
  simp only [packetDetail, Finset.sum_sub_distrib, Finset.sum_const, Finset.card_univ,
    Fintype.card_fin, nsmul_eq_mul, packetMean]
  ring

theorem scalar_packet_mean (r : ℚ) : packetMean (fun _ => r) = r := by
  simp [packetMean]

theorem scalar_packet_detail (r : ℚ) : packetDetail (fun _ => r) = 0 := by
  ext i
  simp [packetDetail, scalar_packet_mean]

/-- Every rational linear decoder returns exactly its fixed coefficient times the source. -/
theorem scalar_decoder_law {V : Type*} [AddCommGroup V] [Module ℚ V]
    (decoder : V →ₗ[ℚ] ℚ) (carrier : V) (r : ℚ) :
    decoder (r • carrier) = decoder carrier * r := by
  rw [map_smul]
  simp only [smul_eq_mul]
  ring

theorem source_preserving_decoder {V : Type*} [AddCommGroup V] [Module ℚ V]
    (decoder : V →ₗ[ℚ] ℚ) (carrier : V) (h : decoder carrier = 1) (r : ℚ) :
    decoder (r • carrier) = r := by rw [scalar_decoder_law, h, one_mul]

theorem annihilating_decoder {V : Type*} [AddCommGroup V] [Module ℚ V]
    (decoder : V →ₗ[ℚ] ℚ) (carrier : V) (h : decoder carrier = 0) (r : ℚ) :
    decoder (r • carrier) = 0 := by rw [scalar_decoder_law, h, zero_mul]

def centeredWitness : Fin 6 → ℚ := ![1, -1, 0, 0, 0, 0]

/-- The exact split-packet counterexample uses complete scalar outputs. -/
theorem two_centered_factors_nonzero_pairing :
    (∑ i, centeredWitness i) = 0 ∧
      (∑ i, centeredWitness i * centeredWitness i) = 2 := by
  norm_num [centeredWitness, Fin.sum_univ_succ]

end
end GRWTSK.RiemannHypothesis.Conversation.ScalarReadout
```
