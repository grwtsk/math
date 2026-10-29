import Folder.CanonicalPath.CrystallinePoincareFortification

/-!
# Folder.Theorem.CanonicalPath.CrystallinePoincareFortification

Radiation role: theorem-wrapper
BinaryMatrix spine: This module re-exports crystalline Poincare fortification contract facts.
Ontology: proof.crystalline_poincare_fortification
Pivot role: topology
Zero typology: compatibility-obstruction
Contract boundary: theorem-wrapper
Composite stack role: canonical-path
-/

namespace Folder
namespace Theorem
namespace CanonicalPath

theorem crystalline_carrier_dimension_three_if_supplied
    (C : Folder.CanonicalPath.CrystallineHomotopyCarrier) :
    C.dimensionThree :=
  Folder.CanonicalPath.crystalline_carrier_dimension_three_if_supplied C

theorem crystalline_carrier_simply_connected_if_supplied
    (C : Folder.CanonicalPath.CrystallineHomotopyCarrier) :
    C.simplyConnected :=
  Folder.CanonicalPath.crystalline_carrier_simply_connected_if_supplied C

theorem crystalline_poincare_rigidity_if_supplied
    {C : Folder.CanonicalPath.CrystallineHomotopyCarrier}
    (P : Folder.CanonicalPath.CrystallinePoincareRigidityContract C) :
    P.equivalentToCrystallineSphere :=
  Folder.CanonicalPath.crystalline_poincare_rigidity_if_supplied P

theorem perelman_transfer_ricci_flow_like_if_supplied
    (P : Folder.CanonicalPath.PerelmanTransferContract) :
    P.ricciFlowLikePDE :=
  Folder.CanonicalPath.perelman_transfer_ricci_flow_like_if_supplied P

theorem atlas_quasi_iso_topology_descent_if_supplied
    (F : Folder.CanonicalPath.CrystallinePoincareFortificationContract) :
    F.atlasPreservesCarrierTopology :=
  Folder.CanonicalPath.atlas_quasi_iso_topology_descent_if_supplied F

theorem poincare_fortification_prevents_topological_escape_if_supplied
    (F : Folder.CanonicalPath.CrystallinePoincareFortificationContract) :
    F.preventsTopologicalEscape :=
  Folder.CanonicalPath.poincare_fortification_prevents_topological_escape_if_supplied F

theorem poincare_fortification_supports_fixed_point_compatibility_if_supplied
    (F : Folder.CanonicalPath.CrystallinePoincareFortificationContract) :
    F.supportsFixedPointCompatibility :=
  Folder.CanonicalPath.poincare_fortification_supports_fixed_point_compatibility_if_supplied F

end CanonicalPath
end Theorem
end Folder
