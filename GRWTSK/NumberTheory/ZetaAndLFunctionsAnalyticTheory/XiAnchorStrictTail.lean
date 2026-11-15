/- Copyright (c) 2026 grwtsk contributors. MIT. -/
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.XiAnchorMultiplicityCutoff
import Mathlib.Topology.Algebra.InfiniteSum.ENNReal
import Mathlib.Topology.Algebra.InfiniteSum.Ring

/-!
# Strict positive-height comparison for the completed zeta anchor

For the application in math#1805, index by the set of distinct actual zeros
of the pole-cleared `CompletedQuotientSource.xi` with `T < Im ρ`. Take
`order` to be their analytic orders. The original source has one negative
partner `1 - ρ` for each representative, with the same analytic order.
This identifies the paired sum below with the strict both-sign tail when
the original Hadamard source return and its splitting at the closed head
are supplied. The positive inverse-square sum also has to be supplied
from the original count. Its Bellotti–Wong enclosure and the identification
with the actual logarithmic derivative remain analytic inputs.
-/

set_option autoImplicit false

noncomputable section

open scoped Topology

namespace GRWTSK.NumberTheory.SpectralProductDivisorReturn

/-- One inverse-square term per distinct positive representative, with its order. -/
def xiInverseSquareTailTerm {tail : Set ℂ} (order : tail → ℕ) (ρ : tail) : ℝ :=
  (order ρ : ℝ) / ρ.val.im ^ 2

/-- The two arithmetic anchor weights carrying their common analytic order. -/
def xiPairedAnchorTailTerm {tail : Set ℂ} (order : tail → ℕ) (ρ : tail) : ℝ :=
  (order ρ : ℝ) * (xiAnchorWeight ρ.val + xiAnchorWeight (1 - ρ.val))

