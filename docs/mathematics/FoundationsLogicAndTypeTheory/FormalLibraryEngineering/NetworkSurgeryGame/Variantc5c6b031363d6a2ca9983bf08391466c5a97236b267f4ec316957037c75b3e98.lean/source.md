# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.NetworkSurgeryGame.Variantc5c6b031363d6a2ca9983bf08391466c5a97236b267f4ec316957037c75b3e98

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `d6dad3701405eceabff327184c43f819e6ac081e` · SHA-256 `c5c6b031363d6a2ca9983bf08391466c5a97236b267f4ec316957037c75b3e98`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Surface.Core.NetworkSurgery
import Surface.Core.TopologySurgeryGame

/-!
# Quarantined adapter from the octahedral fixture to the finite ledger interface

The adapter records an already-proved coefficientwise cancellation as a
discharged finite ledger.  It does not identify repository surgery with a
simplicial cut and proves no topological or semantic equivalence.
-/

namespace Generated.NetworkSurgeryGame

open Surface.Core.Transport
open Surface.Core.NetworkSurgery

private def code (value : Nat) : StableCode :=
  ⟨value % revisionModulus, Nat.mod_lt _ (by simp [revisionModulus])⟩

def octahedralCutAtom (cut : Nat) : InterfaceAtom :=
  ⟨.delimiter, code cut, code (cut + 1), code (cut + 2)⟩

def dischargedOctahedralLedger (cut : Nat) : PreparedBoundaryLedger where
  excision := [⟨octahedralCutAtom cut, -1⟩]
  graft := [⟨octahedralCutAtom cut, 1⟩]
  rewrite := []

@[surface_candidate]
theorem dischargedOctahedralLedger_is_nonempty (cut : Nat) :
    (dischargedOctahedralLedger cut).totalBoundary ≠ [] := by
  simp [PreparedBoundaryLedger.totalBoundary, BoundaryLedger.add,
    dischargedOctahedralLedger]

@[surface_candidate]
theorem octahedralSplit_is_finite_boundaryLedger_example (cut : Nat)
    (_sound : Surface.Core.TopologySurgeryGame.OctahedralCapSurgerySound cut) :
    BoundaryBalanced (dischargedOctahedralLedger cut) := by
  simp [BoundaryBalanced, PreparedBoundaryLedger.totalBoundary,
    BoundaryLedger.IsZero, BoundaryLedger.coefficient, BoundaryLedger.add,
    dischargedOctahedralLedger]

end Generated.NetworkSurgeryGame
```
