# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Target.Variante904c9a1f4b25fcfc3f4228bef8f9251ff497bb950109bc8e3bd02692b86e115

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `5ff6c809fdc7578becc4a328680ab61042219ca2` · SHA-256 `2f3f40aa1d675d8ebb4709d121793e99ace14fc34c0666c971300957fb8970a5`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.E.Variant4bda7501e5d4739ece0fa475095c354df1cbf10c32c3186f7ad09b81198a039a","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"4bda7501e5d4739ece0fa475095c354df1cbf10c32c3186f7ad09b81198a039a","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Foundations.NumbersAndBasicStructures.SourceCorpus.E.Variant4bda7501e5d4739ece0fa475095c354df1cbf10c32c3186f7ad09b81198a039a","mathematical_subject":"Foundations.NumbersAndBasicStructures","original_sha256":"4bda7501e5d4739ece0fa475095c354df1cbf10c32c3186f7ad09b81198a039a","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/rh16-games-packets/external/replay/.lake/packages/mathlib/MathlibTest/Linter/InternalConstructor/Target.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
module

import Mathlib.Init
import MathlibTest.Linter.InternalConstructor.Source


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.E.Variant4bda7501e5d4739ece0fa475095c354df1cbf10c32c3186f7ad09b81198a039a

/--
@ +1:16...19
error: `Foo._mkInternal` is an internal constructor and should not be used directly.

Note: This linter can be disabled with `set_option linter.internalConstructors false`
-/
#guard_msgs (positions := true) in
def e₁ : Foo := ⟨4⟩

/--
@ +1:16...31
error: `Foo._mkInternal` is an internal constructor and should not be used directly.

Note: This linter can be disabled with `set_option linter.internalConstructors false`
-/
#guard_msgs (positions := true) in
def e₂ : Foo := Foo._mkInternal 4
```
