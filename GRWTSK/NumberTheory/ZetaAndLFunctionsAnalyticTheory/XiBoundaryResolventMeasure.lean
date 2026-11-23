import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses.CriticalDensityCriterion
import Mathlib.Topology.Algebra.InfiniteSum.ENNReal

/-! The positive Poisson contribution to the spectral measure obtained from the
outer logarithmic derivative. The actual divisor is used to check the measure;
the construction from critical-line data is given in the companion manuscript. -/

namespace GRWTSK.XiBoundaryResolventMeasure

open GRWTSK.RiemannHypothesis.CanonicalZeroDivisor
open GRWTSK.RiemannHypothesis.CriticalDensityCriterion
open scoped ENNReal

noncomputable section

/-- A right-half zero supplies the height profile of one reflected pole. -/
def poisson (σ γ t : ℝ) : ℝ := σ / ((t-γ)^2+σ^2)

/-- Comparison density, with Mathlib's actual zeta zeros and their analytic orders.
The arithmetic measure has continuous density equal to this sum times 2/π. -/
def transverse (t : ℝ) : ℝ≥0∞ :=
  ∑' z : ZeroPoint, ENNReal.ofReal
    ((multiplicity z : ℝ) * poisson (max 0 (z.val.re-1/2)) z.val.im t)

theorem poisson_pos {σ : ℝ} (hσ : 0 < σ) (γ t : ℝ) : 0 < poisson σ γ t := by
  unfold poisson
  positivity

theorem poisson_interval_lower {σ R t : ℝ} (hσ : 0 < σ) (γ : ℝ) (ht : |t| ≤ R) :
    σ / ((R + |γ|)^2 + σ^2) ≤ poisson σ γ t := by
  have h := abs_sub t γ
  have h' : |t-γ| ≤ R+|γ| := h.trans (by linarith)
  have hs : (t-γ)^2 ≤ (R+|γ|)^2 := by
    simpa [sq_abs] using pow_le_pow_left₀ (abs_nonneg (t-γ)) h' 2
  exact div_le_div_of_nonneg_left hσ.le (by positivity) (by linarith)

theorem single_zero_lower {z : ZeroPoint} (hz : 1/2 < z.val.re) (R t : ℝ) (ht : |t| ≤ R) :
    ENNReal.ofReal ((multiplicity z : ℝ) *
      ((z.val.re-1/2)/((R+|z.val.im|)^2+(z.val.re-1/2)^2))) ≤ transverse t := by
  apply le_trans _ (ENNReal.le_tsum (f := fun z : ZeroPoint => ENNReal.ofReal
    ((multiplicity z : ℝ) * poisson (max 0 (z.val.re-1/2)) z.val.im t)) z)
  rw [max_eq_right (by linarith)]
  exact ENNReal.ofReal_le_ofReal (mul_le_mul_of_nonneg_left
    (poisson_interval_lower (by linarith) _ ht) (by positivity))

theorem transverse_eq_zero_iff (t : ℝ) :
    transverse t = 0 ↔ _root_.RiemannHypothesis := by
  rw [transverse, ENNReal.tsum_eq_zero]
  constructor
  · intro h
    apply riemannHypothesis_of_upper
    intro z
    by_contra! hr
    have e := h z
    rw [max_eq_right (by linarith)] at e
    have hm : 0 < (multiplicity z : ℝ) := by exact_mod_cast multiplicity_pos z
    exact (ENNReal.ofReal_pos.mpr (mul_pos hm (poisson_pos (by linarith) _ _))).ne' e
  · intro h z
    have he := h z.val z.property.1 z.property.2.1 z.property.2.2
    simp [he, poisson]

/-- Separating the even and odd parts of the two continuations recovers the
logarithmic derivative of xi. -/
theorem two_sheet_mean (source correction : ℂ) :
    ((source+correction)+(source-correction))/2 = source := by ring

/-- Passage from a weighted cyclic-vector resolvent to the Herglotz transform. -/
theorem resolvent_weight (t z : ℂ) (ht : 1+t^2 ≠ 0) (hz : t-z ≠ 0) :
    1/(t-z)-t/(1+t^2) = (1+z^2)/((1+t^2)*(t-z))+z/(1+t^2) := by
  field_simp
  <;> ring

end
end GRWTSK.XiBoundaryResolventMeasure
