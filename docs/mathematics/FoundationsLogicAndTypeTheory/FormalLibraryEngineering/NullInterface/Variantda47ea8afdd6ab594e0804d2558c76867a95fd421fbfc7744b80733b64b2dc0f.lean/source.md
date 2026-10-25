# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.NullInterface.Variantda47ea8afdd6ab594e0804d2558c76867a95fd421fbfc7744b80733b64b2dc0f

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `4825f3545633902232a13ed6134664bdb55eb93b` · SHA-256 `da47ea8afdd6ab594e0804d2558c76867a95fd421fbfc7744b80733b64b2dc0f`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
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
```
