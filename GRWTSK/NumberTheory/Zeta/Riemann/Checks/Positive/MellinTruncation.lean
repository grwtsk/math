/- Copyright (c) 2026 grwtsk contributors. MIT.
Human mathematical direction: grwtsk contributors. Formalization assistance: OpenAI.
Mathlib results retain their upstream authorship and Apache-2.0 license. -/
import GRWTSK.NumberTheory.Zeta.Riemann.Checks.Positive.EffectiveMellin
import GRWTSK.NumberTheory.Zeta.Riemann.CriticalStripMellinEnclosure

set_option autoImplicit false

namespace GRWTSK.RiemannHypothesis.Checks.MellinTruncation

open Complex MeasureTheory Filter Set
open scoped Topology
open CriticalStripHeightDescent
open CriticalStripHeightDescent.MellinCertification

example {s : ℂ} {T : ℝ} (hs : 0 < s.re) (hT : 1 ≤ T) :
    fractionalMellin s = fractionalMellinTruncation T s + fractionalMellinTail T s :=
  fractionalMellin_split hT hs

example {s : ℂ} {a T : ℝ} (ha : 0 < a) (has : a ≤ s.re) (hT : 1 ≤ T) :
    ‖fractionalMellinTail T s‖ ≤ T ^ (-a) / a :=
  fractionalMellinTail_norm_le hT ha has

example {s : ℂ} (hs : 0 < s.re) : ‖fractionalMellin s‖ ≤ 1 / s.re :=
  fractionalMellin_norm_le hs (le_refl s.re)

example (s : ℂ) : fractionalMellinTruncation 1 s = 0 := truncation_at_one s
example (s : ℂ) : truncatedPoleModel 1 s = s := pole_truncation_at_one s

example {s : ℂ} {T : ℝ} (hs : 0 < s.re) (hT : 1 ≤ T) :
    poleNormalizedZeta s - truncatedPoleModel T s =
      -(s * (s - 1)) * fractionalMellinTail T s :=
  poleNormalized_truncation_residual hT hs

example {s : ℂ} {a T : ℝ} (ha : 0 < a) (has : a ≤ s.re) (hT : 1 ≤ T) :
    ‖poleNormalizedZeta s - truncatedPoleModel T s‖ ≤
      (‖s‖ * ‖s - 1‖) * mellinTailMajorant a T :=
  poleNormalized_truncation_error hT ha has

example {s : ℂ} (hs : 0 < s.re) :
    Tendsto (fun n : ℕ => poleNormalizedZeta s - truncatedPoleModel ((n : ℝ) + 1) s)
      atTop (𝓝 0) := truncatedPoleModel_residual_tendsto_zero hs

example {Y : ℝ} (hY : 0 ≤ Y) :
    ∀ ε : ℝ, 0 < ε → ∃ n₀ : ℕ, ∀ n : ℕ, n₀ ≤ n → ∀ s : ℂ,
      (1 / 2 : ℝ) ≤ s.re → s.re ≤ 1 → |s.im| ≤ Y →
      ‖poleNormalizedZeta s - truncatedPoleModel ((n : ℝ) + 1) s‖ < ε :=
  truncatedPoleModel_uniform_on_right_rectangle hY

example {s : ℂ} {a T : ℝ} (ha : 0 < a) (has : a ≤ s.re) (hT : 1 ≤ T)
    (enc : MellinPrefixEnclosure T s)
    (hm : (‖s‖ * ‖s - 1‖) * (enc.error + mellinTailMajorant a T) <
      ‖poleMellinEvaluation s enc.value‖) : poleNormalizedZeta s ≠ 0 :=
  poleNormalized_ne_zero_of_mellinEnclosure ha has hT enc hm

-- This has no RH, region-cover or quadrature premise.
example {s : ℂ} (hs : 0 < s.re) (hd : ‖s - 1‖ < s.re) :
    poleNormalizedZeta s ≠ 0 := poleNormalized_ne_zero_of_mellin_distance hs hd

example : NoTargetZero {s : ℂ | 0 < s.re ∧ ‖s - 1‖ < s.re} :=
  noTargetZero_in_mellin_distance_region

example {s : ℂ} (hpar : s.im ^ 2 < 2 * s.re - 1) :
    poleNormalizedZeta s ≠ 0 := poleNormalized_ne_zero_of_parabolic_bound hpar

example {z : ℂ} (hz : NontrivialZetaZero z) :
    |2 * z.re - 1| ≤ (ZetaCommutatorRoot.root.heightAt z) ^ 2 :=
  target_zero_horizontal_defect_le_root_height_sq hz

-- An actual zero rules out EVERY strict exact-tail margin, despite convergence.
example {s : ℂ} (hs : 0 < s.re) (hz : poleNormalizedZeta s = 0) (n : ℕ) :
    ¬ ((‖s‖ * ‖s - 1‖) * mellinTailMajorant s.re ((n : ℝ) + 1) <
      ‖truncatedPoleModel ((n : ℝ) + 1) s‖) :=
  no_strict_mellin_margin_at_zero hs hz n

example {s : ℂ} (hs : 0 < s.re) : poleNormalizedZeta s ≠ 0 ↔ ∃ n : ℕ,
    (‖s‖ * ‖s - 1‖) * mellinTailMajorant s.re ((n : ℝ) + 1) <
      ‖truncatedPoleModel ((n : ℝ) + 1) s‖ :=
  poleNormalized_ne_zero_iff_exists_mellin_margin hs

-- The exact pole normalization is retained by any finite prefix model.
example (T : ℝ) : truncatedPoleModel T 1 = 1 := by simp [truncatedPoleModel]
example (q : ℂ) : poleMellinEvaluation 1 q = 1 := by simp [poleMellinEvaluation]

end GRWTSK.RiemannHypothesis.Checks.MellinTruncation
