# Complete source: GRWTSK.CombinatoricsAndDiscreteMathematics.WorldModelPrototypeTests.Variant511a1a9ef27f056dc02c4f2ec359f484b4a95deb1c77a013d3698408f25a583c

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `4ebea329199d49c6e6995903cde8c9df6f10bfca` · SHA-256 `511a1a9ef27f056dc02c4f2ec359f484b4a95deb1c77a013d3698408f25a583c`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import DAF.Integration.WorldModelPrototype.PrototypeNeural

/-!
# Finite world-model prototype integration tests

These examples exercise the exact five-model completion surface.  General
claims are discharged by named theorems; finite computation is used only for
the concrete enumerated fixtures.
-/

namespace DAF.Integration.WorldModelPrototypeTests

open Surface.ContinuousAssurance
open Surface.ContinuousAssurance.WorldModel
open DAF.Integration.WorldModelPrototype

example : Fintype.card prototypeRegistry.ModelId = 5 :=
  prototypeRegistry_card

example (model : prototypeRegistry.ModelId) :
    model ∈ prototypeActiveRegion.activeModels :=
  prototype_model_active model

example : prototypeTranslationRegistry.entries.length = 6 :=
  prototypeTranslationRegistry_card

example : Fintype.card prototypeCarrier.Cell = 13 :=
  prototypeCarrier_card

example : prototypeCover.card = 3 := prototypeCover_card

example :
    Function.Injective (translationGP 3).objectMap :=
  translationGP_injective 3

example :
    ∃ left right : BinMat 2 2,
      left ≠ right ∧
      undirectedSupport left = undirectedSupport right ∧
      (boolZModMatrix left).det = 1 ∧
      (boolZModMatrix right).det = 0 :=
  support_does_not_determine_invertibility

example : orientationLossObstruction.cochain .P .B .S = 1 :=
  orientationLossCochain_nonzero

example :
    prototypeDescent.localize
        (prototypeDescent.glue goodPrototypeFamily) =
      goodPrototypeFamily :=
  goodPrototypeFamily_glues

example : ¬ PrototypeFamilyCompatible badPrototypeFamily :=
  badPrototypeFamily_fails_gluing

example (edge : PrototypeEdge) :
    prototypeConvolution.denominator edge () = 5 :=
  prototypeConvolution_denominator edge ()

example (vertex : PrototypeVertex) :
    prototypeReflection.reflect (prototypeReflection.reflect vertex) = vertex :=
  prototypeReflection_involutive vertex

example (source : PrototypeVertex) :
    ∑ target ∈ prototypeCoupling.activeModels,
        prototypeCoupling.weight source target = 1 :=
  prototypeCoupling_row_normalized source

example :
    Nonempty (ValidatedSurgery PrototypeCell PrototypeModel Bool Bool) :=
  prototype_surgery_is_accepted

example :
    prototypeBoundaryGate false =
      .error (.boundaryMismatch
        ⟨"prototype:boundary-mismatch:evidence-v1"⟩) :=
  prototype_boundary_mismatch_rejected

example :
    rejectedFalseTranslationProposal.decision =
      .rejected .validationFailed :=
  false_high_confidence_proposal_rejected

example : prototypeDataset.length = 3 := prototypeDataset_card

example : PrototypeStructuralCompletion :=
  prototype_structural_completion

end DAF.Integration.WorldModelPrototypeTests
```
