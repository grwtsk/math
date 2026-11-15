/-
Copyright (c) 2026 grwtsk contributors.
Released under the MIT license as described in the repository LICENSE.
Authors: grwtsk contributors. Development provenance: AI-assisted.
-/
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.WeilOddSineCheckerTriangle
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.WeilOddThreeCheckerGammaLower
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.WeilOddSineCheckerMidpoint

/-!
# Support data for the conductor-three checker

The sign checks use the literal integer midpoint in
`scripts/verify_odd_three_sine_hs.py`, blob
`b35434bed50c8a6ba218d01575e1964cae9a93e6`, lines 127–139. The rows are
in global frequency order, including gaps between retained intervals.
The proposed intervals are checked against every sign by the block proofs.
-/

set_option autoImplicit false

namespace GRWTSK.NumberTheory.WeilQuadraticForm.OddThreeSineHilbertSchmidt.CheckerTriangle

open CheckerRounding (scale roundedPrimeMidpoint)

private def literalMidpoint (i : Fin 32768) : ℤ :=
  -133 * scale / 1000 + CheckerGamma.gammaLower (2 * (i.val : ℤ) + 1) 256 -
    scale / 10 ^ (6 : ℕ) + roundedPrimeMidpoint i

/-- The signed price in the retention test, before clipping. -/
def literalRawDeficit (i : Fin 32768) : ℤ := rawDeficit literalMidpoint i

/-- Candidate closed intervals for the retained global indices. -/
def retainedRuns : List (ℕ × ℕ) :=
  [(0, 96), (284, 479), (666, 853), (1177, 1294), (1610, 1795), (2790, 2913),
    (4110, 4199), (5271, 5331), (6208, 6270), (8652, 8758), (13225, 13271),
    (15678, 15741), (20236, 20275)]

def inRetainedRuns (i : Fin 32768) : Bool :=
  retainedRuns.any fun p => p.1 ≤ i.val && i.val ≤ p.2

def supportIndex (block : Fin 128) (offset : Fin 256) : Fin 32768 :=
  ⟨256 * block.val + offset.val, by omega⟩

/-- All 256 sign comparisons in one block, including the omitted cells. -/
def supportBlockCheck (block : Fin 128) : Prop :=
  ∀ offset : Fin 256,
    decide (0 < literalRawDeficit (supportIndex block offset)) =
      inRetainedRuns (supportIndex block offset)

instance (block : Fin 128) : Decidable (supportBlockCheck block) := by
  unfold supportBlockCheck
  infer_instance

theorem literalRawDeficit_eq (m : Fin 32768 → ℤ)
    (hm : ∀ i, m i = -133 * scale / 1000 +
      CheckerGamma.gammaLower (2 * (i.val : ℤ) + 1) 256 -
        scale / 10 ^ (6 : ℕ) + roundedPrimeMidpoint i) (i : Fin 32768) :
    literalRawDeficit i = rawDeficit m i := by
  unfold literalRawDeficit rawDeficit
  rw [hm, literalMidpoint]

end GRWTSK.NumberTheory.WeilQuadraticForm.OddThreeSineHilbertSchmidt.CheckerTriangle
