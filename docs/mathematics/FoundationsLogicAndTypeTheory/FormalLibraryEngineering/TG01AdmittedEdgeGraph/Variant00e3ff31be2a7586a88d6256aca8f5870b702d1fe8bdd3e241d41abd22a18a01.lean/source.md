# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.TG01AdmittedEdgeGraph.Variant00e3ff31be2a7586a88d6256aca8f5870b702d1fe8bdd3e241d41abd22a18a01

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `f2ce190810f351eca8eea2faaefe4d93716bee1c` · SHA-256 `00e3ff31be2a7586a88d6256aca8f5870b702d1fe8bdd3e241d41abd22a18a01`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import FCRS.ControlledSpherical.TopologicalClaims

universe uVertex uEdge uMorph uFactor

namespace FCRS.ControlledSpherical.TopologicalTheorems

open FCRS.ControlledPlane
open FCRS.ControlledSpherical

theorem tg01_admittedEdgeGraph
    {Vertex : Type uVertex} {Edge : Type uEdge}
    {Morph : Type uMorph} {Factorization : Type uFactor}
    (G : DirectedGraph Vertex Edge)
    (sieve : FactoringSieve Morph Factorization)
    (occurs : Edge → Factorization → Prop) :
    TG01Claim G sieve occurs where
  everyEdgeAdmissible := admittedEdgeType_isAdmissible
  sourceInherited := admittedGraph_source G sieve occurs
  targetInherited := admittedGraph_target G sieve occurs
  sourceEdgeNotDuplicated := admittedEdgeType_val_injective

end FCRS.ControlledSpherical.TopologicalTheorems
```
