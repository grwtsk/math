# Complete source: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.TopologicalEmbedding.Varianta779b57224f9200f6917feb0dd1340c258f5f0948b4a36ebc3e37f92116b9ae4

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `13b724429c0ddf8f4922389da7e7f7d759779ab5` · SHA-256 `a779b57224f9200f6917feb0dd1340c258f5f0948b4a36ebc3e37f92116b9ae4`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Surface.Arithmetic.EllipticCurve.MordellWeil

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
