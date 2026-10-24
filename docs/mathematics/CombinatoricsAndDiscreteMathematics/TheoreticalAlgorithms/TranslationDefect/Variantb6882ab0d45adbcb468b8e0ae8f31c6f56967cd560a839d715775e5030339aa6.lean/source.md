# Complete source: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.TranslationDefect.Variantb6882ab0d45adbcb468b8e0ae8f31c6f56967cd560a839d715775e5030339aa6

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `49cc2543fee3f6342e7d6f396cd92d632f6b7378` · SHA-256 `547f21b96e14a753b7fc936c3966c69d09fbaf5952c13ba788096ac4daff0ba3`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.TranslationStep.Variant21ba07767f8237098041802720b7c4653a93b461b51069d3ec0db520a434aa7f","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"21ba07767f8237098041802720b7c4653a93b461b51069d3ec0db520a434aa7f","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.DataStructures.SourceCorpus.TranslationStep.Variant21ba07767f8237098041802720b7c4653a93b461b51069d3ec0db520a434aa7f","mathematical_subject":"Computation.DataStructures","original_sha256":"21ba07767f8237098041802720b7c4653a93b461b51069d3ec0db520a434aa7f","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/08/10/TestProject/Surface/ContinuousAssurance/WorldModel/TranslationDefect.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["lake_or_runtime_control","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Surface.ContinuousAssurance.WorldModel.Translation

/-!
# Translation paths and explicit defects

Defects compare two declared routes with the same endpoints. A zero-valued
detector has only the meaning stated by `exactZeroMeaning`; no completeness
claim is inferred.
-/


namespace GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.TranslationStep.Variant21ba07767f8237098041802720b7c4653a93b461b51069d3ec0db520a434aa7f

namespace Surface.ContinuousAssurance.WorldModel

/-- Erased metadata for one typed translation step. -/
structure TranslationStep where
  identity : TranslationId
  source : WorldModelVersionId
  target : WorldModelVersionId
  relation : ModelTranslationRelation
  obligations : List ObligationId
  deriving DecidableEq, Repr

/-- Finite translation route with explicitly checked endpoint chaining. -/
structure TranslationPath where
  source : WorldModelVersionId
  target : WorldModelVersionId
  steps : List TranslationStep
  endpointsValid :
    steps = [] → source = target
  adjacentValid :
    ∀ first second suffix,
      steps = first :: second :: suffix → first.target = second.source

/-- Declared comparison semantics for two routes. -/
inductive DefectComparison
  | propositionMismatch
  | counterexampleMismatch
  | authorityMismatch
  | provenanceMismatch
  | versionMismatch
  | missingComparison
  deriving DecidableEq, Repr

/-- Typed two-route defect record. -/
structure TranslationTriangleDefect where
  source : WorldModelVersionId
  target : WorldModelVersionId
  directRoute : TranslationPath
  compositeRoute : TranslationPath
  directEndpoints :
    directRoute.source = source ∧ directRoute.target = target
  compositeEndpoints :
    compositeRoute.source = source ∧ compositeRoute.target = target
  comparison : DefectComparison
  exactZeroMeaning : Prop
  affectedObjects : List MathematicalObjectId
  obligations : List ObligationId

/-- TRN-10: both paths in a triangle defect have the declared common endpoints. -/
theorem TranslationTriangleDefect.common_endpoints
    (defect : TranslationTriangleDefect) :
    (defect.directRoute.source = defect.source ∧
      defect.directRoute.target = defect.target) ∧
    (defect.compositeRoute.source = defect.source ∧
      defect.compositeRoute.target = defect.target) :=
  ⟨defect.directEndpoints, defect.compositeEndpoints⟩

/-- Missing route comparison is represented as an obligation, not as zero. -/
structure MissingComparison where
  source : WorldModelVersionId
  target : WorldModelVersionId
  obligation : ObligationRecord
  obligation_open : obligation.IsOpen

end Surface.ContinuousAssurance.WorldModel
```
