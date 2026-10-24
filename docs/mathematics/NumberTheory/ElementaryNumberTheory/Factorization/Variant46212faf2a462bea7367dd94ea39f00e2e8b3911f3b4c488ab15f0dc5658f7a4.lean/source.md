# Complete source: GRWTSK.NumberTheory.ElementaryNumberTheory.Factorization.Variant46212faf2a462bea7367dd94ea39f00e2e8b3911f3b4c488ab15f0dc5658f7a4

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `38215924a374ac7d3220d443b482012e850a4fcf` · SHA-256 `46212faf2a462bea7367dd94ea39f00e2e8b3911f3b4c488ab15f0dc5658f7a4`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Folder.NumberTheory.Factorization

/-!
# Folder.Theorem.NumberTheory.Factorization

Radiation role: theorem-wrapper
BinaryMatrix spine: This module participates in the finite carrier, cellular, spectral, torsion, or proof layer radiating from the BinaryMatrix spine.
Ontology: proof.number_theory.factorization
Pivot role: none
Zero typology: none
Contract boundary: theorem-wrapper
Composite stack role: infrastructure
-/

namespace Folder
namespace Theorem
namespace NumberTheory

theorem factorization_support_prime
    (n : Folder.NumberTheory.PositiveNat)
    {p : Nat}
    (hp : Folder.NumberTheory.IsPrimeSupport n p) :
    Nat.Prime p :=
  Folder.NumberTheory.factorization_support_prime n hp

theorem factorization_exponent_pos
    (n : Folder.NumberTheory.PositiveNat)
    {p : Nat}
    (hp : Folder.NumberTheory.IsPrimeSupport n p) :
    0 < Folder.NumberTheory.FactorizationMap n p :=
  Folder.NumberTheory.factorization_exponent_pos n hp

end NumberTheory
end Theorem
end Folder
```
