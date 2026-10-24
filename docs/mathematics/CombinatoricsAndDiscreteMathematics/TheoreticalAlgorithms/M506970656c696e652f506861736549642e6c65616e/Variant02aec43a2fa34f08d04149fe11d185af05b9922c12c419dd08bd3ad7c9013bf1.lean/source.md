# Complete source: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.M506970656c696e652f506861736549642e6c65616e.Variant02aec43a2fa34f08d04149fe11d185af05b9922c12c419dd08bd3ad7c9013bf1

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `cc3e7f1e5cd11e56df10ea4ab77bc667b521860e` · SHA-256 `76d0ad6ab2e13e5efbbff613be89754c330feb15e49d5db3125ab556ccb40c7c`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.PhaseId.Variant570f1d69c883f77956a3ebe1c975f0997dcb5d62191aa00f133df2772bb118d5","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"570f1d69c883f77956a3ebe1c975f0997dcb5d62191aa00f133df2772bb118d5","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.DataStructures.SourceCorpus.PhaseId.Variant570f1d69c883f77956a3ebe1c975f0997dcb5d62191aa00f133df2772bb118d5","mathematical_subject":"Computation.DataStructures","original_sha256":"570f1d69c883f77956a3ebe1c975f0997dcb5d62191aa00f133df2772bb118d5","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Head/Think_retired/formal/Think/Bit0/Bit0/Bit0/Bit1/Bit1/Bit0/Bit1/M506970656c696e652f506861736549642e6c65616e.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Think.Bit1.Bit1.Bit1.Bit0.Bit0.Bit0.Bit1.Bit0.Bit0.M506970656c696e652f42617369632e6c65616e


/- source-tree-label: STL1|L|addr=0001101|role=proof_code_atom|slug=pipeline-phaseid|owner=canonical_owner|core=Pipeline/PhaseId.lean|leaf=M506970656c696e652f506861736549642e6c65616e.lean -/


namespace GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.PhaseId.Variant570f1d69c883f77956a3ebe1c975f0997dcb5d62191aa00f133df2772bb118d5

set_option autoImplicit false

namespace Think

abbrev PhaseId := FWR.Pipeline.CenterWeighted.Phase
abbrev PhaseRecord := FWR.Pipeline.CenterWeighted.PhaseRecord
abbrev SpineStep := FWR.Pipeline.CenterWeighted.SpineStep

def allPhaseIds : List PhaseId :=
  FWR.Pipeline.CenterWeighted.allPhases

theorem allPhaseIds_count :
    allPhaseIds.length = 61 := by
  rfl

theorem allPhaseIds_complete (p : PhaseId) :
    p ∈ allPhaseIds := by
  exact FWR.Pipeline.CenterWeighted.allPhases_complete p

theorem allPhaseIds_nodup :
    allPhaseIds.Nodup := by
  exact FWR.Pipeline.CenterWeighted.allPhases_nodup

end Think
```
