# Complete source: GRWTSK.Algebra.Energy.Variant50c05635b8a00e37b90a35f0b47ba8738efe130fc6da13f1dfc5d6621c99f537

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `c26d9d08e89b009d25fe7460401ccfc72d240fb7` · SHA-256 `50c05635b8a00e37b90a35f0b47ba8738efe130fc6da13f1dfc5d6621c99f537`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Mathematics.Trajectory.Residual
import Mathlib.Algebra.BigOperators.Group.Finset.Basic
import Mathlib.Tactic

/-! # Finite compilation of channel energies -/

namespace Mathematics.Trajectory

open scoped BigOperators

def compiledEnergy
    (samples : Fin sampleCount → Residual)
    (channel : Residual → ℝ) : ℝ :=
  ∑ sample, channel (samples sample)

def compiledTotalEnergy
    (samples : Fin sampleCount → Residual) : ℝ :=
  ∑ sample, (samples sample).total

theorem compiled_energy_channel_decomposition
    (samples : Fin sampleCount → Residual) :
    compiledTotalEnergy samples =
      compiledEnergy samples Residual.localResidual +
      compiledEnergy samples Residual.coverageResidual +
      compiledEnergy samples Residual.sparseSynthesisResidual +
      compiledEnergy samples Residual.basisSpanResidual +
      compiledEnergy samples Residual.eventCycleResidual +
      compiledEnergy samples Residual.twistedCohomologyResidual := by
  simp [compiledTotalEnergy, compiledEnergy, Residual.total,
    Finset.sum_add_distrib]

end Mathematics.Trajectory
```
