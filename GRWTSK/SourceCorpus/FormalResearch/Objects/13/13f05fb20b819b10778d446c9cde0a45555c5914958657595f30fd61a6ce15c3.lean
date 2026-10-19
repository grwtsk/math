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
