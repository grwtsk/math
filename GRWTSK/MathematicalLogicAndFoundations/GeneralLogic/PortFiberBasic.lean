import Mathlib

namespace GRWTSK.Topology

universe u v w

/-- A dependent family of fibers and typed ports between them.

The source, target, and every middle object are retained in the port type. The laws say only
that the declared fiber map respects identity and composition. -/
structure PortFiber where
  Obj : Type u
  Fiber : Obj → Type v
  Port : Obj → Obj → Type w
  identity : ∀ A, Port A A
  comp : ∀ {A B C}, Port A B → Port B C → Port A C
  map : ∀ {A B}, Port A B → Fiber A → Fiber B
  map_identity : ∀ A x, map (identity A) x = x
  map_comp : ∀ {A B C} (p : Port A B) (q : Port B C) x,
    map (comp p q) x = map q (map p x)

namespace PortFiber

/-- Every indexed family of types has a port-fiber system whose ports are ordinary functions. -/
def ofFunctions (Obj : Type u) (Fiber : Obj → Type v) : PortFiber where
  Obj := Obj
  Fiber := Fiber
  Port A B := Fiber A → Fiber B
  identity _ := id
  comp f g := g ∘ f
  map f := f
  map_identity := by
    intro A x
    rfl
  map_comp := by
    intro A B C p q x
    rfl

/-- Immutable public identity for one source theorem or construction. -/
structure SourceIdentity where
  repository : String
  revision : String
  path : String
  declaration : String
  deriving DecidableEq, Repr

/-- A port bound to exact public source and an explicit invalidation key. -/
structure SourceBoundPort (P : PortFiber) {A B : P.Obj} where
  port : P.Port A B
  source : SourceIdentity
  invalidationKey : String

/-- Two adjacent source-bound ports may compose only after their repository and revision agree.
Their individual declaration paths may differ. -/
structure SameSource {P : PortFiber} {A B C : P.Obj}
    (p : SourceBoundPort P (A := A) (B := B))
    (q : SourceBoundPort P (A := B) (B := C)) : Prop where
  repository_eq : p.source.repository = q.source.repository
  revision_eq : p.source.revision = q.source.revision

namespace SourceBoundPort

/-- Compose source-bound ports after an explicit source-compatibility proof. -/
def comp {P : PortFiber} {A B C : P.Obj}
    (p : SourceBoundPort P (A := A) (B := B))
    (q : SourceBoundPort P (A := B) (B := C))
    (_h : SameSource p q) : SourceBoundPort P (A := A) (B := C) where
  port := P.comp p.port q.port
  source := p.source
  invalidationKey := p.invalidationKey ++ "|" ++ q.invalidationKey

end SourceBoundPort

end PortFiber

end GRWTSK.Topology
