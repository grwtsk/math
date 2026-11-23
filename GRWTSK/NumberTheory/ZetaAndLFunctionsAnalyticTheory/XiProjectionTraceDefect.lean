import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses.CanonicalSignedHeight
import Mathlib.Topology.Algebra.InfiniteSum.ENNReal
import Mathlib.Tactic

/-! The projected inverse-square trace defect of an individual rotated zero.
The extended nonnegative sum retains its meaning before analytic summability
or a residue representation is supplied. -/

namespace GRWTSK.XiProjectionTraceDefect

open GRWTSK.RiemannHypothesis.CanonicalZeroDivisor
open scoped ENNReal
noncomputable section

def defect (g d : ℝ) := 1/g^2 - (g^2-d^2)/(g^2+d^2)^2

theorem explicit_defect {g : ℝ} (hg : g ≠ 0) (d : ℝ) :
    defect g d = d^2*(3*g^2+d^2)/(g^2*(g^2+d^2)^2) := by
  have h : 0 < g^2+d^2 := by positivity
  unfold defect
  field_simp
  <;> ring

theorem defect_nonneg {g : ℝ} (hg : g ≠ 0) (d : ℝ) : 0 ≤ defect g d := by
  rw [explicit_defect hg]
  positivity

theorem defect_pos {g d : ℝ} (hg : g ≠ 0) (hd : d ≠ 0) : 0 < defect g d := by
  rw [explicit_defect hg]
  positivity

theorem defect_upper {g : ℝ} (hg : g ≠ 0) (d : ℝ) :
    defect g d ≤ 3*d^2/g^4 := by
  rw [explicit_defect hg]
  have h : 0 < g^2+d^2 := by positivity
  have hpos : 0 < g^2 := by positivity
  apply (div_le_div_iff₀ (by positivity) (by positivity)).mpr
  nlinarith [mul_nonneg (sq_nonneg (g^3*d^2)) (show (0:ℝ) ≤ 5 by norm_num),
    mul_nonneg (sq_nonneg (g*d^3)) (sq_nonneg g)]

def weighted (z : ZeroPoint) : ℝ≥0∞ :=
  ENNReal.ofReal ((multiplicity z : ℝ)*defect z.1.im (z.1.re-1/2))

def total : ℝ≥0∞ := ∑' z : ZeroPoint, weighted z

theorem total_zero_iff_RH : total = 0 ↔ _root_.RiemannHypothesis := by
  rw [total, ENNReal.tsum_eq_zero]
  constructor
  · intro hw s hs ht hp
    let z : ZeroPoint := ⟨s,hs,ht,hp⟩
    change z.1.re = 1/2
    by_contra hn
    have hd := defect_pos (GRWTSK.RiemannHypothesis.CanonicalSignedHeight.im_ne_zero z)
      (sub_ne_zero.mpr hn)
    have hm : 0 < (multiplicity z : ℝ) := by exact_mod_cast multiplicity_pos z
    have hpos : 0 < weighted z := ENNReal.ofReal_pos.mpr (mul_pos hm hd)
    exact (ne_of_gt hpos) (hw z)
  · intro h z
    have he := h z.1 z.2.1 z.2.2.1 z.2.2.2
    have hg := GRWTSK.RiemannHypothesis.CanonicalSignedHeight.im_ne_zero z
    simp [weighted, he, explicit_defect hg]

end
end GRWTSK.XiProjectionTraceDefect
