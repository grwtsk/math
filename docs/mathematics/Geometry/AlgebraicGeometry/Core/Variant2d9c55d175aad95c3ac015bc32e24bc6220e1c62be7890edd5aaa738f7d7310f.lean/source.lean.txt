/-!
# Typed comparison maps

A `Spec` contains only a function.  Construction provenance, logical status,
coefficients, scope, and determinant transport are deliberately owned by
separate modules.  In particular, metadata attached elsewhere cannot turn a
map into an injection, surjection, or equivalence.
-/

namespace DAF.Comparison

universe u v w x

/-- A typed comparison map, without any claim about that map. -/
structure Spec (A : Sort u) (B : Sort v) where
  map : A → B

namespace Spec

/-- The identity comparison. -/
def id (A : Sort u) : Spec A A :=
  ⟨_root_.id⟩

/-- Composition, written as `g` after `f`. -/
def comp (g : Spec B C) (f : Spec A B) : Spec A C :=
  ⟨fun a ↦ g.map (f.map a)⟩

@[simp]
theorem id_apply (a : A) : (id A).map a = a :=
  rfl

@[simp]
theorem comp_apply (g : Spec B C) (f : Spec A B) (a : A) :
    (g.comp f).map a = g.map (f.map a) :=
  rfl

@[ext]
theorem ext {f g : Spec A B} (h : f.map = g.map) : f = g := by
  cases f
  cases g
  cases h
  rfl

theorem comp_assoc (h : Spec C D) (g : Spec B C) (f : Spec A B) :
    (h.comp g).comp f = h.comp (g.comp f) :=
  rfl

@[simp]
theorem id_comp (f : Spec A B) : (id B).comp f = f :=
  rfl

@[simp]
theorem comp_id (f : Spec A B) : f.comp (id A) = f :=
  rfl

end Spec

end DAF.Comparison
