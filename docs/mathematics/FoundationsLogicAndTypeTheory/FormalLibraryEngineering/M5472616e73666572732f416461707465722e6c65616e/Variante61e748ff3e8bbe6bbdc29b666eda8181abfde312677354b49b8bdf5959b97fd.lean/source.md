# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.M5472616e73666572732f416461707465722e6c65616e.Variante61e748ff3e8bbe6bbdc29b666eda8181abfde312677354b49b8bdf5959b97fd

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `c8328ee881f81fd4176a63ea13b52a44ec4761af` · SHA-256 `600a5e96eb2d2479f71dbb678afa2cc26c1dd34cb1646f608b82bf2ddfae1ad6`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.TransferAdapter.Variant531a807e56a9bf01145e43f888ba65f89e23021b0443bffd8357c9f871d9ce6a","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"531a807e56a9bf01145e43f888ba65f89e23021b0443bffd8357c9f871d9ce6a","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Foundations.Unclassified.SourceCorpus.TransferAdapter.Variant531a807e56a9bf01145e43f888ba65f89e23021b0443bffd8357c9f871d9ce6a","mathematical_subject":"Foundations.Unclassified","original_sha256":"531a807e56a9bf01145e43f888ba65f89e23021b0443bffd8357c9f871d9ce6a","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Head/Think_retired/formal/Think/Bit0/Bit0/Bit0/Bit0/Bit1/Bit0/Bit1/Bit0/M5472616e73666572732f416461707465722e6c65616e.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}

/- source-tree-label: STL1|L|addr=00001010|role=proof_code_atom|slug=transfers-adapter|owner=canonical_owner|core=Transfers/Adapter.lean|leaf=M5472616e73666572732f416461707465722e6c65616e.lean -/


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.TransferAdapter.Variant531a807e56a9bf01145e43f888ba65f89e23021b0443bffd8357c9f871d9ce6a

set_option autoImplicit false

namespace Think.Transfers

structure TransferAdapter (localProp importedProp : Prop) where
  bridge : importedProp -> localProp

namespace TransferAdapter

def adapt {localProp importedProp : Prop}
    (adapter : TransferAdapter localProp importedProp)
    (proof : importedProp) :
    localProp :=
  adapter.bridge proof

theorem bridge_applies {localProp importedProp : Prop}
    (adapter : TransferAdapter localProp importedProp)
    (proof : importedProp) :
    localProp :=
  adapter.adapt proof

end TransferAdapter

end Think.Transfers
```
