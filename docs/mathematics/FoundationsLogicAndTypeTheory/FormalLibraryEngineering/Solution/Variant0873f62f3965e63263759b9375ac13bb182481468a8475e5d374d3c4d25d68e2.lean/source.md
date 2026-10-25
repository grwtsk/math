# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Solution.Variant0873f62f3965e63263759b9375ac13bb182481468a8475e5d374d3c4d25d68e2

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `37d1c2b22415d8d622d19a5c47d31182161681ee` · SHA-256 `d95fe22e2a22fc67c3aaa44b5be66e1cbe0505f9592f7e56504f6facc0f32f3f`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.BadNatUnsafe.Variant721377c985fd778c9e334a324d1320183095cae74ea69eb3ec433f0979a0df88","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"721377c985fd778c9e334a324d1320183095cae74ea69eb3ec433f0979a0df88","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.LeanMetaprogramming.SourceCorpus.BadNatUnsafe.Variant721377c985fd778c9e334a324d1320183095cae74ea69eb3ec433f0979a0df88","mathematical_subject":"Computation.LeanMetaprogramming","original_sha256":"721377c985fd778c9e334a324d1320183095cae74ea69eb3ec433f0979a0df88","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal.worktrees/finite-lattice-arithmetic-gap-20261007/artifacts/comparator-206/tests/projects/olean_issue/Solution.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Lean


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.BadNatUnsafe.Variant721377c985fd778c9e334a324d1320183095cae74ea69eb3ec433f0979a0df88

open Lean

unsafe def badNatUnsafe : Nat := unsafeCast (-4294967296 : Int)

@[implemented_by badNatUnsafe] opaque badNatVal : Nat

run_elab
  addDecl <| .defnDecl {
    name        := .str .anonymous "badNat"
    levelParams := []
    type        := .const ``Nat []
    value       := .lit <| .natVal badNatVal
    hints       := .opaque
    safety      := .safe
  }

theorem boom : False := by
  have truly_marvelous_0 : ¬badNat ≤ 9223372036854775807 := by decide
  have truly_marvelous_1 : ¬9223372036854775807 < badNat := by decide
  omega
```
