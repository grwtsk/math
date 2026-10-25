# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.MathematicalLogic.IncidenceAnchorNetwork.Variant095c1e0f1792c9df8461c0978b366dca69eb5c6dd3d13cecdabaf6979bef4526

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `4822e9466b65089f001bdce678b8f95812da5eea` · SHA-256 `095c1e0f1792c9df8461c0978b366dca69eb5c6dd3d13cecdabaf6979bef4526`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Mathematics.Projection.GeodesicCompletion
import Mathematics.Projection.RoutingStatus

/-!
# Certified incidence singletons and their exact network

A certified incidence singleton is not merely a nearby incidence code.  Its complete finite
incidence coordinate separates one mathematical object from every other
object in the current probe epoch, and its name and route have independent
certificate addresses.

Connectivity here is graph connectivity in the exact Hamming one-skeleton.
It must not be confused with topological connectedness of the Stone
compactification, which is generally totally disconnected.
-/

namespace Mathematics.Projection

universe u v

/--
One realized, named point whose current incidence fiber is exactly a
singleton.  The certificate field is an address only; logical authority must
be obtained from the addressed proof-bearing certificate.
-/
structure CertifiedIncidenceSingleton
    {Object : Type u} [DecidableEq Object]
    {width : Nat}
    (encode : Object → FiniteIncidenceCode width) where
  object : Object
  routeKey : RigidKey
  nameObject : ObjectAddress
  kernelCertificateAddress : ObjectAddress
  exactSingleton :
    ∀ candidate, encode candidate = encode object → candidate = object

namespace CertifiedIncidenceSingleton

variable
    {Object : Type u} [DecidableEq Object]
    {width : Nat}
    {encode : Object → FiniteIncidenceCode width}

/-- The incidence coordinate carried by the stable point. -/
def code (point : CertifiedIncidenceSingleton encode) :
    FiniteIncidenceCode width :=
  encode point.object

@[simp] theorem code_fixed
    (point : CertifiedIncidenceSingleton encode) :
    point.code = encode point.object :=
  rfl

end CertifiedIncidenceSingleton

/-- Exact adjacency in the finite Boolean cube. -/
def BooleanAdjacent
    {width : Nat}
    (left right : FiniteIncidenceCode width) : Prop :=
  finiteHamming left right = 1

/--
A walk all of whose vertices are certified incidence singletons.  This
is stronger than a path through arbitrary Boolean proposal codes.
-/
inductive CertifiedIncidenceWalk
    {Object : Type u} [DecidableEq Object]
    {width : Nat}
    (encode : Object → FiniteIncidenceCode width) :
    CertifiedIncidenceSingleton encode →
      CertifiedIncidenceSingleton encode → Type u
  | stay (point : CertifiedIncidenceSingleton encode) :
      CertifiedIncidenceWalk encode point point
  | step
      (left next destination : CertifiedIncidenceSingleton encode)
      (adjacent :
        BooleanAdjacent
          (encode left.object)
          (encode next.object))
      (tail : CertifiedIncidenceWalk encode next destination) :
      CertifiedIncidenceWalk encode left destination

/--
A finite or infinite carrier of incidence anchors with an exact certified
walk between every pair.  No scalar similarity threshold appears in the
datum, and no dynamical stability is asserted.
-/
structure IncidenceAnchorNetwork
    {Object : Type u} [DecidableEq Object]
    {width : Nat}
    (encode : Object → FiniteIncidenceCode width) where
  Point : Type v
  point : Point → CertifiedIncidenceSingleton encode
  routeKeyInjective :
    Function.Injective fun index ↦ (point index).routeKey
  objectInjective :
    Function.Injective fun index ↦ (point index).object
  connected :
    ∀ left right,
      Nonempty
        (CertifiedIncidenceWalk encode (point left) (point right))

/--
One midpoint candidate promoted into a separated mathematical element.  The
realization and generation certificates are explicit; the midpoint equation
alone grants no identity or name.
-/
structure CertifiedIncidenceMidpointElement
    {Object : Type u} [DecidableEq Object]
    {width : Nat}
    (encode : Object → FiniteIncidenceCode width)
    (left right : CertifiedIncidenceSingleton encode) where
  midpoint :
    BooleanMidpoint (encode left.object) (encode right.object)
  point : CertifiedIncidenceSingleton encode
  realizesMidpoint :
    encode point.object = midpoint.point
  admittedGeneration : ObjectAddress
  realizationCertificateAddress : ObjectAddress

/--
Every recursively generated midpoint code has been realized as a certified
incidence singleton.  Without this structure, `MidpointGenerated` remains
only an exact proposal space; this record asserts no dynamical stability.
-/
structure CertifiedMidpointRealizationTower
    {Object : Type u} [DecidableEq Object]
    {width : Nat}
    (encode : Object → FiniteIncidenceCode width)
    (seed : Set (FiniteIncidenceCode width)) where
  singletonRealization :
    ∀ stage code,
      MidpointGenerated seed stage code →
        { point : CertifiedIncidenceSingleton encode //
          encode point.object = code }

end Mathematics.Projection
```
