# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.RegisterLabelAttr.Varianta4ab5a5c4aa259363ed7a1a1fae9d472095eddc7eecba2c04a50cb06a881c9b8

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `30fa7e66ceb1ad78fc66d9cc901b3f9703bc51c0` · SHA-256 `234e2138b75c437749079954804006d5b928bf092b1929cb15e52bc2f08d07d5`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.F.Variantd0763cd6a5c90a55629ee94e3c4f58ee394132b17364b4828580f682da057d0f","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"d0763cd6a5c90a55629ee94e3c4f58ee394132b17364b4828580f682da057d0f","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.LeanMetaprogramming.SourceCorpus.F.Variantd0763cd6a5c90a55629ee94e3c4f58ee394132b17364b4828580f682da057d0f","mathematical_subject":"Computation.LeanMetaprogramming","original_sha256":"d0763cd6a5c90a55629ee94e3c4f58ee394132b17364b4828580f682da057d0f","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/source-capsule/restored-inputs/packages/batteries/BatteriesTest/register_label_attr.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import BatteriesTest.Internal.DummyLabelAttr
import Lean.LabelAttribute


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.F.Variantd0763cd6a5c90a55629ee94e3c4f58ee394132b17364b4828580f682da057d0f

set_option linter.missingDocs false

open Lean

def f := 0

/-- info: #[] -/ #guard_msgs in #eval labelled `dummy_label_attr

attribute [dummy_label_attr] f

/-- info: #[`f] -/ #guard_msgs in #eval labelled `dummy_label_attr

section

attribute [-dummy_label_attr] f

/-- info: #[] -/ #guard_msgs in #eval labelled `dummy_label_attr

end

/-- info: #[`f] -/ #guard_msgs in #eval labelled `dummy_label_attr

-- Adding the label again is a no-op
attribute [dummy_label_attr] f

/-- info: #[`f] -/ #guard_msgs in #eval labelled `dummy_label_attr
```
