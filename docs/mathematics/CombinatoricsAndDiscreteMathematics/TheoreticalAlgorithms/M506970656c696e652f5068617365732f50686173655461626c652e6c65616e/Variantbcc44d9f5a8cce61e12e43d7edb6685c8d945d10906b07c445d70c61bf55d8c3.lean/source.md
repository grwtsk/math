# Complete source: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.M506970656c696e652f5068617365732f50686173655461626c652e6c65616e.Variantbcc44d9f5a8cce61e12e43d7edb6685c8d945d10906b07c445d70c61bf55d8c3

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `bfc241495d88fbade0943ae241bf0294bab14a14` · SHA-256 `bcc44d9f5a8cce61e12e43d7edb6685c8d945d10906b07c445d70c61bf55d8c3`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Think.Bit0.Bit0.Bit0.Bit1.Bit1.Bit0.Bit0.M506970656c696e652f5068617365732f5068617365537065632e6c65616e


/- source-tree-label: STL1|L|addr=0101001101|role=proof_code_atom|slug=pipeline-phases-phasetable|owner=canonical_owner|core=Pipeline/Phases/PhaseTable.lean|leaf=M506970656c696e652f5068617365732f50686173655461626c652e6c65616e.lean -/

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
