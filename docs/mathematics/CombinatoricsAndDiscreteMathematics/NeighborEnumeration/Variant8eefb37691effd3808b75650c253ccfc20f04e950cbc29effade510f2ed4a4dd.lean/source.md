# Complete source: GRWTSK.CombinatoricsAndDiscreteMathematics.NeighborEnumeration.Variant8eefb37691effd3808b75650c253ccfc20f04e950cbc29effade510f2ed4a4dd

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `d4a137bae7624db5cb89182ee163fd38ce3e17c7` · SHA-256 `8eefb37691effd3808b75650c253ccfc20f04e950cbc29effade510f2ed4a4dd`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Mathematics.GraphAccess.Admissibility
import Mathlib.Data.Finset.Sort

/-!
# Canonical complete neighbor enumeration

Every optimized adjacency structure must refine this finite extensional
definition.  Soundness, completeness, no duplication, and canonical ordering
are certificate fields rather than performance assumptions.
-/

namespace Mathematics.GraphAccess

def EligibleArc
    {G : GraphCut}
    (scope : RelationScope G)
    (profile : AdmissibilityProfile G)
    (node : G.Node)
    (arc : Arc G) : Prop :=
  arc.tail = node ∧
    InScope scope arc ∧
    ArcAdmissible profile arc

instance
    {G : GraphCut}
    (scope : RelationScope G)
    (profile : AdmissibilityProfile G)
    (node : G.Node)
    (arc : Arc G) :
    Decidable (EligibleArc scope profile node arc) :=
  by
    unfold EligibleArc
    infer_instance

def canonicalNeighborSet
    {G : GraphCut}
    (scope : RelationScope G)
    (profile : AdmissibilityProfile G)
    (node : G.Node) : Finset (Arc G) :=
  Finset.univ.filter
    (EligibleArc scope profile node)

def canonicalNeighborList
    {G : GraphCut}
    (scope : RelationScope G)
    (profile : AdmissibilityProfile G)
    (node : G.Node) : List (Arc G) :=
  (canonicalNeighborSet scope profile node).sort (· ≤ ·)

@[simp]
theorem mem_canonicalNeighborList
    {G : GraphCut}
    (scope : RelationScope G)
    (profile : AdmissibilityProfile G)
    (node : G.Node)
    (arc : Arc G) :
    arc ∈ canonicalNeighborList scope profile node ↔
      EligibleArc scope profile node arc := by
  simp [canonicalNeighborList, canonicalNeighborSet]

theorem canonicalNeighborList_nodup
    {G : GraphCut}
    (scope : RelationScope G)
    (profile : AdmissibilityProfile G)
    (node : G.Node) :
    (canonicalNeighborList scope profile node).Nodup :=
  Finset.sort_nodup _ _

theorem canonicalNeighborList_sorted
    {G : GraphCut}
    (scope : RelationScope G)
    (profile : AdmissibilityProfile G)
    (node : G.Node) :
    (canonicalNeighborList scope profile node).Pairwise
      (· < ·) :=
  by
    simpa only [canonicalNeighborList] using
      (Finset.sortedLT_sort
        (canonicalNeighborSet
          scope profile node)).pairwise

structure NeighborEnumeration
    (G : GraphCut)
    (scope : RelationScope G)
    (profile : AdmissibilityProfile G) where
  neighbors : G.Node → List (Arc G)
  nodup : ∀ node, (neighbors node).Nodup
  sorted :
    ∀ node, (neighbors node).Pairwise (· < ·)
  sound :
    ∀ node arc,
      arc ∈ neighbors node →
        EligibleArc scope profile node arc
  complete :
    ∀ node arc,
      EligibleArc scope profile node arc →
        arc ∈ neighbors node
  digest : ProfileDigest

namespace NeighborEnumeration

theorem mem_iff
    {G : GraphCut}
    {scope : RelationScope G}
    {profile : AdmissibilityProfile G}
    (enumeration :
      NeighborEnumeration G scope profile)
    (node : G.Node)
    (arc : Arc G) :
    arc ∈ enumeration.neighbors node ↔
      EligibleArc scope profile node arc :=
  ⟨enumeration.sound node arc,
    enumeration.complete node arc⟩

theorem eq_canonical
    {G : GraphCut}
    {scope : RelationScope G}
    {profile : AdmissibilityProfile G}
    (enumeration :
      NeighborEnumeration G scope profile)
    (node : G.Node) :
    enumeration.neighbors node =
      canonicalNeighborList scope profile node := by
  exact
    (enumeration.sorted node).eq_of_mem_iff
      (canonicalNeighborList_sorted scope profile node)
      (fun arc => by
        rw [enumeration.mem_iff,
          mem_canonicalNeighborList])

theorem ext
    {G : GraphCut}
    {scope : RelationScope G}
    {profile : AdmissibilityProfile G}
    (left right :
      NeighborEnumeration G scope profile) :
    left.neighbors = right.neighbors := by
  funext node
  rw [left.eq_canonical node,
    right.eq_canonical node]

def canonical
    (G : GraphCut)
    (scope : RelationScope G)
    (profile : AdmissibilityProfile G)
    (digest : ProfileDigest) :
    NeighborEnumeration G scope profile where
  neighbors :=
    canonicalNeighborList scope profile
  nodup :=
    canonicalNeighborList_nodup scope profile
  sorted :=
    canonicalNeighborList_sorted scope profile
  sound := by
    intro node arc member
    exact
      (mem_canonicalNeighborList
        scope profile node arc).mp member
  complete := by
    intro node arc eligible
    exact
      (mem_canonicalNeighborList
        scope profile node arc).mpr eligible
  digest := digest

end NeighborEnumeration

end Mathematics.GraphAccess
```
