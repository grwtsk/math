import DAF.Comparison.Core
import Mathlib.RingTheory.Localization.Basic
import Mathlib.Algebra.Ring.ULift
import Mathlib.Data.Rat.Defs
import Mathlib.Data.ZMod.Basic

/-!
# Coefficient contexts and explicit changes

Localization and completion change carrier types.  They are never represented
as labels on the original ring, and no coercion silently changes coefficients.
-/

namespace DAF.Comparison

universe u v w

/-- A commutative coefficient ring packaged with its carrier. -/
structure CoefficientContext where
  Carrier : Type u
  instCommRing : CommRing Carrier

attribute [instance] CoefficientContext.instCommRing

namespace CoefficientContext

/-- Integral coefficients. -/
def integral : CoefficientContext :=
  ⟨ℤ, inferInstance⟩

/-- Integral coefficients lifted to a caller-selected universe. -/
def integralLifted : CoefficientContext.{u} :=
  ⟨ULift.{u} ℤ, inferInstance⟩

/-- Rational coefficients. -/
def rational : CoefficientContext :=
  ⟨ℚ, inferInstance⟩

/-- Coefficients modulo `n`. -/
def modulo (n : Nat) : CoefficientContext :=
  ⟨ZMod n, inferInstance⟩

end CoefficientContext

/-- The multiplicative set selected for a genuine localization. -/
structure LocalizationDatum (R : Type u) [CommRing R] where
  submonoid : Submonoid R

namespace LocalizationDatum

/-- The localized ring has the actual Mathlib localization carrier. -/
def context {R : Type u} [CommRing R]
    (D : LocalizationDatum R) : CoefficientContext :=
  ⟨Localization D.submonoid, inferInstance⟩

/-- The canonical scalar map into the localization, as a comparison. -/
def algebraMapComparison {R : Type u} [CommRing R]
    (D : LocalizationDatum R) :
    Spec R (D.context.Carrier) :=
  ⟨algebraMap R (Localization D.submonoid)⟩

end LocalizationDatum

/--
Supplied completion data.  No universal property is claimed unless a stronger
application-specific structure supplies and proves one.
-/
structure CompletionDatum (R : Type u) [CommRing R] where
  Completed : Type v
  instCommRingCompleted : CommRing Completed
  toCompleted : R →+* Completed

namespace CompletionDatum

attribute [instance] instCommRingCompleted

def context {R : Type u} [CommRing R]
    (D : CompletionDatum.{u, v} R) : CoefficientContext :=
  ⟨D.Completed, D.instCommRingCompleted⟩

def algebraMapComparison {R : Type u} [CommRing R]
    (D : CompletionDatum.{u, v} R) : Spec R D.Completed :=
  ⟨D.toCompleted⟩

end CompletionDatum

/-- An explicit ring map changing one coefficient context into another. -/
structure CoefficientChange
    (R : CoefficientContext.{u})
    (S : CoefficientContext.{v}) where
  map : R.Carrier →+* S.Carrier

namespace CoefficientChange

def id (R : CoefficientContext.{u}) : CoefficientChange R R :=
  ⟨RingHom.id R.Carrier⟩

/-- Composition, written as `g` after `f`. -/
def comp
    {R : CoefficientContext.{u}}
    {S : CoefficientContext.{v}}
    {T : CoefficientContext.{w}}
    (g : CoefficientChange S T)
    (f : CoefficientChange R S) : CoefficientChange R T :=
  ⟨g.map.comp f.map⟩

@[simp]
theorem id_apply (R : CoefficientContext.{u}) (x : R.Carrier) :
    (id R).map x = x :=
  rfl

@[simp]
theorem comp_apply
    {R : CoefficientContext.{u}}
    {S : CoefficientContext.{v}}
    {T : CoefficientContext.{w}}
    (g : CoefficientChange S T)
    (f : CoefficientChange R S)
    (x : R.Carrier) :
    (g.comp f).map x = g.map (f.map x) :=
  rfl

end CoefficientChange

end DAF.Comparison
