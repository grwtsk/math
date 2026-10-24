# Complete source: GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.SourceDualTransport.Variantd167cc5bbd8f80158ee136a9686ad0c4950d7a132592ab0273d4149d0ba10b85

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `b4be54e2a54a3ec701b650bdbccc575c5aac4f3a` · SHA-256 `d167cc5bbd8f80158ee136a9686ad0c4950d7a132592ab0273d4149d0ba10b85`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import FormalResearch.RiemannHypothesis.SourceDualRotation
import FormalResearch.PositiveAtlas.Spectral.FiniteCommonJTransport

/-!
# Ordered common-generator transport on the actual source L² space

This binds generic ordered-loop algebra to the actual Fourier-sign rotation
group. Angles are independently supplied; this is not a construction of
arithmetic edges, a refinement transport, or a uniform signed work budget.

Author: grwtsk contributors. Developed with OpenAI Codex; checked by Lean.
-/

set_option autoImplicit false

namespace FormalResearch.RiemannHypothesis.SourceDualTransport

open SourceReflectionDuality SourceDualRotation
open FormalResearch.PositiveAtlas.Spectral
open FiniteCommonJTransport

/-- The actual common-J rotation family obeys dual inverse transport in frozen order. -/
theorem angle_loop_inverse (θ : ℕ → ℝ) (n k : ℕ) :
    angularSignDuality * orderedProduct (fun i => angleRotation (θ i)) n k *
      angularSignDuality⁻¹ = (orderedProduct (fun i => angleRotation (θ i)) n k)⁻¹ :=
  orderedProduct_sign_inverse _ angularSignDuality
    (fun i j => angleRotation_commute (θ i) (θ j))
    (fun i => angleRotation_sign_conjugation (θ i)) n k

/-- Site-based gauges retain the two endpoints on the actual L² isometry group. -/
theorem actual_site_loop_gauge {V : Type*} (θ : ℕ → ℝ) (p : ℕ → V)
    (H : V → ComplexL2 ≃ₗᵢ[ℂ] ComplexL2) (n k : ℕ) (hp : p (n + k) = p n) :
    orderedProduct (siteGauge (fun i => angleRotation (θ i)) p H) n k =
      H (p n) * orderedProduct (fun i => angleRotation (θ i)) n k * (H (p n))⁻¹ :=
  site_loop_gauge _ p H n k hp

/-- Pure actual-space chart changes still have identity round trip. -/
theorem actual_chart_loop_identity {V : Type*} (p : ℕ → V)
    (H : V → ComplexL2 ≃ₗᵢ[ℂ] ComplexL2) (n k : ℕ) (hp : p (n + k) = p n) :
    orderedProduct (chartEdges (H ∘ p)) n k = 1 :=
  chart_loop_identity p H n k hp

end FormalResearch.RiemannHypothesis.SourceDualTransport
```
