# Complete source: GRWTSK.NumberTheory.Zeta.Riemann.Checks.DirichletDampedPrimePowerPackingControls

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `42d1fe725b0c498edfa445d3358ed2e9291881eb` · SHA-256 `65525dba7200b2ef907f88d78ce1f001c0ec407d84f340a4fd1244c75566d675`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/- Copyright (c) 2026 grwtsk contributors. MIT.
Human mathematical direction: grwtsk contributors. Formalization assistance: OpenAI ChatGPT. -/
import GRWTSK.NumberTheory.Zeta.Riemann.DirichletDampedPrimePowerPacking
import Mathlib.Tactic

set_option autoImplicit false
noncomputable section

namespace GRWTSK.RiemannHypothesis.Checks.DirichletDampedPrimePowerPackingControls

open Filter Topology
open GRWTSK.RiemannHypothesis

theorem damped_packing_is_positive (n : ℕ) :
    0 ≤ dirichletTwoPackingSequence.valueAt n :=
  dirichletTwoPacking_valueAt_nonnegative n

theorem damped_packing_has_required_decay :
    Tendsto dirichletTwoPackingSequence.valueAt atTop (𝓝 0) :=
  dirichletTwoPacking_valueAt_tendsto_zero

end GRWTSK.RiemannHypothesis.Checks.DirichletDampedPrimePowerPackingControls
```
