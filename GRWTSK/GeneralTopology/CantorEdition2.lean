import BitMatrix.Carrier.BooleanSpace
import Mathlib.Topology.Connected.TotallyDisconnected
import Mathlib.Topology.Bases
import Mathlib.Topology.Metrizable.Basic

/-!
# Topology capability for designated Cantor representations

No instance is manufactured from a set-theoretic equivalence.  Compactness,
metrizability, perfection, total disconnectedness, and a clopen basis must be
provided for the concrete topology before the project may claim Cantor-space
topology or a homeomorphic baseline interpreter.
-/

namespace BitMatrix.Topology

/-- Explicit topological obligations of a Cantor-space presentation. -/
structure CantorTopologyCapability
    (Space : Type)
    [TopologicalSpace Space] where
  nonempty : Nonempty Space
  compact : IsCompact (Set.univ : Set Space)
  metrizable : Nonempty (TopologicalSpace.MetrizableSpace Space)
  noIsolatedPoint : ∀ point : Space, ¬IsOpen ({point} : Set Space)
  totallyDisconnected : IsTotallyDisconnected (Set.univ : Set Space)
  clopenBasis : ∃ basis : Set (Set Space),
    TopologicalSpace.IsTopologicalBasis basis ∧
      ∀ member ∈ basis, IsClopen member

/--
Continuity is an additional capability beyond the baseline set equivalence.
The equality witness prevents an unrelated homeomorphism between the same
types from being presented as the designated baseline interpreter.
-/
structure HomeomorphicBaselineCapability
    {Address : Type}
    (enumeration : BitMatrix.Carrier.AddressEnumeration Address)
    (representation : BitMatrix.Carrier.DesignatedCantorRepresentation)
    (baseline : BitMatrix.Carrier.BooleanState Address)
    [TopologicalSpace representation.Scalar]
    [TopologicalSpace (BitMatrix.Carrier.BooleanState Address)] where
  homeomorphism :
    representation.Scalar ≃ₜ BitMatrix.Carrier.BooleanState Address
  agreesWithBaselineEquiv :
    homeomorphism.toEquiv =
      BitMatrix.Carrier.baselineEquiv
        enumeration.enumerate representation baseline

theorem compact_univ
    {Space : Type}
    [TopologicalSpace Space]
    (capability : CantorTopologyCapability Space) :
    IsCompact (Set.univ : Set Space) :=
  capability.compact

theorem connected_subsets_are_singletons
    {Space : Type}
    [TopologicalSpace Space]
    (capability : CantorTopologyCapability Space)
    {subset : Set Space}
    (connected : IsPreconnected subset) :
    subset.Subsingleton := by
  intro left leftMember right rightMember
  exact capability.totallyDisconnected subset
    (Set.subset_univ subset) connected leftMember rightMember

end BitMatrix.Topology
