# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.MathematicalLogic.Counterexamples.Checks.Positive.ExactCounterexampleContracts

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `9e232cea4153a6b8ec936c3d7d7a7a3afbccb7b1` · SHA-256 `75e56e8c723da994f676465e2a0ed351a68fe1ddb2d199e04350d9e1ec6c56bd`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import GRWTSK.Algebra.LinearAlgebra.CommonJCounterexamples
open GRWTSK.LinearAlgebra.CommonJCounterexamples
set_option autoImplicit false
example : hostileSign * hostileUpper * hostileSign⁻¹ = hostileUpper⁻¹ := hostileUpper_sign_inverse
example : hostileSign * hostileLower * hostileSign⁻¹ = hostileLower⁻¹ := hostileLower_sign_inverse
example : ¬ Commute hostileUpper hostileLower := hostile_edges_noncommute
example : hostileSign * (hostileLower * hostileUpper) * hostileSign⁻¹ ≠ (hostileLower * hostileUpper)⁻¹ := noncommuting_sign_loop_fails
```
