# Complete source: GRWTSK.Analysis.ComplexAnalysis.PositiveHalfPlane

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `db9d2bc5a43180673435bbcb6403de1fdb98d95d` · SHA-256 `f7a4d6cd2a41cd742eca6f56de856c4dad0b6be2b1d8362eb628e0f7e9cdbabe`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/- Copyright (c) 2026 grwtsk contributors. MIT.
Human mathematical direction: grwtsk contributors. Formalization assistance: OpenAI Codex.
Mathlib results retain their upstream authorship and Apache-2.0 license. -/
import Mathlib.Data.Complex.Basic

noncomputable section
namespace EulerP04RH.RHTerminal

def PositiveHalfPlane : Set ℂ := {z | 0 < z.re}

end EulerP04RH.RHTerminal
```
