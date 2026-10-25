# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.ReconstructionFalseControls.Variantea9c3fbe55caae390d024c9d0bbebeeec7f69fda8df95958bb3176e9562dbbfd

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `d4de6ca5db4831632ecf1353d46f9c986e159c20` · SHA-256 `ea9c3fbe55caae390d024c9d0bbebeeec7f69fda8df95958bb3176e9562dbbfd`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import formal.c2.RecordReconstruction

namespace C2.ReconstructionFalseChecks
example : parseValue 33 "m00:".toList = some (.map [],[]) := by rfl
example : parseValue 33 "i-0;".toList = some (.int 0,[]) := by rfl
example : ∀ b : Bytes, bytes (⟨[],[]⟩ : Record) = b := by
  intro b
  rfl
end C2.ReconstructionFalseChecks
```
