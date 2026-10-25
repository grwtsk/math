# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.PrintOpaques.Variant528f6dbe3e303c566c2e527995e09d4134fb7261a1cba7432a2b45d5169ecb4f

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `58d9c6f69b9e7542c7a9cd086766a870fe139d12` · SHA-256 `a6f1aa6574442da66ca1c436bb7b165a36964ccef199a074eb20ed06e5c20a54`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Foo.Variantc1b171de6af68945df2102df617e2cd03aeed16634dffb811ce72b0f3786382a","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"c1b171de6af68945df2102df617e2cd03aeed16634dffb811ce72b0f3786382a","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Foundations.NumbersAndBasicStructures.SourceCorpus.Foo.Variantc1b171de6af68945df2102df617e2cd03aeed16634dffb811ce72b0f3786382a","mathematical_subject":"Foundations.NumbersAndBasicStructures","original_sha256":"c1b171de6af68945df2102df617e2cd03aeed16634dffb811ce72b0f3786382a","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/source-capsule/restored-inputs/packages/batteries/BatteriesTest/print_opaques.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Batteries.Tactic.PrintOpaques


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Foo.Variantc1b171de6af68945df2102df617e2cd03aeed16634dffb811ce72b0f3786382a

partial def foo : Unit → Nat := foo
def bar : Unit → Nat := foo

/--
info: 'bar' depends on opaque or partial definitions: [foo]
-/
#guard_msgs in
#print opaques bar

opaque qux : Nat
def quux : Bool := qux == 0

/--
info: 'quux' depends on opaque or partial definitions: [qux]
-/
#guard_msgs in
#print opaques quux

/-! Examples from the documentation. -/

/--
info: 'Classical.choice' depends on opaque or partial definitions: [Classical.choice]
-/
#guard_msgs in
#print opaques Classical.choice

/--
info: 'Classical.axiomOfChoice' does not use any opaque or partial definitions
-/
#guard_msgs in
#print opaques Classical.axiomOfChoice

/--
info: 'Std.HashMap.insert' depends on opaque or partial definitions: [System.Platform.getNumBits]
-/
#guard_msgs in
#print opaques Std.HashMap.insert

/--
info: 'Std.Stream.forIn' depends on opaque or partial definitions: [_private.Init.Data.Stream.0.Std.Stream.forIn.visit]
-/
#guard_msgs in
#print opaques Std.Stream.forIn
```
