# Complete source: GRWTSK.Logic.ProofChecking.Checks.Negative.SorryControl

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `314e0e4dabf706107a6eab6a88fa450b8e763283` · SHA-256 `2ddf5b556f2246643ac9f18223fd386fdc25e5294f9cde4f5866fb53844382ad`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import GRWTSK.Combinatorics.GraphTheory.UnitDistanceGraph.Moser
theorem deliberatelyUnproved : False := by sorry
#print axioms deliberatelyUnproved
```
