# Complete source: GRWTSK.Algebra.LinearAlgebra.Refinement.Variant47ecc1c5cc18b6104bc0942bc446d6cc99a796e24558b33fe602915f1cd12b16

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `1494f54adb99648e0703970e8ea41ceb096152c7` · SHA-256 `a9b56b50b1e2e35c3a01901951bbca5544ca25664634a5956fa5aa28fc7e056c`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: Algebra.LinearAlgebra
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Algebra.LinearAlgebra.HierarchyEvidenceStatus.Variantbc217e1c1887d7dd4f87b1d645ab84e8aafd35328d2f7e0b2b92cd9e680bb18c","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"bc217e1c1887d7dd4f87b1d645ab84e8aafd35328d2f7e0b2b92cd9e680bb18c","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Algebra.LinearAlgebra.SourceCorpus.HierarchyEvidenceStatus.Variantbc217e1c1887d7dd4f87b1d645ab84e8aafd35328d2f7e0b2b92cd9e680bb18c","mathematical_subject":"Algebra.LinearAlgebra","original_sha256":"bc217e1c1887d7dd4f87b1d645ab84e8aafd35328d2f7e0b2b92cd9e680bb18c","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/08/10/TestProject/DAF/Terrain/Refinement.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import DAF.Terrain.AbsoluteRegion
import DAF.Manifest
import Mathlib.Algebra.Module.LinearMap.Basic
import Mathlib.Data.Real.Basic

/-!
# Absolute coarse-to-fine refinement

Hierarchy levels remain regions of one absolute global coordinate system.
Restriction and linear prolongation are explicit typed capabilities.  The
low-frequency/residual interface certifies exact linear reconstruction; a
learned nonlinear decoder would be a separate external implementation.
-/


namespace GRWTSK.Algebra.LinearAlgebra.HierarchyEvidenceStatus.Variantbc217e1c1887d7dd4f87b1d645ab84e8aafd35328d2f7e0b2b92cd9e680bb18c

universe u v w

namespace DAF.Terrain

/-- Evidence classification attached to a hierarchy level. -/
inductive HierarchyEvidenceStatus
  | certified
  | conditional
  | external
  | unresolved
  deriving DecidableEq, Repr

/-- Metadata that may vary by level without changing the global coordinate frame. -/
structure HierarchyLevelMetadata where
  version : DAF.Version
  generatorParametersRef : String
  boundaryTreatmentRef : String
  evidenceStatus : HierarchyEvidenceStatus
  deriving Repr

/-- A finite hierarchy of exact global regions and typed coarse/fine maps. -/
structure GlobalHierarchy {State : Type u} (G : KnownMaximalState State) where
  Level : Type v
  levelFintype : Fintype Level
  levelDecEq : DecidableEq Level
  rank : Level → Nat
  region : Level → AbsoluteRegion G
  parent : Level → Option Level
  parent_rank : ∀ {fine coarse}, parent fine = some coarse → rank coarse ≤ rank fine
  restrict : ∀ {fine coarse},
    rank coarse ≤ rank fine →
      (region fine).LocalCoord → Option (region coarse).LocalCoord
  prolongSignal : ∀ {coarse fine},
    rank coarse ≤ rank fine →
      ((region coarse).LocalCoord → Real) →ₗ[Real]
        ((region fine).LocalCoord → Real)
  metadata : Level → HierarchyLevelMetadata

/-- A certified linear low-frequency/residual decomposition. -/
structure LinearLaplacianEncoding
    (Signal : Type u) [AddCommGroup Signal] [Module Real Signal] where
  lowPass : Signal →ₗ[Real] Signal
  reconstructLow : Signal →ₗ[Real] Signal
  residual : Signal →ₗ[Real] Signal
  residual_spec :
    residual = LinearMap.id - reconstructLow.comp lowPass
  reconstruction : ∀ u, reconstructLow (lowPass u) + residual u = u

namespace LinearLaplacianEncoding

variable {Signal : Type u} [AddCommGroup Signal] [Module Real Signal]

/-- Low-frequency plus residual reconstructs the original signal exactly. -/
theorem reconstruct (E : LinearLaplacianEncoding Signal) (u : Signal) :
    E.reconstructLow (E.lowPass u) + E.residual u = u :=
  E.reconstruction u

end LinearLaplacianEncoding

/-- Typed failure of a requested coarse/fine compatibility square. -/
structure RefinementObstruction {State : Type u} (G : KnownMaximalState State) where
  coarse : AbsoluteRegion G
  fine : AbsoluteRegion G
  squareIdentifier : String
  failedCondition : Prop
  witness : failedCondition
  unresolvedObligations : List String

end DAF.Terrain
```
