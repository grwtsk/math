import Mathematics.Projection.ExactOverlap
import Mathlib.Data.Finset.Union

/-!
# Exact overlapping formal neighborhoods

The reducer is a finite cover/DAG.  Children may intersect and an element may
occur along several routes.  The local carrier records exactly the part of a
node not supplied by its children, so no partition or preferred parent is
silently imposed.
-/

namespace Mathematics.Projection

universe u v w

structure FormalNeighborhoodCover
    (Element : Type u) (Neighborhood : Type v)
    [Fintype Element] [DecidableEq Element]
    [Fintype Neighborhood] [DecidableEq Neighborhood] where
  extent : Neighborhood → Finset Element
  children : Neighborhood → Finset Neighborhood
  localCarrier : Neighborhood → Finset Element
  roots : Finset Neighborhood
  childStrict :
    ∀ parent child,
      child ∈ children parent →
        extent child ⊂ extent parent
  exactDecomposition :
    ∀ neighborhood,
      extent neighborhood =
        localCarrier neighborhood ∪
          (children neighborhood).biUnion extent
  rootCoverage :
    roots.biUnion extent = Finset.univ

namespace FormalNeighborhoodCover

variable
    {Element : Type u} {Neighborhood : Type v}
    [Fintype Element] [DecidableEq Element]
    [Fintype Neighborhood] [DecidableEq Neighborhood]

noncomputable def flatFiber
    {Probe : Type w}
    (encode : Element → IncidenceCode Probe)
    (query : IncidenceCode Probe) :
    Finset Element := by
  classical
  exact Finset.univ.filter fun element ↦ encode element = query

/--
A deep reducer may use any exact traversal of the overlap DAG, but its result
must be extensionally equal to flat exact search.  This is the authority
condition that prevents pruning heuristics from deleting ties.
-/
structure DeepReducer
    {Probe : Type w}
    (cover : FormalNeighborhoodCover Element Neighborhood)
    (encode : Element → IncidenceCode Probe) where
  reduce : IncidenceCode Probe → Finset Element
  exact :
    ∀ query, reduce query = flatFiber encode query

end FormalNeighborhoodCover

end Mathematics.Projection
