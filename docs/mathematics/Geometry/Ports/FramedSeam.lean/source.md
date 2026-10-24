# Complete source: GRWTSK.Geometry.Ports.FramedSeam

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `6c1a5a51eea2a81bc4fcb10050101a2237adb03e` · SHA-256 `985c88c27f2961fb8d0c9dbbb7337fb4777f2a75ad126e6f3beafdaf9f5135bd`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Mathlib

namespace GRWTSK.Geometry.Ports.FramedSeam

universe u v w x

variable {R : Type u} [Ring R]
variable {Coord : Type v} {E : Type w} {F : Type x}
variable [AddCommGroup Coord] [Module R Coord]
variable [AddCommGroup E] [Module R E]
variable [AddCommGroup F] [Module R F]

/-- A port equipped with actual source and target frames and an exact coordinate expression. -/
structure FramedPort
    (R : Type u) [Ring R]
    (Coord : Type v) (E : Type w) (F : Type x)
    [AddCommGroup Coord] [Module R Coord]
    [AddCommGroup E] [Module R E]
    [AddCommGroup F] [Module R F] where
  sourceFrame : Coord ≃ₗ[R] E
  targetFrame : Coord ≃ₗ[R] F
  port : E →ₗ[R] F
  coordinateMap : Coord →ₗ[R] Coord
  frame_comm :
    targetFrame.symm.toLinearMap.comp
      (port.comp sourceFrame.toLinearMap) = coordinateMap

namespace FramedPort

/-- Pointwise coordinate form of a framed port. -/
theorem coordinate_apply
    (P : FramedPort R Coord E F) (x : Coord) :
    P.targetFrame.symm (P.port (P.sourceFrame x)) = P.coordinateMap x := by
  have h := congrArg (fun L : Coord →ₗ[R] Coord => L x) P.frame_comm
  simpa [LinearMap.comp_apply] using h

/-- The identity framed port. -/
def identity (frame : Coord ≃ₗ[R] E) : FramedPort R Coord E E where
  sourceFrame := frame
  targetFrame := frame
  port := LinearMap.id
  coordinateMap := LinearMap.id
  frame_comm := by
    ext x
    simp

end FramedPort

/-- Two framed ports define the same seam only through equality of their coordinate maps.

Equal dimensions, ranks, or drawings do not construct this record. -/
structure SameFramedSeam
    (P Q : FramedPort R Coord E F) : Prop where
  coordinate_eq : P.coordinateMap = Q.coordinateMap

namespace SameFramedSeam

/-- A proved framed seam gives equal coordinate observations at every input. -/
theorem coordinate_apply
    {P Q : FramedPort R Coord E F}
    (S : SameFramedSeam P Q) (x : Coord) :
    P.targetFrame.symm (P.port (P.sourceFrame x)) =
      Q.targetFrame.symm (Q.port (Q.sourceFrame x)) := by
  rw [P.coordinate_apply, Q.coordinate_apply, S.coordinate_eq]

/-- Equality of the actual framed coordinate observations constructs a seam. -/
theorem of_coordinate_apply
    {P Q : FramedPort R Coord E F}
    (h : ∀ x,
      P.targetFrame.symm (P.port (P.sourceFrame x)) =
        Q.targetFrame.symm (Q.port (Q.sourceFrame x))) :
    SameFramedSeam P Q := by
  constructor
  ext x
  rw [← P.coordinate_apply, ← Q.coordinate_apply]
  exact h x

/-- Framed seam equality is reflexive. -/
theorem refl (P : FramedPort R Coord E F) : SameFramedSeam P P where
  coordinate_eq := rfl

/-- Framed seam equality is symmetric. -/
theorem symm {P Q : FramedPort R Coord E F}
    (S : SameFramedSeam P Q) : SameFramedSeam Q P where
  coordinate_eq := S.coordinate_eq.symm

/-- Framed seam equality is transitive. -/
theorem trans {P Q T : FramedPort R Coord E F}
    (S₁ : SameFramedSeam P Q) (S₂ : SameFramedSeam Q T) :
    SameFramedSeam P T where
  coordinate_eq := S₁.coordinate_eq.trans S₂.coordinate_eq

end SameFramedSeam

end GRWTSK.Geometry.Ports.FramedSeam
```
