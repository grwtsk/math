# Complete source: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.M506970656c696e652f526573696475652e6c65616e.Variant1c0f1c0018d286bf52c94ded240f8904015c33d3d395c8684cc2cba8cc530c8c

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `65f5526e7f6e6053605c4e51248823a0a03a7009` · SHA-256 `10a24a425496d925d748782e0657521fc75c8bd97ecd5d1e983d27e16d5b4d3a`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.PhaseResidues.Variant1ef0f8f30e702053d448de69f3fad145248e40552d5e598c6fd12376e89a0e7e","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"1ef0f8f30e702053d448de69f3fad145248e40552d5e598c6fd12376e89a0e7e","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.DataStructures.SourceCorpus.PhaseResidues.Variant1ef0f8f30e702053d448de69f3fad145248e40552d5e598c6fd12376e89a0e7e","mathematical_subject":"Computation.DataStructures","original_sha256":"1ef0f8f30e702053d448de69f3fad145248e40552d5e598c6fd12376e89a0e7e","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Head/Think_retired/formal/Think/Bit0/Bit0/Bit0/Bit0/Bit1/Bit0/Bit0/Bit1/M506970656c696e652f526573696475652e6c65616e.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Think.Bit1.Bit0.Bit0.Bit0.Bit1.Bit0.Bit0.M506970656c696e652f50686173654f726465722e6c65616e


/- source-tree-label: STL1|L|addr=00001001|role=proof_code_atom|slug=pipeline-residue|owner=canonical_owner|core=Pipeline/Residue.lean|leaf=M506970656c696e652f526573696475652e6c65616e.lean -/


namespace GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.PhaseResidues.Variant1ef0f8f30e702053d448de69f3fad145248e40552d5e598c6fd12376e89a0e7e

set_option autoImplicit false

namespace Think

def phaseResidues : List Residue :=
  FWR.Pipeline.CenterWeighted.phaseResidues

def checkpointResidues : List Residue :=
  FWR.Pipeline.CenterWeighted.checkpointResidues

def pipelineResidues : List Residue :=
  phaseResidues ++ checkpointResidues

theorem phaseResidues_targets_correct :
    ∀ r ∈ phaseResidues, r.target = FWR.Target.CenterWeightedPipeline := by
  exact FWR.Pipeline.CenterWeighted.phaseResidues_targets_correct

theorem checkpointResidues_targets_correct :
    ∀ r ∈ checkpointResidues, r.target = FWR.Target.CenterWeightedPipeline := by
  exact FWR.Pipeline.CenterWeighted.checkpointResidues_targets_correct

theorem pipelineResidues_count :
    pipelineResidues.length = 71 := by
  rfl

theorem pipelineResidues_targets_correct :
    ∀ r ∈ pipelineResidues, r.target = FWR.Target.CenterWeightedPipeline := by
  intro r h
  simp [pipelineResidues] at h
  cases h with
  | inl hp => exact phaseResidues_targets_correct r hp
  | inr hc => exact checkpointResidues_targets_correct r hc

end Think
```
