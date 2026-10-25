# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.HasOnlyPrivate.Variant168759afa5a2152cfb69ec31a0bc94d1510aee7377467cd06b170f6458f649eb

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `9286f01079e70df4faf4f393426fb843ecd5f38c` · SHA-256 `af6a74bdb11c7ad5bafe1ab49cc64962902af9fd117abeb6f364ea404c147af3`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Foo.Variant3200f44905f58c283dc931e8ff771684c2c73a67e3ca5e073996f0488904f3a3","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"3200f44905f58c283dc931e8ff771684c2c73a67e3ca5e073996f0488904f3a3","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.LeanMetaprogramming.SourceCorpus.Foo.Variant3200f44905f58c283dc931e8ff771684c2c73a67e3ca5e073996f0488904f3a3","mathematical_subject":"Computation.LeanMetaprogramming","original_sha256":"3200f44905f58c283dc931e8ff771684c2c73a67e3ca5e073996f0488904f3a3","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/rh16-games-packets/external/replay/.lake/packages/mathlib/MathlibTest/Linter/PrivateModule/HasOnlyPrivate.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["custom_or_effectful_command","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
module

import Mathlib.Init
import all Mathlib.Tactic.Linter.PrivateModule
import Lean.Elab.Command


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Foo.Variant3200f44905f58c283dc931e8ff771684c2c73a67e3ca5e073996f0488904f3a3

open Lean

set_option linter.mathlibStandardSet true

theorem foo : True := trivial

def bar : Bool := true

-- Run the linter on artificial `eoi` syntax so that we can actually guard the message
open Mathlib.Linter Parser in
/--
warning: The current module only contains private declarations.

Consider adding `public section` at the beginning of the module, or selectively marking declarations as `public`. Mark a `def` with `@[expose]` if downstream code needs it to be definitionally equal to its body (e.g. for `unfold`). Alternatively, add `@[expose] public section` to mark every definition as exposed.

Note: This linter can be disabled with `set_option linter.privateModule false`
-/
#guard_msgs in
run_cmd do
  let eoi := mkNode ``Command.eoi #[mkAtom .none ""]
  privateModule.run eoi

-- Disable so that this test is silent
set_option linter.privateModule false
```
