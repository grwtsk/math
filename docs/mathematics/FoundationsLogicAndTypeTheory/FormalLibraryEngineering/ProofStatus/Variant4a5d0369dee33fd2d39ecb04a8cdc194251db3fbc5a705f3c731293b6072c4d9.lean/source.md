# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.ProofStatus.Variant4a5d0369dee33fd2d39ecb04a8cdc194251db3fbc5a705f3c731293b6072c4d9

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `ba43d6abe3527e6991660fc08df9d47dabfc83b5` · SHA-256 `4a5d0369dee33fd2d39ecb04a8cdc194251db3fbc5a705f3c731293b6072c4d9`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-!
# Folder.Rebuild.ProofStatus

Local proof-status algebra for the rebuild branch.
-/

namespace Folder
namespace Rebuild

inductive RebuildProofStatus where
  | checkedByLean
  | mathlibInternal
  | classicalAnchorOnly
  | conditionalBridge
  | theoremTarget
  | toyModel
  | rejectedClaim
deriving DecidableEq, Repr

def RebuildProofStatus.allowedAsProofDependency :
    RebuildProofStatus → Prop
  | .checkedByLean => True
  | .mathlibInternal => True
  | .conditionalBridge => True
  | _ => False

theorem classicalAnchorOnly_not_allowed_as_proof_dependency :
    ¬ RebuildProofStatus.allowedAsProofDependency
      RebuildProofStatus.classicalAnchorOnly := by
  intro h
  exact h

theorem theoremTarget_not_allowed_as_proof_dependency :
    ¬ RebuildProofStatus.allowedAsProofDependency
      RebuildProofStatus.theoremTarget := by
  intro h
  exact h

theorem toyModel_not_allowed_as_proof_dependency :
    ¬ RebuildProofStatus.allowedAsProofDependency
      RebuildProofStatus.toyModel := by
  intro h
  exact h

theorem rejectedClaim_not_allowed_as_proof_dependency :
    ¬ RebuildProofStatus.allowedAsProofDependency
      RebuildProofStatus.rejectedClaim := by
  intro h
  exact h

end Rebuild
end Folder
```
