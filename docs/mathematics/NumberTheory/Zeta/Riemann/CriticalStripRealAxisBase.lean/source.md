# Complete source: GRWTSK.NumberTheory.Zeta.Riemann.CriticalStripRealAxisBase

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `ac2b21d5a84f683a67e04cad4377a9deca32330a` · SHA-256 `4cdd4f47176fb9957b35df3de142d6d6e8d42d888bd21700c84760697cef4387`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/- Copyright (c) 2026 grwtsk contributors. MIT.
Human mathematical direction: grwtsk contributors. Formalization assistance: OpenAI.
Mathlib results retain their upstream authorship and Apache-2.0 license. -/
import GRWTSK.NumberTheory.Zeta.Riemann.CriticalStripRealAxisMellin
import GRWTSK.NumberTheory.Zeta.Riemann.CriticalStripBoundaryCollar

set_option autoImplicit false

/-!
# An independently sourced horizontal seed and the base-free next port

The Mellin argument supplies WindowRH 0 without assuming any zero-free cover.
It also makes the entire pole-normalized source positive on the closed real interval
[0,1]. Compactness yields a positive-width horizontal seed in the critical strip.
The width is existential, not an effective verified numerical height.

Only the real-axis base is removed from the old endpoint assumptions. Every interior
cover at every height and near-critical-line margin remains a genuine open supplier.
-/

namespace GRWTSK.RiemannHypothesis.CriticalStripHeightDescent

open Complex Set Metric

noncomputable section

@[simp] theorem poleNormalizedZeta_zero : poleNormalizedZeta 0 = (1 / 2 : ℂ) := by
  rw [poleNormalizedZeta_of_ne (by norm_num : (0 : ℂ) ≠ 1), riemannZeta_zero]
  norm_num

/-- This endpoint-inclusive positivity is derived from the actual Mellin source identity. -/
theorem poleNormalized_re_pos_on_real_unit {x : ℝ} (hx : x ∈ Icc (0 : ℝ) 1) :
    0 < (poleNormalizedZeta (x : ℂ)).re := by
  rcases eq_or_lt_of_le hx.1 with hzero | hpos
  · have hx0 : x = 0 := hzero.symm
    subst x
    norm_num
  · exact hpos.trans_le (real_le_poleNormalized_re hpos hx.2)

def realCoreSegment : Set ℂ := Complex.ofReal '' Icc (0 : ℝ) 1

lemma realCoreSegment_isCompact : IsCompact realCoreSegment :=
  isCompact_Icc.image Complex.continuous_ofReal

lemma realCoreSegment_nonempty : realCoreSegment.Nonempty := by
  refine ⟨0, 0, ?_, ?_⟩
  · exact ⟨le_rfl, zero_le_one⟩
  · rfl

lemma poleNormalized_nonzero_on_realCore {z : ℂ} (hz : z ∈ realCoreSegment) :
    poleNormalizedZeta z ≠ 0 := by
  obtain ⟨x, hx, rfl⟩ := hz
  intro hzero
  have hpos := poleNormalized_re_pos_on_real_unit hx
  rw [hzero] at hpos
  simpa using hpos

/-- Quantitative source lower bound on a closed horizontal strip segment. No rational
radius or height independent of the analytic source is silently selected. -/
theorem exists_realAxis_norm_collar :
    ∃ η b : ℝ, 0 < η ∧ 0 < b ∧
      ∀ z : ℂ, 0 ≤ z.re → z.re ≤ 1 → |z.im| ≤ η →
        b ≤ ‖poleNormalizedZeta z‖ := by
  obtain ⟨r, b, hr, hb, hthick⟩ := exists_thickening_norm_lower_of_compact
    realCoreSegment_isCompact realCoreSegment_nonempty
    differentiable_poleNormalizedZeta.continuous
    (fun z hz => poleNormalized_nonzero_on_realCore hz)
  refine ⟨r / 2, b, by positivity, hb, ?_⟩
  intro z hleft hright hheight
  let w : ℂ := (z.re : ℂ)
  have hw : w ∈ realCoreSegment := ⟨z.re, ⟨hleft, hright⟩, rfl⟩
  have hdiff : z - w = (z.im : ℂ) * I := by
    apply Complex.ext <;> simp [w]
  have hdist : dist z w = |z.im| := by
    rw [dist_eq_norm, hdiff, norm_mul, Complex.norm_real, Complex.norm_I,
      mul_one, Real.norm_eq_abs]
  apply hthick z
  apply Metric.mem_thickening_iff.mpr
  refine ⟨w, hw, ?_⟩
  rw [hdist]
  exact hheight.trans_lt (by linarith : r / 2 < r)

/-- Some positive height is free of all canonical nontrivial zeros, not merely a
finite list. This is noneffective and does not claim any prescribed numerical height. -/
theorem exists_positive_height_without_target_zeros :
    ∃ η : ℝ, 0 < η ∧
      ∀ z : ℂ, |ZetaCommutatorRoot.root.heightAt z| ≤ η → ¬ NontrivialZetaZero z := by
  obtain ⟨η, b, hη, hb, hlower⟩ := exists_realAxis_norm_collar
  refine ⟨η, hη, ?_⟩
  intro z hheight hzero
  have hstrip := hzero.mem_critical_strip
  have him : |z.im| ≤ η := by
    simpa only [ZetaCommutatorRoot.heightAt_eq_im] using hheight
  have hbound := hlower z hstrip.1.le hstrip.2.le him
  rw [poleNormalizedZeta_zero_of_target hzero, norm_zero] at hbound
  exact (not_le_of_gt hb) hbound

/-- The exact next port: the base is a theorem, while the interior cover family is
still required. Neither boundary nor horizontal collars establish this family. -/
theorem rh_of_all_interior_covers
    (collars : ∀ N : ℕ, RightBoundaryCollar (N + 1))
    (covers : ∀ N m : ℕ,
      FiniteVariationCover poleNormalizedZeta (rightInteriorShell N m (collars N).width)) :
    _root_.RiemannHypothesis := by
  apply rh_of_base_and_shell_extension windowRH_zero
  intro N _
  apply (shellRH_iff_interior_exclusion N (collars N)).mpr
  intro m
  exact noTargetZero_of_poleNormalized_cover (covers N m)

/-- Independently existing boundary collars may be selected coherently in classical
logic. This does not turn their widths or covers into an executable certificate. -/
def selectedRightBoundaryCollar (N : ℕ) : RightBoundaryCollar (N + 1) :=
  Classical.choice (exists_rightBoundaryCollar (N + 1))

/-- The remaining hypothesis is exactly the full interior-patch family. -/
theorem rh_of_selected_interior_covers
    (covers : ∀ N m : ℕ, FiniteVariationCover poleNormalizedZeta
      (rightInteriorShell N m (selectedRightBoundaryCollar N).width)) :
    _root_.RiemannHypothesis :=
  rh_of_all_interior_covers selectedRightBoundaryCollar covers

end

end GRWTSK.RiemannHypothesis.CriticalStripHeightDescent
```
