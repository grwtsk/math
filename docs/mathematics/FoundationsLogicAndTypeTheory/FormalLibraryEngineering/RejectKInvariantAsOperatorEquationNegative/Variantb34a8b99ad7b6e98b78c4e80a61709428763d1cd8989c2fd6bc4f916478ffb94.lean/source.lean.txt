import GRWTSK.Interfaces.GraphHodgePortCore

open GRWTSK.LinearAlgebra.FramedFiberPort
universe u v w m n
variable {R : Type u} [Ring R]
variable {E : Type v} [AddCommGroup E] [Module R E]
variable {F : Type w} [AddCommGroup F] [Module R F]
variable {M : Type m} [CommMonoid M] {N : Type n} [CommMonoid N]
variable {D : E →ₗ[R] E} {D' : F →ₗ[R] F}
-- Hostile mutation: equality of the K-channel cannot discharge the operator residual.
example (P : StableKOperatorPort D D' M N)
    (h : P.kZeroMap = P.kZeroMap) : P.IsExact := by
  exact h
