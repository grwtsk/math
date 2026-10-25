# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.M506970656c696e652f41727469666163742e6c65616e.Variantc91d184758d86a8ea550f32758ae7cb37f50c0bde3383cc91bb6b6738b2c71f8

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `a28f2dd76b3f3ed80603cb1f20e5fc1032e46ed1` · SHA-256 `af0eef6f9105f58ec785a0fd8c08dee6c674a63868693b722a63ceab111537c3`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Artifact.Variant3a32511fa0b7c97aeb60d6ed925946f415359cf550f90dcd27b4f9f43f49b3c3","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"3a32511fa0b7c97aeb60d6ed925946f415359cf550f90dcd27b4f9f43f49b3c3","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Foundations.Unclassified.SourceCorpus.Artifact.Variant3a32511fa0b7c97aeb60d6ed925946f415359cf550f90dcd27b4f9f43f49b3c3","mathematical_subject":"Foundations.Unclassified","original_sha256":"3a32511fa0b7c97aeb60d6ed925946f415359cf550f90dcd27b4f9f43f49b3c3","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Head/Think_retired/formal/Think/Bit1/Bit1/Bit1/Bit0/Bit0/Bit1/Bit1/M506970656c696e652f41727469666163742e6c65616e.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Think.Bit0.Bit1.Bit0.Bit1.Bit1.Bit0.M506970656c696e652f436172726965722e6c65616e


/- source-tree-label: STL1|L|addr=1110011|role=proof_code_atom|slug=pipeline-artifact|owner=canonical_owner|core=Pipeline/Artifact.lean|leaf=M506970656c696e652f41727469666163742e6c65616e.lean -/


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Artifact.Variant3a32511fa0b7c97aeb60d6ed925946f415359cf550f90dcd27b4f9f43f49b3c3

set_option autoImplicit false

namespace Think.Pipeline

structure Artifact where
  phase : Think.PhaseId
  residueFree : Bool

def Artifact.centerControlled (a : Artifact) : Prop :=
  a.phase ∈ Think.centerSpine

theorem Artifact.centerControlled_of_artifact (a : Artifact) :
    a.centerControlled := by
  exact Think.centerSpine_complete a.phase

end Think.Pipeline
```
