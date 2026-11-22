/-
Copyright (c) 2026 grwtsk contributors.
Released under the MIT license as described in the repository LICENSE.
Authors: grwtsk contributors
-/
import Mathlib.Analysis.SpecialFunctions.Pow.Real
import Mathlib.Tactic.FieldSimp
import Mathlib.Tactic.GCongr
import Mathlib.Tactic.Linarith
import Mathlib.Tactic.Positivity
import Mathlib.Tactic.Ring

/-!
# The scalar cost calculation in a proposed theta-multiplicity argument

This module independently reconstructs the real inequality called
`GrowthSizeBound` in Levent Alpöge's announced formalization, mirrored at
Deicyde/riemann-hypothesis, revision
`a172c464fd4bcfc4f53e394dcba45d742b1409a6`. The source contract is in
`Formalism/SizeWindowBrackets/GrowthBoundGivesRiemannHypothesis.lean`.
The external proof is neither imported nor used.

The exact hypotheses remain visible in `SizeWindows`. The four contributions
to the error are bounded by coefficients `2, 2, 4, 2` times
`x ^ (1/2 + 13*ε/8) * nT*m*b`. Inverting the second density costs an
additional `x^ε`. The factor 26 is finally absorbed by `x^(3*ε/8)`.
All bounds hold for every positive ε; no upper bound on ε is needed.

The mathematical consumer is the scalar final step of the external
`ChainCore`/`GrowthSizeBound` route. Constructing arithmetic objects that
satisfy these hypotheses for the actual weighted prime sum remains a separate
obligation. This file contains no statement or proof of RH, no automorphic
construction, and no imported external mathematical theorem.
-/

set_option autoImplicit false

namespace GRWTSK.ThetaMultiplicityCost

/-- Exact numerical window contract from the announced argument. In particular,
the two densities, the lift count, and the dimension parameter are separate. -/
def SizeWindows (C ε x : ℝ) (n nT nT2 m : ℕ)
    (b k aE Err : ℝ) : Prop :=
  3 ≤ x ∧ 0 < ε ∧ 0 ≤ C ∧ 0 < n ∧ 0 < b ∧
  0 ≤ aE ∧ aE ≤ 2 * x * b ∧
  x ^ (-(ε / 8)) * n / 2 ≤ nT ∧
  x ^ (-ε) ≤ (nT2 : ℝ) / n ∧ nT2 ≤ n ∧
  x ^ ((1 : ℝ) / 2 - ε) ≤ m ∧
  (m : ℝ) ≤ x ^ ((1 : ℝ) / 2 + ε / 2) ∧
  x * m ≤ k ∧ k ≤ (n : ℝ) ^ 2 * x ^ ((1 : ℝ) / 2 - ε) ∧
  Err ≤ x ^ (C * ε) *
    ((nT : ℝ) * aE * (1 + (m : ℝ) ^ 2 / k)
      + m * ((2 * n) * m * b * x ^ ε
        + nT2 * k * b * x ^ ε / (n * (n * x ^ (-ε))))) ∧
  26 ≤ x ^ (3 * ε / 8)

/-- Exact scalar implication, with no arithmetic or spectral input suppressed. -/
def GrowthSizeBound : Prop :=
  ∀ (C ε x : ℝ) (n nT nT2 m : ℕ) (b k aE Err Gx : ℝ),
    SizeWindows C ε x n nT nT2 m b k aE Err →
    (nT : ℝ) * m * b * (((nT2 : ℝ) / n) / 2) *
        (Gx - 4 * x ^ ((1 : ℝ) / 2 + ε))
      ≤ Err + 2 * (nT : ℝ) * m * b / x →
    Gx ≤ x ^ ((1 : ℝ) / 2 + (C + 3) * ε)

