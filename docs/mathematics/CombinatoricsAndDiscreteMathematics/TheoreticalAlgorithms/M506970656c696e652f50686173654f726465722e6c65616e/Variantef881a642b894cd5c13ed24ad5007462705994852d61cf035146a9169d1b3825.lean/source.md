# Complete source: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.M506970656c696e652f50686173654f726465722e6c65616e.Variantef881a642b894cd5c13ed24ad5007462705994852d61cf035146a9169d1b3825

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `1e4c8b81d18f24850e52445a54945447616173e1` · SHA-256 `ba3912915ddec77e15230a3cceef363c9949911ea8e54760272049c87245cb97`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.CenterSpine.Variantba4d4c7aef50e5d3940cf8755bd90a798441528e4b60c825fcb427ee16202cfe","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"ba4d4c7aef50e5d3940cf8755bd90a798441528e4b60c825fcb427ee16202cfe","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.DataStructures.SourceCorpus.CenterSpine.Variantba4d4c7aef50e5d3940cf8755bd90a798441528e4b60c825fcb427ee16202cfe","mathematical_subject":"Computation.DataStructures","original_sha256":"ba4d4c7aef50e5d3940cf8755bd90a798441528e4b60c825fcb427ee16202cfe","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Head/Think_retired/formal/Think/Bit1/Bit0/Bit0/Bit0/Bit1/Bit0/Bit0/M506970656c696e652f50686173654f726465722e6c65616e.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Think.Bit0.Bit0.Bit0.Bit1.Bit1.Bit0.Bit1.M506970656c696e652f506861736549642e6c65616e


/- source-tree-label: STL1|L|addr=1000100|role=proof_code_atom|slug=pipeline-phaseorder|owner=canonical_owner|core=Pipeline/PhaseOrder.lean|leaf=M506970656c696e652f50686173654f726465722e6c65616e.lean -/


namespace GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.CenterSpine.Variantba4d4c7aef50e5d3940cf8755bd90a798441528e4b60c825fcb427ee16202cfe

set_option autoImplicit false

namespace Think

def centerSpine : List PhaseId :=
  allPhaseIds

def phaseIndex (p : PhaseId) : Nat :=
  p.index

def phaseRecord (p : PhaseId) : PhaseRecord :=
  p.record

def phaseSpineStep (p : PhaseId) : SpineStep :=
  p.spineStep

theorem centerSpine_count :
    centerSpine.length = 61 := by
  rfl

theorem centerSpine_complete (p : PhaseId) :
    p ∈ centerSpine := by
  exact allPhaseIds_complete p

theorem centerSpine_nodup :
    centerSpine.Nodup := by
  exact allPhaseIds_nodup

theorem phaseRecord_index (p : PhaseId) :
    (phaseRecord p).index = phaseIndex p := by
  rfl

end Think
```
