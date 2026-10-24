# Complete source: GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.CountableShadowTowerExamples.Variant1a112db2e9e05571abd085dcb8e3ce2311b5d3a39cd9ef0e1e5ddfce3425db93

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `9cc4f784a144196569351b8c56dbb07ce20cab62` · SHA-256 `1a112db2e9e05571abd085dcb8e3ce2311b5d3a39cd9ef0e1e5ddfce3425db93`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Boolean.Cube.CountableShadowTower

/-!
# Countable shadow tower examples

Variable-based smoke examples for the Nat-indexed countable shadow tower. These
examples use only supplied finite verifier facts and an explicit analytic bridge;
they do not construct analytic authority from the tower.
-/

namespace Boolean
namespace Cube

variable {A : RiemannHypothesisAuthority}
variable {V : RHFiniteShadowVerifier}
variable (T : RHCountableShadowTower A V)

example : ∀ n : Nat, V.accepts (T.shadowAt n) :=
  T.verifiedAt

example : ∀ n : Nat, T.PrefixVerified n :=
  T.prefixVerified

variable (B : RHCountableTowerAnalyticBridge A V T)

example
    (hExhaust : B.finiteShadowExhaustionSound)
    (hZero : B.zeroLocationOrRealRootSound) :
    A.riemannHypothesis :=
  B.riemannHypothesis hExhaust hZero

end Cube
end Boolean
```
