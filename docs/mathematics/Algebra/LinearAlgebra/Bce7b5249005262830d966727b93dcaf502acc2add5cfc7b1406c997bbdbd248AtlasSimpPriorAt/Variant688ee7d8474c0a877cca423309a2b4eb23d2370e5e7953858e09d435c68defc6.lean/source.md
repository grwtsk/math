# Complete source: GRWTSK.Algebra.LinearAlgebra.Bce7b5249005262830d966727b93dcaf502acc2add5cfc7b1406c997bbdbd248AtlasSimpPriorAt.Variant688ee7d8474c0a877cca423309a2b4eb23d2370e5e7953858e09d435c68defc6

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `f8ece061e945de087d20bd27627810ef716d30c6` · SHA-256 `a5d580d732202fbd7a4096a6b950779377a4325f5888099aaf99bf766a2e5ff6`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: Algebra.LinearAlgebra
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Algebra.LinearAlgebra.BlockDirectionReindexing.Variantbce7b5249005262830d966727b93dcaf502acc2add5cfc7b1406c997bbdbd248","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"bce7b5249005262830d966727b93dcaf502acc2add5cfc7b1406c997bbdbd248","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Algebra.LinearAlgebra.SourceCorpus.BlockDirectionReindexing.Variantbce7b5249005262830d966727b93dcaf502acc2add5cfc7b1406c997bbdbd248","mathematical_subject":"Algebra.LinearAlgebra","original_sha256":"bce7b5249005262830d966727b93dcaf502acc2add5cfc7b1406c997bbdbd248","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal.publication/20261007/ignored-unit/source/other-research/bc/bce7b5249005262830d966727b93dcaf502acc2add5cfc7b1406c997bbdbd248--AtlasSimpPriorAttributeReview.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import FormalResearch.PositiveAtlas.BlockDirectionReindexing
import FormalResearch.PositiveAtlas.BlockSchur
import FormalResearch.PositiveAtlas.ComparatorSeparation
import FormalResearch.PositiveAtlas.OrderedPartitionBridge
import FormalResearch.PositiveAtlas.QuadraticSwapInvolution
import FormalResearch.PositiveAtlas.ScalarSchur


namespace GRWTSK.Algebra.LinearAlgebra.BlockDirectionReindexing.Variantbce7b5249005262830d966727b93dcaf502acc2add5cfc7b1406c997bbdbd248

set_option autoImplicit false
namespace FormalResearch.PositiveAtlas
open MomentCumulant
universe u v

attribute [local simp] BlockSchurSolver.residual_autonomous
  MomentCumulant.orderedBlockEquivParts_apply_val scalarProvenanceResidual_apply

example {n : ℕ} (B : Finset (Fin n)) (j : Fin B.card) :
    ((blockOrderIso B j).1 : Fin n) ∈ B := by simp

section Blocks
variable {P : Type u} {U : Type v}
variable [AddCommGroup P] [Module ℝ P] [AddCommGroup U] [Module ℝ U]
variable {G : PositiveForm (P × U)}
example (S : BlockSchurSolver G) (u : U) :
    S.project (autonomousInclusion u) = provenanceInclusion (S.solve u) := by simp
example (S : BlockSchurSolver G) (u : U) :
    S.projector.residualMap (autonomousInclusion u) =
      autonomousInclusion u - provenanceInclusion (S.solve u) := by simp
end Blocks

example {V : Type u} {X : Type v}
    [AddCommGroup V] [Module ℝ V] [AddCommGroup X] [Module ℝ X]
    (I : LinearIntervention X V) (x : X) :
    (LinearComparator.zero : LinearComparator V).responseDifference I x = 0 := by simp

example {n : ℕ} (c : OrderedFinpartition n) (m : Fin c.length) :
    ((orderedBlockEquivParts c m : (orderedToDirectionPartition c).parts) : Finset (Fin n)) =
      orderedBlock c m := by simp

example {V : Type u} [AddCommGroup V] [Module ℝ V] (z : V × V) :
    swapInvolution (swapInvolution z) = z := by simp

example (a b c : ℝ) (ha : a ≠ 0)
    (hpos : ∀ x : ℝ × ℝ, 0 ≤ scalarBlockForm a b c x x) (x : ℝ × ℝ) :
    (scalarProvenanceProjector a b c ha hpos).residualMap x =
      (-(b / a) * x.2, x.2) := by simp
end FormalResearch.PositiveAtlas
```
