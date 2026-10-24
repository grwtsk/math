# Complete source: GRWTSK.NumberTheory.Zeta.Riemann.Checks.ReverseExplicitFormulaPsiGateControls

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `b2a9578b0e4c48c8188b9086b15aafc6d5355e67` · SHA-256 `d7c79ea60dc5c457c37bb01167bc97c558cf62888cf50b0f043b9ab97ea4db57`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/- Copyright (c) 2026 grwtsk contributors. MIT.
Human mathematical direction: grwtsk contributors. Formalization assistance: OpenAI ChatGPT. -/
import GRWTSK.NumberTheory.Zeta.Riemann.ReverseExplicitFormulaPsiGate
import Mathlib.Tactic

set_option autoImplicit false
noncomputable section

namespace GRWTSK.RiemannHypothesis.Checks.ReverseExplicitFormulaPsiGateControls

open GRWTSK.RiemannHypothesis

def reverseSevenEighthsGate : Prop :=
  ZeroFreeToPsiPowerLogSqAt ((7 : ℝ) / 8)

def externalAudit : List String :=
  ["BKLNW_app.bklnw_eq_A_7 uses sorry",
   "BKLNW_app.bklnw_eq_A_10 uses sorry",
   "BKLNW_app.bklnw_eq_A_12 uses sorry",
   "BKLNW_app.thm_14 uses sorry",
   "BKLNW Inputs include zero-density and finite-height RH data"]

end GRWTSK.RiemannHypothesis.Checks.ReverseExplicitFormulaPsiGateControls
```
