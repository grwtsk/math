# Complete source: GRWTSK.Analysis.FunctionalAnalysis.BanachSpaces.NormedSpaces.CertifiedLayer.Variant771d533aeb8242778541ded4e3af9211ca50af0e50af35959dfdf2914c1fe11f

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `10f33d006e8c56091666feba89a90f55a15f966d` · SHA-256 `771d533aeb8242778541ded4e3af9211ca50af0e50af35959dfdf2914c1fe11f`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
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
```
