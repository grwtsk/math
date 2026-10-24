# Complete source: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.ReducerSeed.Variantab7c0ba98288f4705c7d2db25a53228a669190b757ee838b533b45ceffdc1a99

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `e28f79da0bd4192bdb850d2c5d57c1160a2bb902` · SHA-256 `ab7c0ba98288f4705c7d2db25a53228a669190b757ee838b533b45ceffdc1a99`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Surface.Incremental.Request

namespace Surface
namespace Incremental

structure ReducerSeed where
  changedFile : ChangedLeanFile
  moduleKey : ModuleKey
  resolvedBy : String
  seedReason : ChangeKind
  resolutionBoundary : List String
deriving Repr

structure SeedResolutionCertificate where
  changedFile : ChangedLeanFile
  seed : ReducerSeed
  seedMatchesChangedFile :
    seed.changedFile = changedFile
  uniqueModule : Prop
  uniqueModuleCertified : uniqueModule
  claimBoundary : List String
deriving Repr

theorem changedFile_resolves_to_reducerSeed
    (C : SeedResolutionCertificate) :
    C.seed.changedFile = C.changedFile ∧ C.uniqueModule := by
  exact ⟨C.seedMatchesChangedFile, C.uniqueModuleCertified⟩

end Incremental
end Surface
```
