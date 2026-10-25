# Complete source: GRWTSK.Logic.Counterexamples.Checks.Positive.ExactCounterexampleContracts

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `46becba1edf688eeded7d725858d1c221a467c50` · SHA-256 `223cb286c22fa1a942e67e047e9e0d3766bd7ed1955041365f337024bb5c6df8`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import GRWTSK.LinearAlgebra.CommonJCounterexamples
open GRWTSK.LinearAlgebra.CommonJCounterexamples
set_option autoImplicit false
example : hostileSign * hostileUpper * hostileSign⁻¹ = hostileUpper⁻¹ := hostileUpper_sign_inverse
example : hostileSign * hostileLower * hostileSign⁻¹ = hostileLower⁻¹ := hostileLower_sign_inverse
example : ¬ Commute hostileUpper hostileLower := hostile_edges_noncommute
example : hostileSign * (hostileLower * hostileUpper) * hostileSign⁻¹ ≠ (hostileLower * hostileUpper)⁻¹ := noncommuting_sign_loop_fails
```
