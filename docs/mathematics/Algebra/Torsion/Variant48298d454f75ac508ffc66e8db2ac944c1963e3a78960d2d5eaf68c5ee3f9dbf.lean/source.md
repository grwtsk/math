# Complete source: GRWTSK.Algebra.Torsion.Variant48298d454f75ac508ffc66e8db2ac944c1963e3a78960d2d5eaf68c5ee3f9dbf

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `1156f9d9626d551065f68791aa893a86e2bb868a` · SHA-256 `48298d454f75ac508ffc66e8db2ac944c1963e3a78960d2d5eaf68c5ee3f9dbf`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Folder.Arithmetic.EllipticCurve

/-!
# Folder.Arithmetic.Torsion

Radiation role: elliptic-compatibility
BinaryMatrix spine: This module names arithmetic compatibility structures that may act on shell torsion without identifying it with BinaryMatrix data.
Ontology: arithmetic.torsion
Pivot role: none
Zero typology: elliptic
Contract boundary: definition
Composite stack role: torsion
-/


namespace Folder
namespace Arithmetic

def nsmulPoint {K : Type _} [Field K]
    {E : ShortWeierstrass K}
    (G : ECGroupLaw E) :
    Nat → ECPoint E → ECPoint E
  | 0, _ => ECPoint.infinity (E := E)
  | n + 1, P => G.add P (nsmulPoint G n P)

def IsTorsion {K : Type _} [Field K]
    {E : ShortWeierstrass K}
    (G : ECGroupLaw E)
    (P : ECPoint E) : Prop :=
  ∃ n : Nat, 0 < n ∧ nsmulPoint G n P = ECPoint.infinity (E := E)

def HasOrder {K : Type _} [Field K]
    {E : ShortWeierstrass K}
    (G : ECGroupLaw E)
    (P : ECPoint E)
    (n : Nat) : Prop :=
  0 < n ∧ nsmulPoint G n P = ECPoint.infinity (E := E) ∧
    ∀ m, 0 < m → m < n → nsmulPoint G m P ≠ ECPoint.infinity (E := E)

theorem torsion_of_hasOrder {K : Type _} [Field K]
    {E : ShortWeierstrass K}
    {G : ECGroupLaw E}
    {P : ECPoint E}
    {n : Nat}
    (h : HasOrder G P n) :
    IsTorsion G P :=
  ⟨n, h.1, h.2.1⟩

end Arithmetic
end Folder
```
