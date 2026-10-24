import DAF.Comparison.Core
import Mathlib.Logic.Equiv.Defs

/-!
# Properties of comparison maps

Properties are predicates on a `Spec`; they are not fields of the map itself.
An equivalence is constructed only from a proof of bijectivity.
-/

namespace DAF.Comparison

universe u v w

def IsInjective (C : Spec A B) : Prop :=
  Function.Injective C.map

def IsSurjective (C : Spec A B) : Prop :=
  Function.Surjective C.map

def IsBijective (C : Spec A B) : Prop :=
  Function.Bijective C.map

def IsLeftInverseOf (inverse : Spec B A) (forward : Spec A B) : Prop :=
  Function.LeftInverse inverse.map forward.map

def IsRightInverseOf (inverse : Spec B A) (forward : Spec A B) : Prop :=
  Function.RightInverse inverse.map forward.map

def IsInverseOf (inverse : Spec B A) (forward : Spec A B) : Prop :=
  IsLeftInverseOf inverse forward ∧ IsRightInverseOf inverse forward

theorem isInjective_comp
    {f : Spec A B} {g : Spec B C}
    (hg : IsInjective g) (hf : IsInjective f) :
    IsInjective (g.comp f) :=
  hg.comp hf

theorem isSurjective_comp
    {f : Spec A B} {g : Spec B C}
    (hg : IsSurjective g) (hf : IsSurjective f) :
    IsSurjective (g.comp f) :=
  hg.comp hf

theorem isBijective_comp
    {f : Spec A B} {g : Spec B C}
    (hg : IsBijective g) (hf : IsBijective f) :
    IsBijective (g.comp f) :=
  ⟨isInjective_comp hg.1 hf.1, isSurjective_comp hg.2 hf.2⟩

namespace Spec

/-- Promote a comparison to an equivalence only from a proof certificate. -/
noncomputable def toEquiv (C : Spec A B) (h : IsBijective C) : A ≃ B :=
  Equiv.ofBijective C.map h

@[simp]
theorem toEquiv_apply (C : Spec A B) (h : IsBijective C) (a : A) :
    C.toEquiv h a = C.map a :=
  rfl

end Spec

end DAF.Comparison
