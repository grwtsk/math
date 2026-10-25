# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.MathematicalLogic.Admissibility.Variant6dbce0fcd4fcad68768a3195112a82d2cce252a668bea089e095e43448a15e20

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `653643e2906217baafde93667e1024b99aed81c3` · SHA-256 `66b35f0cc0e764a631880f9ea401187dbae9ebff20ee60d7c056c9cfcd68d48e`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.MathematicalLogic
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.MathematicalLogic.AdmissibilityProfile.Variantcc1a1154683f1262b0bde83f1993026baec8bfa36e6ccca4e268ba0c2e53d4ee","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"cc1a1154683f1262b0bde83f1993026baec8bfa36e6ccca4e268ba0c2e53d4ee","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Logic.Foundations.SourceCorpus.AdmissibilityProfile.Variantcc1a1154683f1262b0bde83f1993026baec8bfa36e6ccca4e268ba0c2e53d4ee","mathematical_subject":"Logic.Foundations","original_sha256":"cc1a1154683f1262b0bde83f1993026baec8bfa36e6ccca4e268ba0c2e53d4ee","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/08/10/Surface/Mathematics/GraphAccess/Admissibility.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Mathematics.GraphAccess.RelationScope

/-!
# Certified admissibility

Admissibility is already decided in an admitted request.  Unknown edge
admissibility never enters this predicate as `false`; it remains an explicit
unknown before request construction.
-/


namespace GRWTSK.FoundationsLogicAndTypeTheory.MathematicalLogic.AdmissibilityProfile.Variantcc1a1154683f1262b0bde83f1993026baec8bfa36e6ccca4e268ba0c2e53d4ee

namespace Mathematics.GraphAccess

structure AdmissibilityProfile (G : GraphCut) where
  nodeAdmissibleB : G.Node → Bool
  edgeAdmissibleB : G.Edge → Bool
  edgeEndpointsAdmissible :
    ∀ candidate,
      edgeAdmissibleB candidate = true →
      nodeAdmissibleB (G.source candidate) = true ∧
        nodeAdmissibleB (G.target candidate) = true
  digest : ProfileDigest

def NodeAdmissible
    {G : GraphCut}
    (profile : AdmissibilityProfile G)
    (node : G.Node) : Prop :=
  profile.nodeAdmissibleB node = true

def EdgeAdmissible
    {G : GraphCut}
    (profile : AdmissibilityProfile G)
    (edge : G.Edge) : Prop :=
  profile.edgeAdmissibleB edge = true

def ArcAdmissible
    {G : GraphCut}
    (profile : AdmissibilityProfile G)
    (arc : Arc G) : Prop :=
  EdgeAdmissible profile arc.edge

instance
    {G : GraphCut}
    (profile : AdmissibilityProfile G)
    (node : G.Node) :
    Decidable (NodeAdmissible profile node) :=
  by
    unfold NodeAdmissible
    infer_instance

instance
    {G : GraphCut}
    (profile : AdmissibilityProfile G)
    (edge : G.Edge) :
    Decidable (EdgeAdmissible profile edge) :=
  by
    unfold EdgeAdmissible
    infer_instance

instance
    {G : GraphCut}
    (profile : AdmissibilityProfile G)
    (arc : Arc G) :
    Decidable (ArcAdmissible profile arc) :=
  by
    unfold ArcAdmissible EdgeAdmissible
    infer_instance

theorem ArcAdmissible.endpoints
    {G : GraphCut}
    {profile : AdmissibilityProfile G}
    {arc : Arc G}
    (admissible : ArcAdmissible profile arc) :
    NodeAdmissible profile arc.tail ∧
      NodeAdmissible profile arc.head := by
  have endpoints :=
    profile.edgeEndpointsAdmissible
      arc.edge admissible
  cases arc with
  | mk edge direction =>
      cases direction with
      | forward =>
          simpa [Arc.tail, Arc.head,
            NodeAdmissible] using endpoints
      | reverse =>
          simpa [Arc.tail, Arc.head,
            NodeAdmissible] using
            And.intro endpoints.2 endpoints.1

end Mathematics.GraphAccess
```
