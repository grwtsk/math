# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.ImportAcyclicity.Variant63bad75472afa9d033f174a409b35d460f9175fcc4e4d41086de02727f876e43

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `15dd0fe67fe9798d7305017fcde77218236ce708` · SHA-256 `63bad75472afa9d033f174a409b35d460f9175fcc4e4d41086de02727f876e43`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Think.Validation.TargetNonclaims

set_option autoImplicit false

namespace Think.Validation

structure ImportClosureWitness where
  root : Think.Target
  phaseCount : Nat
  residueCount : Nat

def importClosureWitness : ImportClosureWitness :=
  { root := FWR.Target.CenterWeightedPipeline
    phaseCount := Think.centerSpine.length
    residueCount := Think.Residues.ledger.length }

theorem importClosureWitness_root :
    importClosureWitness.root = FWR.Target.CenterWeightedPipeline := by
  rfl

end Think.Validation
```
