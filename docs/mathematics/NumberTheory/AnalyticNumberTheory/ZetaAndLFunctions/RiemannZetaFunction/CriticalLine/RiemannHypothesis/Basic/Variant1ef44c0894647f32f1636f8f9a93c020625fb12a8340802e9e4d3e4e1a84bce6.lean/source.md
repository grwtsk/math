# Complete source: GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.Basic.Variant1ef44c0894647f32f1636f8f9a93c020625fb12a8340802e9e4d3e4e1a84bce6

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `602585ce5ce259416650b0f73bc727d5d5e8f474` · SHA-256 `1ef44c0894647f32f1636f8f9a93c020625fb12a8340802e9e4d3e4e1a84bce6`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Mathlib.Data.Nat.Basic

/-! Nonterminal public fixtures for testing compiled formal inventories. -/

namespace Riemann.Fixtures

theorem identity (n : Nat) : n = n := rfl

theorem identityAgain (n : Nat) : n = n := identity n

theorem identityFromPremise (p : Prop) (h : p) : p := h

def naturalIdentity (n : Nat) : Nat := n

end Riemann.Fixtures
```
