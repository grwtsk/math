# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.MathematicalLogic.AdmittedGraph.Variant51e8dfb6fb25ed1c35b72a108081b0afb9a7a4c1ec4515f246464571378657e3

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `d2051f367e2511f5b261a79684ddaa9cbfd4b8ff` · SHA-256 `51e8dfb6fb25ed1c35b72a108081b0afb9a7a4c1ec4515f246464571378657e3`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import FCRS.ControlledPlane.Sieve

/-
The sieve selects the edge type before geometric realization.  Traversal
occurrences and weights remain separate annotations: an admitted source edge
appears exactly once as an element of `AdmittedEdgeType`, independently of how
many factorizations traverse it.
-/

universe uVertex uEdge uMorph uFactor

namespace FCRS.ControlledSpherical

open FCRS.ControlledPlane

/-- The subtype of source edges admitted by a factoring sieve. -/
def AdmittedEdgeType
    {Edge : Type uEdge}
    {Morph : Type uMorph} {Factorization : Type uFactor}
    (sieve : FactoringSieve Morph Factorization)
    (occurs : Edge → Factorization → Prop) :
    Type uEdge :=
  { e : Edge // AdmissibleEdge sieve occurs e }

/-- Every element of the admitted-edge subtype carries its sieve witness. -/
theorem admittedEdgeType_isAdmissible
    {Edge : Type uEdge}
    {Morph : Type uMorph} {Factorization : Type uFactor}
    {sieve : FactoringSieve Morph Factorization}
    {occurs : Edge → Factorization → Prop}
    (e : AdmittedEdgeType sieve occurs) :
    AdmissibleEdge sieve occurs e.1 :=
  e.2

/--
The admitted-edge subtype does not duplicate a source edge: equality of
underlying source edges determines equality of admitted-edge elements.
-/
theorem admittedEdgeType_val_injective
    {Edge : Type uEdge}
    {Morph : Type uMorph} {Factorization : Type uFactor}
    {sieve : FactoringSieve Morph Factorization}
    {occurs : Edge → Factorization → Prop} :
    Function.Injective
      (fun e : AdmittedEdgeType sieve occurs => e.1) := by
  intro e f h
  exact Subtype.ext h

/--
The directed graph obtained by restricting the source graph to sieve-admitted
edges.  Vertices are unchanged, while source and target forget the subtype
proof and use the original graph incidence maps.
-/
def AdmittedGraph
    {Vertex : Type uVertex} {Edge : Type uEdge}
    {Morph : Type uMorph} {Factorization : Type uFactor}
    (G : DirectedGraph Vertex Edge)
    (sieve : FactoringSieve Morph Factorization)
    (occurs : Edge → Factorization → Prop) :
    DirectedGraph Vertex (AdmittedEdgeType sieve occurs) where
  source e := G.source e.1
  target e := G.target e.1

@[simp] theorem admittedGraph_source
    {Vertex : Type uVertex} {Edge : Type uEdge}
    {Morph : Type uMorph} {Factorization : Type uFactor}
    (G : DirectedGraph Vertex Edge)
    (sieve : FactoringSieve Morph Factorization)
    (occurs : Edge → Factorization → Prop)
    (e : AdmittedEdgeType sieve occurs) :
    (AdmittedGraph G sieve occurs).source e = G.source e.1 :=
  rfl

@[simp] theorem admittedGraph_target
    {Vertex : Type uVertex} {Edge : Type uEdge}
    {Morph : Type uMorph} {Factorization : Type uFactor}
    (G : DirectedGraph Vertex Edge)
    (sieve : FactoringSieve Morph Factorization)
    (occurs : Edge → Factorization → Prop)
    (e : AdmittedEdgeType sieve occurs) :
    (AdmittedGraph G sieve occurs).target e = G.target e.1 :=
  rfl

end FCRS.ControlledSpherical
```
