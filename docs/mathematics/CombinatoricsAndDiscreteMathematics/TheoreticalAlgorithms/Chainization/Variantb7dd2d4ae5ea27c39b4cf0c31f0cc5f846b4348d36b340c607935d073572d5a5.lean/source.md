# Complete source: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.Chainization.Variantb7dd2d4ae5ea27c39b4cf0c31f0cc5f846b4348d36b340c607935d073572d5a5

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `e772dfcda7d051db2028addffb55562bbf215cc0` · SHA-256 `7977f22ef6700db82e26f0afe5cfaca09142b9f713b1ab5cd794afda22319629`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.SemanticGraphSkeleton.Variant5f7c348c7760728ef22e947ef8172367f6a0df855a0010c9c52b0b3975fba1cf","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"5f7c348c7760728ef22e947ef8172367f6a0df855a0010c9c52b0b3975fba1cf","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.DataStructures.SourceCorpus.SemanticGraphSkeleton.Variant5f7c348c7760728ef22e947ef8172367f6a0df855a0010c9c52b0b3975fba1cf","mathematical_subject":"Computation.DataStructures","original_sha256":"5f7c348c7760728ef22e947ef8172367f6a0df855a0010c9c52b0b3975fba1cf","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/08/10/Surface/Mathematics/TensorNetwork/Chainization.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["lake_or_runtime_control","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Mathematics.TensorNetwork.State

/-!
# Lossless semantic graph chainization

The tensor site order is navigation and contraction data.  It does not replace
the permanent node and edge identities of the semantic graph.
-/


namespace GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.SemanticGraphSkeleton.Variant5f7c348c7760728ef22e947ef8172367f6a0df855a0010c9c52b0b3975fba1cf

namespace Mathematics.TensorNetwork

universe u v w x

/-- One typed directed semantic graph with permanent node and edge carriers. -/
structure SemanticGraphSkeleton
    (Node : Type u)
    (Edge : Type v)
    (RelationKind : Type w) where
  source : Edge → Node
  target : Edge → Node
  relation : Edge → RelationKind
  nodeIdentity : Node → String
  edgeIdentity : Edge → String
  provenance : Edge → List String

/--
Lossless encoding of a graph into an ordered site carrier plus explicit edge
and side-edge data.  The decoder equality is the authority-bearing claim.
-/
structure GraphChainizationCertificate
    {Node : Type u}
    {Edge : Type v}
    {RelationKind : Type w}
    (graph : SemanticGraphSkeleton Node Edge RelationKind)
    (Code : Type x) where
  sites : Nat
  site : Fin sites ≃ Node
  edgeCode : Edge → String
  sideEdges : List Edge
  encoded : Code
  decode : Code → SemanticGraphSkeleton Node Edge RelationKind
  decodeEncode : decode encoded = graph
  everyEdgeEncoded :
    Function.Injective edgeCode

/-- Lossless chainization reconstructs the exact source graph. -/
theorem GraphChainizationCertificate.recovers
    {graph : SemanticGraphSkeleton Node Edge RelationKind}
    (certificate : GraphChainizationCertificate graph Code) :
    certificate.decode certificate.encoded = graph :=
  certificate.decodeEncode

/-- Approximate graph orderings carry an explicit behavioral error only. -/
structure ApproximateGraphChainizationCertificate
    (Graph Code : Type*)
    where
  encode : Graph → Code
  decode : Code → Graph
  behavioralDistance : Graph → Graph → ℝ
  errorBound : ℝ
  errorBound_nonnegative : 0 ≤ errorBound
  bounded :
    ∀ graph,
      behavioralDistance graph (decode (encode graph)) ≤ errorBound

end Mathematics.TensorNetwork
```
