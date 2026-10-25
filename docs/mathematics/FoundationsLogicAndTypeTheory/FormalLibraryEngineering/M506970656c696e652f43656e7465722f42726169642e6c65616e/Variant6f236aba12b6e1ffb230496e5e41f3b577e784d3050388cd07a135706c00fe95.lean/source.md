# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.M506970656c696e652f43656e7465722f42726169642e6c65616e.Variant6f236aba12b6e1ffb230496e5e41f3b577e784d3050388cd07a135706c00fe95

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `18d6d8068e8cc17467ab4e98044ec0a6671f8c37` · SHA-256 `e6ed12f6cb1b1f72c08b3ab4b7005aab7236489cb268e424a02f9c5e7e108f62`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.CenterPole.Variant6d41e91b1b613e35e83ae7b002b9d23a1d0722aa89f43601f3d962ed2cb797b6","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"6d41e91b1b613e35e83ae7b002b9d23a1d0722aa89f43601f3d962ed2cb797b6","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Foundations.Unclassified.SourceCorpus.CenterPole.Variant6d41e91b1b613e35e83ae7b002b9d23a1d0722aa89f43601f3d962ed2cb797b6","mathematical_subject":"Foundations.Unclassified","original_sha256":"6d41e91b1b613e35e83ae7b002b9d23a1d0722aa89f43601f3d962ed2cb797b6","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Head/Think_retired/formal/Think/Bit0/Bit0/Bit1/Bit1/Bit1/Bit0/Bit0/Bit0/M506970656c696e652f43656e7465722f42726169642e6c65616e.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Think.Bit1.Bit1.Bit1.Bit0.Bit0.Bit0.Bit0.Bit0.M506970656c696e652f43656e7465722f4d756c74696e6f6d69616c506c6163656d656e742e6c65616e


/- source-tree-label: STL1|L|addr=00111000|role=proof_code_atom|slug=pipeline-center-braid|owner=canonical_owner|core=Pipeline/Center/Braid.lean|leaf=M506970656c696e652f43656e7465722f42726169642e6c65616e.lean -/


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.CenterPole.Variant6d41e91b1b613e35e83ae7b002b9d23a1d0722aa89f43601f3d962ed2cb797b6

set_option autoImplicit false

namespace Think.Pipeline.Center

abbrev CenterPole := FWR.Pipeline.CenterWeighted.Pole

def phasePole (p : Think.PhaseId) : CenterPole :=
  p.pole

theorem phase_tied_to_spine (p : Think.PhaseId) :
    p ∈ spine := by
  exact spine_complete p

end Think.Pipeline.Center
```
