# Complete source: GRWTSK.NumberTheory.Zeta.Riemann.Checks.SevenEighthsMechanismQuarticBridgeControls

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `f5c286602d5abd4312afeafc2a1ad631cbcf8ac2` · SHA-256 `fd722089d361166417c4867fdf8e481645c356e88bce5fde8f69cd5c65350b1a`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/- Copyright (c) 2026 grwtsk contributors. MIT.
Human mathematical direction: grwtsk contributors. Formalization assistance: OpenAI ChatGPT. -/
import GRWTSK.NumberTheory.Zeta.Riemann.SevenEighthsMechanismTrace
import Mathlib.Tactic

set_option autoImplicit false

/-!
# Controls for theorem admission, mechanism transport, and quartic closure

The controls reject the conflation of:

* the all-prime arithmetic scale equivalence;
* a one-way external theorem port;
* a terminal theorem with its internal detector trace;
* a source-bound proof-relevant mechanism bridge;
* a prime-derived quartic extraction; and
* a direct or cofinal threshold closure.

No external theorem, mechanism bridge, prime extraction, or RH proof is supplied.
-/

namespace GRWTSK.RiemannHypothesis.Checks.SevenEighthsMechanismQuarticBridgeControls

open GRWTSK.ArithmeticScale
open GRWTSK.RiemannHypothesis
open GRWTSK.Polynomial.ConjugateQuartic

/-- Concrete prime labels used by the coordinate controls. -/
def primeTwo : PrimeIndex := ⟨2, by norm_num⟩

def primeThree : PrimeIndex := ⟨3, by norm_num⟩

/-- A local coordinate recovers its own primary exponent. -/
theorem two_coordinate_recovers_two_primary (n : ℤ) :
    pAdicExponent primeTwo (pPrimaryEmbedding primeTwo n) = n :=
  pAdicExponent_pPrimaryEmbedding primeTwo n

/-- A local coordinate annihilates a different prime basis vector. -/
theorem two_coordinate_annihilates_three_primary (n : ℤ) :
    pAdicExponent primeTwo (pPrimaryEmbedding primeThree n) = 0 := by
  apply pAdicExponent_pPrimaryEmbedding_of_ne
  decide

/-- The all-prime coordinate map is an arithmetic bijection. -/
theorem all_prime_scale_map_is_bijective :
    Function.Bijective
      (logarithmicToPAdicFamily : ArithmeticLogScale → PAdicScaleFamily) :=
  logarithmicToPAdicFamily_bijective

/-- A one-way theorem transport can produce a local theorem without any
arithmetic-scale equivalence field. -/
def standardOneWayTransport : OneWayRawHalfPlaneTransport 1 where
  ExternalClaim := True
  externalProof := True.intro
  toLocal := fun _ => riemannZetaZeroFreeRightHalfPlane_one

theorem one_way_transport_requires_no_bijection :
    RiemannZetaZeroFreeRightHalfPlane 1 :=
  standardOneWayTransport.localTheorem

/-- Even a valid terminal zero-free theorem cannot uniformly reconstruct an
arbitrary missing internal proposition.  Additional mechanism data are a real
input, not a projection of the terminal theorem. -/
theorem terminal_endpoint_does_not_recover_arbitrary_internal_evidence :
    ¬ (∀ Internal : Prop,
      RiemannZetaZeroFreeRightHalfPlane 1 → Internal) := by
  intro hrecover
  exact hrecover False riemannZetaZeroFreeRightHalfPlane_one

/-- The pinned terminal theorem review remains non-admission-ready. -/
theorem pinned_terminal_review_remains_blocked :
    ¬ openAISevenEighthsReview.AdmissionReady :=
  openAISevenEighthsReview_not_admissionReady

/-- The stronger proof-relevant mechanism review is independently blocked. -/
theorem pinned_mechanism_review_remains_blocked :
    ¬ openAISevenEighthsMechanismReview.AdmissionReady :=
  openAISevenEighthsMechanismReview_not_admissionReady

