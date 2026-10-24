# Complete source: GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.HostileGuardsV1RejectedPrebytes.Variant02daf8d2be45da46a5641d1580f7faf6717f26cc8672e908921d6b5a6a089c2c

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `dc526e70325fc5b5930edcc0cc61529a9bd4d3bf` · SHA-256 `02daf8d2be45da46a5641d1580f7faf6717f26cc8672e908921d6b5a6a089c2c`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import FormalResearch.RiemannHypothesis.SourceMangoldtStorage

set_option autoImplicit false
set_option relaxedAutoImplicit false
noncomputable section
open FormalResearch.RiemannHypothesis.SourceReflectionDuality
open FormalResearch.RiemannHypothesis.SourceMangoldtInteraction
open FormalResearch.RiemannHypothesis.SourceMangoldtStorage

/-- The first inventory-birth fixture cannot be used as an A >= 1 tail instance. -/
example : Real.log 2 / 2 < (1 : ℝ) := by
  have h := Real.log_le_sub_one_of_pos (by norm_num : (0 : ℝ) < 2)
  linarith

/-- Individual source squares are bounded, but their weighted sum retains its baseline. -/
example {A : ℝ} (hA : 0 < A) (s : ℝ) : sourceSquareStorage A s ≤ 2 := by
  have h := norm_sub_le (originalSourceState A) (translation s (originalSourceState A))
  rw [(translation s).norm_map, originalSourceState_norm hA] at h
  have hn := norm_nonneg (originalSourceState A - translation s (originalSourceState A))
  unfold sourceSquareStorage translationStorage
  nlinarith
```
