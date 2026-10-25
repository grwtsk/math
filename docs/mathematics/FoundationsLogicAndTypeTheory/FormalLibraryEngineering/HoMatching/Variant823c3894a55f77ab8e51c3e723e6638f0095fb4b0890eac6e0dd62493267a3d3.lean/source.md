# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.HoMatching.Variant823c3894a55f77ab8e51c3e723e6638f0095fb4b0890eac6e0dd62493267a3d3

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `62589a49bd76ca6fa5fad29dc631f900f626bd43` · SHA-256 `79406293f9436b9417504231dfc6dbf0a2e07c0cf317031a3d8dfff8445217b6`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.TurnExistsIntoForall.Variantbb67379eac18e7ef4a8f546b4df642dbb9cbd7d5b7fc6b5433e22daf62e797d1","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"bb67379eac18e7ef4a8f546b4df642dbb9cbd7d5b7fc6b5433e22daf62e797d1","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.LeanMetaprogramming.SourceCorpus.TurnExistsIntoForall.Variantbb67379eac18e7ef4a8f546b4df642dbb9cbd7d5b7fc6b5433e22daf62e797d1","mathematical_subject":"Computation.LeanMetaprogramming","original_sha256":"bb67379eac18e7ef4a8f546b4df642dbb9cbd7d5b7fc6b5433e22daf62e797d1","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/source-capsule/restored-inputs/packages/Qq/QqTest/hoMatching.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["custom_or_effectful_command","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Qq
import Lean.Elab.Command

namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.TurnExistsIntoForall.Variantbb67379eac18e7ef4a8f546b4df642dbb9cbd7d5b7fc6b5433e22daf62e797d1

open Qq Lean

-- TODO: this linter crashes on the `def` below
set_option linter.constructorNameAsVariable false in
def turnExistsIntoForall : Q(Prop) → MetaM Q(Prop)
  | ~q(∃ x y, $p x y) => return q(∀ x y, $p x y)
  | e => return e

/-- info: ∀ (x : String) (y : Nat), x.length ≤ y + 42 -/
#guard_msgs in
run_cmd Elab.Command.liftTermElabM do
  Lean.logInfo <| ← turnExistsIntoForall q(∃ a b, String.length a ≤ b + 42)
```
