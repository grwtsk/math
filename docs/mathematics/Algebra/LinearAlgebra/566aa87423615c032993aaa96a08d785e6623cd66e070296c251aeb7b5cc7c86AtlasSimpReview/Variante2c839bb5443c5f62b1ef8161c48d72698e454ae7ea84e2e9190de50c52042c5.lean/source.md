# Complete source: GRWTSK.Algebra.LinearAlgebra.566aa87423615c032993aaa96a08d785e6623cd66e070296c251aeb7b5cc7c86AtlasSimpReview.Variante2c839bb5443c5f62b1ef8161c48d72698e454ae7ea84e2e9190de50c52042c5

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `6e13e2a4d9ebf93eb8b5702e9cb80e4c466a30b0` · SHA-256 `27ddc3ff8294bbd7bce4f746fa881357f3cbbc275262122ec2fabe9015b4d5d0`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: Algebra.LinearAlgebra
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Algebra.LinearAlgebra.BlockDirectionReindexing.Variant566aa87423615c032993aaa96a08d785e6623cd66e070296c251aeb7b5cc7c86","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"566aa87423615c032993aaa96a08d785e6623cd66e070296c251aeb7b5cc7c86","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Algebra.LinearAlgebra.SourceCorpus.BlockDirectionReindexing.Variant566aa87423615c032993aaa96a08d785e6623cd66e070296c251aeb7b5cc7c86","mathematical_subject":"Algebra.LinearAlgebra","original_sha256":"566aa87423615c032993aaa96a08d785e6623cd66e070296c251aeb7b5cc7c86","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal.publication/20261007/ignored-unit/source/other-research/56/566aa87423615c032993aaa96a08d785e6623cd66e070296c251aeb7b5cc7c86--AtlasSimpReview.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import FormalResearch.PositiveAtlas.BlockDirectionReindexing
import FormalResearch.PositiveAtlas.BlockSchur
import FormalResearch.PositiveAtlas.ComparatorSeparation
import FormalResearch.PositiveAtlas.OrderedPartitionBridge
import FormalResearch.PositiveAtlas.QuadraticSwapInvolution
import FormalResearch.PositiveAtlas.ScalarSchur


namespace GRWTSK.Algebra.LinearAlgebra.BlockDirectionReindexing.Variant566aa87423615c032993aaa96a08d785e6623cd66e070296c251aeb7b5cc7c86

set_option autoImplicit false
namespace FormalResearch.PositiveAtlas
open MomentCumulant
universe u v

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
