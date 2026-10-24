# Complete source: GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.LosslessSourceTransport.Variant0d07d739e7ffb4ff6b2513fef11ddc9294eaf323344120ac074cbc5e1d9ef19c

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `eb6f8820673f35bf5170900cd16b1e6a0d4c1f00` · SHA-256 `0d07d739e7ffb4ff6b2513fef11ddc9294eaf323344120ac074cbc5e1d9ef19c`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import FormalResearch.RiemannHypothesis.Conversation.PolynomialRHConsumer
import FormalResearch.RiemannHypothesis.Conversation.CenteredPermutation
import FormalResearch.RiemannHypothesis.Conversation.InboundChannels

/-!
# Lossless source coordinates preserve the obligation and need a separate action law

L-HC05 and B23-L08 require two distinct laws: exact recovery and equivariance.
Any lossless decoder preserves the original all-real polynomial source predicate.
A literal centered 23-slot encoding recovers every scalar, but it fails to
intertwine the full permutation action with the trivial source action. Placing
the same source in the marked fixed inbound coordinate has zero orbit component
by construction, while retaining the original predicate. These finite controls
do not construct an M23 action, candidate scheme, Grassmannian estimate or
arithmetic bound.

Human source-fidelity and action distinction: grwtsk contributors. Local checked
countermodel and actual-source consumer: OpenAI Codex. Upstream functions,
permutations and finite sums retain Mathlib identity.
-/
set_option autoImplicit false
namespace GRWTSK.RiemannHypothesis.Conversation.LosslessSourceTransport
open scoped BigOperators
noncomputable section

/-- Recoverability preserves each predicate on the actual decoded source. -/
theorem exact_decoder_preserves_predicate {S V : Type*}
    (encode : S → V) (decode : V → S) (hdecode : Function.LeftInverse decode encode)
    (P : S → Prop) : (∀ s, P (decode (encode s))) ↔ ∀ s, P s := by
  constructor
  · intro h s
    simpa only [hdecode s] using h s
  · intro h s
    rw [hdecode s]
    exact h s

/-- A moving coordinate system with exact all-real recovery retains Problem P. -/
theorem actual_polynomial_obligation_unchanged {V : Type*}
    (encode : ℝ → V) (decode : ℝ → V → ℝ)
    (hdecode : ∀ A : ℝ, decode A (encode A) =
      FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.EstimatePrimeSmoothDefect.closedPrimeMoment A) :
    PolynomialMertensReduction.EventuallyPolynomialUpper (fun A ↦ decode A (encode A)) ↔
      OpenArithmeticSuppliers.ProblemP := by
  simp_rw [hdecode]
  rfl

def centeredPacket (r : ℝ) : Fin 23 → ℝ := Pi.single 0 r - Pi.single 1 r

theorem centered_packet_decodes (r : ℝ) : centeredPacket r 0 = r := by
  simp [centeredPacket]

theorem centered_packet_injective : Function.Injective centeredPacket := by
  intro r s h
  have he := congrArg (fun v : Fin 23 → ℝ ↦ v 0) h
  simpa only [centered_packet_decodes] using he

theorem centered_packet_has_zero_sum (r : ℝ) : ∑ i, centeredPacket r i = 0 := by
  simp [centeredPacket, Finset.sum_sub_distrib]

/-- An actual permutation changes the encoded mark without changing the source scalar. -/
theorem recoverable_packet_fails_full_intertwining {r : ℝ} (hr : r ≠ 0) :
    ¬ ∀ g : Equiv.Perm (Fin 23), ∀ i, centeredPacket r (g i) = centeredPacket r i := by
  intro h
  have he := h (Equiv.swap (0 : Fin 23) 2) 0
  have he' : (0 : ℝ) = r := by simpa [centeredPacket] using he
  exact hr he'.symm

theorem recoverable_centered_packet_readout_unbounded (B : ℝ) :
    ∃ v : Fin 23 → ℝ, (∑ i, v i = 0) ∧ B < v 0 := by
  refine ⟨centeredPacket (B + 1), centered_packet_has_zero_sum _, ?_⟩
  rw [centered_packet_decodes]
  linarith

theorem fixed_insertion_orbit_zero (r : ℝ) :
    InboundChannels.orbitPart (InboundChannels.fixedEmbedding r) = 0 := by
  rfl

theorem fixed_insertion_retains_predicate (P : ℝ → Prop) (r : ℝ) :
    P (InboundChannels.fixedEmbedding r).1 ↔ P r := by
  rfl

end
end GRWTSK.RiemannHypothesis.Conversation.LosslessSourceTransport
```
