# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.ReverseImportGraph.Variantf49910b5253d32f48beacceb03c010c2c857f571137ed67fc0aadb3fcc941088

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `4c1f38fcff71a96642edd3a6be8eacc42f2a0a55` · SHA-256 `f49910b5253d32f48beacceb03c010c2c857f571137ed67fc0aadb3fcc941088`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Surface.Incremental.ImportGraph

namespace Surface
namespace Incremental

def reverseImports
    (G : ImportGraph)
    (I M : ModuleKey) : Prop :=
  imports G M I

theorem reverseImports_iff_imports
    (G : ImportGraph)
    (I M : ModuleKey) :
    reverseImports G I M ↔ imports G M I := by
  rfl

end Incremental
end Surface
```
