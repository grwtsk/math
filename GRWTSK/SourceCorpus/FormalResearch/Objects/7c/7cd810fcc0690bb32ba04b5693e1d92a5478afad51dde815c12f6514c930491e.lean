import Folder.CrystallineIndex.GhostZeroObstruction

/-!
# Folder.Theorem.CrystallineIndex.GhostZeroObstruction

Radiation role: theorem-wrapper
BinaryMatrix spine: This module re-exports ghost-zero obstruction boundary facts.
Ontology: proof.crystalline_index.ghost_zero_obstruction
Pivot role: spectral
Zero typology: l-function
Contract boundary: theorem-wrapper
Composite stack role: crystalline-index
-/

namespace Folder
namespace Theorem
namespace CrystallineIndex
namespace GhostZeroObstruction

theorem ghost_obstruction_nonzero
    {H : Folder.CrystallineIndex.CohomologyTheory}
    (G : Folder.CrystallineIndex.GhostZeroObstruction H) :
    G.nonzero :=
  Folder.CrystallineIndex.ghost_obstruction_nonzero G

theorem ghost_obstruction_describes_torsion_mismatch
    {H : Folder.CrystallineIndex.CohomologyTheory}
    (G : Folder.CrystallineIndex.GhostZeroObstruction H) :
    G.describesTorsionMismatch :=
  Folder.CrystallineIndex.ghost_obstruction_describes_torsion_mismatch G

end GhostZeroObstruction
end CrystallineIndex
end Theorem
end Folder
