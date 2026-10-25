# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.BinomialChebyshevBounds.Variant4c4480291b5412a4f8f2a81a1cd2d5f3106206da95e0c4560f67845a7f161e2c

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `533cbf45713f409b40133f5b92029b92719b37a3` · SHA-256 `4c4480291b5412a4f8f2a81a1cd2d5f3106206da95e0c4560f67845a7f161e2c`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Folder.Rebuild.AnalyticNumberTheory.LcmChebyshev
import Mathlib.Data.Nat.Choose.Central
import Mathlib.Analysis.SpecialFunctions.Log.Basic

/-!
# Folder.Rebuild.AnalyticNumberTheory.BinomialChebyshevBounds

Central-binomial elementary bounds used by the pre-PNT Chebyshev scaffold.
-/

namespace Folder
namespace Rebuild
namespace AnalyticNumberTheory

def centralBinomial
    (n : Nat) : Nat :=
  Nat.centralBinom n

theorem centralBinomial_pos
    (n : Nat) :
    0 < centralBinomial n := by
  exact Nat.centralBinom_pos n

theorem centralBinomial_le_four_pow
    (n : Nat) :
    centralBinomial n ≤ 4 ^ n := by
  exact Nat.centralBinom_le_four_pow n

theorem log_centralBinomial_le_n_log_four
    (n : Nat) :
    Real.log (centralBinomial n) ≤ (n : Real) * Real.log 4 := by
  have hpos : 0 < (centralBinomial n : Real) := by
    exact_mod_cast centralBinomial_pos n
  have hle : (centralBinomial n : Real) ≤ ((4 ^ n : Nat) : Real) := by
    exact_mod_cast centralBinomial_le_four_pow n
  calc
    Real.log (centralBinomial n)
        ≤ Real.log ((4 ^ n : Nat) : Real) :=
          Real.log_le_log hpos hle
    _ = (n : Real) * Real.log 4 := by
          rw [show ((4 ^ n : Nat) : Real) = (4 : Real) ^ n by norm_num]
          rw [Real.log_pow]

/-- Theorem target: the classical central-binomial Chebyshev theta step. -/
def CentralBinomialThetaDifferenceTarget : Prop :=
  ∀ n : Nat,
    chebyshevTheta (2 * n) - chebyshevTheta n ≤
      (n : Real) * Real.log 4

end AnalyticNumberTheory
end Rebuild
end Folder
```
