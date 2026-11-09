/- Copyright (c) 2026 grwtsk contributors. MIT.
Mathematical source candidate. Lean elaboration, fresh kernel replay,
transitive axiom audit and independent review NOT_RUN. -/
import GRWTSK.Combinatorics.GraphTheory.VoltageCoverLoopSeparation
import Mathlib

/-!
# Actual voltage-cover edges, Euler characteristic and three-manifold boundary

Consumer: the existing dependent Path and VoltageCover.Edge, liftPath, erasePath,
and holonomy. The equivalence below enumerates all actual lifted edge occurrences,
including parallel-edge identities, rather than inventing an endpoint-only cover.

For a finite connected graph X with r = 1 - chi(X), a regular neighborhood is
a genus-r handlebody; doubling it gives a connected sum of r copies of
S^2 x S^1. For a connected n-sheeted graph cover Y, chi(Y) = n chi(X), hence
r(Y) = 1 + n (r(X) - 1). The finite edge equivalence, exact original path
return, and integer Euler formula are the formally proved components here.

A graph need NOT be connected; 1 - chi is then only an Euler numerator, not
automatically the first Betti number. We do NOT construct a regular
neighborhood, double, homeomorphism, geometrization, Ricci flow or surgery in
Lean. The old spin graph with portal/flip edges is not a graph covering.
No arithmetic Weil-form sign or RH/GRH consequence is asserted.

Literature: Hatcher, Algebraic Topology, sec. 1.A; Hamilton, Three-manifolds
with positive Ricci curvature (1982); Perelman, Ricci flow with surgery on
three-manifolds, arXiv:math/0303109 (2003). The latter two results are NOT
assumed as hidden axioms or treated as imported Lean theorems.
-/

namespace GRWTSK.Topology.GeometricTopology.PrimeLoopGeometrization

open GRWTSK.CombinatoricsAndDiscreteMathematics.GraphTheory.RelationalHolonomy

universe u v w

section ActualVoltageEdges

variable {V : Type u} (E : V → V → Type v)
variable {G : Type w} [Group G]
variable (U : ∀ {a b : V}, E a b → G)

/-- Retain endpoint types and the original dependent edge witness. -/
abbrev OriginalEdgeOccurrence := Σ a : V, Σ b : V, E a b

/-- Enumerate genuine edges of the already-published voltage cover. -/
abbrev LiftedEdgeOccurrence :=
  Σ x : V × G, Σ y : V × G, VoltageCover.Edge E U x y

/-- Attach the initial sheet to one actual original edge. -/
def attachSheet (p : G × OriginalEdgeOccurrence E) :
    LiftedEdgeOccurrence E U :=
  match p with
  | ⟨g, ⟨a, ⟨b, e⟩⟩⟩ =>
      ⟨(a, g), ⟨(b, g * U e), VoltageCover.liftEdge E U e g⟩⟩

/-- The inverse retains the full original edge and its initial sheet. -/
def detachSheet (p : LiftedEdgeOccurrence E U) :
    G × OriginalEdgeOccurrence E :=
  ⟨p.1.2, ⟨p.1.1, ⟨p.2.1.1, p.2.2.original⟩⟩⟩

@[simp] theorem detach_attach (p : G × OriginalEdgeOccurrence E) :
    detachSheet E U (attachSheet E U p) = p := by
  rcases p with ⟨g, ⟨a, ⟨b, e⟩⟩⟩
  rfl

@[simp] theorem attach_detach (p : LiftedEdgeOccurrence E U) :
    attachSheet E U (detachSheet E U p) = p := by
  rcases p with ⟨⟨a, g⟩, ⟨⟨b, h⟩, ⟨e, he⟩⟩⟩
  cases he
  rfl

/-- The covering has EXACTLY one lift of each old edge from each sheet. -/
def edgeOccurrenceEquiv :
    (G × OriginalEdgeOccurrence E) ≃ LiftedEdgeOccurrence E U where
  toFun := attachSheet E U
  invFun := detachSheet E U
  left_inv := detach_attach E U
  right_inv := attach_detach E U

/-- Source-returning path lifting and endpoint holonomy are different
observations of the same original ordered edge history. -/
theorem path_return_and_endpoint {a b : V} (p : Path E a b) (g : G) :
    VoltageCover.erasePath E U (VoltageCover.liftPath E U p g).2 = p ∧
      (VoltageCover.liftPath E U p g).1 = g * Path.holonomy U p := by
  exact ⟨VoltageCover.erase_liftPath E U p g,
    VoltageCover.lift_endpoint E U p g⟩

end ActualVoltageEdges

section FiniteEuler

variable {V : Type u} [Fintype V]
variable (E : V → V → Type v) [∀ a b, Fintype (E a b)]
variable {G : Type w} [Group G] [Fintype G]
variable (U : ∀ {a b : V}, E a b → G)

/-- Signed Euler characteristic of the entire base one-cell inventory. -/
def baseEuler : ℤ :=
  (Fintype.card V : ℤ) -
    (Fintype.card (OriginalEdgeOccurrence E) : ℤ)

/-- Count ALL lifted one-cells using the proved exact edge equivalence. -/
def liftedEuler : ℤ :=
  (Fintype.card (V × G) : ℤ) -
    (Fintype.card (G × OriginalEdgeOccurrence E) : ℤ)

/-- Ordinary covering-space Euler multiplication, directly at the
complete finite vertex and edge inventories. -/
theorem liftedEuler_eq :
    liftedEuler E (G := G) =
      (Fintype.card G : ℤ) * baseEuler E := by
  simp only [liftedEuler, baseEuler, Fintype.card_prod]
  push_cast
  ring

/-- Equals the first Betti number when the realized base graph is connected. -/
def baseCycleNumerator : ℤ := 1 - baseEuler E

/-- Equals the first Betti number when the realized cover is connected. -/
def liftedCycleNumerator : ℤ := 1 - liftedEuler E (G := G)

/-- Fundamental cycle-rank relation before invoking any 3D topology.
For connected X and Y this is b_1(Y) = 1 + n(b_1(X)-1). -/
theorem liftedCycleNumerator_eq :
    liftedCycleNumerator E (G := G) =
      1 + (Fintype.card G : ℤ) * (baseCycleNumerator E - 1) := by
  simp only [liftedCycleNumerator, baseCycleNumerator, liftedEuler_eq E (G := G)]
  ring

/-- The cover-rank relation and full-history source return are attached
to the same existing voltage assignment. -/
theorem rank_and_exact_path_return
    {a b : V} (p : Path E a b) (g : G) :
    liftedCycleNumerator E (G := G) =
        1 + (Fintype.card G : ℤ) * (baseCycleNumerator E - 1) ∧
      VoltageCover.erasePath E U (VoltageCover.liftPath E U p g).2 = p := by
  exact ⟨liftedCycleNumerator_eq E (G := G),
    VoltageCover.erase_liftPath E U p g⟩

end FiniteEuler

end GRWTSK.Topology.GeometricTopology.PrimeLoopGeometrization
