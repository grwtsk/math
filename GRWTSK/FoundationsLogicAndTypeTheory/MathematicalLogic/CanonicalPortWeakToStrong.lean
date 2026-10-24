import GRWTSK.FoundationsLogicAndTypeTheory.MathematicalLogic.ExternalPTSSystemTransport

namespace GRWTSK.FoundationsLogicAndTypeTheory.MathematicalLogic.ExternalPTSBridge

universe u v

namespace ReductionEquiv

/-- Identity equivalence of one reduction system. -/
def refl (X : Type u) (step : X → X → Prop) :
    ReductionEquiv X X step step where
  mapEquiv := Equiv.refl X
  step_iff _ _ := Iff.rfl

end ReductionEquiv

namespace SystemEquiv

/-- Identity equivalence of one legal reduction system. -/
def refl (X : Type u) (Legal : X → Prop) (step : X → X → Prop) :
    SystemEquiv X X Legal Legal step step where
  mapEquiv := Equiv.refl X
  step_iff _ _ := Iff.rfl
  legal_iff _ := Iff.rfl

end SystemEquiv

open GRWTSK.FoundationsLogicAndTypeTheory.MathematicalLogic.TypedPortNormalization

section CanonicalPortAdmission

variable {Obj : Type u}
variable {Port : Obj → Obj → Type v}
variable {a b : Obj}

/-- Local source identity for the directly proved canonical port normalization theorem. -/
def canonicalPortSource : TheoremSource where
  repository := "grwtsk/math"
  revision := "canonical-port-reduction"
  path := "GRWTSK/Logic/ExternalPTSBridge.lean"
  declaration := "canonicalSystemStronglyNormalizing"
  exactStatement :=
    "Every endpoint-fixed typed port expression is strongly normalizing for CanonicalStep"

/-- The directly proved canonical port reduction supplies a proof-carrying weak-to-strong theorem.

The hypothesis is retained to match the general interface, although this local system is proved
strongly normalizing independently of it. -/
def canonicalPortWeakToStrong :
    WeakToStrongTheorem (Expr Port a b)
      (fun _ => True) CanonicalStep where
  source := canonicalPortSource
  weakToStrong := by
    intro _
    exact canonicalSystemStronglyNormalizing

/-- Applying the local proof-carrying theorem yields the established strong-normalization result. -/
theorem canonicalPortStrong_of_weak
    (h : SystemWeaklyNormalizing (fun _ : Expr Port a b => True) CanonicalStep) :
    SystemStronglyNormalizing (fun _ : Expr Port a b => True) CanonicalStep :=
  systemStrong_of_bridge canonicalPortWeakToStrong h

/-- Transporting the local theorem across the identity system equivalence is definitionally sound. -/
def canonicalPortWeakToStrong_identityTransport :
    WeakToStrongTheorem (Expr Port a b)
      (fun _ => True) CanonicalStep :=
  (SystemEquiv.refl (Expr Port a b) (fun _ => True) CanonicalStep).transportWeakToStrong
    canonicalPortWeakToStrong

end CanonicalPortAdmission

end GRWTSK.FoundationsLogicAndTypeTheory.MathematicalLogic.ExternalPTSBridge
