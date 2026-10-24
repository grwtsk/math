# Complete source: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.Hash.Variantf86af258ea01b92237c6c8c8a03f4ee7c2ac12bbbae926caa04e1ade4b9e33cf

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `2705173f18d965ae9c5a73d94c6689bb76bbf867` · SHA-256 `f86af258ea01b92237c6c8c8a03f4ee7c2ac12bbbae926caa04e1ade4b9e33cf`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
namespace Surface
namespace Incremental

structure ContentHash where
  algorithm : String
  value : String
deriving Repr, DecidableEq

theorem contentHash_visible
    (h : ContentHash) :
    h.value = h.value :=
  rfl

end Incremental
end Surface
```
