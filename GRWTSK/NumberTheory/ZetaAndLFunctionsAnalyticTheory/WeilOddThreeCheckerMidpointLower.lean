/-
Copyright (c) 2026 grwtsk contributors.
Released under the MIT license as described in the repository LICENSE.
Authors: grwtsk contributors. Development provenance: AI-assisted.
-/
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.WeilOddThreeCheckerGammaLower
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.WeilOddThreeCheckerNativeIntervals
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.WeilOddThreeMultiplierTail

/-!
# The original radius-one checker midpoint lower bound

The integer midpoint matches `scripts/verify_odd_three_sine_hs.py` (blob
`b35434bed50c8a6ba218d01575e1964cae9a93e6`, lines 127 and 132–135).
The gamma and signed native prime bounds use the same center `(2k+1)/256`.
The native bound charges the single reserve of `10^6` scaled units.
The base estimate for `1 + gammaConstant 3 1` is an explicit hypothesis.
The result supplies the midpoint lower bound for `q3_sine_deficit_le_midpoint`.
-/

set_option autoImplicit false

open scoped BigOperators

namespace GRWTSK.NumberTheory.WeilQuadraticForm.OddThreeSineHilbertSchmidt.CheckerRounding

open LowSchur OddRootProjection OddMultiplierBounds OddThreeFullSignedShift

/-- The signed integer midpoint before the whole-cell variation allowance. -/
def checkerMidpointLower (k : Fin 32768) : ℤ :=
  -133 * scale / 1000 + CheckerGamma.gammaLower (2 * (k.val : ℤ) + 1) 256 -
    scale / 10 ^ (6 : ℕ) + roundedPrimeMidpoint k

/-- With the source base estimate, the literal midpoint is a lower bound on
the complete original odd conductor-three multiplier at the center of its cell. -/
theorem checkerMidpointLower_le_q3SineMultiplier
    (χ : DirichletCharacter ℂ 3) (hodd : gammaParity χ = 1)
    (hbase : (-133 / 1000 : ℝ) ≤ 1 + gammaConstant 3 1) (k : Fin 32768) :
    (checkerMidpointLower k : ℝ) / (scale : ℝ) ≤ q3SineMultiplier χ (checkerMidpoint k) := by
  have hs : 0 < (scale : ℝ) := by norm_num [scale]
  have hb : ((-133 * scale / 1000 : ℤ) : ℝ) / (scale : ℝ) ≤ 1 + gammaConstant 3 1 := by
    norm_num [scale]
    simpa only [neg_div] using hbase
  have hg : (CheckerGamma.gammaLower (2 * (k.val : ℤ) + 1) 256 : ℝ) / (scale : ℝ) ≤
      periodicMultiplier 1 (checkerMidpoint k) := by
    simpa only [checkerMidpoint, Int.cast_add, Int.cast_mul, Int.cast_natCast, Int.cast_ofNat,
      Int.cast_one] using CheckerGamma.gammaLower_le_periodicMultiplier
        (2 * (k.val : ℤ) + 1) 256 (by norm_num)
  have hp : ((roundedPrimeMidpoint k - scale / 10 ^ (6 : ℕ) : ℤ) : ℝ) / (scale : ℝ) ≤
      -2 * ∑ n ∈ activePrimePowers 1, pairedPrimeWeight χ n *
        Real.cos (Real.log (n : ℝ) * checkerMidpoint k) := by
    apply (div_le_iff₀ hs).2
    convert certified_roundedPrimeMidpoint_with_reserve_le_native χ hodd k using 1
    ring
  simp only [Int.cast_sub, sub_div] at hp
  simp only [checkerMidpointLower, Int.cast_add, Int.cast_sub, add_div, sub_div,
    q3SineMultiplier, hodd]
  linarith only [hb, hg, hp]

end GRWTSK.NumberTheory.WeilQuadraticForm.OddThreeSineHilbertSchmidt.CheckerRounding
