# Complete source: GRWTSK.Analysis.AsymptoticAnalysis.PolynomialClosure

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `5102a0074338063797df16b7eccf394ebf623ee3` · SHA-256 `311bc9078341d4641b7ed7a681b38b1af2f9920d384cabcf4c6212fca45e367d`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/- Copyright (c) 2026 grwtsk contributors. MIT.
Human direction: grwtsk contributors; OpenAI Codex formalization assistance.
Classical implications; imported Mathlib contributions retain their authorship. -/
import GRWTSK.Analysis.AsymptoticAnalysis.PolynomialErrorBound
set_option autoImplicit false
noncomputable section
namespace GRWTSK.Analysis.Waveform

theorem p04_conditional {X R e : ℝ → ℝ} {CR Ce r s : ℝ}
    (hCR : 0 ≤ CR) (hCe : 0 ≤ Ce) (hr : 0 ≤ r) (_hs : 0 ≤ s)
    (hid : ∀ T, 0 ≤ T → X T = R T + e T)
    (hR : ∀ T, 0 ≤ T → R T ≤ CR*(1+T)^r)
    (he : ∀ T, 0 ≤ T → |e T| ≤ Ce*(1+T)^s) :
    ∃ C p : ℝ, 0 ≤ C ∧ 0 ≤ p ∧ ∀ T, 0 ≤ T → X T ≤ C*(1+T)^p := by
  exact ⟨CR+Ce,max r s,add_nonneg hCR hCe,(le_max_left r s).trans' hr,
    polynomial_return hCR hCe hid hR he⟩
end GRWTSK.Analysis.Waveform
```
