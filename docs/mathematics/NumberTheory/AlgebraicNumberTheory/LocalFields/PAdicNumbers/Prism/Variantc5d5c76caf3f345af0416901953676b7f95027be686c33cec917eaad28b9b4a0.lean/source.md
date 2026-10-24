# Complete source: GRWTSK.NumberTheory.AlgebraicNumberTheory.LocalFields.PAdicNumbers.Prism.Variantc5d5c76caf3f345af0416901953676b7f95027be686c33cec917eaad28b9b4a0

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `307a3c6913ed3f4cfa02d9657309e3f3993f990f` · SHA-256 `c5d5c76caf3f345af0416901953676b7f95027be686c33cec917eaad28b9b4a0`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-!
# Folder.Prismatic.Prism

Radiation role: research-boundary
BinaryMatrix spine: This module records p-adic prism placeholders, not BinaryMatrix data.
Ontology: prism
Pivot role: prismatic
Zero typology: none
Contract boundary: proposed-definition
Composite stack role: canonical-path
-/

namespace Folder
namespace Prismatic

/-- Abstract p-adic prism placeholder. Not a geometric prism. -/
structure Prism where
  carrierLabel : String
  idealLabel : String
  deltaStructureLabel : String

theorem prism_has_carrier_label
    (P : Prism) :
    ∃ label : String, P.carrierLabel = label :=
  ⟨P.carrierLabel, rfl⟩

end Prismatic
end Folder
```
