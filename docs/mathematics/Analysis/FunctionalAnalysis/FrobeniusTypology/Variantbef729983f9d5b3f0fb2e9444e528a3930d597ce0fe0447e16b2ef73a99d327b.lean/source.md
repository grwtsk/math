# Complete source: GRWTSK.Analysis.FunctionalAnalysis.FrobeniusTypology.Variantbef729983f9d5b3f0fb2e9444e528a3930d597ce0fe0447e16b2ef73a99d327b

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `b8ec0164b711d00fd84041fb9228e6c303bddc7d` · SHA-256 `bef729983f9d5b3f0fb2e9444e528a3930d597ce0fe0447e16b2ef73a99d327b`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Folder.Spectral.Tensor
import Folder.Research.ArithmeticBoundary

/-!
# Folder.Core.FrobeniusTypology

Radiation role: core-architecture
BinaryMatrix spine: This module separates analytic Frobenius energy from arithmetic Frobenius witnesses downstream of finite carriers.
Ontology: core.frobenius_typology
Pivot role: none
Zero typology: spectral
Contract boundary: contract
Composite stack role: field
-/

namespace Folder
namespace Core

structure AnalyticFrobeniusEnergy where
  carrier : Type
  normSq : carrier → ℝ
  nonnegative : ∀ x, 0 ≤ normSq x

structure ArithmeticFrobeniusWitness where
  Curve : Type
  q : Nat
  trace : Int
  hasseBound : Prop
  source : String
  certified : hasseBound

theorem analytic_frobenius_nonnegative
    (F : AnalyticFrobeniusEnergy)
    (x : F.carrier) :
    0 ≤ F.normSq x :=
  F.nonnegative x

theorem arithmetic_frobenius_has_bound
    (W : ArithmeticFrobeniusWitness) :
    W.hasseBound :=
  W.certified

end Core
end Folder
```
