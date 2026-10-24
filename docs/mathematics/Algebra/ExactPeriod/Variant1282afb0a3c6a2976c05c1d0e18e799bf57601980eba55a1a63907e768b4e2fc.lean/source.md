# Complete source: GRWTSK.Algebra.ExactPeriod.Variant1282afb0a3c6a2976c05c1d0e18e799bf57601980eba55a1a63907e768b4e2fc

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `95957f76f7584ca80c57e5c16329ef2f1b6e2a41` · SHA-256 `1282afb0a3c6a2976c05c1d0e18e799bf57601980eba55a1a63907e768b4e2fc`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Folder.Research.ExactPeriod

/-!
# Folder.Theorem.Research.ExactPeriod

Radiation role: theorem-wrapper
BinaryMatrix spine: This module re-exports proved facts or contract exposures for the BinaryMatrix radiation program.
Ontology: proof.research.exact_period
Pivot role: none
Zero typology: none
Contract boundary: theorem-wrapper
Composite stack role: infrastructure
-/


namespace Folder
namespace Theorem
namespace Research
namespace ExactPeriod

theorem exact_period_of_hasOrder_and_faithful
    {K : Type _} [Field K]
    {E : Arithmetic.ShortWeierstrass K}
    {G : Arithmetic.ECGroupLaw E}
    {α : Type _}
    (A : Monodromy.TorsionAction G α)
    (P : Arithmetic.ECPoint E)
    {n : Nat}
    (hOrder : Arithmetic.HasOrder G P n)
    (hFaithful : Folder.Research.ExactPeriod.ActionFaithful A) :
    Folder.Research.ExactPeriod.HasExactPeriod A P n :=
  Folder.Research.ExactPeriod.exact_period_of_hasOrder_and_faithful
    A P hOrder hFaithful

end ExactPeriod
end Research
end Theorem
end Folder
```
