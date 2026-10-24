# Complete source: GRWTSK.Algebra.TorsionAction.Variant5649340747ba5271a47c2070cfba4202fe42657e76791453d8c68aee5ac59435

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `cdb171074edd1665f15a8c86417fa5a38dd02cb6` · SHA-256 `5649340747ba5271a47c2070cfba4202fe42657e76791453d8c68aee5ac59435`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Folder.Monodromy.EllipticTorsionAction

/-!
# Folder.Theorem.Monodromy.TorsionAction

Radiation role: theorem-wrapper
BinaryMatrix spine: This module re-exports proved facts or contract exposures for the BinaryMatrix radiation program.
Ontology: proof.monodromy.torsion_action
Pivot role: none
Zero typology: none
Contract boundary: theorem-wrapper
Composite stack role: infrastructure
-/


namespace Folder
namespace Monodromy

theorem elliptic_torsion_action_roundtrip
    {K : Type _} [Field K]
    {E : Arithmetic.ShortWeierstrass K}
    {G : Arithmetic.ECGroupLaw E}
    {α : Type _}
    (A : TorsionAction G α)
    (P : Arithmetic.ECPoint E)
    (x : α) :
    (A.act (G.neg P)) ((A.act P) x) = x :=
  torsion_action_roundtrip A P x

end Monodromy
end Folder
```
