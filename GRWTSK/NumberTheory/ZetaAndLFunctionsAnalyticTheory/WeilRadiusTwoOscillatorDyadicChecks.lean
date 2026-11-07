/-
Copyright (c) 2026 grwtsk contributors.
Released under the MIT license as described in the repository LICENSE.
Authors: grwtsk contributors
-/
import Mathlib.Data.Rat.Cast.Order
import Mathlib.Tactic.FieldSimp
import Mathlib.Tactic.Linarith
import Mathlib.Tactic.NormNum
import Mathlib.Tactic.Positivity
import Mathlib.Tactic.Ring

/-!
# Exact common denominators for radius-two oscillator observations

The source comparisons use a 50-bit boundary and reciprocal, two
130-bit weighted sums, and a 49-bit frozen center. Multiplication by
the positive common denominator preserves the one-sided comparisons.

Local attribution is to grwtsk contributors.
Independent mathematical review and novelty assessment are pending.
-/

set_option autoImplicit false

namespace GRWTSK.NumberTheory.WeilQuadraticForm.RadiusTwoOscillatorDyadicChecks

theorem signal_iff_integer (b r y s : ℤ) :
    |-(b:ℚ)/2^50 - ((r:ℚ)/2^50)*((y:ℚ)/2^130) - (s:ℚ)/2^49| ≤ 3/10^7 ↔
      |-b*2^130-r*y-s*2^131| * 10^7 ≤ 3*2^180 := by
  have h : -(b:ℚ)/2^50 - ((r:ℚ)/2^50)*((y:ℚ)/2^130) - (s:ℚ)/2^49 =
      ((-b*2^130-r*y-s*2^131 : ℤ):ℚ)/2^180 := by
    push_cast
    ring
  rw [h, abs_div, abs_of_pos (by positivity : (0:ℚ)<2^180),
    div_le_iff₀ (by positivity : (0:ℚ)<2^180)]
  rw [show (3:ℚ)/10^7 * 2^180 = (3*2^180)/10^7 by ring,
    le_div_iff₀ (by positivity : (0:ℚ)<10^7)]
  norm_cast

def diagonalNumerator (n : ℕ) (g x r y c : ℤ) : ℤ :=
  g*n*2^130-((n:ℤ)*x*2^50+r*y)-c*n*2^131

theorem diagonal_sub_center (n : ℕ) (hn : 0 < n) (g x r y c : ℤ) :
    (g:ℚ)/2^50 - ((x:ℚ)/2^130 + ((r:ℚ)/2^50)*((y:ℚ)/2^130)/(n:ℚ)) -
      (c:ℚ)/2^49 = (diagonalNumerator n g x r y c:ℚ)/((n:ℚ)*2^180) := by
  have h : (n:ℚ) ≠ 0 := by exact_mod_cast (Nat.ne_of_gt hn)
  unfold diagonalNumerator
  push_cast
  field_simp
  ring

theorem diagonal_iff_integer (n : ℕ) (hn : 0 < n) (gLo gHi x r y c : ℤ) :
    let prime := (x:ℚ)/2^130+((r:ℚ)/2^50)*((y:ℚ)/2^130)/(n:ℚ)
    ((c:ℚ)/2^49-7/1000 ≤ (gLo:ℚ)/2^50-prime ∧
      (gHi:ℚ)/2^50-prime ≤ (c:ℚ)/2^49+7/1000) ↔
    (-(7*((n:ℤ)*2^180)) ≤ 1000*diagonalNumerator n gLo x r y c ∧
      1000*diagonalNumerator n gHi x r y c ≤ 7*((n:ℤ)*2^180)) := by
  dsimp only
  have hnq : (0:ℚ) < (n:ℚ) := by exact_mod_cast hn
  have hD : (0:ℚ) < (n:ℚ)*2^180 := by positivity
  rw [show (c:ℚ)/2^49-7/1000 ≤ (gLo:ℚ)/2^50-
      ((x:ℚ)/2^130+((r:ℚ)/2^50)*((y:ℚ)/2^130)/(n:ℚ)) ↔
      -(7/1000:ℚ) ≤ (gLo:ℚ)/2^50-
        ((x:ℚ)/2^130+((r:ℚ)/2^50)*((y:ℚ)/2^130)/(n:ℚ))-(c:ℚ)/2^49
      by constructor <;> intro h <;> linarith only [h]]
  rw [← sub_le_iff_le_add', diagonal_sub_center n hn, diagonal_sub_center n hn]
  rw [le_div_iff₀ hD, div_le_iff₀ hD]
  have hUpper : (7:ℚ)/1000*((n:ℚ)*2^180) = (7*((n:ℚ)*2^180))/1000 := by ring
  have hLower : -(7/1000:ℚ)*((n:ℚ)*2^180) = -(7*((n:ℚ)*2^180))/1000 := by ring
  rw [hLower,hUpper,div_le_iff₀ (by positivity : (0:ℚ)<1000),
    le_div_iff₀ (by positivity : (0:ℚ)<1000)]
  rw [mul_comm (diagonalNumerator n gLo x r y c:ℚ), mul_comm (diagonalNumerator n gHi x r y c:ℚ)]
  norm_cast

end GRWTSK.NumberTheory.WeilQuadraticForm.RadiusTwoOscillatorDyadicChecks
