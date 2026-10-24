# Complete source: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.TopologicalEmbedding.Variantc012871abb9742fe206b53e71c094a4fd0ba6fdcdc5c17d337feed4d0682e66d

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `7b6615cbe47b6cd76f6e8bf172dba31545e3220b` · SHA-256 `b0749305025b6675899385664b529984fc931c2596d5859df4b00fa5af211b24`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.R4Like.Varianta779b57224f9200f6917feb0dd1340c258f5f0948b4a36ebc3e37f92116b9ae4","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"a779b57224f9200f6917feb0dd1340c258f5f0948b4a36ebc3e37f92116b9ae4","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.DataStructures.SourceCorpus.R4Like.Varianta779b57224f9200f6917feb0dd1340c258f5f0948b4a36ebc3e37f92116b9ae4","mathematical_subject":"Computation.DataStructures","original_sha256":"a779b57224f9200f6917feb0dd1340c258f5f0948b4a36ebc3e37f92116b9ae4","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/07/21/Surface/formal/.surface/overlays/session:2e628ee6531784ebd1c16c0e/workspace/Surface/Arithmetic/EllipticCurve/TopologicalEmbedding.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Surface.Arithmetic.EllipticCurve.MordellWeil


namespace GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.R4Like.Varianta779b57224f9200f6917feb0dd1340c258f5f0948b4a36ebc3e37f92116b9ae4

namespace Surface.Arithmetic
namespace EllipticCurve

universe u

/-!
# Topological embedding descriptors

The embedding layer is certificate-bearing.  A countable orbit image is not a
continuous loop unless a `LoopFromPoint` certificate is supplied.
-/

variable {K : FieldLike.{u}}
variable {E : ShortWeierstrass K}

/-- Symbolic four-dimensional target space. -/
structure R4Like where
  x₁ : String
  x₂ : String
  x₃ : String
  x₄ : String
deriving Repr, DecidableEq

/-- Complex torus uniformization metadata. -/
structure ComplexTorusUniformization
    (E : ShortWeierstrass K) where
  latticeLabel : String
  quotientLabel : String
  uniformizationMapLabel : String
  boundary : List String

/-- A topological embedding package with explicit proof obligations. -/
structure TopologicalEmbeddingData
    (E : ShortWeierstrass K) where
  Phi : Point E → R4Like
  continuous : Prop
  continuousCertified : continuous
  bounded : Prop
  boundedCertified : bounded
  torus_coordinate_hom : Prop
  torusCoordinateHomCertified : torus_coordinate_hom
  injectiveOnDeclaredDomain : Prop
  injectiveOnDeclaredDomainCertified : injectiveOnDeclaredDomain
  boundary : List String

/-- The orbit image of a supplied point sequence under `Phi`. -/
def orbitSet
    {E : ShortWeierstrass K}
    (D : TopologicalEmbeddingData E)
    (sequence : Nat → Point E) :
    Nat → R4Like :=
  fun n => D.Phi (sequence n)

/-- Orbit closure metadata, deliberately distinct from the countable orbit. -/
structure OrbitClosure
    {E : ShortWeierstrass K}
    (D : TopologicalEmbeddingData E)
    (sequence : Nat → Point E) where
  closureLabel : String
  containsOrbit : Prop
  containsOrbitCertified : containsOrbit
  boundary : List String

/-- Infinite-order point certificate. -/
structure InfiniteOrderPointCertificate
    {E : ShortWeierstrass K}
    (P : Point E) where
  infiniteOrder : Prop
  infiniteOrderCertified : infiniteOrder
  source : String
  boundary : List String

/-- A certified loop attached to a point and embedding. -/
structure LoopFromPoint
    {E : ShortWeierstrass K}
    (D : TopologicalEmbeddingData E)
    (P : Point E) where
  circleParameterLabel : String
  mapLabel : String
  targetLabel : String
  continuousLoop : Prop
  continuousLoopCertified : continuousLoop
  usesOrbitClosure : Bool
  boundary : List String

theorem certified_infinite_order_point_induces_certified_loop
    {D : TopologicalEmbeddingData E}
    {P : Point E}
    (_hP : InfiniteOrderPointCertificate P)
    (L : LoopFromPoint D P) :
    L.continuousLoop :=
  L.continuousLoopCertified

end EllipticCurve
end Surface.Arithmetic
```
