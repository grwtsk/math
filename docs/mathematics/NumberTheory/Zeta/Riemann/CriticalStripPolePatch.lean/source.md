# Complete source: GRWTSK.NumberTheory.Zeta.Riemann.CriticalStripPolePatch

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `ac17d019a9404904cca01b222a3cd84f878a9ad7` · SHA-256 `809dd23dd9ba88ddcd4528d0d3129d1c9db0af7b91d310a28a3bac334df38cf7`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/- Copyright (c) 2026 grwtsk contributors. MIT.
Human mathematical direction: grwtsk contributors. Formalization assistance: OpenAI Codex.
Mathlib results retain their upstream authorship and Apache-2.0 license. -/
import GRWTSK.NumberTheory.Zeta.Riemann.CriticalStripAnalyticPatch
import Mathlib.Analysis.Complex.RemovableSingularity

set_option autoImplicit false

/-!
# Residue-normalized zeta patches at the pole

The source function is zeta multiplied by its exact simple-pole factor away from 1,
with the removable value 1 inserted at 1. Continuity there follows from the actual
pinned residue theorem, not from the arbitrary totalized value of zeta at its pole.
The construction gives a positive-radius local certificate and a quantitative
punctured lower bound. The radius is existential, not an effective numerical bound.
No real-axis base or all-height zero-free cover is inferred.
-/

namespace GRWTSK.RiemannHypothesis.CriticalStripHeightDescent

open Filter
open scoped Topology

noncomputable section

/-- Exact pole-removed source. The uncorrected product has value zero at 1 in Lean,
which is not its removable analytic value and must not be used as a source zero. -/
def poleNormalizedZeta : ℂ → ℂ := by
  classical
  exact Function.update (fun z : ℂ => (z - 1) * riemannZeta z) 1 1

@[simp] theorem poleNormalizedZeta_one : poleNormalizedZeta 1 = 1 := by
  classical
  simp [poleNormalizedZeta]

theorem poleNormalizedZeta_of_ne {z : ℂ} (hz : z ≠ 1) :
    poleNormalizedZeta z = (z - 1) * riemannZeta z := by
  classical
  simp [poleNormalizedZeta, Function.update_of_ne hz]

/-- The residue is the actual analytic supplier for the value at the removed pole. -/
theorem continuousAt_poleNormalizedZeta_one : ContinuousAt poleNormalizedZeta 1 := by
  classical
  simpa only [poleNormalizedZeta, continuousAt_update_same] using riemannZeta_residue_one

/-- Complex differentiability away from the removed pole is inherited from the
actual product, using equality on a neighborhood rather than at one sample. -/
theorem differentiableAt_poleNormalizedZeta_of_ne {z : ℂ} (hz : z ≠ 1) :
    DifferentiableAt ℂ poleNormalizedZeta z := by
  have hprod : DifferentiableAt ℂ (fun w : ℂ => (w - 1) * riemannZeta w) z :=
    (differentiableAt_id.sub (differentiableAt_const 1)).mul (differentiableAt_riemannZeta hz)
  apply hprod.congr_of_eventuallyEq
  filter_upwards [eventually_ne_nhds hz] with w hw using poleNormalizedZeta_of_ne hw

/-- The pole normalization is genuinely entire. The removable-singularity theorem
uses both punctured complex differentiability and the sourced residue continuity. -/
theorem differentiable_poleNormalizedZeta : Differentiable ℂ poleNormalizedZeta := by
  intro z
  rcases ne_or_eq z 1 with hz | rfl
  · exact differentiableAt_poleNormalizedZeta_of_ne hz
  · refine (Complex.analyticAt_of_differentiable_on_punctured_nhds_of_continuousAt
      ?_ continuousAt_poleNormalizedZeta_one).differentiableAt
    filter_upwards [self_mem_nhdsWithin] with w hw
    exact differentiableAt_poleNormalizedZeta_of_ne hw

/-- Away from the removed pole the source zero predicate is unchanged. -/
theorem poleNormalizedZeta_eq_zero_iff {z : ℂ} (hz : z ≠ 1) :
    poleNormalizedZeta z = 0 ↔ riemannZeta z = 0 := by
  rw [poleNormalizedZeta_of_ne hz]
  constructor
  · intro h
    rcases mul_eq_zero.mp h with hfactor | hzero
    · exact False.elim ((sub_ne_zero.mpr hz) hfactor)
    · exact hzero
  · intro h
    rw [h, mul_zero]

/-- A canonical target zero would also be a zero of the exact normalized source. -/
theorem poleNormalizedZeta_zero_of_target {z : ℂ} (hz : NontrivialZetaZero z) :
    poleNormalizedZeta z = 0 :=
  (poleNormalizedZeta_eq_zero_iff hz.2.2).mpr hz.1

/-- The naive totalized product has a spurious value zero at 1. -/
theorem raw_pole_product_at_one :
    ((1 : ℂ) - 1) * riemannZeta 1 = 0 := by simp

/-- Correcting the removable value therefore is an actual source operation. -/
theorem poleNormalizedZeta_ne_raw_product :
    poleNormalizedZeta ≠ (fun z : ℂ => (z - 1) * riemannZeta z) := by
  intro h
  have h1 := congrFun h 1
  simp at h1

