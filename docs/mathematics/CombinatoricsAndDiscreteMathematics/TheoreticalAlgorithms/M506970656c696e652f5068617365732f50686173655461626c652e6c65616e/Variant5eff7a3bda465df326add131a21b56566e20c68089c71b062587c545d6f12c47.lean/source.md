# Complete source: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.M506970656c696e652f5068617365732f50686173655461626c652e6c65616e.Variant5eff7a3bda465df326add131a21b56566e20c68089c71b062587c545d6f12c47

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `82292b9fc2d8f7f7568490d536b3b7183cf2eee7` · SHA-256 `11f09d4e66981e5f310bf5c0762aa590cb1c9cfc4274817f77999fcd6af30b17`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.PhaseTable.Variantbcc44d9f5a8cce61e12e43d7edb6685c8d945d10906b07c445d70c61bf55d8c3","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"bcc44d9f5a8cce61e12e43d7edb6685c8d945d10906b07c445d70c61bf55d8c3","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.DataStructures.SourceCorpus.PhaseTable.Variantbcc44d9f5a8cce61e12e43d7edb6685c8d945d10906b07c445d70c61bf55d8c3","mathematical_subject":"Computation.DataStructures","original_sha256":"bcc44d9f5a8cce61e12e43d7edb6685c8d945d10906b07c445d70c61bf55d8c3","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Head/Think_retired/formal/Think/Bit0/Bit1/Bit0/Bit1/Bit0/Bit0/Bit1/Bit1/Bit0/Bit1/M506970656c696e652f5068617365732f50686173655461626c652e6c65616e.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Think.Bit0.Bit0.Bit0.Bit1.Bit1.Bit0.Bit0.M506970656c696e652f5068617365732f5068617365537065632e6c65616e


/- source-tree-label: STL1|L|addr=0101001101|role=proof_code_atom|slug=pipeline-phases-phasetable|owner=canonical_owner|core=Pipeline/Phases/PhaseTable.lean|leaf=M506970656c696e652f5068617365732f50686173655461626c652e6c65616e.lean -/


namespace GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.PhaseTable.Variantbcc44d9f5a8cce61e12e43d7edb6685c8d945d10906b07c445d70c61bf55d8c3

set_option autoImplicit false

namespace Think.Pipeline.Phases

def phaseTable : List PhaseSpec :=
  Think.centerSpine.map PhaseSpec.ofPhase

def allPhaseModules : List Think.PhaseId :=
  Think.centerSpine

theorem phaseTable_count :
    phaseTable.length = 61 := by
  rfl

theorem allPhaseModules_count :
    allPhaseModules.length = 61 := by
  rfl

theorem allPhaseModules_eq_centerSpine :
    allPhaseModules = Think.centerSpine := by
  rfl

def phase37Spec : PhaseSpec :=
  PhaseSpec.ofPhase FWR.Pipeline.CenterWeighted.Phase.weightScoring

theorem phase37Spec_mirror :
    phase37Spec.mirror = 23 := by
  rfl

theorem phase37Spec_weight :
    phase37Spec.weight = 12 := by
  rfl

end Think.Pipeline.Phases
```
