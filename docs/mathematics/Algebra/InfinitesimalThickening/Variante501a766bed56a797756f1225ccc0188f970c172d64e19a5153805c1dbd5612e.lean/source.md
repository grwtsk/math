# Complete source: GRWTSK.Algebra.InfinitesimalThickening.Variante501a766bed56a797756f1225ccc0188f970c172d64e19a5153805c1dbd5612e

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `3489eba755b8a39f4e516b56d300599dd025a096` · SHA-256 `e501a766bed56a797756f1225ccc0188f970c172d64e19a5153805c1dbd5612e`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Folder.Basic

/-!
# Folder.CrystallineTensor.InfinitesimalThickening

Radiation role: research-boundary
BinaryMatrix spine: This module records nilpotent thickening metadata, not a BinaryMatrix construction.
Ontology: crystalline.infinitesimal_thickening
Pivot role: none
Zero typology: none
Contract boundary: contract
Composite stack role: crystalline-tensor
-/

namespace Folder
namespace CrystallineTensor

/--
Abstract nilpotent-thickening metadata.

This is a proof-carrying boundary record: it does not construct a crystalline
site or an ideal sheaf, but it prevents nilpotence from being asserted without
a supplied certificate.
-/
structure InfinitesimalThickening where
  Base : Type _
  Thickened : Type _
  closedImmersion : Thickened → Base
  ideal : Type _
  nilpotentIdeal : Prop
  nilpotentIdeal_certified : nilpotentIdeal
  label : String

theorem thickening_has_nilpotent_ideal
    (T : InfinitesimalThickening) :
    T.nilpotentIdeal :=
  T.nilpotentIdeal_certified

end CrystallineTensor
end Folder
```