/-- An ordered-field estimate for the four costs, before substituting powers.
It separates all denominator positivity from the growth calculations. -/
private theorem four_costs_le {x n t u m b k a r v w Y : ℝ}
    (hn : 0 < n) (ht : 0 ≤ t) (_hu : 0 ≤ u) (hm : 0 ≤ m)
    (hb : 0 ≤ b) (hk : 0 < k) (_hr : 0 ≤ r) (hv : 0 ≤ v)
    (hw : 0 ≤ w) (hY : 1 ≤ Y) (ha : a ≤ 2 * x * b)
    (hx : x ≤ m * Y) (hxm : x * m ≤ k)
    (hnt : n ≤ 2 * t * r) (hu_n : u ≤ n)
    (hk_n : k ≤ n ^ 2 * w)
    (hmrv : m * r * v ≤ Y) (hrwv : r * w * v ^ 2 ≤ Y) :
    t * a * (1 + m ^ 2 / k) +
        m * (2 * n * m * b * v + u * k * b * v ^ 2 / n ^ 2)
      ≤ 10 * Y * (t * m * b) := by
  have hQ : 0 ≤ t * m * b := by positivity
  have hfirst : t * a ≤ 2 * Y * (t * m * b) := by
    calc
      t * a ≤ t * (2 * x * b) := mul_le_mul_of_nonneg_left ha ht
      _ ≤ t * (2 * (m * Y) * b) := by gcongr
      _ = 2 * Y * (t * m * b) := by ring
  have hsecond : t * a * (m ^ 2 / k) ≤ 2 * Y * (t * m * b) := by
    have hnum : t * a * m ^ 2 ≤ 2 * (t * m * b) * k := by
      calc
        t * a * m ^ 2 ≤ t * (2 * x * b) * m ^ 2 := by gcongr
        _ = 2 * (t * m * b) * (x * m) := by ring
        _ ≤ 2 * (t * m * b) * k :=
          mul_le_mul_of_nonneg_left hxm (by positivity)
    calc
      t * a * (m ^ 2 / k) = (t * a * m ^ 2) / k := by ring
      _ ≤ 2 * (t * m * b) := (div_le_iff₀ hk).2 hnum
      _ ≤ 2 * Y * (t * m * b) := by
        calc
          2 * (t * m * b) = 2 * 1 * (t * m * b) := by ring
          _ ≤ 2 * Y * (t * m * b) := by gcongr
  have hnm : n * m * v ≤ 2 * t * Y := by
    calc
      n * m * v ≤ (2 * t * r) * m * v := by gcongr
      _ = (2 * t) * (m * r * v) := by ring
      _ ≤ (2 * t) * Y := mul_le_mul_of_nonneg_left hmrv (by positivity)
  have hthird : m * (2 * n * m * b * v) ≤ 4 * Y * (t * m * b) := by
    calc
      m * (2 * n * m * b * v) = (2 * m * b) * (n * m * v) := by ring
      _ ≤ (2 * m * b) * (2 * t * Y) :=
        mul_le_mul_of_nonneg_left hnm (by positivity)
      _ = 4 * Y * (t * m * b) := by ring
  have hsmall : n * w * v ^ 2 ≤ 2 * t * Y := by
    calc
      n * w * v ^ 2 ≤ (2 * t * r) * w * v ^ 2 := by gcongr
      _ = (2 * t) * (r * w * v ^ 2) := by ring
      _ ≤ (2 * t) * Y := mul_le_mul_of_nonneg_left hrwv (by positivity)
  have hlastNum : u * k * v ^ 2 ≤ (2 * t * Y) * n ^ 2 := by
    calc
      u * k * v ^ 2 ≤ n * (n ^ 2 * w) * v ^ 2 := by gcongr
      _ = n ^ 2 * (n * w * v ^ 2) := by ring
      _ ≤ n ^ 2 * (2 * t * Y) :=
        mul_le_mul_of_nonneg_left hsmall (sq_nonneg n)
      _ = (2 * t * Y) * n ^ 2 := by ring
  have hfourth : m * (u * k * b * v ^ 2 / n ^ 2) ≤ 2 * Y * (t * m * b) := by
    have hquot : u * k * v ^ 2 / n ^ 2 ≤ 2 * t * Y :=
      (div_le_iff₀ (sq_pos_of_pos hn)).2 hlastNum
    calc
      m * (u * k * b * v ^ 2 / n ^ 2) = (m * b) * (u * k * v ^ 2 / n ^ 2) := by ring
      _ ≤ (m * b) * (2 * t * Y) :=
        mul_le_mul_of_nonneg_left hquot (mul_nonneg hm hb)
      _ = 2 * Y * (t * m * b) := by ring
  calc
    t * a * (1 + m ^ 2 / k) +
        m * (2 * n * m * b * v + u * k * b * v ^ 2 / n ^ 2)
      = t * a + t * a * (m ^ 2 / k) + m * (2 * n * m * b * v) +
          m * (u * k * b * v ^ 2 / n ^ 2) := by ring
    _ ≤ 10 * Y * (t * m * b) := by linarith

