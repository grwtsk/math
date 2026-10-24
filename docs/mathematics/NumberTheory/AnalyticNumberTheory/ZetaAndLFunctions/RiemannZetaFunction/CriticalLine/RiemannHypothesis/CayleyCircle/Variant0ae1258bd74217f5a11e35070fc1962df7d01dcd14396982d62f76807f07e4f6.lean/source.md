# Complete source: GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.CayleyCircle.Variant0ae1258bd74217f5a11e35070fc1962df7d01dcd14396982d62f76807f07e4f6

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `51a0e2768d695336d08fe7311e10072c6e038931` · SHA-256 `0ae1258bd74217f5a11e35070fc1962df7d01dcd14396982d62f76807f07e4f6`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import FormalResearch.RiemannHypothesis.Definitions
import Mathlib.Analysis.SpecificLimits.Basic
import Mathlib.Tactic

/-!
# Critical-line circle transport with the transverse coordinate retained

This is a source-bound reformulation, not a proof that all actual nontrivial
zeros lie on the circle. The chart pole at s=1 is excluded in the metric laws.
Actual trivial zeros lie strictly inside and tend to the boundary point -1.
-/

namespace FormalResearch.RiemannHypothesis.CayleyCircle

open Filter
open scoped Topology

noncomputable section

/-- The rational chart sending the vertical critical line to the unit circle. -/
def cayley (s : ℂ) : ℂ := s / (1 - s)

/-- The numerator of the transverse metric defect. -/
theorem normSq_difference (s : ℂ) :
    Complex.normSq s - Complex.normSq (1 - s) = 2 * s.re - 1 := by
  simp only [Complex.normSq_apply, Complex.sub_re, Complex.one_re,
    Complex.sub_im, Complex.one_im]
  ring

/-- The metric denominator is genuinely positive away from the chart pole. -/
theorem denominator_pos (s : ℂ) (hs : s ≠ 1) : 0 < Complex.normSq (1 - s) := by
  have hz : 1 - s ≠ 0 := sub_ne_zero.mpr (Ne.symm hs)
  have hn : Complex.normSq (1 - s) ≠ 0 := mt Complex.normSq_eq_zero.mp hz
  exact lt_of_le_of_ne (Complex.normSq_nonneg _) (Ne.symm hn)

/-- The exact transverse law; distance from the circle cannot be discarded. -/
theorem normSq_defect (s : ℂ) (hs : s ≠ 1) :
    Complex.normSq (cayley s) - 1 = (2 * s.re - 1) / Complex.normSq (1 - s) := by
  have hd := ne_of_gt (denominator_pos s hs)
  rw [cayley, Complex.normSq_div]
  field_simp [hd]
  nlinarith [normSq_difference s]

/-- Circle membership is exactly the critical-line condition, not a consequence of notation. -/
theorem normSq_eq_one_iff (s : ℂ) (hs : s ≠ 1) :
    Complex.normSq (cayley s) = 1 ↔ s.re = 1 / 2 := by
  have hd := ne_of_gt (denominator_pos s hs)
  have he := normSq_defect s hs
  constructor
  · intro h
    have hz : (2 * s.re - 1) / Complex.normSq (1 - s) = 0 := by linarith
    have hz' : 2 * s.re - 1 = 0 := (div_eq_zero_iff.mp hz).resolve_right hd
    linarith
  · intro h
    rw [h] at he
    norm_num at he
    linarith

/-- The ordinary norm form of circle membership. -/
theorem norm_eq_one_iff (s : ℂ) (hs : s ≠ 1) : ‖cayley s‖ = 1 ↔ s.re = 1 / 2 := by
  have he := normSq_eq_one_iff s hs
  rw [Complex.normSq_eq_norm_sq] at he
  constructor
  · intro h
    exact he.mp (by rw [h]; norm_num)
  · intro h
    have hh := he.mpr h
    nlinarith [norm_nonneg (cayley s)]

/-- Points to the left of the critical line go strictly inside the circle. -/
theorem normSq_lt_one_iff (s : ℂ) (hs : s ≠ 1) :
    Complex.normSq (cayley s) < 1 ↔ s.re < 1 / 2 := by
  have hd := denominator_pos s hs
  have he := normSq_defect s hs
  constructor
  · intro h
    have hr : (2 * s.re - 1) / Complex.normSq (1 - s) < 0 := by linarith
    have hn := (div_lt_iff₀ hd).mp hr
    linarith
  · intro h
    have hr : (2 * s.re - 1) / Complex.normSq (1 - s) < 0 :=
      div_neg_of_neg_of_pos (by linarith) hd
    linarith

/-- Reciprocal conjugation is the transported reflection; this algebraic identity is totalized. -/
theorem criticalReflection_transport (s : ℂ) :
    cayley (criticalReflection s) = (star (cayley s))⁻¹ := by
  simp [cayley, criticalReflection, inv_div]

