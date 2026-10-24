# Complete source: GRWTSK.Algebra.TorsionWitness.Variant9b77002fd5e58d5d763ffdb39a004ee4cb5c6a17b88a95dd59cdad49cb607c01

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `9bcaede3eff68c459e7967c2eb15a8daea6c53a6` · SHA-256 `9b77002fd5e58d5d763ffdb39a004ee4cb5c6a17b88a95dd59cdad49cb607c01`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Folder.Arithmetic.ModularWitness

/-!
# Folder.Theorem.Arithmetic.TorsionWitness

Radiation role: theorem-wrapper
BinaryMatrix spine: This module re-exports proved facts or contract exposures for the BinaryMatrix radiation program.
Ontology: proof.arithmetic.torsion_witness
Pivot role: none
Zero typology: none
Contract boundary: theorem-wrapper
Composite stack role: infrastructure
-/


namespace Folder
namespace Arithmetic

theorem torsion_witness_sound {K : Type _} [Field K]
    {E : ShortWeierstrass K}
    {G : ECGroupLaw E}
    {P : ECPoint E}
    {n : Nat}
    (h : HasOrder G P n) :
    IsTorsion G P :=
  torsion_of_hasOrder h

theorem modular_witness_exposes_claim {K : Type _} [Field K]
    {E : ShortWeierstrass K}
    {β : Type _}
    (W : ModularRelationWitness E β) :
    modularRelationClaim W = W.certified :=
  rfl

end Arithmetic
end Folder
```
