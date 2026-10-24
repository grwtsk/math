# Complete source: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.Path.Variant13f05fb20b819b10778d446c9cde0a45555c5914958657595f30fd61a6ce15c3

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `f80e9456c1fa3e9824fde408ef55233a7ee54d51` · SHA-256 `13f05fb20b819b10778d446c9cde0a45555c5914958657595f30fd61a6ce15c3`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Mathematics.SemiLocalDefect.ResidueDeflection.Phase
import Mathematics.GraphAccess.Arc

/-!
# Typed paths in an immutable graph cut

Adjacency is encoded by the indices of the inductive path.
-/

namespace Mathematics.SemiLocalDefect.ResidueDeflection

open Mathematics.GraphAccess

universe uNode uEdge uClass

inductive DeflectionPath
    (graph : GraphCut) :
    graph.Node → graph.Node → Type _
  | nil (node : graph.Node) :
      DeflectionPath graph node node
  | cons
      (arc : Arc graph)
      {target : graph.Node}
      (rest :
        DeflectionPath graph arc.head target) :
      DeflectionPath graph arc.tail target

def DeflectionPath.length
    {graph : GraphCut}
    {source target : graph.Node} :
    DeflectionPath graph source target → Nat
  | .nil _ => 0
  | .cons _ rest => rest.length + 1

def DeflectionPath.arcs
    {graph : GraphCut}
    {source target : graph.Node} :
    DeflectionPath graph source target →
      List (Arc graph)
  | .nil _ => []
  | .cons arc rest => arc :: rest.arcs

def DeflectionPath.AllArcs
    {graph : GraphCut}
    (predicate : Arc graph → Prop)
    {source target : graph.Node} :
    DeflectionPath graph source target → Prop
  | .nil _ => True
  | .cons arc rest =>
      predicate arc ∧ rest.AllArcs predicate

def DeflectionPath.phaseProduct
    {graph : GraphCut}
    (phase : Arc graph → Phase3)
    {source target : graph.Node} :
    DeflectionPath graph source target →
      Phase3
  | .nil _ => .identity
  | .cons arc rest =>
      Phase3.mul
        (rest.phaseProduct phase)
        (phase arc)

end Mathematics.SemiLocalDefect.ResidueDeflection
```
