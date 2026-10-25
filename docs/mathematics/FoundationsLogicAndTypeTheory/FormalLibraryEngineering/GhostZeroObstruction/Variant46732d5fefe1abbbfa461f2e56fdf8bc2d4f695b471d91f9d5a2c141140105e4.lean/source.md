# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.GhostZeroObstruction.Variant46732d5fefe1abbbfa461f2e56fdf8bc2d4f695b471d91f9d5a2c141140105e4

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `6ccacfe819180f41446bb263f0d57635d7dd4e7b` · SHA-256 `46732d5fefe1abbbfa461f2e56fdf8bc2d4f695b471d91f9d5a2c141140105e4`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Folder.CrystallineIndex.CohomologyClass

/-!
# Folder.CrystallineIndex.GhostZeroObstruction

Radiation role: research-boundary
BinaryMatrix spine: This module records obstruction classes, not BinaryMatrix zeros.
Ontology: crystalline_index.ghost_zero_obstruction
Pivot role: spectral
Zero typology: l-function
Contract boundary: contract
Composite stack role: crystalline-index
-/

namespace Folder
namespace CrystallineIndex

/--
Typed obstruction class for local spectral/torsion mismatch.

This is not an L-function zero unless a separate bridge says so.
-/
structure GhostZeroObstruction
    (H : CohomologyTheory) where
  obstructionClass : CohomologyClass H
  nonzero : Prop
  nonzero_certified : nonzero
  describesTorsionMismatch : Prop
  describesTorsionMismatch_certified : describesTorsionMismatch
  sourceGraphLabel : String
  targetGraphLabel : String

theorem ghost_obstruction_nonzero
    {H : CohomologyTheory}
    (G : GhostZeroObstruction H) :
    G.nonzero :=
  G.nonzero_certified

theorem ghost_obstruction_describes_torsion_mismatch
    {H : CohomologyTheory}
    (G : GhostZeroObstruction H) :
    G.describesTorsionMismatch :=
  G.describesTorsionMismatch_certified

end CrystallineIndex
end Folder
```
