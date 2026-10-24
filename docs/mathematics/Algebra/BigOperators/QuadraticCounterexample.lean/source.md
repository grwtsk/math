# Complete source: GRWTSK.Algebra.BigOperators.QuadraticCounterexample

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `96dac280e8107ce5229629741427285c1afaa9b7` · SHA-256 `99172709bb9b2b2721b901e8dd174b0a61e56ea69d2ac97e78a622106832ab29`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/- Copyright (c) 2026 grwtsk contributors. MIT.
Human mathematical direction: grwtsk contributors; OpenAI Codex formalization assistance.
Mathlib imports retain upstream authorship and Apache-2.0 licensing.
Classical constructions and conditional adapters; no originality claim. -/
import Mathlib.Algebra.Order.Archimedean.Real.Basic
import Mathlib.Tactic.NormNum

/-! Exact waveform roles. Mathematical proof is never an operational credential.
This module proves local algebra/analysis and conditional returns, not P04.
Angular-frequency Parseval needs a separately checked convention adapter. -/
set_option autoImplicit false
noncomputable section
namespace GRWTSK.Analysis.Waveform

/-- Total squared magnitude alone cannot identify contributions of two channels. -/
theorem same_total_different_diagonal :
    ((1:ℝ)+0)^2 = ((1/2:ℝ)+(1/2))^2 ∧
    (1:ℝ)^2+0^2 ≠ (1/2:ℝ)^2+(1/2)^2 := by norm_num

end GRWTSK.Analysis.Waveform
```
