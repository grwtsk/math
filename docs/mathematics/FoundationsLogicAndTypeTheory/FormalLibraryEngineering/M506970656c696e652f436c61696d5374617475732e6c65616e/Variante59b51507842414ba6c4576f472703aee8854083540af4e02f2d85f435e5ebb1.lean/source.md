# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.M506970656c696e652f436c61696d5374617475732e6c65616e.Variante59b51507842414ba6c4576f472703aee8854083540af4e02f2d85f435e5ebb1

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `18ffb0e4bd59e7e80a68e4d7b20ea85149d1fbc2` · SHA-256 `e59b51507842414ba6c4576f472703aee8854083540af4e02f2d85f435e5ebb1`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean

/- source-tree-label: STL1|L|addr=11000110|role=proof_code_atom|slug=pipeline-claimstatus|owner=canonical_owner|core=Pipeline/ClaimStatus.lean|leaf=M506970656c696e652f436c61696d5374617475732e6c65616e.lean -/

set_option autoImplicit false
namespace Think.Braid.Law

inductive ClaimStatus where
  | definition
  | finiteWitness
  | candidateGeneralization
  | formalizationGap
  | openObstruction
  | refusedOverclaim
  | checkedTheorem
deriving DecidableEq, Repr

def ClaimStatus.crossesTheoremBoundary : ClaimStatus -> Bool
  | .checkedTheorem => true
  | _ => false

def apiMayEmitCheckedTheorem : Bool := false

theorem api_does_not_emit_checked_theorem :
    apiMayEmitCheckedTheorem = false := rfl

end Think.Braid.Law
```
