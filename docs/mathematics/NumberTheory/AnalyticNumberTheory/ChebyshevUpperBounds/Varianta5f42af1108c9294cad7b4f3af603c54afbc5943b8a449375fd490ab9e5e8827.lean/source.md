# Complete source: GRWTSK.NumberTheory.AnalyticNumberTheory.ChebyshevUpperBounds.Varianta5f42af1108c9294cad7b4f3af603c54afbc5943b8a449375fd490ab9e5e8827

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `683ba3ebf7aed383f8559a95c9097ebd43e16cd2` · SHA-256 `a5f42af1108c9294cad7b4f3af603c54afbc5943b8a449375fd490ab9e5e8827`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Folder.Rebuild.AnalyticNumberTheory.ChebyshevDyadicUpper

/-!
# Folder.Rebuild.AnalyticNumberTheory.ChebyshevUpperBounds

Checked linear upper bound for Chebyshev theta.
-/

namespace Folder
namespace Rebuild
namespace AnalyticNumberTheory

/--
Checked Chebyshev-type linear upper bound for `theta(N)`.

This is a pre-PNT estimate obtained from central binomial coefficients and
dyadic summation. It is not PNT and does not use analytic continuation,
zero-free regions, RH, or generalized RH.
-/
theorem chebyshevTheta_linear_upper :
    ∃ C : Real, 0 < C ∧ ∀ N : Nat, chebyshevTheta N ≤ C * N := by
  exact chebyshevTheta_linear_upper_from_dyadic
    chebyshevTheta_two_mul_sub_theta_le_n_log_four

theorem ChebyshevThetaUpperBoundTarget_checked :
    ChebyshevThetaUpperBoundTarget := by
  exact chebyshevTheta_linear_upper

/-- Theorem target for the corresponding psi linear upper bound. -/
def ChebyshevPsiLinearUpperBoundTarget : Prop :=
  ∃ C : Real, 0 < C ∧ ∀ N : Nat, chebyshevPsi N ≤ C * N

/-- Theorem target for a weak linear prime-counting upper bound. -/
def PrimeCountingLinearUpperBoundTarget : Prop :=
  ∃ C : Real, 0 < C ∧ ∀ N : Nat, (primeCounting N : Real) ≤ C * N

end AnalyticNumberTheory
end Rebuild
end Folder
```
