# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.MkPairwiseEquality.Variantbbe7219b77bb0595e97fbbbfa4a670999c9417c9a7e044516017775c95b0ae0a

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `c9ed71934cce08e5828162a0dbe8e101d70523dc` · SHA-256 `bbe7219b77bb0595e97fbbbfa4a670999c9417c9a7e044516017775c95b0ae0a`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Qq
open Qq

def mkPairwiseEquality {α : Q(Sort u)} : List Q($α) → Q(Prop)
  | [a, b] => q($a = $b)
  | a :: b :: cs => q($a = $b ∧ $(mkPairwiseEquality (b :: cs)))
  | _ => q(True)
```
