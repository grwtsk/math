/- Copyright (c) 2026 grwtsk contributors. MIT. -/
import Mathlib.Data.Fintype.BigOperators
import Mathlib.Data.Rat.Defs
import Mathlib.Algebra.Order.Field.Rat
import Mathlib.Tactic.NormNum

/-!
# Rational interpolation budget for sixteen quarter-height brackets

These are the first sixteen quarter-height sign brackets in
`scripts/verify_xi_shifted_hankel.py`. The interval assignment to actual
zeta zeros uses the external sign and zero-count results. The statements
here concern the specified rational intervals and the shift-47 scalar
budget used in the interpolation estimate.
-/

namespace GRWTSK.NumberTheory.XiHankelTailBudget

open scoped BigOperators

/-- Each upper endpoint is the following numerator divided by four. -/
def rightNumerator (i : Fin 16) : ℕ :=
  #[57, 85, 101, 122, 132, 151, 164, 174, 193, 200, 212, 226, 238, 244, 261, 269][i.val]'i.isLt

def leftHeight (i : Fin 16) : ℚ := (rightNumerator i - 1 : ℕ) / (4 : ℚ)

def rightHeight (i : Fin 16) : ℚ := rightNumerator i / (4 : ℚ)

def nodeLow (i : Fin 16) : ℚ := 1 / rightHeight i ^ 2

def nodeHigh (i : Fin 16) : ℚ := 1 / leftHeight i ^ 2

def tailRadius : ℚ := 1 / 100 ^ 2

/-- A lower bound on the modulus of the difference of two enclosed nodes. -/
def separation (i j : Fin 16) : ℚ :=
  max (nodeLow i - nodeHigh j) (nodeLow j - nodeHigh i)

def basisBound (i : Fin 16) : ℚ :=
  ∏ j ∈ Finset.univ.erase i, (tailRadius + nodeHigh j) / separation i j

set_option maxRecDepth 100000 in
theorem bracket_bounds : ∀ i : Fin 16,
    0 < leftHeight i ∧ leftHeight i < rightHeight i ∧
    tailRadius < nodeLow i ∧ nodeLow i < nodeHigh i := by decide +kernel

set_option maxRecDepth 100000 in
theorem separation_pos : ∀ i j : Fin 16, i ≠ j → 0 < separation i j := by decide +kernel

set_option maxRecDepth 100000 in
set_option maxHeartbeats 0 in
theorem budget_lt :
    (1 / 20 : ℚ) * tailRadius ^ 46 * (∑ i : Fin 16, basisBound i ^ 2 / nodeLow i ^ 47) <
      79 / 100 := by decide +kernel

end GRWTSK.NumberTheory.XiHankelTailBudget
