import Mathematics.NeuralDiffusion.Transport

/-!
# State-preserving neural layers

The analytic candidate has no semantic authority.  Only the `accepted` branch
of `CertificationResult` returns a value of the exact certified-state type.
-/

namespace Mathematics.NeuralDiffusion

universe u v w

noncomputable section

inductive CertificationResult (State : Type u)
  | accepted (state : State)
  | reject
  deriving DecidableEq, Repr

/--
Realize, diffuse, and certify.  Reconstruction and image-membership checking are
combined in `certify`; a failed proof must return `reject`.
-/
structure CertifiedLayer
    (State : Type u) (A : Type v) (B : Type w)
    [NormedAddCommGroup B] [NormedSpace ℝ B]
    (algebra : ConvolutionInvolution A)
    (diffuser : LinearDiffuser B)
    (transport : CompatibleTransport A B algebra diffuser) where
  analytic : AnalyticLayer A B algebra diffuser transport
  realize : State → B
  certify : B → CertificationResult State

namespace CertifiedLayer

variable
    {State : Type u} {A : Type v} {B : Type w}
    [NormedAddCommGroup B] [NormedSpace ℝ B]
    {algebra : ConvolutionInvolution A}
    {diffuser : LinearDiffuser B}
    {transport : CompatibleTransport A B algebra diffuser}

def step
    (layer : CertifiedLayer State A B algebra diffuser transport)
    (state : State) :
    CertificationResult State :=
  layer.certify (layer.analytic.candidate (layer.realize state))

/-- By construction, a layer can only return a certified state or rejection. -/
theorem exact_state_preservation
    (layer : CertifiedLayer State A B algebra diffuser transport)
    (state : State) :
    (∃ accepted, layer.step state = .accepted accepted) ∨
      layer.step state = .reject := by
  cases layer.step state <;> simp

end CertifiedLayer

end

end Mathematics.NeuralDiffusion
