# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.M506970656c696e652f4e6f6e636c61696d2e6c65616e.Variantcb41429a73eb9ab0e5e6c9a1ba839861fc901f706e6d7f197a0ffdc067ad5dda

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `1f24c24e4c3eec2535b235f27e50a365bb24f946` · SHA-256 `cb41429a73eb9ab0e5e6c9a1ba839861fc901f706e6d7f197a0ffdc067ad5dda`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Think.Bit0.Bit1.Bit0.Bit1.Bit0.Bit0.Bit1.Bit1.Bit1.M506970656c696e652f417574686f726974792e6c65616e
import Think.Bit0.Bit0.Bit0.Bit0.Bit1.Bit0.Bit0.Bit1.M506970656c696e652f526573696475652e6c65616e


/- source-tree-label: STL1|L|addr=10010000|role=proof_code_atom|slug=pipeline-nonclaim|owner=canonical_owner|core=Pipeline/Nonclaim.lean|leaf=M506970656c696e652f4e6f6e636c61696d2e6c65616e.lean -/

set_option autoImplicit false

namespace Think.Pipeline

structure Nonclaim where
  phase : Think.PhaseId
  statement : String

def nonclaimAuthorityLabel (n : Nonclaim) : AuthorityLabel :=
  { phase := n.phase
    authority := AuthorityClass.refused }

def noPoleAuthorityUpgrade (n : Nonclaim) : Prop :=
  n.phase ∈ Think.centerSpine ∧
    (nonclaimAuthorityLabel n).authority = AuthorityClass.refused ∧
    ∀ r ∈ Think.pipelineResidues, r.target = FWR.Target.CenterWeightedPipeline

theorem noPoleAuthorityUpgrade_certified (n : Nonclaim) :
    noPoleAuthorityUpgrade n := by
  exact ⟨Think.centerSpine_complete n.phase, rfl, Think.pipelineResidues_targets_correct⟩

end Think.Pipeline
```
