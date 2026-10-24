# Complete source: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.Modality.Variantf4c47b873d2b2512e0a81ef816d85926e02170b0dc856d33dff15e60fdfef9e1

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `fb89bb67e091d185c9367fc930c16d583c3e3b23` · SHA-256 `f4c47b873d2b2512e0a81ef816d85926e02170b0dc856d33dff15e60fdfef9e1`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Surface.Legacy.AffineTopos.Core

namespace Surface
namespace Legacy
namespace AffineTopos

inductive AffineModality
| reversibleFlow
| quotient
| averaging
| heat
| oracle
| choice
| ricciObstruction
| homologyStabilization
| infiniteTimeLimit
| relaxation
deriving DecidableEq, Repr

def AffineModality.irreversible : AffineModality → Bool
| AffineModality.reversibleFlow => false
| _ => true

structure ModalityBoundary where
  modality : AffineModality
  claimBoundary : AffineClaimBoundary
  irreversibleVisible : modality.irreversible = true → True

theorem irreversible_modality_visible
    (B : ModalityBoundary) :
    B.modality.irreversible = true → True := by
  exact B.irreversibleVisible

theorem reversibleFlow_modality_not_irreversible :
    AffineModality.reversibleFlow.irreversible = false := by
  rfl

end AffineTopos
end Legacy
end Surface
```
