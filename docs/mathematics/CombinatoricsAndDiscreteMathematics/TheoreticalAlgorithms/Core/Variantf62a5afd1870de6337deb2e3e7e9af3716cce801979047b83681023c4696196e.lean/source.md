# Complete source: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.Core.Variantf62a5afd1870de6337deb2e3e7e9af3716cce801979047b83681023c4696196e

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `ff6e38f931e5efa1c3be7c39007af03e039b4144` · SHA-256 `f62a5afd1870de6337deb2e3e7e9af3716cce801979047b83681023c4696196e`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Surface.AST.Core
import Surface.Incremental.Hash
import Surface.Incremental.ModuleKey

namespace Surface
namespace Incremental

open Surface.AST

structure ModuleSnapshot where
  key : ModuleKey
  sourceHash : ContentHash
  moduleAstHash : ContentHash
  declarationAstHash : ContentHash
  siteArtifactHash? : Option ContentHash
  moduleAst : LeanModuleAst
  declarations : List LeanDeclarationAst
  claimBoundary : List String
deriving Repr

theorem moduleSnapshot_claimBoundary_visible
    (S : ModuleSnapshot) :
    S.claimBoundary = S.claimBoundary :=
  rfl

end Incremental
end Surface
```
