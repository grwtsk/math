# Complete source: GRWTSK.NumberTheory.Zeta.Riemann.Checks.SourceSensitivePackingNoGoControls

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `35b90fbf42cc9dc0779068b2a6757966ef65e114` · SHA-256 `f6c6b35acfdf5fb555a94cb80cb129e399da37404f527047086d5e66c30887b1`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/- Copyright (c) 2026 grwtsk contributors. MIT.
Human mathematical direction: grwtsk contributors. Formalization assistance: OpenAI ChatGPT. -/
import GRWTSK.NumberTheory.Zeta.Riemann.SourceSensitivePackingNoGo
import Mathlib.Tactic

set_option autoImplicit false
noncomputable section

namespace GRWTSK.RiemannHypothesis.Checks.SourceSensitivePackingNoGoControls

open Filter Topology
open GRWTSK.RiemannHypothesis

/-- A fixed zero model with zero limit cannot asymptotically encode target 1
through a positive limiting coefficient and vanishing residual. -/
theorem fixed_zero_model_rejects_nonzero_target
    (weight residual : ℕ → ℝ) (L : ℝ)
    (hweight : Tendsto weight atTop (𝓝 L))
    (hL : 0 < L)
    (hres : Tendsto residual atTop (𝓝 0))
    (hidentity : ∀ n, (0 : ℝ) = weight n * 1 + residual n) :
    False := by
  have h :=
    target_eq_zero_of_model_tendsto_zero
      (fun _ => 0) weight residual 1 L
      tendsto_const_nhds hweight hL hres hidentity
  norm_num at h

end GRWTSK.RiemannHypothesis.Checks.SourceSensitivePackingNoGoControls
```
