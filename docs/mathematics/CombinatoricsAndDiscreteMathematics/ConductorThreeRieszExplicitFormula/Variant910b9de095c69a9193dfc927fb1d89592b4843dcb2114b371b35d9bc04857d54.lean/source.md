# Complete source: GRWTSK.CombinatoricsAndDiscreteMathematics.ConductorThreeRieszExplicitFormula.Variant910b9de095c69a9193dfc927fb1d89592b4843dcb2114b371b35d9bc04857d54

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `61ab8c25c28cfb3e3f66fc30a468866745786f13` · SHA-256 `910b9de095c69a9193dfc927fb1d89592b4843dcb2114b371b35d9bc04857d54`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
module

public meta import Surface.Core.Classification
public import Surface.Core.ConductorThreeCriticalPredicates
import Mathlib.Tactic

/-!
# First Riesz mean and the honest unsmoothing boundary

The first Riesz mean gives the convergent Perron kernel `1 / (s * (s + 1))`.
This module defines that finite arithmetic object and proves its exact forward
difference identity.

A crucial quantitative distinction is recorded explicitly: a standalone
bound `R_1(x) = O(x^(3/2) log(x)^2)` at two endpoints does **not** imply the
critical `Psi` bound by the triangle inequality.  The proof needs a bound for
the *finite difference of the explicit zero formula* (or equivalent local
control), where subtraction is performed before estimating the zero sum.
`GRHRieszFiniteDifferenceEstimate` names precisely that remaining forward
analytic obligation.
-/

public section

namespace Surface.Core.ConductorThreeRieszExplicitFormula

noncomputable section

open scoped BigOperators
open Surface.Core.AnalyticPrimeWalk
open Surface.Core.ConductorThreeCriticalPredicates
open Surface.Core.ConductorThreeVonMangoldt

/-- The first finite Riesz mean
`sum_{n <= x} chi_3(n) Lambda(n) (x - n)`. -/
@[expose]
def conductorThreeRieszMeanOne (x : ℕ) : ℝ :=
  ∑ n ∈ Finset.range (x + 1),
    twistedVonMangoldtThree n * ((x : ℝ) - n)

/-- The new-coefficient contribution between `x` and `x + h`. -/
@[expose]
def conductorThreeRieszDifferenceTail (x h : ℕ) : ℝ :=
  ∑ n ∈ Finset.Ico (x + 1) (x + h + 1),
    twistedVonMangoldtThree n * (((x + h : ℕ) : ℝ) - n)

/-- Exact finite-difference identity.  It is the correct algebraic joint for
unsmoothing: the first term contains the desired sharp sum, while the second
term is a short arithmetic tail. -/
@[surface_novel, surface_published]
theorem conductorThreeRieszMeanOne_add_sub :
    ∀ x h : ℕ,
      conductorThreeRieszMeanOne (x + h) -
          conductorThreeRieszMeanOne x =
        (h : ℝ) * conductorThreePsi x +
          conductorThreeRieszDifferenceTail x h := by
  intro x h
  unfold conductorThreeRieszMeanOne conductorThreeRieszDifferenceTail
  rw [← Finset.sum_range_add_sum_Ico
    (fun n ↦ twistedVonMangoldtThree n * (((x + h : ℕ) : ℝ) - n))
    (show x + 1 ≤ x + h + 1 by omega)]
  have hMain :
      (∑ n ∈ Finset.range (x + 1),
          twistedVonMangoldtThree n * (((x + h : ℕ) : ℝ) - n)) -
        (∑ n ∈ Finset.range (x + 1),
          twistedVonMangoldtThree n * ((x : ℝ) - n)) =
        (h : ℝ) * conductorThreePsi x := by
    rw [← Finset.sum_sub_distrib]
    simp_rw [show ∀ n : ℕ,
        twistedVonMangoldtThree n * (((x + h : ℕ) : ℝ) - n) -
            twistedVonMangoldtThree n * ((x : ℝ) - n) =
          (h : ℝ) * twistedVonMangoldtThree n by
        intro n
        push_cast
        ring]
    rw [← Finset.mul_sum]
    rfl
  calc
    ((∑ n ∈ Finset.range (x + 1),
        twistedVonMangoldtThree n * (((x + h : ℕ) : ℝ) - n)) +
        ∑ n ∈ Finset.Ico (x + 1) (x + h + 1),
          twistedVonMangoldtThree n * (((x + h : ℕ) : ℝ) - n)) -
        ∑ n ∈ Finset.range (x + 1),
          twistedVonMangoldtThree n * ((x : ℝ) - n) =
      ((∑ n ∈ Finset.range (x + 1),
          twistedVonMangoldtThree n * (((x + h : ℕ) : ℝ) - n)) -
        ∑ n ∈ Finset.range (x + 1),
          twistedVonMangoldtThree n * ((x : ℝ) - n)) +
        ∑ n ∈ Finset.Ico (x + 1) (x + h + 1),
          twistedVonMangoldtThree n * (((x + h : ℕ) : ℝ) - n) := by
        ring
    _ = (h : ℝ) * conductorThreePsi x +
        ∑ n ∈ Finset.Ico (x + 1) (x + h + 1),
          twistedVonMangoldtThree n * (((x + h : ℕ) : ℝ) - n) := by
      rw [hMain]

/-- The forward analytic obligation after smoothing.  The intended proof
uses the completed conductor-three functional equation, zero counting, and a
finite difference of the Riesz explicit formula *before* absolute values are
taken. -/
@[expose]
def GRHRieszFiniteDifferenceEstimate : Prop :=
  GRHForConductorThreeCharacter → TwistedPsiCriticalBound

/-- This name is deliberately only an adapter: no explicit-formula theorem is
installed by the project. -/
@[surface_adapter, surface_published]
theorem grh_implies_twistedPsiCriticalBound_of_rieszDifference
    (hRiesz : GRHRieszFiniteDifferenceEstimate) :
    GRHForConductorThreeCharacter → TwistedPsiCriticalBound :=
  hRiesz

end

end Surface.Core.ConductorThreeRieszExplicitFormula
```
