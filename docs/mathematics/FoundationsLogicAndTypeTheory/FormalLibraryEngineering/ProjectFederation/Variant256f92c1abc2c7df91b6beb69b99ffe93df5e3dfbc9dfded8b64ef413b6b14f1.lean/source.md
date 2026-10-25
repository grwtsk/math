# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.ProjectFederation.Variant256f92c1abc2c7df91b6beb69b99ffe93df5e3dfbc9dfded8b64ef413b6b14f1

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `1d1fcec9d71d5fd9c9c0e81ea7a73c1bcdcb4c2f` · SHA-256 `095d5a9451d2d45df95a97ce6f3d00f949c8b4e7dde4ccf1d09f7d5143fcae6b`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.PreservesSourceSnapshots.Variant4709e10ebbadf10462be6f8348569c45d404fa739b2a935a8223f528323bb3e8","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"4709e10ebbadf10462be6f8348569c45d404fa739b2a935a8223f528323bb3e8","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Foundations.Unclassified.SourceCorpus.PreservesSourceSnapshots.Variant4709e10ebbadf10462be6f8348569c45d404fa739b2a935a8223f528323bb3e8","mathematical_subject":"Foundations.Unclassified","original_sha256":"4709e10ebbadf10462be6f8348569c45d404fa739b2a935a8223f528323bb3e8","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/08/10/Surface/Mathematics/Relaxation/ProjectFederation.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Mathematics.Relaxation.Operator

/-!
# Project-federated relaxation invariants

Relaxation may change the overlay, but it cannot rewrite, reorder, merge, or
drop the immutable project snapshots that define its work package.
-/


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.PreservesSourceSnapshots.Variant4709e10ebbadf10462be6f8348569c45d404fa739b2a935a8223f528323bb3e8

namespace Mathematics.Relaxation

namespace Operator

theorem preserves_source_snapshots
    (operator : Operator)
    (state : State) :
    (operator.step state).workPackage.sourceSnapshots =
      state.workPackage.sourceSnapshots := by
  exact congrArg WorkPackage.sourceSnapshots
    (operator.source_preserved state).2

theorem preserves_project_snapshot_keys
    (operator : Operator)
    (state : State) :
    (operator.step state).workPackage.projectSnapshots =
      state.workPackage.projectSnapshots := by
  exact congrArg WorkPackage.projectSnapshots
    (operator.source_preserved state).2

theorem preserves_source_object_scope
    (operator : Operator)
    (state : State) :
    (operator.step state).workPackage.sourceObjectIds =
      state.workPackage.sourceObjectIds := by
  exact congrArg WorkPackage.sourceObjectIds
    (operator.source_preserved state).2

end Operator

end Mathematics.Relaxation
```
