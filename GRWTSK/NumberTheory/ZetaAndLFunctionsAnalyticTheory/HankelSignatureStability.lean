/- Copyright (c) 2026 grwtsk contributors. MIT. -/
import Mathlib.Analysis.Normed.Module.Basic
import Mathlib.LinearAlgebra.FiniteDimensional.Basic
import Mathlib.LinearAlgebra.Prod
import Mathlib.Analysis.Complex.Basic
import Mathlib.Analysis.Normed.Group.InfiniteSum
import Mathlib.Topology.Algebra.InfiniteSum.Real
import Mathlib.Tactic.FieldSimp
import Mathlib.Tactic.Ring
import Mathlib.Tactic.Linarith
import Mathlib.Tactic.Positivity

/-!
# Negative subspaces of a perturbed split form

In real positive and negative coordinate spaces, a relative quadratic error
strictly smaller than one preserves the maximal negative dimension.
-/

namespace GRWTSK.NumberTheory.HankelSignatureStability

variable {P N : Type*} [NormedAddCommGroup P] [NormedSpace ℝ P]
    [NormedAddCommGroup N] [NormedSpace ℝ N] [FiniteDimensional ℝ N]

/-- A relative perturbation preserves the negative dimension of the split form.
Only its restriction to each coordinate axis is used in the proof. -/
theorem negative_dimension_of_relative_error (Q : P × N → ℝ) {δ : ℝ} (hδ : δ < 1)
    (err : ∀ x : P × N, |Q x - (‖x.1‖ ^ 2 - ‖x.2‖ ^ 2)| ≤ δ * (‖x.1‖ ^ 2 + ‖x.2‖ ^ 2)) :
    (∃ V : Submodule ℝ (P × N), Module.finrank ℝ V = Module.finrank ℝ N ∧
      ∀ x ∈ V, x ≠ 0 → Q x < 0) ∧
    (∀ V : Submodule ℝ (P × N), (∀ x ∈ V, x ≠ 0 → Q x < 0) →
      Module.finrank ℝ V ≤ Module.finrank ℝ N) := by
  have hpos (x : P) (hx : x ≠ 0) : 0 < Q (x, 0) := by
    have hb := (abs_le.mp (err (x, 0))).1
    simp only [norm_zero, zero_pow (by decide : 2 ≠ 0), add_zero, sub_zero] at hb
    have h := mul_pos (sub_pos.mpr hδ) (sq_pos_of_pos (norm_pos_iff.mpr hx))
    linarith
  have hneg (y : N) (hy : y ≠ 0) : Q (0, y) < 0 := by
    have hb := (abs_le.mp (err (0, y))).2
    simp only [norm_zero, zero_pow (by decide : 2 ≠ 0), zero_add, zero_sub] at hb
    have h := mul_pos (sub_pos.mpr hδ) (sq_pos_of_pos (norm_pos_iff.mpr hy))
    linarith
  constructor
  · refine ⟨LinearMap.range (LinearMap.inr ℝ P N), LinearMap.finrank_range_of_inj
        (LinearMap.inr_injective (R := ℝ) (M := P) (M₂ := N)), ?_⟩
    intro x hx hne
    obtain ⟨y, rfl⟩ := hx
    apply hneg
    intro hy
    change y = 0 at hy
    exact hne (by simp [hy])
  · intro V hV
    let f := (LinearMap.snd ℝ P N).domRestrict V
    apply LinearMap.finrank_le_finrank_of_injective (f := f)
    apply (injective_iff_map_eq_zero f).mpr
    intro x hx
    by_contra hne
    have hbad := hV x.val x.property (by simpa using hne)
    have hy : x.val.2 = 0 := hx
    have hxe : (x.val.1, 0) = x.val := Prod.ext rfl hy.symm
    have hfirst : x.val.1 ≠ 0 := by
      intro h
      apply hne
      apply Subtype.ext
      exact Prod.ext h hy
    exact (not_lt_of_ge (hxe ▸ (hpos _ hfirst).le)) hbad

/-- Bound the contribution of all remaining nodes by their first absolute moment.
The input B is a bound on the squared evaluation after scaling by the outer radius. -/
theorem tail_norm_le_geometric {ι : Type*} (z f : ι → ℂ) (w : ι → ℝ)
    {a b B : ℝ} (ha : 0 < a) (hb : 0 ≤ b) (r : ℕ)
    (hw : ∀ j, 0 ≤ w j) (hz : ∀ j, ‖z j‖ ≤ b)
    (hf : ∀ j, ‖f j‖ ^ 2 ≤ B / a ^ (r + 1))
    (hs : Summable fun j => w j * ‖z j‖) :
    ‖∑' j, (w j : ℂ) * z j ^ (r + 1) * f j ^ 2‖ ≤
      (B / a * (b / a) ^ r) * ∑' j, w j * ‖z j‖ := by
  let C := B / a * (b / a) ^ r
  have major := hs.mul_left C
  have dom (j : ι) : ‖(w j : ℂ) * z j ^ (r + 1) * f j ^ 2‖ ≤ C * (w j * ‖z j‖) := by
    rw [norm_mul, norm_mul, Complex.norm_real, Real.norm_eq_abs, abs_of_nonneg (hw j),
      norm_pow, norm_pow, pow_succ]
    calc
      _ ≤ w j * (b ^ r * ‖z j‖) * (B / a ^ (r + 1)) := by
        have hwj := hw j
        gcongr <;> first | exact hz j | exact hf j
      _ = _ := by
        dsimp [C]
        rw [div_pow, pow_succ]
        field_simp
  have hsum := Summable.of_nonneg_of_le (fun j => norm_nonneg _) dom major
  exact (norm_tsum_le_tsum_norm hsum).trans ((hsum.tsum_le_tsum dom major).trans_eq tsum_mul_left)

end GRWTSK.NumberTheory.HankelSignatureStability
