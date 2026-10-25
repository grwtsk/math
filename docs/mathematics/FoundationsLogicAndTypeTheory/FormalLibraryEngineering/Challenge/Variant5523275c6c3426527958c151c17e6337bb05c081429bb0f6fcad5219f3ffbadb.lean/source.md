# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Challenge.Variant5523275c6c3426527958c151c17e6337bb05c081429bb0f6fcad5219f3ffbadb

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `09545d1e0515676a8c69a75dec27f260e039d7dd` · SHA-256 `99dcb534c3e7d2237ae0d9d0e8aac58eb2eb0b18fd30279a2e852cd7579d56c0`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.S.Variant3130ae1cd994683288d33afbf6458d4478a13cbcfea94b1f3f9661f09b289049","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"3130ae1cd994683288d33afbf6458d4478a13cbcfea94b1f3f9661f09b289049","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.LeanMetaprogramming.SourceCorpus.S.Variant3130ae1cd994683288d33afbf6458d4478a13cbcfea94b1f3f9661f09b289049","mathematical_subject":"Computation.LeanMetaprogramming","original_sha256":"3130ae1cd994683288d33afbf6458d4478a13cbcfea94b1f3f9661f09b289049","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal.worktrees/finite-lattice-arithmetic-gap-20261007/artifacts/comparator-206/tests/projects/proj_trick/Challenge.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["custom_or_effectful_command","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Lean

namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.S.Variant3130ae1cd994683288d33afbf6458d4478a13cbcfea94b1f3f9661f09b289049

open Lean Elab Term

/-- The structure the statement is really about. -/
structure S : Type where
  a : Nat

/-- The definition hole: the solver supplies the carrier. -/
def T : Type := S

/-- Elaborates to a raw `Expr.proj`. Ordinary elaborator, nothing unchecked. -/
elab "pr% " s:term : term => do
  return Expr.proj `S 0 (← elabTerm s none)

theorem tgt : ∀ (s : T), (pr% s) = (0 : Nat) := sorry
```