/-- Any supplied mechanism chain reaches its terminal zeta proposition through
its declared family specialization, not through a family/zeta bijection. -/
theorem mechanism_chain_uses_specialization
    (chain : SevenEighthsMechanismChain) :
    RiemannZetaZeroFreeRightHalfPlane ((7 : ℝ) / 8) :=
  chain.toZeta

/-- A source-bound accepted mechanism is pinned to the exact OpenAI mechanism
record rather than an arbitrary review object. -/
theorem source_bound_mechanism_uses_pinned_record
    (accepted : SourceBoundAcceptedSevenEighthsMechanismPort) :
    accepted.accepted.review.source = openAISevenEighthsMechanismSource :=
  accepted.alignment.mechanismSource

/-- The complete retained trace terminates at the same theorem term as the
accepted terminal port. -/
theorem source_bound_trace_terminal_agreement
    (accepted : SourceBoundAcceptedSevenEighthsMechanismPort) :
    accepted.trace.zeta = accepted.accepted.terminal.port.theorem :=
  accepted.trace_zeta_eq_terminal

/-- The strengthened bridge consumes the complete stage trace before producing
a local witness. -/
def source_bound_trace_bridge_consumes_complete_trace
    {Source Local : Type*}
    [AddCommGroup Source] [AddCommGroup Local]
    [Module ℝ Source] [Module ℝ Local]
    [TopologicalSpace Source] [TopologicalSpace Local]
    (accepted : SourceBoundMechanismBridgeAccepted Source Local) : Local :=
  accepted.bridge.localWitness

/-- Toy real zero set used only to test threshold direction. -/
def ToyZeroSet : Set ℝ := {((3 : ℝ) / 5)}

/-- A toy zero set is free in the strict right half-plane above `σ` when no
member lies strictly right of `σ`. -/
def ToyZeroFreeRightHalfPlane (σ : ℝ) : Prop :=
  ∀ x, x ∈ ToyZeroSet → ¬ σ < x

/-- The toy zero at `3/5` is excluded from the strict region right of `7/8`. -/
theorem toy_sevenEighths_zeroFree :
    ToyZeroFreeRightHalfPlane ((7 : ℝ) / 8) := by
  intro x hx hright
  simp [ToyZeroSet] at hx
  subst x
  norm_num at hright

/-- The same toy zero lies strictly right of `1/2`; regional information alone
does not reverse threshold monotonicity. -/
theorem toy_half_not_zeroFree :
    ¬ ToyZeroFreeRightHalfPlane (1 / 2 : ℝ) := by
  intro hfree
  exact hfree ((3 : ℝ) / 5) (by simp [ToyZeroSet]) (by norm_num)

/-- The signed quartic's nonnegativity forces the centered horizontal
coordinate to vanish. -/
theorem quartic_nonnegative_forces_center
    {a t : ℝ} (h : 0 ≤ witnessTrace a t) : a = 0 :=
  (witnessTrace_nonneg_iff a t).mp h

/-- Away from the center, the signed quartic is strictly negative; it is not a
sum of squared absolute values. -/
theorem quartic_off_center_is_negative
    {a : ℝ} (ha : a ≠ 0) (t : ℝ) :
    witnessTrace a t < 0 :=
  witnessTrace_neg ha t

/-- A terminal theorem port inhabits gate one only. -/
def accepted_terminal_stays_port_gate
    (port : AcceptedExternalRawHalfPlanePort ((7 : ℝ) / 8)) :
    PortAccepted :=
  ⟨port⟩

/-- Direct threshold closure is conditional on the complete extraction gate. -/
theorem direct_quartic_closure_is_conditional
    (quadratic : QuadraticExtractionAccepted) :
    _root_.RiemannHypothesis :=
  (ThresholdClosureAccepted.direct quadratic).toRiemannHypothesis

/-- Stepwise threshold closure is conditional on a complete cofinal tower. -/
theorem cofinal_descent_closure_is_conditional
    (descent : CofinalPrimeQuarticDescent) :
    _root_.RiemannHypothesis :=
  (ThresholdClosureAccepted.cofinal descent).toRiemannHypothesis

end GRWTSK.RiemannHypothesis.Checks.SevenEighthsMechanismQuarticBridgeControls
```
