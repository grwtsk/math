# Complete source: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.M506970656c696e652f526573696475652e6c65616e.Variant1ef0f8f30e702053d448de69f3fad145248e40552d5e598c6fd12376e89a0e7e

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `1e7dc4af6774c3540b71f81ad5f554d242a65579` · SHA-256 `1ef0f8f30e702053d448de69f3fad145248e40552d5e598c6fd12376e89a0e7e`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Think.Bit1.Bit0.Bit0.Bit0.Bit1.Bit0.Bit0.M506970656c696e652f50686173654f726465722e6c65616e


/- source-tree-label: STL1|L|addr=00001001|role=proof_code_atom|slug=pipeline-residue|owner=canonical_owner|core=Pipeline/Residue.lean|leaf=M506970656c696e652f526573696475652e6c65616e.lean -/

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