/-- The source's exact nontrivial-zero circle condition, without a substituted zero predicate. -/
def ZeroImagesOnCircle : Prop := ∀ s : ℂ, NontrivialZetaZero s → ‖cayley s‖ = 1

/-- An equivalence with Mathlib's exact RH target; neither side is asserted unconditionally. -/
theorem rh_iff_zeroImagesOnCircle : _root_.RiemannHypothesis ↔ ZeroImagesOnCircle := by
  constructor
  · intro h s hs
    exact (norm_eq_one_iff s hs.2.2).mpr (h s hs.1 hs.2.1 hs.2.2)
  · intro h s hz htr hpole
    exact (norm_eq_one_iff s hpole).mp (h s ⟨hz, htr, hpole⟩)

/-- The actual negative-even locations, indexed exactly as in Mathlib. -/
def trivialLocation (m : ℕ) : ℂ := -2 * (m + 1)

/-- These locations are actual zeta zeros, independently of RH. -/
theorem trivialLocation_is_zero (m : ℕ) : riemannZeta (trivialLocation m) = 0 :=
  riemannZeta_neg_two_mul_nat_add_one m

/-- A positive real denominator for the explicit trivial-zero image. -/
def trivialDenominator (m : ℕ) : ℝ := 2 * (m + 1) + 1

/-- The exact image, written as its deviation from the boundary point minus one. -/
theorem trivialLocation_image (m : ℕ) :
    cayley (trivialLocation m) = -1 + (((trivialDenominator m)⁻¹ : ℝ) : ℂ) := by
  have hd : (2 * ((m : ℂ) + 1) + 1) ≠ 0 := by
    have hr : (0 : ℝ) < 2 * ((m : ℝ) + 1) + 1 := by positivity
    exact_mod_cast (ne_of_gt hr)
  have hs : (1 : ℂ) - (-2 * ((m : ℂ) + 1)) ≠ 0 := by
    have he : (1 : ℂ) - (-2 * ((m : ℂ) + 1)) = 2 * ((m : ℂ) + 1) + 1 := by ring
    rw [he]
    exact hd
  have he : (1 : ℂ) - (-2 * ((m : ℂ) + 1)) = 2 * ((m : ℂ) + 1) + 1 := by ring
  change (-2 * ((m : ℂ) + 1)) / (1 - (-2 * ((m : ℂ) + 1))) = _
  rw [he]
  have hc : (((trivialDenominator m)⁻¹ : ℝ) : ℂ) =
      (2 * ((m : ℂ) + 1) + 1)⁻¹ := by
    simp [trivialDenominator]
  rw [hc]
  field_simp [hd]
  ring

/-- No trivial zero is a critical-circle point; all are strictly inside. -/
theorem trivialLocation_inside (m : ℕ) : Complex.normSq (cayley (trivialLocation m)) < 1 := by
  have hr : (trivialLocation m).re < 1 / 2 := by
    simp [trivialLocation]
    nlinarith [show (0 : ℝ) ≤ (m : ℝ) by positivity]
  have hs : trivialLocation m ≠ 1 := by
    intro h
    rw [h] at hr
    norm_num at hr
  exact (normSq_lt_one_iff _ hs).mpr hr

/-- The explicit denominators tend to infinity with the trivial-zero index. -/
theorem trivialDenominator_tendsto : Tendsto trivialDenominator atTop atTop := by
  apply Filter.tendsto_atTop.mpr
  intro b
  obtain ⟨m, hm⟩ := exists_nat_gt b
  filter_upwards [Filter.eventually_ge_atTop m] with n hn
  have hmn : (m : ℝ) ≤ n := by exact_mod_cast hn
  dsimp [trivialDenominator]
  linarith

/-- Actual trivial-zero images approach minus one from inside the disk. -/
theorem trivialLocation_image_tendsto :
    Tendsto (fun m : ℕ => cayley (trivialLocation m)) atTop (𝓝 (-1)) := by
  have hi : Tendsto (fun m => (trivialDenominator m)⁻¹) atTop (𝓝 (0 : ℝ)) :=
    tendsto_inv_atTop_zero.comp trivialDenominator_tendsto
  have hc : Tendsto (fun m => (((trivialDenominator m)⁻¹ : ℝ) : ℂ)) atTop (𝓝 (0 : ℂ)) := by
    convert (Complex.continuous_ofReal.tendsto (0 : ℝ)).comp hi using 1
    · funext m
      simp
    · simp
  have he : (fun m : ℕ => cayley (trivialLocation m)) =
      (fun m : ℕ => (-1 : ℂ) + (((trivialDenominator m)⁻¹ : ℝ) : ℂ)) :=
    funext trivialLocation_image
  rw [he]
  have hconst : Tendsto (fun _ : ℕ => (-1 : ℂ)) atTop (𝓝 (-1)) :=
    tendsto_const_nhds
  simpa using hconst.add hc

end

end FormalResearch.RiemannHypothesis.CayleyCircle
```
