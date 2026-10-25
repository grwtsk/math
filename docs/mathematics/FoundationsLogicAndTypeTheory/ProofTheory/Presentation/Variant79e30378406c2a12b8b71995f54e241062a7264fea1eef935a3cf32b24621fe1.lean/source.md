# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.ProofTheory.Presentation.Variant79e30378406c2a12b8b71995f54e241062a7264fea1eef935a3cf32b24621fe1

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `02112b7c1480e2444a5e6b81065cc65379faae73` · SHA-256 `79e30378406c2a12b8b71995f54e241062a7264fea1eef935a3cf32b24621fe1`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import DAF.Manifest
import DAF.System

/-!
# Declarative fabric presentations

A `Presentation` equips an existing `DAF.System` with a transition-stable
invariant.  It is the declarative contract hosted at one cell of a fabric.
The `name` and `version` fields are operational metadata only: neither field is
a proof certificate, and changing them cannot establish a semantic theorem.

This namespace is deliberately `DAF.Fabric`.  `DAF.Assembly` remains reserved
for the algebraic K-theory assembly-map interface.
-/

universe u

namespace DAF.Fabric

/-- A declarative hosted component with a transition-stable invariant. -/
structure Presentation where
  system : DAF.System
  invariant : system.State → Prop
  invariant_step :
    ∀ input state,
      invariant state →
        invariant (system.step input state)
  name : Lean.Name
  version : DAF.Version

namespace Presentation

/-- The state space restricted to states satisfying the declared invariant. -/
def ValidState (P : Presentation) :=
  {x : P.system.State // P.invariant x}

/--
A presentation morphism is an existing system morphism that additionally
preserves the declared invariant.  No second system-morphism hierarchy is
introduced.
-/
structure Hom (P Q : Presentation) extends P.system.Hom Q.system where
  invariant_natural :
    ∀ x,
      P.invariant x →
        Q.invariant (mapState x)

namespace Hom

/-- The identity presentation morphism. -/
def id (P : Presentation) : Hom P P where
  toHom := DAF.System.Hom.id P.system
  invariant_natural := by
    intro x hx
    exact hx

/-- Composition, written as `g` after `f`. -/
def comp {P Q R : Presentation} (g : Hom Q R) (f : Hom P Q) : Hom P R where
  toHom := g.toHom.comp f.toHom
  invariant_natural := by
    intro x hx
    exact g.invariant_natural _ (f.invariant_natural _ hx)

/-- Extensionality through all fields of the underlying dependent system map. -/
@[ext]
theorem ext {P Q : Presentation} {f g : Hom P Q}
    (hInput : f.mapInput = g.mapInput)
    (hState : f.mapState = g.mapState)
    (hResolution : f.pullResolution = g.pullResolution)
    (hObservation : HEq f.mapObservation g.mapObservation) :
    f = g := by
  cases f with
  | mk f hf =>
      cases g with
      | mk g hg =>
          have hfg : f = g :=
            DAF.System.Hom.ext hInput hState hResolution hObservation
          subst g
          rfl

@[simp]
theorem id_comp {P Q : Presentation} (f : Hom P Q) :
    (id Q).comp f = f := by
  apply ext <;> rfl

@[simp]
theorem comp_id {P Q : Presentation} (f : Hom P Q) :
    f.comp (id P) = f := by
  apply ext <;> rfl

theorem comp_assoc {P Q R S : Presentation}
    (h : Hom R S) (g : Hom Q R) (f : Hom P Q) :
    (h.comp g).comp f = h.comp (g.comp f) := by
  apply ext <;> rfl

end Hom
end Presentation
end DAF.Fabric
```
