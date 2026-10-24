# Complete source: GRWTSK.NumberTheory.Zeta.Riemann.Checks.CanonicalPackingAndResidueHeadControls

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `953c2134dfb9959fff7aaab164924a18a526b71e` · SHA-256 `72420573c773096193fc9d6df1437d5f7ea8ef4a10071df41f7c3eddf8b804d1`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/- Copyright (c) 2026 grwtsk contributors. MIT.
Human mathematical direction: grwtsk contributors. Formalization assistance: OpenAI ChatGPT. -/
import GRWTSK.NumberTheory.Zeta.Riemann.CanonicalPrimePowerPackingNecessity
import GRWTSK.NumberTheory.Zeta.Riemann.FiniteZetaResidueHead
import Mathlib.Tactic

set_option autoImplicit false
noncomputable section

namespace GRWTSK.RiemannHypothesis.Checks.CanonicalPackingAndResidueHeadControls

open Filter Topology
open GRWTSK.RiemannHypothesis

theorem comparison_requires_arithmetic_decay
    {s : ℂ} (h : CanonicalPrimePowerPackingComparisonAtZero s) :
    Tendsto canonicalPrimePowerPackingSequence.valueAt atTop (𝓝 0) :=
  h.packing_tendsto_zero

theorem zero_multiplier_has_zero_head (T : ℝ) :
    nontrivialZeroResidueHead T (fun _ => 0) = 0 := by
  simp [nontrivialZeroResidueHead]

end GRWTSK.RiemannHypothesis.Checks.CanonicalPackingAndResidueHeadControls
```
