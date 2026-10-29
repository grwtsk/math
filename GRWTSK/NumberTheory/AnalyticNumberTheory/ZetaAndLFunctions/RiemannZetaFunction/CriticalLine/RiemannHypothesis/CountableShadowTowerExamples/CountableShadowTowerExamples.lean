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
