# Complete source: GRWTSK.LinearAlgebra.HodgePortConsequences

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `d7afb3ef25e5cb9c1ee84f961b5697bde740638d` · SHA-256 `e2b20354f5e22f3053eab4aaaa608590f9ec06f5037f0cd97abda8c50043978c`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import GRWTSK.LinearAlgebra.FramedFiberPort

namespace GRWTSK.LinearAlgebra.FramedFiberPort

universe u v₀ v₁ w₀ w₁ x₀ x₁

section HodgePortConsequences

variable {R : Type u} [Ring R]
variable {A₀ : Type v₀} {A₁ : Type v₁}
variable {B₀ : Type w₀} {B₁ : Type w₁}
variable {C₀ : Type x₀} {C₁ : Type x₁}
variable [AddCommGroup A₀] [Module R A₀]
variable [AddCommGroup A₁] [Module R A₁]
variable [AddCommGroup B₀] [Module R B₀]
variable [AddCommGroup B₁] [Module R B₁]
variable [AddCommGroup C₀] [Module R C₀]
variable [AddCommGroup C₁] [Module R C₁]

namespace TwoTermHodgeData

/-- Algebraic harmonicity in degree one. -/
def IsHarmonic1 (A : TwoTermHodgeData R A₀ A₁) (x : A₁) : Prop :=
  A.laplacian1 x = 0

end TwoTermHodgeData

namespace HodgePort

variable {A : TwoTermHodgeData R A₀ A₁}
variable {B : TwoTermHodgeData R B₀ B₁}
variable {C : TwoTermHodgeData R C₀ C₁}

/-- Pointwise form of differential compatibility. -/
theorem delta_apply (P : HodgePort A B) (x : A₀) :
    P.map1 (A.delta x) = B.delta (P.map0 x) := by
  have h := congrArg (fun L : A₀ →ₗ[R] B₁ => L x) P.delta_comm
  simpa [LinearMap.comp_apply] using h

/-- Pointwise form of codifferential compatibility. -/
theorem deltaStar_apply (P : HodgePort A B) (x : A₁) :
    P.map0 (A.deltaStar x) = B.deltaStar (P.map1 x) := by
  have h := congrArg (fun L : A₁ →ₗ[R] B₀ => L x) P.deltaStar_comm
  simpa [LinearMap.comp_apply] using h

/-- A Hodge port also raises the degree-one Laplacian. -/
theorem laplacian1_comm (P : HodgePort A B) :
    P.map1.comp A.laplacian1 = B.laplacian1.comp P.map1 := by
  ext x
  change P.map1 (A.delta (A.deltaStar x)) =
    B.delta (B.deltaStar (P.map1 x))
  rw [P.delta_apply, P.deltaStar_apply]

/-- Harmonic degree-one vectors are transported to harmonic vectors. -/
theorem map_harmonic1 (P : HodgePort A B) {x : A₁}
    (hx : A.IsHarmonic1 x) : B.IsHarmonic1 (P.map1 x) := by
  unfold TwoTermHodgeData.IsHarmonic1 at *
  have hcomm := congrArg (fun L : A₁ →ₗ[R] B₁ => L x) P.laplacian1_comm
  calc
    B.laplacian1 (P.map1 x) = P.map1 (A.laplacian1 x) := by
      simpa [LinearMap.comp_apply] using hcomm.symm
    _ = 0 := by rw [hx]; exact P.map1.map_zero

/-- Identity Hodge port. -/
def identity (A : TwoTermHodgeData R A₀ A₁) : HodgePort A A where
  map0 := LinearMap.id
  map1 := LinearMap.id
  delta_comm := by
    ext x
    rfl
  deltaStar_comm := by
    ext x
    rfl

/-- Composition of Hodge ports retains both differential and codifferential laws. -/
def comp (Q : HodgePort B C) (P : HodgePort A B) : HodgePort A C where
  map0 := Q.map0.comp P.map0
  map1 := Q.map1.comp P.map1
  delta_comm := by
    ext x
    change Q.map1 (P.map1 (A.delta x)) = C.delta (Q.map0 (P.map0 x))
    rw [P.delta_apply, Q.delta_apply]
  deltaStar_comm := by
    ext x
    change Q.map0 (P.map0 (A.deltaStar x)) = C.deltaStar (Q.map1 (P.map1 x))
    rw [P.deltaStar_apply, Q.deltaStar_apply]

@[simp]
theorem comp_map0_apply (Q : HodgePort B C) (P : HodgePort A B) (x : A₀) :
    (comp Q P).map0 x = Q.map0 (P.map0 x) := rfl

@[simp]
theorem comp_map1_apply (Q : HodgePort B C) (P : HodgePort A B) (x : A₁) :
    (comp Q P).map1 x = Q.map1 (P.map1 x) := rfl

end HodgePort

namespace HodgeProjector

variable {A : TwoTermHodgeData R A₀ A₁}

/-- A compatible chain-level projector commutes with the degree-one Laplacian. -/
theorem laplacian1_comm (P : HodgeProjector A) :
    P.p1.comp A.laplacian1 = A.laplacian1.comp P.p1 :=
  P.toPort.laplacian1_comm

end HodgeProjector

/-- Two explicitly complementary Hodge projectors.

Complementarity and orthogonality are separate fields; they are not inferred from idempotence. -/
structure ComplementaryHodgeProjectors (A : TwoTermHodgeData R A₀ A₁) where
  left : HodgeProjector A
  right : HodgeProjector A
  p0_sum : left.p0 + right.p0 = LinearMap.id
  p1_sum : left.p1 + right.p1 = LinearMap.id
  p0_orthogonal : left.p0.comp right.p0 = 0
  p1_orthogonal : left.p1.comp right.p1 = 0

end HodgePortConsequences

end GRWTSK.LinearAlgebra.FramedFiberPort
```
