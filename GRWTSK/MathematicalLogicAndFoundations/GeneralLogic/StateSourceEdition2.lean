import Mathematics.TensorNetwork.Index
import Mathlib.Data.Complex.Basic

/-!
# Profile-bound semantic tensor states

Enumeration alone does not turn a semantic object into a tensor state.  An
encoding certificate names the decoder, observation transport, identity law,
and its quantitative error boundary.
-/

namespace Mathematics.TensorNetwork

universe u v w x

/-- A finite tensor state in coordinate form. -/
abbrev TensorState (N D : Nat) :=
  PhysicalConfiguration N D → ℂ

/--
Certified semantic realization into one selected tensor profile.  The partial
decoder is defined only on its admitted image.
-/
structure SemanticTensorEncodingCertificate
    (SemanticState : Type u)
    (SemanticContext : Type v)
    (HilbertState : Type w)
    (Observation : Type x) where
  encode : SemanticState → HilbertState
  decode : HilbertState → Option SemanticContext
  semanticContext : SemanticState → SemanticContext
  decodeEncode :
    ∀ state, decode (encode state) = some (semanticContext state)
  observeSemantic : Observation → SemanticState → ℂ
  observeHilbert : Observation → HilbertState → ℂ
  observationNaturality :
    ∀ observation state,
      observeHilbert observation (encode state) =
        observeSemantic observation state
  identityPreserved :
    Function.Injective semanticContext
  errorBound : ℝ
  errorBound_nonnegative : 0 ≤ errorBound

/-- Exact recovery is available only from the supplied decoder theorem. -/
theorem SemanticTensorEncodingCertificate.recovers
    (certificate :
      SemanticTensorEncodingCertificate
        SemanticState SemanticContext HilbertState Observation)
    (state : SemanticState) :
    certificate.decode (certificate.encode state) =
      some (certificate.semanticContext state) :=
  certificate.decodeEncode state

/--
An explicitly injective tensor encoding is a stronger certificate; it is not
derived from positive semidefiniteness or from an upper norm estimate.
-/
structure InjectiveSemanticTensorEncodingCertificate
    (SemanticState : Type u)
    (SemanticContext : Type v)
    (HilbertState : Type w)
    (Observation : Type x) where
  base :
    SemanticTensorEncodingCertificate
      SemanticState SemanticContext HilbertState Observation
  encodeInjective : Function.Injective base.encode

end Mathematics.TensorNetwork
