# Complete source: GRWTSK.NumberTheory.Zeta.Riemann.LinearMomentComponents

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `1e9ab1ac33a12c4833362bc4932e0ed34279fbd2` · SHA-256 `13cb0aa5c09068f8248826c4206b883a931138bf561bdc24172d511c04c86a1c`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/- Copyright (c) 2026 grwtsk contributors. MIT.
Human mathematical direction: grwtsk contributors. Formalization assistance: OpenAI Codex.
Mathlib results retain their upstream authorship and Apache-2.0 license. -/
import GRWTSK.Spectral.Sheaf.RationalMomentFredholmBridge
import Mathlib.NumberTheory.LSeries.Dirichlet

set_option autoImplicit false

/-!
# Riemann zeta from rational multiplication moments

This file connects the prime-free rational convolution interface to the classical analytic
Dirichlet series on its absolutely convergent half-plane. The zeta arithmetic function is
the all-positive-integer moment, while the Möbius moment is its convolution inverse.
After coefficient extension to `ℂ`, their L-series are respectively `ζ(s)` and `ζ(s)⁻¹`
for `1 < re s`.

This does not identify a sheaf transfer operator or finite Fredholm determinant with the
Riemann zeta function. Such an identification, spectral completeness, continuation beyond
the half-plane of absolute convergence, and any critical-line consequence remain separate
analytic obligations.
-/

namespace GRWTSK.NumberTheory.Zeta.Riemann.LinearMomentComponents

open GRWTSK.NumberTheory.ArithmeticFunctions.RationalMomentAlgebra

/-- Extend a rational multiplication-moment coefficient system to complex coefficients. -/
def complexify (moment : Moment) : ArithmeticFunction ℂ :=
  ⟨fun n => (moment n : ℂ), by simp⟩

@[simp]
theorem complexify_apply (moment : Moment) (n : ℕ) :
    complexify moment n = (moment n : ℂ) :=
  rfl

@[simp]
theorem complexify_zetaMoment :
    complexify zetaMoment =
      (ArithmeticFunction.zeta : ArithmeticFunction ℂ) := by
  ext n
  cases n <;> simp [complexify, zetaMoment, ArithmeticFunction.zeta_apply]

@[simp]
theorem complexify_mobiusMoment :
    complexify mobiusMoment =
      (ArithmeticFunction.moebius : ArithmeticFunction ℂ) := by
  ext n
  simp [complexify, mobiusMoment]

/-- The all-positive-integer rational moment has the Riemann zeta Dirichlet series. -/
theorem zetaMoment_lseries_eq_riemannZeta (s : ℂ) (hs : 1 < s.re) :
    LSeries (complexify zetaMoment) s = riemannZeta s := by
  rw [complexify_zetaMoment]
  exact ArithmeticFunction.LSeries_zeta_eq_riemannZeta hs

/-- The Möbius rational moment has the reciprocal zeta Dirichlet series. -/
theorem mobiusMoment_lseries_eq_inv_riemannZeta (s : ℂ) (hs : 1 < s.re) :
    LSeries (complexify mobiusMoment) s = (riemannZeta s)⁻¹ := by
  rw [complexify_mobiusMoment]
  change LSeries (fun n => (ArithmeticFunction.moebius n : ℂ)) s = _
  have identity := ArithmeticFunction.LSeries_zeta_mul_Lseries_moebius hs
  rw [ArithmeticFunction.LSeries_zeta_eq_riemannZeta hs] at identity
  exact eq_inv_of_mul_eq_one_left (by simpa only [mul_comm] using identity)

end GRWTSK.NumberTheory.Zeta.Riemann.LinearMomentComponents
```
