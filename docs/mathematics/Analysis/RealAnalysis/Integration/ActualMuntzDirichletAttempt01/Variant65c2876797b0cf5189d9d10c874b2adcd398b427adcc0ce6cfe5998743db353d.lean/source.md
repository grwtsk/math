# Complete source: GRWTSK.Analysis.RealAnalysis.Integration.ActualMuntzDirichletAttempt01.Variant65c2876797b0cf5189d9d10c874b2adcd398b427adcc0ce6cfe5998743db353d

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `d0829db6ec074c465299ca998396c3dce6fe4103` · SHA-256 `65c2876797b0cf5189d9d10c874b2adcd398b427adcc0ce6cfe5998743db353d`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import ActualMuntzMellinDomain
import Mathlib.MeasureTheory.Integral.DominatedConvergence
import Mathlib.Analysis.PSeries

/-! Genuine absolutely weighted sample interchange for the actual Müntz source.
Direction grwtsk contributors; focused scratch proof OpenAI Codex.
The product identity is proved only in its absolute Dirichlet domain here. -/
set_option autoImplicit false
noncomputable section
namespace ContinuousResearch.ActualMuntzDirichlet
open MeasureTheory Set
open ContinuousResearch.ActualMuntzMellinDomain ContinuousResearch.ActualMuntzInventory

def weightedSample (A : ℝ) (s : ℂ) (n : ℕ) (x : ℝ) : ℂ :=
  (x : ℂ) ^ (s-1) * complexSource A (((n+1 : ℕ) : ℝ)*x)

def sourceNormMoment (A σ : ℝ) : ℝ :=
  ∫ u in Ioi 0, u ^ (σ-1) * ‖complexSource A u‖

theorem weightedSample_integrable {A : ℝ} (hA : 0 < A) (s : ℂ) (n : ℕ) :
    IntegrableOn (weightedSample A s n) (Ioi 0) := by
  have hn : 0 < ((n+1 : ℕ) : ℝ) := by positivity
  simpa only [MellinConvergent,weightedSample,smul_eq_mul] using
    (MellinConvergent.comp_mul_left hn).mpr (actual_source_mellinConvergent hA s)

theorem weightedSample_norm {A x : ℝ} (s : ℂ) (n : ℕ) (hx : 0 < x) :
    ‖weightedSample A s n x‖ = x ^ (s.re-1) *
      ‖complexSource A (((n+1 : ℕ) : ℝ)*x)‖ := by
  simp only [weightedSample,norm_mul,Complex.norm_cpow_eq_rpow_re_of_pos hx,
    Complex.sub_re,Complex.one_re]

theorem weightedSample_norm_integral (A : ℝ) (s : ℂ) (n : ℕ) :
    (∫ x in Ioi 0, ‖weightedSample A s n x‖) =
      (((n+1 : ℕ) : ℝ) ^ (-s.re)) * sourceNormMoment A s.re := by
  let c : ℝ := ((n+1 : ℕ) : ℝ)
  have hc : 0 < c := by dsimp [c]; positivity
  have he : EqOn (fun x => ‖weightedSample A s n x‖)
      (fun x => c^(1-s.re) * ((c*x)^(s.re-1) * ‖complexSource A (c*x)‖)) (Ioi 0) := by
    intro x hx
    rw [weightedSample_norm s n hx]
    change x^(s.re-1) * ‖complexSource A (c*x)‖ = _
    rw [Real.mul_rpow hc.le hx.le]
    rw [← mul_assoc,← mul_assoc,← Real.rpow_add hc]
    have hz : 1-s.re+(s.re-1) = 0 := by ring
    rw [hz,Real.rpow_zero,one_mul]
  rw [setIntegral_congr_fun measurableSet_Ioi he,integral_const_mul,
    integral_comp_mul_left_Ioi (fun u => u^(s.re-1)*‖complexSource A u‖) 0 hc,mul_zero]
  change c^(1-s.re)*(c⁻¹*sourceNormMoment A s.re) = _
  rw [← mul_assoc,← Real.rpow_neg_one,← Real.rpow_add hc]
  congr 2
  ring

theorem weightedSample_norm_integrals_summable {A : ℝ} (s : ℂ) (hs : 1 < s.re) :
    Summable (fun n : ℕ => ∫ x in Ioi 0, ‖weightedSample A s n x‖) := by
  simp_rw [weightedSample_norm_integral]
  apply Summable.mul_const
  exact (summable_nat_add_iff 1).mpr (summable_nat_rpow.mpr (by linarith))

theorem complexMuntz_eq_tsum {A : ℝ} (hA : 1 ≤ A) (x : ℝ) :
    complexMuntz A x = ∑' n : ℕ, complexSource A (((n+1 : ℕ) : ℝ)*x) := by
  rw [complexMuntz,actualMuntz_eq_positiveSamples hA,positiveSamples,Complex.ofReal_tsum]
  rfl

theorem weightedSample_tsum {A : ℝ} (hA : 1 ≤ A) (s : ℂ) (x : ℝ) :
    (∑' n : ℕ, weightedSample A s n x) = (x : ℂ)^(s-1)*complexMuntz A x := by
  simp only [weightedSample,tsum_mul_left,complexMuntz_eq_tsum hA]

theorem weightedSample_integral (A : ℝ) (s : ℂ) (n : ℕ) :
    (∫ x in Ioi 0, weightedSample A s n x) =
      (1 / ((n : ℂ)+1)^s) * mellin (complexSource A) s := by
  have hn : 0 < ((n+1 : ℕ) : ℝ) := by positivity
  have he := mellin_comp_mul_left (complexSource A) s hn
  simpa only [mellin,smul_eq_mul,weightedSample,Complex.cpow_neg,one_div,
    Nat.cast_add,Nat.cast_one,Complex.ofReal_add,Complex.ofReal_natCast,Complex.ofReal_one] using he

theorem actual_muntz_mellin_dirichlet {A : ℝ} (hA : 1 ≤ A) {s : ℂ} (hs : 1 < s.re) :
    mellin (complexMuntz A) s = riemannZeta s * mellin (complexSource A) s := by
  have hi := integral_tsum_of_summable_integral_norm
    (fun n => weightedSample_integrable (by linarith : 0 < A) s n)
    (weightedSample_norm_integrals_summable s hs (A := A))
  simp_rw [weightedSample_integral,weightedSample_tsum hA] at hi
  rw [tsum_mul_right,← zeta_eq_tsum_one_div_nat_add_one_cpow hs] at hi
  exact hi.symm

end ContinuousResearch.ActualMuntzDirichlet
```
