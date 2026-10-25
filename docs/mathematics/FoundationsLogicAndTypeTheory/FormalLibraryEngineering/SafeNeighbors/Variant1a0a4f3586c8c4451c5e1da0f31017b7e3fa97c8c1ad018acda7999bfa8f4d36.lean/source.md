# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.SafeNeighbors.Variant1a0a4f3586c8c4451c5e1da0f31017b7e3fa97c8c1ad018acda7999bfa8f4d36

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `601033b421d6ec6dc98b450413ea7db3e0bb12cf` · SHA-256 `1a0a4f3586c8c4451c5e1da0f31017b7e3fa97c8c1ad018acda7999bfa8f4d36`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Mathematics.SemiLocalDefect.ResidueDeflection.Graph
import Mathematics.GraphAccess.NeighborEnumeration

/-!
# Safe canonical neighbors

The existing complete neighbor enumeration is specialized by the certified
safe admissibility profile.
-/

namespace Mathematics.SemiLocalDefect.ResidueDeflection

open Mathematics.GraphAccess

def safeNeighborEnumeration
    {graph : GraphCut}
    (cut : ResidueDeflectionCut graph)
    (scope : RelationScope graph)
    (digest : ProfileDigest) :
    NeighborEnumeration
      graph scope cut.admissibility :=
  NeighborEnumeration.canonical
    graph scope cut.admissibility digest

theorem safeNeighbor_endpoints
    {graph : GraphCut}
    (cut : ResidueDeflectionCut graph)
    (scope : RelationScope graph)
    (digest : ProfileDigest)
    (node : graph.Node)
    (arc : Arc graph)
    (member :
      arc ∈
        (safeNeighborEnumeration
          cut scope digest).neighbors node) :
    (cut.residue arc.tail).Safe ∧
      (cut.residue arc.head).Safe := by
  have eligible :=
    (safeNeighborEnumeration
      cut scope digest).sound node arc member
  have safeArc :
      cut.safeArc arc = true :=
    (cut.admitted_arc_iff_safe arc).mp
      eligible.2.2
  exact cut.safeArc_endpoints arc safeArc

end Mathematics.SemiLocalDefect.ResidueDeflection
```
