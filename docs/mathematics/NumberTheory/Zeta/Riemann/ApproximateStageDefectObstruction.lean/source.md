# Complete source: GRWTSK.NumberTheory.Zeta.Riemann.ApproximateStageDefectObstruction

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `ae740abc90113da4a49551f1b2610350f964ee89` · SHA-256 `7139eaf7d923b3305b5ba64a57e597409e02a42031162a0db04dd8b0de4e7e6a`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/- Copyright (c) 2026 grwtsk contributors. MIT.
Human mathematical direction: grwtsk contributors. Formalization assistance: OpenAI.
Mathlib results retain their upstream authorship and Apache-2.0 license. -/
import GRWTSK.NumberTheory.Zeta.Riemann.WeilPositiveLimitCore

set_option autoImplicit false

/-!
# Approximate-stage sign defect at a negative comparison witness

This leaf advances the negative-witness audit in issue #158. It reuses the
existing exact nine-channel comparison rather than reconstructing it.
No positivity of the target is assumed or derived. The lower stage bound is
an explicit input, not a theorem about a zeta arithmetic Gram family.
-/

namespace GRWTSK.RiemannHypothesis

/-- A negative target witness forces either stage-sign leakage or a
nontrivial *complete* comparison residual. No sign of the residual is assumed.
The defect `eta` need not be nonnegative for this algebraic statement. -/
theorem ExactResidualComparison.negative_gap_le_stage_defect_add_residual
    {T : Type*} (C : ExactResidualComparison T) (n : ℕ) (f : T)
    (mu eta : ℝ)
    (hw : C.target f f ≤ -mu)
    (hq : -eta ≤ C.approximant n f f) :
    mu ≤ eta + |C.residuals.total n f f| := by
  have hid := C.identity n f f
  have habs : -(C.residuals.total n f f) ≤
      |C.residuals.total n f f| := neg_le_abs _
  linarith

/-- A claimed upper certificate smaller than the forced witness gap is
incompatible with the exact comparison and the stated approximate-stage bound. -/
theorem ExactResidualComparison.no_small_error_at_negative_witness
    {T : Type*} (C : ExactResidualComparison T) (n : ℕ) (f : T)
    (mu eta epsilon : ℝ)
    (hw : C.target f f ≤ -mu)
    (hq : -eta ≤ C.approximant n f f)
    (herror : |C.residuals.total n f f| ≤ epsilon)
    (hstrict : eta + epsilon < mu) : False := by
  have hgap := C.negative_gap_le_stage_defect_add_residual n f mu eta hw hq
  linarith

end GRWTSK.RiemannHypothesis
```
