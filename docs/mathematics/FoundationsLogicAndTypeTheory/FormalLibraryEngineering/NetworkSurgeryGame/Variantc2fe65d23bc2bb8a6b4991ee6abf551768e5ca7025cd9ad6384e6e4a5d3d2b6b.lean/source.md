# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.NetworkSurgeryGame.Variantc2fe65d23bc2bb8a6b4991ee6abf551768e5ca7025cd9ad6384e6e4a5d3d2b6b

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `48cedbc5e1ced43511594f65213113701feacbb3` · SHA-256 `ab9b347c80e4439854522dadd7c6d3175596b2e438175e1c89ee4b0960d425d4`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Code.Variantc5c6b031363d6a2ca9983bf08391466c5a97236b267f4ec316957037c75b3e98","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"c5c6b031363d6a2ca9983bf08391466c5a97236b267f4ec316957037c75b3e98","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Foundations.Unclassified.SourceCorpus.Code.Variantc5c6b031363d6a2ca9983bf08391466c5a97236b267f4ec316957037c75b3e98","mathematical_subject":"Foundations.Unclassified","original_sha256":"c5c6b031363d6a2ca9983bf08391466c5a97236b267f4ec316957037c75b3e98","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/08/10/TestProject/NetworkSurgeryGame.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Surface.Core.NetworkSurgery
import Surface.Core.TopologySurgeryGame

/-!
# Quarantined adapter from the octahedral fixture to the finite ledger interface

The adapter records an already-proved coefficientwise cancellation as a
discharged finite ledger.  It does not identify repository surgery with a
simplicial cut and proves no topological or semantic equivalence.
-/


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Code.Variantc5c6b031363d6a2ca9983bf08391466c5a97236b267f4ec316957037c75b3e98

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
