# Complete source: GRWTSK.Analysis.RealAnalysis.DifferentialCalculus.ConductorThreeCompletedL.Variantc6afae5f706619b01d37d21dfe83b248ddf123070100b298c827a94d91bbc15e

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `8de80594e80e3eb80781fd6b10045322b35bd431` · SHA-256 `c6afae5f706619b01d37d21dfe83b248ddf123070100b298c827a94d91bbc15e`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
module

public meta import Surface.Core.Classification
public import Surface.Core.ConductorThreeCharacterArithmetic
public import Mathlib.Analysis.Complex.CauchyIntegral
public import Mathlib.Analysis.Meromorphic.Divisor
import Mathlib.Tactic

/-!
# Completed conductor-three function and multiplicity-bearing divisor

Mathlib's `DirichletCharacter.completedLFunction` is the usual L-function
times its real Gamma factor.  Since the conductor-three character is odd,
multiplication by `3^((s+1)/2)` gives the standard normalization

`Lambda₃(s) = (3/pi)^((s+1)/2) Gamma((s+1)/2) L(s, chi₃)`.

`conductorThreeXiDivisor` uses mathlib's locally finite meromorphic divisor,
so zero orders are retained as integer multiplicities.  This replaces a plain
set only at the future exact spectral-correspondence boundary; the existing
set of positive ordinates remains appropriate for linear-independence
predicates.
-/

public section

namespace Surface.Core.ConductorThreeCompletedL

noncomputable section

open Set
open Surface.Core.AnalyticPrimeWalk

/-- Standard conductor-three completed L-function. -/
@[expose]
def conductorThreeLambda (s : ℂ) : ℂ :=
  (3 : ℂ) ^ ((s + 1) / 2) *
    DirichletCharacter.completedLFunction conductorThreeCharacter s

/-- Critical-line coordinate of the completed conductor-three function. -/
@[expose]
def conductorThreeXi (z : ℂ) : ℂ :=
  conductorThreeLambda ((1 / 2 : ℂ) + Complex.I * z)

/-- The completed conductor-three function is entire in the presently pinned
API: the character is nontrivial, and both the conductor power and completed
L-function are complex differentiable. -/
@[surface_novel, surface_published]
theorem differentiable_conductorThreeLambda :
    Differentiable ℂ conductorThreeLambda := by
  intro s
  apply DifferentiableAt.mul
  · fun_prop
  · exact DirichletCharacter.differentiable_completedLFunction
      conductorThreeCharacter_ne_one s

@[surface_novel, surface_published]
theorem differentiable_conductorThreeXi :
    Differentiable ℂ conductorThreeXi := by
  unfold conductorThreeXi
  exact differentiable_conductorThreeLambda.fun_comp (by fun_prop)

/-- Locally finite zero divisor of `Xi₃`, retaining analytic multiplicity. -/
@[expose]
def conductorThreeXiDivisor :=
  MeromorphicOn.divisor conductorThreeXi (Set.univ : Set ℂ)

/-- Analyticity rules out negative divisor coefficients (poles). -/
@[surface_novel, surface_published]
theorem conductorThreeXiDivisor_nonneg :
    0 ≤ conductorThreeXiDivisor := by
  have hAnalytic : AnalyticOnNhd ℂ conductorThreeXi (Set.univ : Set ℂ) :=
    differentiable_conductorThreeXi.differentiableOn.analyticOnNhd
      isOpen_univ
  exact MeromorphicOn.AnalyticOnNhd.divisor_nonneg hAnalytic

end

end Surface.Core.ConductorThreeCompletedL
```
