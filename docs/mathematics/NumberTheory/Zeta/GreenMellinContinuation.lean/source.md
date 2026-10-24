# Complete source: GRWTSK.NumberTheory.Zeta.GreenMellinContinuation

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `4d5ca3ac5b2d554941613a61dcb3ef65b444e842` · SHA-256 `b43b4e97b3a64ee269b8ea77c473978525b02c6c32ac6c3e7fc907df6958466a`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Copyright (c) 2026 grwtsk contributors. Released under the MIT license.
Research direction: grwtsk contributors. Formalization assistance: ChatGPT.
Lean and Mathlib retain their original attribution and licenses.
Status: candidate proof source; not elaborated in the pinned environment.
-/
import GRWTSK.NumberTheory.VonMangoldt.DyadicEulerIdentification
import GRWTSK.NumberTheory.VonMangoldt.DyadicMellinConvergence

/-! # A specified continuation, not a totalized quotient

The continued function is the already declared blockSeries. Under the original
energy estimate it is holomorphic on Re(s)>1/2; unconditionally it agrees with
the regularized logarithmic derivative on Re(s)>1. At s=1 it is NOT defined by
substituting totalized division into that quotient.

This module does not prove zero exclusion or the RH-return goal. Extending the
local quotient identity across potential zeros is a separate analytic step.
-/
set_option autoImplicit false
noncomputable section
namespace GRWTSK.NumberTheory.Zeta.GreenMellinContinuation
open GRWTSK.NumberTheory.VonMangoldt.DyadicDiscrepancy
open GRWTSK.NumberTheory.VonMangoldt.DyadicEulerIdentification
open GRWTSK.NumberTheory.VonMangoldt.DyadicMellinConvergence
open GRWTSK.NumberTheory.Zeta.DyadicGreenSpecifications

/-- The actual function and both parts of its analytic-continuation contract. -/
theorem continuation_of_energy (hE : AllDyadicEnergyBound) :
    DifferentiableOn ℂ blockSeries {s : ℂ | 1/2<s.re} ∧
      ∀ s : ℂ, 1<s.re →
        blockSeries s=-(deriv riemannZeta s)/riemannZeta s-1/(s-1) := by
  exact ⟨blockSeries_differentiableOn hE, eulerIdentification⟩

/-- The continuation is analytic at the old pole coordinate. This does not
identify its value with the totalized quotient in the Euler formula. -/
theorem continuation_differentiableAt_one (hE : AllDyadicEnergyBound) :
    DifferentiableAt ℂ blockSeries 1 := by
  have hU : IsOpen {s : ℂ | 1/2<s.re} :=
    isOpen_lt continuous_const Complex.continuous_re
  exact (blockSeries_differentiableOn hE).differentiableAt
    (hU.mem_nhds (by norm_num))

/-- Existence with a named witness, retaining the pole coordinate in the
holomorphic domain. No geometric surrogate is used as the witness. -/
theorem exists_holomorphic_extension (hE : AllDyadicEnergyBound) :
    ∃ F : ℂ → ℂ,
      F=blockSeries ∧
      DifferentiableOn ℂ F {s : ℂ | 1/2<s.re} ∧
      ∀ s : ℂ, 1<s.re → F s=-(deriv riemannZeta s)/riemannZeta s-1/(s-1) := by
  exact ⟨blockSeries, rfl, continuation_of_energy hE⟩

end GRWTSK.NumberTheory.Zeta.GreenMellinContinuation
```
