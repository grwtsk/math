# Complete source: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.WittenGenusBoundary.Variant2fe670ca7597de9fb9593c14e956964a4bc8626bd9f8f4e4356555cdab31afbf

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `bc70ddddd5219c1849e45ba56ee241ff81be2db7` · SHA-256 `2fe670ca7597de9fb9593c14e956964a4bc8626bd9f8f4e4356555cdab31afbf`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Folder.CrystallineTensor.HodgeDeRhamFiltration
import Folder.ResearchTopos.TMFFraming
import Folder.CrystallineIndex.CohomologyClass

/-!
# Folder.CrystallineIndex.WittenGenusBoundary

Radiation role: research-boundary
BinaryMatrix spine: This module records Witten genus/TMF boundary contracts, not BinaryMatrix invariants.
Ontology: crystalline_index.witten_genus_boundary
Pivot role: spectral
Zero typology: none
Contract boundary: contract
Composite stack role: crystalline-index
-/

namespace Folder
namespace CrystallineIndex

structure WittenGenusIndexBoundary
    (H : CohomologyTheory) where
  tmfContract : ResearchTopos.TMFContract
  genusWitness : ResearchTopos.WittenGenusWitness
  indexTarget : CohomologyClass H
  refinesAhat : Prop
  refinesAhat_certified : refinesAhat
  stringOrientationRequired : Prop
  stringOrientationRequired_certified : stringOrientationRequired
  sourceLabel : String

theorem witten_genus_refines_ahat_if_supplied
    {H : CohomologyTheory}
    (W : WittenGenusIndexBoundary H) :
    W.refinesAhat :=
  W.refinesAhat_certified

theorem witten_genus_requires_string_orientation
    {H : CohomologyTheory}
    (W : WittenGenusIndexBoundary H) :
    W.stringOrientationRequired :=
  W.stringOrientationRequired_certified

end CrystallineIndex
end Folder
```
