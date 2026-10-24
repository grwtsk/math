# Complete source: GRWTSK.CombinatoricsAndDiscreteMathematics.9525e770bdbfff68cce4db5a8dc123af012e59fc49504680cced0c9557c52802Order.Variant9525e770bdbfff68cce4db5a8dc123af012e59fc49504680cced0c9557c52802

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `7e938a49410697057fed4eb90cbad10a9afe7a95` · SHA-256 `9525e770bdbfff68cce4db5a8dc123af012e59fc49504680cced0c9557c52802`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Mathlib.Data.Finset.Sort

set_option pp.universes true
set_option pp.fullNames true

#check @Finset.orderIsoOfFin
#check @Finset.orderEmbOfFin
#check @Finset.orderEmbOfFin_apply
#check @Finset.orderEmbOfFin_mem
#check @Finset.image_orderEmbOfFin_univ
#check @Finset.orderEmbOfFin_unique'
#check @Finset.card_image_of_injective
#check @OrderEmbedding.strictMono
#print Finset.orderEmbOfFin
#print axioms Finset.orderEmbOfFin_unique'
```
