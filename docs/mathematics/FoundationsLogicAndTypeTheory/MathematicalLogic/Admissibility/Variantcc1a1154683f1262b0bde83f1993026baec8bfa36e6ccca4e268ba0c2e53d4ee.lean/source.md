# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.MathematicalLogic.Admissibility.Variantcc1a1154683f1262b0bde83f1993026baec8bfa36e6ccca4e268ba0c2e53d4ee

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `d8637c4d31b119253d71e0eadcc7f782e8bf2448` · SHA-256 `cc1a1154683f1262b0bde83f1993026baec8bfa36e6ccca4e268ba0c2e53d4ee`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Mathematics.GraphAccess.RelationScope

/-!
# Certified admissibility

Admissibility is already decided in an admitted request.  Unknown edge
admissibility never enters this predicate as `false`; it remains an explicit
unknown before request construction.
-/

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
