# Complete source: GRWTSK.NumberTheory.Zeta.Riemann.Checks.GradedPsiThresholdTransportControls

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `d11851217e6dedcd648bc09ff5286a8d6fdeec2e` · SHA-256 `da3d4ed0e89d3a269102f36babaacf6377c4b0b0063de5eca96b027669e67daa`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/- Copyright (c) 2026 grwtsk contributors. MIT.
Human mathematical direction: grwtsk contributors. Formalization assistance: OpenAI ChatGPT. -/
import GRWTSK.NumberTheory.Zeta.Riemann.GradedPsiThresholdTransport
import Mathlib.Tactic

set_option autoImplicit false
noncomputable section

namespace GRWTSK.RiemannHypothesis.Checks.GradedPsiThresholdTransportControls

open GRWTSK.RiemannHypothesis

theorem psi_to_theta_same_threshold
    {ρ : ℝ} (hρ : (1 / 2 : ℝ) ≤ ρ)
    (hψ : AllDyadicPsiAtThreshold ρ) :
    AllDyadicThetaAtThreshold ρ :=
  psiAtThreshold_to_thetaAtThreshold hρ hψ

end GRWTSK.RiemannHypothesis.Checks.GradedPsiThresholdTransportControls
```
