# Complete source: GRWTSK.CombinatoricsAndDiscreteMathematics.WorldModelPrototypeTests.Variantffaf1cf8e2360ba40b8ccb925d747c06c8456ce5bc88ddc86080863cbffea197

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `f52d37a6f916a8ba4304b79621f5134d0cad5343` · SHA-256 `fcf52e6cd27ea2bebf95432552caebf935449a5767d6a7e97b98c8fff5dbe97c`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: CombinatoricsAndDiscreteMathematics
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CombinatoricsAndDiscreteMathematics.PrototypeNeural.Variant511a1a9ef27f056dc02c4f2ec359f484b4a95deb1c77a013d3698408f25a583c","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"511a1a9ef27f056dc02c4f2ec359f484b4a95deb1c77a013d3698408f25a583c","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Combinatorics.FiniteCombinatorics.SourceCorpus.PrototypeNeural.Variant511a1a9ef27f056dc02c4f2ec359f484b4a95deb1c77a013d3698408f25a583c","mathematical_subject":"Combinatorics.FiniteCombinatorics","original_sha256":"511a1a9ef27f056dc02c4f2ec359f484b4a95deb1c77a013d3698408f25a583c","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/.codex/audits/native-world-model-4d75f63f/replay-d050d760/Surface/DAF/Integration/WorldModelPrototypeTests.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import DAF.Integration.WorldModelPrototype.PrototypeNeural

/-!
# Finite world-model prototype integration tests

These examples exercise the exact five-model completion surface.  General
claims are discharged by named theorems; finite computation is used only for
the concrete enumerated fixtures.
-/


namespace GRWTSK.CombinatoricsAndDiscreteMathematics.PrototypeNeural.Variant511a1a9ef27f056dc02c4f2ec359f484b4a95deb1c77a013d3698408f25a583c

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