/-- Continuity yields a genuine local bound, with the radius still noneffective. -/
theorem exists_poleNormalized_variation :
    ∃ r : ℝ, 0 < r ∧
      ∀ z ∈ Metric.ball (1 : ℂ) r, ‖poleNormalizedZeta z - 1‖ ≤ (1 / 2 : ℝ) := by
  obtain ⟨r, hr, hvar⟩ := Metric.continuousAt_iff.mp
    continuousAt_poleNormalizedZeta_one (1 / 2 : ℝ) (by norm_num)
  refine ⟨r, hr, ?_⟩
  intro z hz
  have hv := hvar (show dist z (1 : ℂ) < r from hz)
  simpa only [dist_eq_norm, poleNormalizedZeta_one] using hv.le

/-- Concrete patch fields lower=1 and error=1/2, sourced by the residue theorem. -/
def poleNormalizedPatch (r : ℝ)
    (hvar : ∀ z ∈ Metric.ball (1 : ℂ) r,
      ‖poleNormalizedZeta z - 1‖ ≤ (1 / 2 : ℝ)) :
    SampleVariationPatch poleNormalizedZeta (Metric.ball (1 : ℂ) r) where
  center := 1
  lower := 1
  error := 1 / 2
  error_nonneg := by norm_num
  sample_lower := by simp
  variation := by simpa only [poleNormalizedZeta_one] using hvar
  strict_margin := by norm_num

/-- A neighborhood of the pole has an independently constructed normalized patch.
The statement does not give a rational radius or a finite evaluator. -/
theorem exists_poleNormalized_patch :
    ∃ r : ℝ, 0 < r ∧
      Nonempty (SampleVariationPatch poleNormalizedZeta (Metric.ball (1 : ℂ) r)) := by
  obtain ⟨r, hr, hvar⟩ := exists_poleNormalized_variation
  exact ⟨r, hr, ⟨poleNormalizedPatch r hvar⟩⟩

/-- The residue-normalized lower bound transports to a quantitative punctured bound
for the actual zeta function. The distance-to-pole factor cannot be discarded. -/
theorem exists_punctured_zeta_pole_lower_bound :
    ∃ r : ℝ, 0 < r ∧ ∀ z ∈ Metric.ball (1 : ℂ) r, z ≠ 1 →
      (1 / 2 : ℝ) ≤ ‖z - 1‖ * ‖riemannZeta z‖ := by
  obtain ⟨r, hr, hvar⟩ := exists_poleNormalized_variation
  refine ⟨r, hr, ?_⟩
  intro z hz hne
  have hbound := (poleNormalizedPatch r hvar).value_norm_lower hz
  change (1 : ℝ) - 1 / 2 ≤ ‖poleNormalizedZeta z‖ at hbound
  have hhalf : (1 : ℝ) - 1 / 2 = 1 / 2 := by norm_num
  rw [hhalf, poleNormalizedZeta_of_ne hne, norm_mul] at hbound
  exact hbound

/-- Dividing the quantitative bound is valid only at a nonzero distance to the pole. -/
theorem zeta_norm_lower_of_pole_bound {z : ℂ} (hne : z ≠ 1)
    (hbound : (1 / 2 : ℝ) ≤ ‖z - 1‖ * ‖riemannZeta z‖) :
    (1 / 2 : ℝ) / ‖z - 1‖ ≤ ‖riemannZeta z‖ := by
  apply (div_le_iff₀ (norm_pos_iff.mpr (sub_ne_zero.mpr hne))).mpr
  simpa only [mul_comm] using hbound

/-- A normalized-source finite cover feeds the same target-zero predicate, with
no critical-line projection, dropped zero, or pole treated as a nontrivial zero. -/
theorem noTargetZero_of_poleNormalized_cover {U : Set ℂ}
    (cover : FiniteVariationCover poleNormalizedZeta U) : NoTargetZero U := by
  intro z hz hzero
  exact cover.nonzero hz (poleNormalizedZeta_zero_of_target hzero)

/-- Local normalization changes the analytic function, not the shell's geometric
source carrier or the all-margin quantifier. -/
theorem shellRH_of_poleNormalized_covers (N : ℕ)
    (covers : ∀ m : ℕ, FiniteVariationCover poleNormalizedZeta (rightAwayShell N m)) :
    ShellRH N := by
  apply (shellRH_iff_upperRight_exclusion N).mpr
  apply (right_exclusion_iff_all_away N).mpr
  intro m
  exact noTargetZero_of_poleNormalized_cover (covers m)

/-- The next window still needs every new shell patch. The pole neighborhood alone
cannot supply these covers or the real-axis base. -/
theorem window_succ_of_poleNormalized_covers {N : ℕ} (hN : WindowRH N)
    (covers : ∀ m : ℕ, FiniteVariationCover poleNormalizedZeta (rightAwayShell N m)) :
    WindowRH (N + 1) :=
  (window_succ_iff N).mpr ⟨hN, shellRH_of_poleNormalized_covers N covers⟩

end

end GRWTSK.RiemannHypothesis.CriticalStripHeightDescent
```
