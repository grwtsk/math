# Complete source: GRWTSK.CombinatoricsAndDiscreteMathematics.EnumerativeCombinatorics.TorsionPeriodicity.Variantde5624c9d1058fe85c7344de36fd77693edd420082a837345a7d6261510eb7a0

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `d186fc841a7a907e2cee53d279db2cc70daf18f1` · SHA-256 `de5624c9d1058fe85c7344de36fd77693edd420082a837345a7d6261510eb7a0`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Folder.Monodromy.TorsionPeriodicity

/-!
# Folder.Theorem.Monodromy.TorsionPeriodicity

Radiation role: theorem-wrapper
BinaryMatrix spine: This module re-exports proved facts or contract exposures for the BinaryMatrix radiation program.
Ontology: proof.monodromy.torsion_periodicity
Pivot role: none
Zero typology: none
Contract boundary: theorem-wrapper
Composite stack role: infrastructure
-/


namespace Folder
namespace Theorem
namespace Monodromy

theorem period_dividing_of_hasOrder
    {K : Type _} [Field K]
    {E : Arithmetic.ShortWeierstrass K}
    {G : Arithmetic.ECGroupLaw E}
    {α : Type _}
    (A : Folder.Monodromy.TorsionAction G α)
    (P : Arithmetic.ECPoint E)
    {n : Nat}
    (h : Arithmetic.HasOrder G P n) :
    Folder.Monodromy.TorsionAction.HasPeriodDividing A P n :=
  Folder.Monodromy.TorsionAction.period_dividing_of_hasOrder A P h

theorem exists_period_dividing_of_isTorsion
    {K : Type _} [Field K]
    {E : Arithmetic.ShortWeierstrass K}
    {G : Arithmetic.ECGroupLaw E}
    {α : Type _}
    (A : Folder.Monodromy.TorsionAction G α)
    (P : Arithmetic.ECPoint E)
    (h : Arithmetic.IsTorsion G P) :
    ∃ n : Nat, 0 < n ∧
      Folder.Monodromy.TorsionAction.HasPeriodDividing A P n :=
  Folder.Monodromy.TorsionAction.exists_period_dividing_of_isTorsion A P h

theorem catalan_torsion_period_dividing_of_hasOrder
    {K : Type _} [Field K]
    {k : Nat}
    {E : Arithmetic.ShortWeierstrass K}
    {G : Arithmetic.ECGroupLaw E}
    (M : Folder.Monodromy.CatalanMonodromySystem k E G)
    (P : Arithmetic.ECPoint E)
    {n : Nat}
    (hP : Arithmetic.HasOrder G P n)
    (T : Catalan.CTree) :
    Folder.Monodromy.TorsionAction.HasPeriodDividing
      (M.torsionAction T) P n :=
  Folder.Monodromy.catalan_torsion_period_dividing_of_hasOrder M P hP T

theorem catalan_torsion_period_on_transported_of_hasOrder
    {K : Type _} [Field K]
    {k : Nat}
    {E : Arithmetic.ShortWeierstrass K}
    {G : Arithmetic.ECGroupLaw E}
    (M : Folder.Monodromy.CatalanMonodromySystem k E G)
    {T U : Catalan.CTree}
    (p : Folder.Monodromy.Path M.expansion.Step T U)
    (P : Arithmetic.ECPoint E)
    {n : Nat}
    (hP : Arithmetic.HasOrder G P n)
    (x : M.expansion.bundle.Fiber T) :
    Folder.Monodromy.TorsionAction.iterateAct
      (M.torsionAction U) P n
      (Fiber.transportPath M.expansion.transport p x)
    =
    Fiber.transportPath M.expansion.transport p x :=
  Folder.Monodromy.catalan_torsion_period_on_transported_of_hasOrder
    M p P hP x

end Monodromy
end Theorem
end Folder
```
