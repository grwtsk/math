# Complete source: GRWTSK.Topology.PortFiber.Path

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `b8f54730f5255f9330ab502b5bf24b540b785c45` · SHA-256 `9f9ad6ecd4d6aac5584f66d42dcf113ad73d23b35bcf50432d88474d44729aee`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import GRWTSK.Topology.PortFiber.Basic

namespace GRWTSK.Topology.PortFiber

universe u v w

/-- A port property with explicit identity and composition closure. -/
structure ComposableProperty (P : GRWTSK.Topology.PortFiber.{u, v, w}) where
  Holds : ∀ {A B : P.Obj}, P.Port A B → Prop
  identity : ∀ A, Holds (P.identity A)
  comp : ∀ {A B C : P.Obj} {p : P.Port A B} {q : P.Port B C},
    Holds p → Holds q → Holds (P.comp p q)

/-- A path whose every atomic port has the selected composable certificate. -/
inductive CertifiedPath (P : GRWTSK.Topology.PortFiber.{u, v, w})
    (Law : ComposableProperty P) : P.Obj → P.Obj → Type (max u w)
  | nil (A : P.Obj) : CertifiedPath P Law A A
  | cons {A B C : P.Obj} (p : P.Port A B) (hp : Law.Holds p)
      (rest : CertifiedPath P Law B C) : CertifiedPath P Law A C

namespace CertifiedPath

variable {P : GRWTSK.Topology.PortFiber.{u, v, w}}
variable {Law : ComposableProperty P}

/-- Composite port represented by a certified path. -/
def composite {A B : P.Obj} : CertifiedPath P Law A B → P.Port A B
  | .nil A => P.identity A
  | .cons p _ rest => P.comp p rest.composite

/-- Fiber-map evaluation of a certified path. -/
def eval {A B : P.Obj} : CertifiedPath P Law A B → P.Fiber A → P.Fiber B
  | .nil _, x => x
  | .cons p _ rest, x => rest.eval (P.map p x)

/-- The composite port retains the selected certificate. -/
theorem certified {A B : P.Obj} :
    ∀ path : CertifiedPath P Law A B, Law.Holds path.composite
  | .nil A => Law.identity A
  | .cons p hp rest => Law.comp hp rest.certified

/-- Evaluating the composite port agrees with evaluating the certified path atom by atom. -/
theorem map_composite {A B : P.Obj}
    (path : CertifiedPath P Law A B) (x : P.Fiber A) :
    P.map path.composite x = path.eval x := by
  induction path generalizing x with
  | nil A =>
      exact P.map_identity A x
  | cons p hp rest ih =>
      rw [composite, P.map_comp]
      exact ih (P.map p x)

end CertifiedPath

end GRWTSK.Topology.PortFiber
```
