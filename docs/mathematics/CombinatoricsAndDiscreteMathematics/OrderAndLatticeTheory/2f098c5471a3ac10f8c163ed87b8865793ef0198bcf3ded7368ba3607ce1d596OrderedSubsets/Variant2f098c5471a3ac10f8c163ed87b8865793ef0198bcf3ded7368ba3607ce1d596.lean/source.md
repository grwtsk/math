# Complete source: GRWTSK.CombinatoricsAndDiscreteMathematics.OrderAndLatticeTheory.2f098c5471a3ac10f8c163ed87b8865793ef0198bcf3ded7368ba3607ce1d596OrderedSubsets.Variant2f098c5471a3ac10f8c163ed87b8865793ef0198bcf3ded7368ba3607ce1d596

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `f6f86a8d0ec162236a5ff160438d1885ed8d9a02` · SHA-256 `2f098c5471a3ac10f8c163ed87b8865793ef0198bcf3ded7368ba3607ce1d596`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Mathlib.Order.Hom.PowersetCard
set_option pp.universes true
set_option pp.fullNames true
set_option pp.maxSteps 100000
#check @Set.powersetCard
#check @Set.powersetCard.ofFinEmbEquiv
#check @Set.powersetCard.ofFinEmbEquiv_symm_apply
#check @Set.powersetCard.mem_range_ofFinEmbEquiv_symm_iff_mem
```
