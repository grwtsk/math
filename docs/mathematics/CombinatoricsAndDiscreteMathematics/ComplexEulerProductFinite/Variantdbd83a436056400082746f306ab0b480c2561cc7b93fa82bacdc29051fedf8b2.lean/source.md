# Complete source: GRWTSK.CombinatoricsAndDiscreteMathematics.ComplexEulerProductFinite.Variantdbd83a436056400082746f306ab0b480c2561cc7b93fa82bacdc29051fedf8b2

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `2356a076b5db6e815983968dc05338251cb1f485` · SHA-256 `dbd83a436056400082746f306ab0b480c2561cc7b93fa82bacdc29051fedf8b2`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Folder.Rebuild.AnalyticNumberTheory.ComplexZetaHalfPlane
import Folder.Rebuild.AnalyticNumberTheory.PrimeExhaustion
import Folder.Rebuild.AnalyticNumberTheory.SmoothNumberReindexing

/-!
# Folder.Rebuild.AnalyticNumberTheory.ComplexEulerProductFinite

Finite complex Euler products in the absolutely convergent half-plane.
-/

namespace Folder
namespace Rebuild
namespace AnalyticNumberTheory

open scoped BigOperators

noncomputable def finiteZetaEulerFactorComplex
    (p : Nat)
    (s : Complex)
    (K : Nat) : Complex :=
  ∑ k ∈ Finset.range (K + 1), complexWeight s (p ^ k)

noncomputable def finiteZetaEulerProductComplex
    (S : Finset Nat)
    (s : Complex)
    (K : Nat) : Complex :=
  ∏ p ∈ S, finiteZetaEulerFactorComplex p s K

theorem finiteZetaEulerProductComplex_expands_boundedSmoothNumbers
    (S : Finset Nat)
    (K : Nat)
    (s : Complex)
    (hSprime : ∀ p ∈ S, Nat.Prime p) :
    finiteZetaEulerProductComplex S s K =
      ∑ n ∈ boundedSmoothNumbers S K, complexWeight s n := by
  change
    finiteEulerProductOf (fun n => complexWeight s n) S K =
      ∑ n ∈ boundedSmoothNumbers S K, complexWeight s n
  exact
    finiteEulerProductOf_expands_boundedSmoothNumbers
      (fun n => complexWeight s n)
      (complexWeight_completely_multiplicative s)
      S K hSprime

noncomputable def zetaEulerApproxComplex
    (s : Complex)
    (N : Nat) : Complex :=
  finiteZetaEulerProductComplex (primesUpTo N) s N

theorem zetaEulerApproxComplex_expands_boundedSmoothNumbers
    (s : Complex)
    (N : Nat) :
    zetaEulerApproxComplex s N =
      ∑ n ∈ boundedSmoothNumbers (primesUpTo N) N,
        complexWeight s n := by
  unfold zetaEulerApproxComplex
  exact
    finiteZetaEulerProductComplex_expands_boundedSmoothNumbers
      (primesUpTo N) N s
      (by intro p hp; exact primesUpTo_prime hp)

end AnalyticNumberTheory
end Rebuild
end Folder
```
