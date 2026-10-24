# Complete source: GRWTSK.Analysis.RealAnalysis.DifferentialCalculus.Polynomial.Variant4915e74b05c86f982552379719d2b0ae77896a8fafda21cd75460124ee521300

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `71da42e00216f0577507a3531c4d15e5ec32b23a` · SHA-256 `4915e74b05c86f982552379719d2b0ae77896a8fafda21cd75460124ee521300`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
module

public import Mathlib.Analysis.Calculus.Deriv.Polynomial
public import Mathlib.Analysis.Calculus.LogDeriv
public import Mathlib.Analysis.SpecialFunctions.Complex.LogDeriv

/-!
# Polynomial derivatives and logarithmic derivatives

Auxiliary derivative identities for exponential polynomials, used in the polynomial factor
appearing in Hadamard products.
-/

@[expose] public section

namespace Polynomial

/-- The logarithmic derivative of the exponential of a complex polynomial is the polynomial
derivative. -/
theorem logDeriv_exp_eval (P : ℂ[X]) (z : ℂ) :
    logDeriv (fun w : ℂ => Complex.exp (Polynomial.eval w P)) z =
      Polynomial.eval z P.derivative := by
  have hderiv :
      deriv (fun w : ℂ => Complex.exp (Polynomial.eval w P)) z =
        Complex.exp (Polynomial.eval z P) * Polynomial.eval z P.derivative := by
    simpa [Function.comp_def, mul_comm] using
      ((Complex.hasDerivAt_exp (Polynomial.eval z P)).comp z (P.hasDerivAt z)).deriv
  rw [logDeriv_apply, hderiv]
  field_simp [Complex.exp_ne_zero (Polynomial.eval z P)]

end Polynomial
```
