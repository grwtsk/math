# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.GraphRealization.Varianted7c41482868bc533da613f93a92c289049b97c46825c4c87e86ce8464451c67

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `77b8d5a03c98cab0ed36f1967924d6ed79808ede` · SHA-256 `ed7c41482868bc533da613f93a92c289049b97c46825c4c87e86ce8464451c67`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import FCRS.ControlledSpherical.Foundations

universe uVertex uEdge uPoint uMorph uFactor

namespace FCRS.ControlledSpherical

open FCRS.ControlledPlane

/--
An abstract carrier realizing a supplied graph.  `edgeSupport` is incidence
data only; `Point` is not asserted to be a topological realization.
-/
structure GraphRealization
    {Vertex : Type uVertex} {Edge : Type uEdge}
    (G : DirectedGraph Vertex Edge) where
  Point : Type uPoint
  vertexPoint : Vertex → Point
  edgeSupport : Edge → Point → Prop

/-- An edge has at least one point in the declared realization support. -/
def RealizesEdge
    {Vertex : Type uVertex} {Edge : Type uEdge}
    {G : DirectedGraph Vertex Edge}
    (R : GraphRealization G) (e : Edge) : Prop :=
  ∃ p, R.edgeSupport e p

/--
Exactly the sieve-admitted edges are represented by the supplied graph
realization.  Both directions are explicit research obligations.
-/
structure SieveRealizationCompatible
    {Vertex : Type uVertex} {Edge : Type uEdge}
    {Morph : Type uMorph} {Factorization : Type uFactor}
    {G : DirectedGraph Vertex Edge}
    (R : GraphRealization G)
    (sieve : FactoringSieve Morph Factorization)
    (occurs : Edge → Factorization → Prop) : Prop where
  admittedEdgeRealized :
    ∀ e, AdmissibleEdge sieve occurs e → RealizesEdge R e
  realizedEdgeAdmitted :
    ∀ e, RealizesEdge R e → AdmissibleEdge sieve occurs e

end FCRS.ControlledSpherical
```
