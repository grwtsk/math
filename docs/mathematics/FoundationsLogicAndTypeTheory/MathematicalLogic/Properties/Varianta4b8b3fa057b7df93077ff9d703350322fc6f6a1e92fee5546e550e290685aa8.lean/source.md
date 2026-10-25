# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.MathematicalLogic.Properties.Varianta4b8b3fa057b7df93077ff9d703350322fc6f6a1e92fee5546e550e290685aa8

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `3ca6af0273ef1f29018f3507316b8519a2397832` · SHA-256 `a4b8b3fa057b7df93077ff9d703350322fc6f6a1e92fee5546e550e290685aa8`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
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
```
