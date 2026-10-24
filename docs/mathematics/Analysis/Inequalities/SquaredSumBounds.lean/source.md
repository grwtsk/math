# Complete source: GRWTSK.Analysis.Inequalities.SquaredSumBounds

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `3976ee96bf5977399dd6607e28888714fd35dad2` · SHA-256 `a7d2e3be9ab51094fd4fe1e2583bd3393922ff45a04c9baba01bbd9124440b44`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Copyright (c) 2026 grwtsk contributors. Released under the MIT license.
Research direction: grwtsk contributors. Proof-source assistance: ChatGPT.
Candidate scalar budgets only; not compiled. Brun--Titchmarsh, the finite-measure
kernel identities and their actual arithmetic application are not new axioms.
-/
import Mathlib

set_option autoImplicit false
noncomputable section
namespace GRWTSK.Analysis.Resolvent.SieveScreenBudget

theorem prime_rational_slack : (16:ℝ)*(7/10)/(5/8)<18 := by norm_num

theorem original_root_budget (p r : ℝ) (hp : 0 ≤ p) (hr : 0 ≤ r)
    (hp2 : p^2 ≤ 18) (h : r ≤ p+1+7/5) : r^2 < 45 := by
  have hpu : p < 17/4 := by nlinarith
  have hrbound : r < 133/20 := by linarith
  nlinarith

theorem typeII_root_budget (p q r : ℝ)
    (hp : 0 ≤ p) (hq : 0 ≤ q) (hr : 0 ≤ r)
    (hp2 : p^2 ≤ 45) (hq2 : q^2 ≤ 17) (h : r ≤ p+q) : r^2 < 118 := by
  have hprod : (p*q)^2 ≤ 765 := by
    calc
      (p*q)^2 = p^2*q^2 := by ring
      _ ≤ 45*q^2 := mul_le_mul_of_nonneg_right hp2 (sq_nonneg q)
      _ ≤ 45*17 := mul_le_mul_of_nonneg_left hq2 (by norm_num)
      _ = 765 := by norm_num
  have hpq : p*q < 28 := by nlinarith [mul_nonneg hp hq]
  have hsum : (p+q)^2 < 118 := by nlinarith
  have hrsq : r^2 ≤ (p+q)^2 := by nlinarith
  linarith

/-- Source identity applied in the low seminorm before the final return. -/
theorem low_first_return (E L L₀ Q X : ℝ)
    (hs : E=L₀+Q) (hL : L₀ ≤ 2*L+34/X) (hQ : Q ≤ 45/X) :
    E ≤ 2*L+79/X := by
  have hadd : 34/X+45/X=79/X := by ring
  linarith

theorem retained_center_return (E L C R X : ℝ)
    (h : E ≤ 2*L+79/X) (hs : L=C+R) : E ≤ 2*C+2*R+79/X := by
  rw [hs] at h
  linarith

end GRWTSK.Analysis.Resolvent.SieveScreenBudget
```
