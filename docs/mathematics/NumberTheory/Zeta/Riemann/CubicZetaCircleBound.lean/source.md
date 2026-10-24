# Complete source: GRWTSK.NumberTheory.Zeta.Riemann.CubicZetaCircleBound

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `2af785df5c85605597173bcc852a24274626c1e0` · SHA-256 `864ba67968ce76f16d775db0c38974bae91c48664a24014217cb8a554acd8d27`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/- Copyright (c) 2026 grwtsk contributors. MIT.
Human research direction: grwtsk contributors. Proof drafting assistance: OpenAI ChatGPT.
Mathlib results retain their upstream authorship and Apache-2.0 license. -/
import GRWTSK.NumberTheory.Zeta.Riemann.CubicZetaIdentity
import GRWTSK.NumberTheory.Zeta.Riemann.CubicCircleGeometry

set_option autoImplicit false

/-!
# Actual all-point cubic disk ceilings and canonical local counts

The earlier conditional norm algebra is now instantiated with riemannZeta,
the independently defined cubic remainder, and their derived exact identity.
No circle ceiling, source equality or remainder bound is an application premise.
This is classical local zero counting, not a full logarithmic-derivative bound,
an infinite explicit formula, or a prime-distribution improvement.
SOURCE_ONLY / NOT_RUN / NOT_KERNEL_AUDITED.
-/

namespace GRWTSK.RiemannHypothesis.CubicZetaCircleBound

open Set Metric
open scoped BigOperators
open CubicZetaIdentity CubicCircleGeometry CubicRemainder
open CanonicalZeroDivisor SeparatedContourHeights LocalJensenCount AnchoredLocalJensen

noncomputable section

/-- Every point of either entire closed disk is covered, not only a sampled boundary. -/
theorem norm_zeta_le_cube_on_disk (N : ℕ) (hN : 2 ≤ N) (c s : ℂ)
    (hc : c = upperCenter N ∨ c = lowerCenter N) (hs : s ∈ closedBall c (3 : ℝ)) :
    ‖riemannZeta s‖ ≤ ((N : ℝ) + 2) ^ 3 := by
  obtain ⟨hr, hi, h₀, h₁, h₂⟩ := disk_geometry N hN c s hc hs
  have hne : s ≠ 1 := by
    intro he
    have hbad := hi
    rw [he] at hbad
    norm_num at hbad
  have hn : (2 : ℝ) ≤ N := by exact_mod_cast hN
  exact norm_le_cube_of_cubic_identity s (riemannZeta s) (cubicRemainder s)
    ((N : ℝ) + 2) (by linarith) (norm_inverse_sub_one_le s hi) h₀ h₁ h₂
    (norm_cubicRemainder_le_one_div_48 s hr) (zeta_eq_cubic s (by linarith) hne)

theorem upper_circle_bound (N : ℕ) (hN : 2 ≤ N) (s : ℂ)
    (hs : s ∈ sphere (upperCenter N) (3 : ℝ)) :
    ‖riemannZeta s‖ ≤ ((N : ℝ) + 2) ^ 3 :=
  norm_zeta_le_cube_on_disk N hN _ s (Or.inl rfl) (sphere_subset_closedBall hs)

theorem lower_circle_bound (N : ℕ) (hN : 2 ≤ N) (s : ℂ)
    (hs : s ∈ sphere (lowerCenter N) (3 : ℝ)) :
    ‖riemannZeta s‖ ≤ ((N : ℝ) + 2) ^ 3 :=
  norm_zeta_le_cube_on_disk N hN _ s (Or.inr rfl) (sphere_subset_closedBall hs)

/-- Fixed explicit envelope for the unchanged both-sign analytic multiplicity count. -/
def localCountBudget (N : ℕ) : ℝ :=
  2 * (Real.log 4 + 3 * Real.log ((N : ℝ) + 2)) / Real.log (6 / 5 : ℝ)

/-- Both circle suppliers and both anchor floors have now been derived. -/
theorem bandMass_le_localCountBudget (N : ℕ) (hN : 2 ≤ N) :
    (bandMass N : ℝ) ≤ localCountBudget N := by
  have hb := bandMass_le_of_polynomial_circle_bound N hN 1 (by norm_num) 3
    (fun s hs => by simpa only [one_mul] using upper_circle_bound N hN s hs)
    (fun s hs => by simpa only [one_mul] using lower_circle_bound N hN s hs)
  simpa only [localCountBudget, mul_one, Nat.cast_ofNat] using hb

theorem localCountBudget_nonneg (N : ℕ) : 0 ≤ localCountBudget N := by
  have hlog : 0 ≤ Real.log ((N : ℝ) + 2) := Real.log_nonneg (by linarith [Nat.cast_nonneg (α := ℝ) N])
  unfold localCountBudget
  exact div_nonneg (by positivity)
    (GRWTSK.Analysis.Complex.JensenFiniteMultiplicity.log_six_fifths_pos.le)

/-- The maintained height selection is reused verbatim. -/
theorem clearance_le_actual (N : ℕ) (hN : 2 ≤ N) :
    1 / (4 * (localCountBudget N + 1)) ≤ heightClearance N :=
  clearance_of_mass_bound N _ (bandMass_le_localCountBudget N hN)

/-- This remains a finite local principal sum, not the full logarithmic derivative. -/
theorem local_principal_le (N : ℕ) (hN : 2 ≤ N) (σ y : ℝ)
    (hy : |y| = separatedHeight N) :
    ‖∑ z ∈ heightBand N, (multiplicity z : ℂ) /
      (((σ : ℂ) + (y : ℂ) * Complex.I) - z.1)‖ ≤
      4 * (localCountBudget N + 1) * localCountBudget N :=
  local_principal_of_mass_bound N σ y _ hy (bandMass_le_localCountBudget N hN)

end
end GRWTSK.RiemannHypothesis.CubicZetaCircleBound
```