/-- The explicit cost before the constant 26 is absorbed. The exponent loss is
`21*ε/8`; this theorem does not establish that any arithmetic object satisfies
the window and leading-term hypotheses. -/
theorem growth_le_twentySix_rpow
    (C ε x : ℝ) (n nT nT2 m : ℕ) (b k aE Err Gx : ℝ)
    (hW : SizeWindows C ε x n nT nT2 m b k aE Err)
    (hLeading : (nT : ℝ) * m * b * (((nT2 : ℝ) / n) / 2) *
        (Gx - 4 * x ^ ((1 : ℝ) / 2 + ε))
      ≤ Err + 2 * (nT : ℝ) * m * b / x) :
    Gx ≤ 26 * x ^ ((1 : ℝ) / 2 + (C + 21 / 8) * ε) := by
  rcases hW with ⟨hx3, hε, hC, hn, hb, _, ha, ht, hδ, hu, hmlo, hmhi,
    hklo, hkhi, hErr, _⟩
  have hx0 : 0 < x := by linarith
  have hx1 : 1 ≤ x := by linarith
  have hn0 : (0 : ℝ) < n := by exact_mod_cast hn
  have powpos (z : ℝ) : 0 < x ^ z := Real.rpow_pos_of_pos hx0 z
  have powmul (z z' : ℝ) : x ^ z * x ^ z' = x ^ (z + z') :=
    (Real.rpow_add hx0 z z').symm
  let r := x ^ (ε / 8)
  let v := x ^ ε
  let w := x ^ ((1 : ℝ) / 2 - ε)
  let X := x ^ ((1 : ℝ) / 2 + ε)
  let Y := x ^ ((1 : ℝ) / 2 + 13 * ε / 8)
  let P := x ^ (C * ε)
  let Q := (nT : ℝ) * m * b
  let δ := (nT2 : ℝ) / n
  have hm0 : (0 : ℝ) < m := lt_of_lt_of_le (powpos _) hmlo
  have ht0 : (0 : ℝ) < nT := lt_of_lt_of_le (by positivity) ht
  have hk0 : 0 < k := lt_of_lt_of_le (mul_pos hx0 hm0) hklo
  have hQ0 : 0 < Q := by dsimp [Q]; positivity
  have hδ0 : 0 < δ := lt_of_lt_of_le (powpos _) hδ
  have hY1 : 1 ≤ Y := Real.one_le_rpow hx1 (by linarith)
  have hP1 : 1 ≤ P := Real.one_le_rpow hx1 (mul_nonneg hC hε.le)
  have hXY : X ≤ Y := Real.rpow_le_rpow_of_exponent_le hx1 (by linarith)
  have hxX : x ≤ (m : ℝ) * X := by
    calc
      x = x ^ ((1 : ℝ) / 2 - ε) * X := by
        dsimp [X]
        rw [powmul, show ((1 : ℝ) / 2 - ε) + ((1 : ℝ) / 2 + ε) = 1 by ring,
          Real.rpow_one]
      _ ≤ (m : ℝ) * X := mul_le_mul_of_nonneg_right hmlo (powpos _).le
  have hxY : x ≤ (m : ℝ) * Y :=
    hxX.trans (mul_le_mul_of_nonneg_left hXY hm0.le)
  have hrinv : x ^ (-(ε / 8)) * r = 1 := by
    dsimp [r]; rw [powmul]; simp
  have hnt : (n : ℝ) ≤ 2 * nT * r := by
    calc
      (n : ℝ) = ((x ^ (-(ε / 8)) * n) / 2) * (2 * r) := by
        calc
          (n : ℝ) = (n : ℝ) * (x ^ (-(ε / 8)) * r) := by rw [hrinv]; ring
          _ = ((x ^ (-(ε / 8)) * n) / 2) * (2 * r) := by ring
      _ ≤ (nT : ℝ) * (2 * r) := mul_le_mul_of_nonneg_right ht (by dsimp [r]; positivity)
      _ = 2 * nT * r := by ring
  have hmrv : (m : ℝ) * r * v ≤ Y := by
    calc
      (m : ℝ) * r * v ≤ x ^ ((1 : ℝ) / 2 + ε / 2) * r * v := by
        gcongr
      _ = Y := by dsimp [r, v, Y]; rw [powmul, powmul]; congr 1; ring
  have hrwv : r * w * v ^ 2 ≤ Y := by
    have heq : r * w * v ^ 2 = x ^ ((1 : ℝ) / 2 + 9 * ε / 8) := by
      dsimp [r, w, v]; rw [pow_two, powmul]; rw [← mul_assoc, powmul, powmul]
      congr 1; ring
    rw [heq]
    exact Real.rpow_le_rpow_of_exponent_le hx1 (by linarith)
  have hcore := four_costs_le hn0 ht0.le (Nat.cast_nonneg nT2) hm0.le hb.le hk0
    (powpos (ε / 8)).le (powpos ε).le (powpos ((1 : ℝ) / 2 - ε)).le
    hY1 ha hxY hklo hnt (show (nT2 : ℝ) ≤ n by exact_mod_cast hu)
    hkhi hmrv hrwv
  have hden : (nT2 : ℝ) * k * b * x ^ ε / (n * (n * x ^ (-ε))) =
      (nT2 : ℝ) * k * b * v ^ 2 / (n : ℝ) ^ 2 := by
    dsimp [v]
    rw [Real.rpow_neg hx0.le]
    field_simp
  have hErr' : Err ≤ 10 * P * Y * Q := by
    calc
      Err ≤ P * ((nT : ℝ) * aE * (1 + (m : ℝ) ^ 2 / k) +
          m * ((2 * n) * m * b * v + nT2 * k * b * v ^ 2 / (n : ℝ) ^ 2)) := by
        simpa only [hden] using hErr
      _ ≤ P * (10 * Y * Q) := mul_le_mul_of_nonneg_left hcore (powpos _).le
      _ = 10 * P * Y * Q := by ring
  have hNormalized : δ / 2 * (Gx - 4 * X) ≤ 10 * P * Y + 2 / x := by
    have hScaled : Q * (δ / 2 * (Gx - 4 * X)) ≤ Q * (10 * P * Y + 2 / x) := by
      calc
        Q * (δ / 2 * (Gx - 4 * X)) ≤ Err + 2 * Q / x := by
          simpa only [Q, δ, X, mul_assoc] using hLeading
        _ ≤ 10 * P * Y * Q + 2 * Q / x := by linarith only [hErr']
        _ = Q * (10 * P * Y + 2 / x) := by ring
    exact le_of_mul_le_mul_left hScaled hQ0
  have hPY1 : 1 ≤ P * Y := one_le_mul_of_one_le_of_one_le hP1 hY1
  have htwo : 2 / x ≤ 1 := (div_le_one hx0).2 (by linarith)
  have hGap : δ * (Gx - 4 * X) ≤ 22 * (P * Y) := by
    nlinarith only [hNormalized, htwo, hPY1]
  have hvδ : 1 ≤ v * δ := by
    have hinv : v * x ^ (-ε) = 1 := by dsimp [v]; rw [powmul]; simp
    calc
      1 = v * x ^ (-ε) := hinv.symm
      _ ≤ v * δ := mul_le_mul_of_nonneg_left hδ (powpos ε).le
  have hUnweighted : Gx - 4 * X ≤ 22 * (P * Y) * v := by
    by_cases hsign : Gx - 4 * X ≤ 0
    · exact hsign.trans (by dsimp [P, Y, v]; positivity)
    · have hpositive : 0 ≤ Gx - 4 * X := le_of_lt (lt_of_not_ge hsign)
      calc
        Gx - 4 * X ≤ (v * δ) * (Gx - 4 * X) :=
          le_mul_of_one_le_left hpositive hvδ
        _ = v * (δ * (Gx - 4 * X)) := by ring
        _ ≤ v * (22 * (P * Y)) := mul_le_mul_of_nonneg_left hGap (powpos ε).le
        _ = 22 * (P * Y) * v := by ring
  have hPower : P * Y * v = x ^ ((1 : ℝ) / 2 + (C + 21 / 8) * ε) := by
    dsimp [P, Y, v]; rw [powmul, powmul]; congr 1; ring
  have hXZ : X ≤ x ^ ((1 : ℝ) / 2 + (C + 21 / 8) * ε) := by
    apply Real.rpow_le_rpow_of_exponent_le hx1
    have hCε := mul_nonneg hC hε.le
    linarith
  have hCost : 22 * (P * Y) * v =
      22 * x ^ ((1 : ℝ) / 2 + (C + 21 / 8) * ε) := by rw [mul_assoc, hPower]
  linarith only [hUnweighted, hXZ, hCost]

/-- Independent Mathlib-only proof of the exact scalar source contract. -/
theorem growthSizeBound : GrowthSizeBound := by
  intro C ε x n nT nT2 m b k aE Err Gx hW hLeading
  have hIntermediate := growth_le_twentySix_rpow C ε x n nT nT2 m b k aE Err Gx hW hLeading
  have hx0 : 0 < x := by have := hW.1; linarith
  have hbig : 26 ≤ x ^ (3 * ε / 8) := hW.2.2.2.2.2.2.2.2.2.2.2.2.2.2.2
  calc
    Gx ≤ 26 * x ^ ((1 : ℝ) / 2 + (C + 21 / 8) * ε) := hIntermediate
    _ ≤ x ^ (3 * ε / 8) * x ^ ((1 : ℝ) / 2 + (C + 21 / 8) * ε) :=
      mul_le_mul_of_nonneg_right hbig (Real.rpow_pos_of_pos hx0 _).le
    _ = x ^ ((1 : ℝ) / 2 + (C + 3) * ε) := by
      rw [← Real.rpow_add hx0]; congr 1; ring

end GRWTSK.ThetaMultiplicityCost