private theorem paired_anchorWeight_bounds {ρ : ℂ}
    (hleft : 0 < ρ.re) (hright : ρ.re < 1) (hγ : 0 < ρ.im) :
    3 / (ρ.im ^ 2 + 3) ≤ xiAnchorWeight ρ + xiAnchorWeight (1 - ρ) ∧
      xiAnchorWeight ρ + xiAnchorWeight (1 - ρ) ≤ 3 / ρ.im ^ 2 := by
  let x : ℝ := 2 - ρ.re
  let y : ℝ := 3 - x
  let g : ℝ := ρ.im ^ 2
  let p : ℝ := x * y
  have hx : 1 ≤ x := by dsimp [x]; linarith
  have hx' : x ≤ 2 := by dsimp [x]; linarith
  have hp : 2 ≤ p := by
    dsimp [p, y]
    nlinarith [mul_nonneg (sub_nonneg.mpr hx) (sub_nonneg.mpr hx')]
  have hp' : p ≤ 9 / 4 := by dsimp [p, y]; nlinarith [sq_nonneg (x - 3 / 2)]
  have hg : 0 < g := by dsimp [g]; positivity
  have hdenx : 0 < x ^ 2 + g := by positivity
  have hdeny : 0 < y ^ 2 + g := by positivity
  have hreflected : 2 - (1 - ρ).re = y := by simp [x, y, Complex.sub_re]; ring
  have hpair : xiAnchorWeight ρ + xiAnchorWeight (1 - ρ) =
      3 * (g + p) / ((x ^ 2 + g) * (y ^ 2 + g)) := by
    simp only [xiAnchorWeight, hreflected, Complex.sub_im, Complex.one_im, zero_sub, neg_sq]
    change x / (x ^ 2 + g) + y / (y ^ 2 + g) = _
    rw [div_add_div x y hdenx.ne' hdeny.ne']
    congr 1
    dsimp [p, y]
    ring
  have hgapLower : 0 ≤ g * (3 * p - 6) + p * (3 - p) := by
    exact add_nonneg (mul_nonneg hg.le (by linarith))
      (mul_nonneg (by linarith) (by linarith))
  have hgapUpper : 0 ≤ g * (9 - 3 * p) + p ^ 2 :=
    add_nonneg (mul_nonneg hg.le (by linarith)) (sq_nonneg p)
  rw [hpair]
  constructor
  · apply (div_le_div_iff₀ (by positivity) (mul_pos hdenx hdeny)).mpr
    calc
      3 * ((x ^ 2 + g) * (y ^ 2 + g)) =
          3 * (g + p) * (g + 3) - 3 * (g * (3 * p - 6) + p * (3 - p)) := by
            dsimp [p, y]; ring
      _ ≤ _ := sub_le_self _ (mul_nonneg (by norm_num) hgapLower)
  · apply (div_le_div_iff₀ (mul_pos hdenx hdeny) hg).mpr
    calc
      3 * (g + p) * g =
          3 * ((x ^ 2 + g) * (y ^ 2 + g)) - 3 * (g * (9 - 3 * p) + p ^ 2) := by
            dsimp [p, y]; ring
      _ ≤ _ := sub_le_self _ (mul_nonneg (by norm_num) hgapUpper)

/-- Transport a summable inverse-square tail to the paired anchor tail.
The cutoff is strict in height and the set index retains distinct positions. -/
theorem xiPairedAnchorTail_bounds (tail : Set ℂ) (order : tail → ℕ)
    {T : ℝ} (hT : Real.exp 1 ≤ T)
    (hregion : ∀ ρ : tail, 0 < ρ.val.re ∧ ρ.val.re < 1 ∧ T < ρ.val.im)
    (hsquare : Summable (xiInverseSquareTailTerm order)) :
    Summable (xiPairedAnchorTailTerm order) ∧
      (3 * T ^ 2 / (T ^ 2 + 3)) * (∑' ρ : tail, xiInverseSquareTailTerm order ρ) ≤
        ∑' ρ : tail, xiPairedAnchorTailTerm order ρ ∧
      (∑' ρ : tail, xiPairedAnchorTailTerm order ρ) ≤
        3 * (∑' ρ : tail, xiInverseSquareTailTerm order ρ) := by
  let c : ℝ := 3 * T ^ 2 / (T ^ 2 + 3)
  have hTpos : 0 < T := (Real.exp_pos 1).trans_le hT
  have hterm (ρ : tail) :
      c * xiInverseSquareTailTerm order ρ ≤ xiPairedAnchorTailTerm order ρ ∧
        xiPairedAnchorTailTerm order ρ ≤ 3 * xiInverseSquareTailTerm order ρ := by
    obtain ⟨hleft, hright, hheight⟩ := hregion ρ
    have hγ : 0 < ρ.val.im := hTpos.trans hheight
    have hg : 0 < ρ.val.im ^ 2 := by positivity
    have hgT : T ^ 2 ≤ ρ.val.im ^ 2 :=
      (sq_le_sq₀ hTpos.le hγ.le).mpr hheight.le
    obtain ⟨hlower, hupper⟩ := paired_anchorWeight_bounds hleft hright hγ
    have hscale : c / ρ.val.im ^ 2 ≤ 3 / (ρ.val.im ^ 2 + 3) := by
      apply (div_le_div_iff₀ hg (by positivity)).mpr
      dsimp [c]
      rw [div_mul_eq_mul_div, div_le_iff₀ (by positivity : 0 < T ^ 2 + 3)]
      nlinarith
    have hm : 0 ≤ (order ρ : ℝ) := Nat.cast_nonneg _
    constructor
    · rw [xiInverseSquareTailTerm, xiPairedAnchorTailTerm, ← mul_div_assoc,
        mul_comm c, mul_div_assoc]
      exact mul_le_mul_of_nonneg_left (hscale.trans hlower) hm
    · rw [xiInverseSquareTailTerm, xiPairedAnchorTailTerm, ← mul_div_assoc,
        mul_comm (3 : ℝ), mul_div_assoc]
      exact mul_le_mul_of_nonneg_left hupper hm
  have hpos (ρ : tail) : 0 ≤ xiPairedAnchorTailTerm order ρ :=
    (by dsimp [c, xiInverseSquareTailTerm]; positivity : 0 ≤ c * xiInverseSquareTailTerm order ρ).trans
      (hterm ρ).1
  have hpaired : Summable (xiPairedAnchorTailTerm order) :=
    Summable.of_nonneg_of_le hpos (fun ρ => (hterm ρ).2) (hsquare.mul_left 3)
  refine ⟨hpaired, ?_, ?_⟩
  · rw [← tsum_mul_left]
    exact (hsquare.mul_left c).tsum_le_tsum (fun ρ => (hterm ρ).1) hpaired
  · rw [← tsum_mul_left]
    exact hpaired.tsum_le_tsum (fun ρ => (hterm ρ).2) (hsquare.mul_left 3)

end GRWTSK.NumberTheory.SpectralProductDivisorReturn
