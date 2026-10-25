# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.MathematicalLogic.RelationScope.Variantc5de51db12a08506873f6b4f7d70718a03961204a1cdabf79144cf00a3a50033

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `da1100b1d0160503d685191699329ae7c2f04c1a` · SHA-256 `b1b87adbf666cc758a87fe9b933e2efed5b1dcba430f152fea0e9e4829baaeea`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.MathematicalLogic
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.MathematicalLogic.RelationScope.Variant6f74420122edc1147206247a14dab075baf3e82da8baab81bb699baeae385e74","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"6f74420122edc1147206247a14dab075baf3e82da8baab81bb699baeae385e74","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Logic.Foundations.SourceCorpus.RelationScope.Variant6f74420122edc1147206247a14dab075baf3e82da8baab81bb699baeae385e74","mathematical_subject":"Logic.Foundations","original_sha256":"6f74420122edc1147206247a14dab075baf3e82da8baab81bb699baeae385e74","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/08/10/Surface/Mathematics/GraphAccess/RelationScope.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Mathematics.GraphAccess.Arc

/-!
# Relation scope

Scope is a decidable presentation filter over relation classes and traversal
directions.  It does not create graph incidence.
-/


namespace GRWTSK.FoundationsLogicAndTypeTheory.MathematicalLogic.RelationScope.Variant6f74420122edc1147206247a14dab075baf3e82da8baab81bb699baeae385e74

namespace Mathematics.GraphAccess

structure RelationScope (G : GraphCut) where
  allowsClass : G.EdgeClass → Bool
  allowsDirection : G.Edge → ArcDirection → Bool
  digest : ProfileDigest

def InScope
    {G : GraphCut}
    (scope : RelationScope G)
    (arc : Arc G) : Prop :=
  scope.allowsClass (G.edgeClass arc.edge) = true ∧
    scope.allowsDirection arc.edge arc.direction = true

instance
    {G : GraphCut}
    (scope : RelationScope G)
    (arc : Arc G) :
    Decidable (InScope scope arc) :=
  by
    unfold InScope
    infer_instance

def RelationScope.forwardOnly
    (G : GraphCut)
    (allowsClass : G.EdgeClass → Bool)
    (digest : ProfileDigest) :
    RelationScope G where
  allowsClass := allowsClass
  allowsDirection := fun _ direction =>
    direction == .forward
  digest := digest

def RelationScope.bidirectional
    (G : GraphCut)
    (allowsClass : G.EdgeClass → Bool)
    (digest : ProfileDigest) :
    RelationScope G where
  allowsClass := allowsClass
  allowsDirection := fun _ _ => true
  digest := digest

end Mathematics.GraphAccess
```
