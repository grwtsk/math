import Mathlib.Topology.Basic
import Mathlib.Data.Finset.Basic

/-!
# Geometric prism carriers

This module defines the geometric carrier used by the raster layer.  It is a
finite cell cover of a topological space with distinguished terrain vertices.
It is deliberately unrelated to the arithmetic prism `(A, I)` used by
`DAF.Prismatic`.
-/

namespace DAF.Geometry

universe uV uPoint uCell

/-- A topological carrier with a finite, explicitly named cell cover. -/
structure GeometricPrismCarrier
    (V : Type uV)
    [Fintype V]
    [DecidableEq V] where
  Point : Type uPoint
  pointTopology : TopologicalSpace Point
  vertexPoint : V → Point
  carrier : Set Point
  vertex_mem : ∀ v, vertexPoint v ∈ carrier
  CellId : Type uCell
  cellFintype : Fintype CellId
  cellDecEq : DecidableEq CellId
  cells : Finset CellId
  cellCarrier : CellId → Set Point
  cell_mem_carrier : ∀ c, c ∈ cells → cellCarrier c ⊆ carrier
  carrier_covered : carrier = ⋃ c ∈ cells, cellCarrier c

namespace GeometricPrismCarrier

variable {V : Type uV} [Fintype V] [DecidableEq V]

instance (M : GeometricPrismCarrier V) : TopologicalSpace M.Point :=
  M.pointTopology

instance (M : GeometricPrismCarrier V) : Fintype M.CellId :=
  M.cellFintype

instance (M : GeometricPrismCarrier V) : DecidableEq M.CellId :=
  M.cellDecEq

/-- Points of the geometric carrier, with membership retained in the type. -/
abbrev CarrierPoint (M : GeometricPrismCarrier V) :=
  M.carrier

/-- A point in a selected cell canonically determines a carrier point. -/
def cellPoint
    (M : GeometricPrismCarrier V)
    {c : M.CellId}
    (hc : c ∈ M.cells)
    {p : M.Point}
    (hp : p ∈ M.cellCarrier c) : M.CarrierPoint :=
  ⟨p, M.cell_mem_carrier c hc hp⟩

/-- Every carrier point is covered by at least one declared finite cell. -/
theorem exists_cell
    (M : GeometricPrismCarrier V)
    (p : M.CarrierPoint) :
    ∃ c ∈ M.cells, p.1 ∈ M.cellCarrier c := by
  have hp : p.1 ∈ M.carrier := p.2
  rw [M.carrier_covered] at hp
  simp only [Set.mem_iUnion] at hp
  rcases hp with ⟨c, hc, hp⟩
  exact ⟨c, hc, hp⟩

end GeometricPrismCarrier

end DAF.Geometry
