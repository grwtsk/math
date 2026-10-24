# Complete source: GRWTSK.Algebra.ModularWitness.Variantb17c239a63dd20f729e12c80ee743038d0a65b693b923bcb09003b3493eb76f2

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `b4264f18f02bf41ff55983f618d503014038e8b2` · SHA-256 `b17c239a63dd20f729e12c80ee743038d0a65b693b923bcb09003b3493eb76f2`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Folder.Monodromy.ModularWitness

/-!
# Folder.Theorem.Monodromy.ModularWitness

Radiation role: theorem-wrapper
BinaryMatrix spine: This module re-exports proved facts or contract exposures for the BinaryMatrix radiation program.
Ontology: proof.monodromy.modular_witness
Pivot role: none
Zero typology: none
Contract boundary: theorem-wrapper
Composite stack role: infrastructure
-/


namespace Folder
namespace Monodromy

theorem modular_monodromy_witness_certified
    {K : Type _} [Field K]
    {k : Nat}
    {E : Arithmetic.ShortWeierstrass K}
    {G : Arithmetic.ECGroupLaw E}
    {M : CatalanMonodromySystem k E G}
    {β : Type _}
    (W : CompatibleModularWitness E G M β) :
    W.witness.certified :=
  modular_witness_certified W

end Monodromy
end Folder
```
