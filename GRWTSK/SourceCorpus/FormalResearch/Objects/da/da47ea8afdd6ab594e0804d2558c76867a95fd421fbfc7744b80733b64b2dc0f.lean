/-!
# Presentation as null interface

Presentation is the neutral meeting point between functional denotation and
procedural reducer realization. Raw Presentation syntax owns no theorem
authority; semantic use requires realization, certificate, or theorem evidence.
-/

namespace Presentation
namespace NullInterface

structure PresentationInterfaceBoundary where
  syntaxHash : Nat
  functionalClosureHash : Nat
  proceduralReducerHash : Nat
  realizationBoundaryHash : Nat
  functionalSideWellFormed : Prop
  functionalSideProof : functionalSideWellFormed
  proceduralSideWellFormed : Prop
  proceduralSideProof : proceduralSideWellFormed
  meetAtPresentation : Prop
  meetProof : meetAtPresentation
  presentationOwnsNoTheoremAuthority : Prop
  noAuthorityProof : presentationOwnsNoTheoremAuthority
  realizationRequiredForSemantics : Prop
  realizationRequiredProof : realizationRequiredForSemantics

theorem presentation_is_null_interface_between_closure_and_reducer
    (P : PresentationInterfaceBoundary) :
    P.functionalSideWellFormed ∧
    P.proceduralSideWellFormed ∧
    P.meetAtPresentation ∧
    P.presentationOwnsNoTheoremAuthority ∧
    P.realizationRequiredForSemantics :=
  by
    exact
      ⟨P.functionalSideProof,
       P.proceduralSideProof,
       P.meetProof,
       P.noAuthorityProof,
       P.realizationRequiredProof⟩

end NullInterface
end Presentation
