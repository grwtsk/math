# Complete source: GRWTSK.Analysis.FunctionalAnalysis.BanachSpaces.NormedSpaces.Approximation.Variant99ce064e3c9abce4770f429bb4edca6ff096174f672825d86d1a41289c2b9198

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `16643d9880f87f82e8fa251e57ff852d3b5fbc07` · SHA-256 `99ce064e3c9abce4770f429bb4edca6ff096174f672825d86d1a41289c2b9198`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Mathematics.GammaBridge.ParameterProfile
import Mathlib.Analysis.Normed.Module.Basic

/-! # Certified finite bridge approximation -/

namespace Mathematics.GammaBridge

variable {E : Type*} [NormedAddCommGroup E] [NormedSpace ℝ E]

structure CertifiedApproximation (bridge : Exact E) where
  compiled : ℝ → E
  errorBound : ℝ
  errorBoundNonnegative : 0 ≤ errorBound
  pointwiseError :
    ∀ time ∈ Set.Icc (0 : ℝ) 1,
      ‖compiled time - bridge.path time‖ ≤ errorBound

end Mathematics.GammaBridge
```
