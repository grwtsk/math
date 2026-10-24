# Complete source: GRWTSK.Algebra.ModularWitness.Variant47ae719db2b2933c8badf8aadbd449ecad1c8c7ccd8663bec69c614af2f5ee03

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `c1df181619436640931091dfa65392e9b2b1dea5` · SHA-256 `47ae719db2b2933c8badf8aadbd449ecad1c8c7ccd8663bec69c614af2f5ee03`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Folder.Arithmetic.Torsion

/-!
# Folder.Arithmetic.ModularWitness

Radiation role: elliptic-compatibility
BinaryMatrix spine: This module names arithmetic compatibility structures that may act on shell torsion without identifying it with BinaryMatrix data.
Ontology: arithmetic.modular_witness
Pivot role: none
Zero typology: modular
Contract boundary: witness
Composite stack role: torsion
-/


namespace Folder
namespace Arithmetic

structure ModularRelationWitness {K : Type _} [Field K]
    (E : ShortWeierstrass K)
    (β : Type _) where
  invariant : β
  relationName : String
  certified : Prop

structure JInvariantWitness {K : Type _} [Field K]
    (E : ShortWeierstrass K) where
  value : K
  certified : Prop

def modularRelationClaim {K : Type _} [Field K]
    {E : ShortWeierstrass K}
    {β : Type _}
    (W : ModularRelationWitness E β) :
    Prop :=
  W.certified

def jInvariantClaim {K : Type _} [Field K]
    {E : ShortWeierstrass K}
    (W : JInvariantWitness E) :
    Prop :=
  W.certified

end Arithmetic
end Folder
```
