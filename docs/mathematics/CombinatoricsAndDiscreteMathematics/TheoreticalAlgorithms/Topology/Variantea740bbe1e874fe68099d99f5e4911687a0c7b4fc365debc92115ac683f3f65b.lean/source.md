# Complete source: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.Topology.Variantea740bbe1e874fe68099d99f5e4911687a0c7b4fc365debc92115ac683f3f65b

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `3cd0479821abc98f816755d254affa11eda11507` · SHA-256 `4654da25c62e000428a7bd6bc0597f541db00ec66a65f1f005712ded1fa9d73c`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.FlowTagSet.Variant03581e1bdb5ac3c3b29c3bcc835db8df6d8fa81db33e7da9b8dfd1cf6da914cd","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"03581e1bdb5ac3c3b29c3bcc835db8df6d8fa81db33e7da9b8dfd1cf6da914cd","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.DataStructures.SourceCorpus.FlowTagSet.Variant03581e1bdb5ac3c3b29c3bcc835db8df6d8fa81db33e7da9b8dfd1cf6da914cd","mathematical_subject":"Computation.DataStructures","original_sha256":"03581e1bdb5ac3c3b29c3bcc835db8df6d8fa81db33e7da9b8dfd1cf6da914cd","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/07/21/Surface/formal/.surface/overlays/session:2e628ee6531784ebd1c16c0e/workspace/Surface/Flow/Symbolic/Topology.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Surface.Flow.Symbolic.Basic


namespace GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.FlowTagSet.Variant03581e1bdb5ac3c3b29c3bcc835db8df6d8fa81db33e7da9b8dfd1cf6da914cd

namespace Surface

/-- A compact switchboard for topological attention channels. -/
structure Flow.TagSet where
  homology : Bool
  prismaticTag : Bool
  symmetryGroup : Bool
  sieve : Bool
  heatResidue : Bool
  lFunction : Bool
  eulerProduct : Bool
  pointCounting : Bool
deriving Repr, DecidableEq

/-- Convert an attention set into a list of attention tags. -/
def Flow.TagSet.toList
    (A : Flow.TagSet) :
    List Flow.Tag :=
  (if A.homology then [.homology] else []) ++
  (if A.prismaticTag then [.prismaticTag] else []) ++
  (if A.symmetryGroup then [.symmetryGroup] else []) ++
  (if A.sieve then [.sieve] else []) ++
  (if A.heatResidue then [.heatResidue] else []) ++
  (if A.lFunction then [.lFunction] else []) ++
  (if A.eulerProduct then [.eulerProduct] else []) ++
  (if A.pointCounting then [.pointCounting] else [])

/-- Apply all attention tags in an attention set to a symbolic flow tree. -/
def Flow.TagSet.apply
    (A : Flow.TagSet)
    (t : Flow.Expression α) :
    Flow.Expression α :=
  Flow.Expression.attendMany A.toList t

/-- Full topological attention: homology, prismatic attention tag, symmetry, sieves. -/
def Flow.TagSet.fullTopological :
    Flow.TagSet where
  homology := true
  prismaticTag := true
  symmetryGroup := true
  sieve := true
  heatResidue := false
  lFunction := false
  eulerProduct := false
  pointCounting := false

/-- Full arithmetic analytic attention. -/
def Flow.TagSet.fullArithmeticAnalytic :
    Flow.TagSet where
  homology := true
  prismaticTag := true
  symmetryGroup := true
  sieve := true
  heatResidue := true
  lFunction := true
  eulerProduct := true
  pointCounting := true

/-- Homology-focused view of a flow tree. -/
def Flow.homologyView
    (t : Flow.Expression α) :
    Flow.Expression α :=
  .attend .homology (.variadic .homology [t])

/-- Prismatic-attention view of a flow tree. -/
def Flow.prismaticTagView
    (t : Flow.Expression α) :
    Flow.Expression α :=
  .attend .prismaticTag (.variadic .prismaticTag [t])

/-- Symmetry-group-focused view of a flow tree. -/
def Flow.symmetryGroupView
    (t : Flow.Expression α) :
    Flow.Expression α :=
  .attend .symmetryGroup (.variadic .symmetryGroup [t])

/-- Sieve-focused view of a flow tree. -/
def Flow.sieveView
    (t : Flow.Expression α) :
    Flow.Expression α :=
  .attend .sieve (.variadic .sieve [t])

/-- Combine the standard topological views into one prefix chain. -/
def Flow.topologicalPerspective
    (t : Flow.Expression α) :
    Flow.Expression α :=
  .variadic .topologicalPerspective
    [ Flow.homologyView t
    , Flow.prismaticTagView t
    , Flow.symmetryGroupView t
    , Flow.sieveView t
    ]

end Surface
```
