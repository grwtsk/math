# Complete source: GRWTSK.Analysis.RealAnalysis.Integration.Efec1d407a6f371d81b31d5e81b8947f1b89ea3bdb3668ebfdae4f41b9b2fcddPrimePowerPerron.Variantefec1d407a6f371d81b31d5e81b8947f1b89ea3bdb3668ebfdae4f41b9b2fcdd

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `004a0d2eb2abd8aeb461fcabb0c60c6e65af05ad` · SHA-256 `efec1d407a6f371d81b31d5e81b8947f1b89ea3bdb3668ebfdae4f41b9b2fcdd`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Zeta23.WeilEF.FullLine
namespace FormalResearch.RiemannHypothesis.PrimePowerPerron
open MeasureTheory Complex Zeta23 Zeta23.EF
open scoped ArithmeticFunction
private theorem perron_per_n_integral (φ k : ℝ → ℂ) (c : ℝ)
    (hInv : ∀ y : ℝ, (1 / (2 * Real.pi) : ℂ) *
      ∫ t : ℝ, φ t * Complex.exp (-Complex.I * (t : ℂ) * (y : ℂ)) =
        k y * (Real.exp ((c - 1 / 2) * y) : ℂ)) (n : ℕ) :
    (1 / (2 * Real.pi) : ℂ) *
      ∫ t : ℝ, φ t * LSeries.term (fun n ↦ (ArithmeticFunction.vonMangoldt n : ℂ))
        ((c : ℂ) + (t : ℂ) * Complex.I) n =
          ((ArithmeticFunction.vonMangoldt n / Real.sqrt n : ℝ) : ℂ) * k (Real.log n) := by
  rcases Nat.eq_zero_or_pos n with rfl | hn
  · simp [LSeries.term]
  · have hn1 : (1:ℝ) ≤ (n:ℝ) := by exact_mod_cast hn
    have hn0 : (0:ℝ) < (n:ℝ) := by linarith
    have hnC : (n:ℂ) ≠ 0 := by exact_mod_cast hn.ne'
    have hterm : ∀ t : ℝ, LSeries.term (fun n => (Λ n : ℂ)) (c + t * I) n
        = ((Λ n : ℝ) : ℂ) * (((n:ℝ) ^ (-c) : ℝ) : ℂ) * cexp (-I * t * Real.log n) := by
      intro t
      rw [LSeries.term_of_ne_zero hn.ne', div_eq_mul_inv, ← Complex.cpow_neg]
      have hsplit : (-((c:ℂ) + t * I)) = (-(c:ℂ)) + (-(I * t)) := by ring
      rw [hsplit, Complex.cpow_add _ _ hnC]
      have h1 : (n:ℂ) ^ (-(c:ℂ)) = (((n:ℝ) ^ (-c) : ℝ) : ℂ) := by
        rw [show ((n:ℂ)) = (((n:ℝ):ℂ)) by push_cast; rfl,
          show (-(c:ℂ)) = ((-c : ℝ) : ℂ) by push_cast; rfl,
          ← Complex.ofReal_cpow hn0.le]
      have h2 : (n:ℂ) ^ (-(I * t)) = cexp (-I * t * Real.log n) := by
        rw [Complex.cpow_def_of_ne_zero hnC]
        congr 1
        rw [show ((n:ℂ)) = (((n:ℝ):ℂ)) by push_cast; rfl, ← Complex.ofReal_log hn0.le]
        ring
      rw [h1, h2]
      ring
    simp_rw [hterm]
    have hre : (fun t : ℝ => φ t
        * (((Λ n : ℝ) : ℂ) * (((n:ℝ) ^ (-c) : ℝ) : ℂ) * cexp (-I * t * Real.log n)))
        = fun t : ℝ => (((Λ n : ℝ) : ℂ) * (((n:ℝ) ^ (-c) : ℝ) : ℂ))
          * (φ t * cexp (-I * t * Real.log n)) := by
      funext t
      ring
    rw [hre, Zeta23.EF.cintegral_const_mul]
    rw [show (1 / (2 * (Real.pi : ℂ))) * ((((Λ n : ℝ) : ℂ) * (((n:ℝ) ^ (-c) : ℝ) : ℂ))
        * ∫ t : ℝ, φ t * cexp (-I * t * Real.log n))
        = (((Λ n : ℝ) : ℂ) * (((n:ℝ) ^ (-c) : ℝ) : ℂ))
          * ((1 / (2 * (Real.pi : ℂ))) * ∫ t : ℝ, φ t
            * cexp (-I * t * Real.log n)) from by ring]
    rw [hInv (Real.log n)]
    have hexp : Real.exp ((c - 1/2) * Real.log n) = (n:ℝ) ^ (c - 1/2) := by
      rw [Real.rpow_def_of_pos hn0]
      ring_nf
    have hpow : ((n:ℝ) ^ (-c) : ℝ) * ((n:ℝ) ^ (c - 1/2) : ℝ) = ((n:ℝ) ^ (-(1/2) : ℝ) : ℝ) := by
      rw [← Real.rpow_add hn0]
      congr 1
      ring
    have hsqrt : ((n:ℝ) ^ (-(1/2) : ℝ) : ℝ) = 1 / Real.sqrt n := by
      rw [Real.rpow_neg hn0.le, Real.sqrt_eq_rpow]
      exact (one_div _).symm
    calc ((Λ n : ℝ) : ℂ) * (((n:ℝ) ^ (-c) : ℝ) : ℂ)
        * (k (Real.log n) * ((Real.exp ((c - 1/2) * Real.log n) : ℝ) : ℂ))
        = ((Λ n : ℝ) : ℂ) * (((n:ℝ) ^ (-c) : ℝ) : ℂ)
          * (k (Real.log n) * (((n:ℝ) ^ (c - 1/2) : ℝ) : ℂ)) := by rw [hexp]
      _ = ((((Λ n : ℝ) * ((n:ℝ) ^ (-c) * (n:ℝ) ^ (c - 1/2)) : ℝ)) : ℂ) * k (Real.log n) := by
          push_cast
          ring
      _ = ((Λ n / Real.sqrt n : ℝ) : ℂ) * k (Real.log n) := by
          rw [hpow, hsqrt, mul_one_div]


private theorem perron_line_integral_swap (φ : ℝ → ℂ) (hφ : Integrable φ)
    {c : ℝ} (hc1 : 1 < c) :
    ∫ t : ℝ, (∑' n : ℕ, φ t *
      LSeries.term (fun n ↦ (ArithmeticFunction.vonMangoldt n : ℂ))
        ((c : ℂ) + (t : ℂ) * Complex.I) n) =
          ∑' n : ℕ, ∫ t : ℝ, φ t *
            LSeries.term (fun n ↦ (ArithmeticFunction.vonMangoldt n : ℂ))
              ((c : ℂ) + (t : ℂ) * Complex.I) n := by
  have hpfi := hφ
  have hre : ∀ t : ℝ, ((c:ℂ) + t * I).re = c := by
    intro t
    simp
  have hnorm : ∀ (n : ℕ) (t : ℝ), ‖LSeries.term (fun n => (Λ n : ℂ)) ((c:ℂ) + t * I) n‖
      = if n = 0 then (0:ℝ) else (Λ n : ℝ) * ((n:ℝ) ^ (-c)) := by
    intro n t
    rw [LSeries.norm_term_eq, hre, Complex.norm_real, Real.norm_eq_abs,
      abs_of_nonneg ArithmeticFunction.vonMangoldt_nonneg, Real.rpow_neg (Nat.cast_nonneg n),
      div_eq_mul_inv]
  have hcont : ∀ n : ℕ, Continuous (fun t : ℝ =>
      LSeries.term (fun n => (Λ n : ℂ)) ((c:ℂ) + t * I) n) := by
    intro n
    rcases eq_or_ne n 0 with rfl | hn
    · simpa [LSeries.term_zero] using continuous_const
    · simp only [LSeries.term_of_ne_zero hn]
      refine continuous_const.div ?_ (fun t => ?_)
      · refine Continuous.const_cpow (by fun_prop) (Or.inl ?_)
        exact_mod_cast hn
      · exact cpow_ne_zero_iff.mpr (Or.inl (by exact_mod_cast hn))
  have hint : ∀ n : ℕ, Integrable (fun t : ℝ => φ t
      * LSeries.term (fun n => (Λ n : ℂ)) ((c:ℂ) + t * I) n) := by
    intro n
    refine hpfi.mul_bdd (c := if n = 0 then (0:ℝ) else (Λ n : ℝ) * ((n:ℝ) ^ (-c)))
      (hcont n).aestronglyMeasurable ?_
    filter_upwards with t
    rw [hnorm n t]
  have heval : ∀ n : ℕ, (∫ t : ℝ, ‖φ t
      * LSeries.term (fun n => (Λ n : ℂ)) ((c:ℂ) + t * I) n‖)
      = (∫ t : ℝ, ‖φ t‖)
        * (if n = 0 then (0:ℝ) else (Λ n : ℝ) * ((n:ℝ) ^ (-c))) := by
    intro n
    rw [← integral_mul_const]
    refine integral_congr_ae (Filter.Eventually.of_forall fun t => ?_)
    simp only
    rw [norm_mul, hnorm n t]
  have hcn : Summable (fun n : ℕ => if n = 0 then (0:ℝ) else (Λ n : ℝ) * ((n:ℝ) ^ (-c))) := by
    have hs : LSeriesSummable (fun n => (Λ n : ℂ)) (c : ℂ) :=
      ArithmeticFunction.LSeriesSummable_vonMangoldt (by simpa using hc1)
    have hns : Summable (fun n : ℕ => ‖LSeries.term (fun n => (Λ n : ℂ)) (c : ℂ) n‖) :=
      summable_norm_iff.mpr hs
    refine hns.congr fun n => ?_
    simpa using hnorm n 0
  have hsum : Summable (fun n : ℕ => ∫ t : ℝ, ‖φ t
      * LSeries.term (fun n => (Λ n : ℂ)) ((c:ℂ) + t * I) n‖) := by
    refine ((hcn.mul_left (∫ t : ℝ, ‖φ t‖)).congr fun n => ?_)
    rw [heval n]
  exact (MeasureTheory.hasSum_integral_of_summable_integral_norm hint hsum).tsum_eq.symm


private theorem perron_prime_side_line (φ k : ℝ → ℂ) (hφ : Integrable φ)
    (c : ℝ) (hc : 1 < c)
    (hInv : ∀ y : ℝ, (1 / (2 * Real.pi) : ℂ) *
      ∫ t : ℝ, φ t * Complex.exp (-Complex.I * (t : ℂ) * (y : ℂ)) =
        k y * (Real.exp ((c - 1 / 2) * y) : ℂ)) :
    (1 / (2 * Real.pi) : ℂ) *
      ∫ t : ℝ, φ t * (-logDeriv riemannZeta ((c : ℂ) + (t : ℂ) * Complex.I)) =
        ∑' n : ℕ, ((ArithmeticFunction.vonMangoldt n / Real.sqrt n : ℝ) : ℂ) * k (Real.log n) := by
  have h1 (t : ℝ) : φ t * (-logDeriv riemannZeta ((c : ℂ) + (t : ℂ) * Complex.I)) =
      ∑' n : ℕ, φ t * LSeries.term (fun n ↦ (ArithmeticFunction.vonMangoldt n : ℂ))
        ((c : ℂ) + (t : ℂ) * Complex.I) n := by
    have hre : 1 < ((c : ℂ) + (t : ℂ) * Complex.I).re := by simpa using hc
    have h2 := ArithmeticFunction.LSeries_vonMangoldt_eq_deriv_riemannZeta_div hre
    have he : -logDeriv riemannZeta ((c : ℂ) + (t : ℂ) * Complex.I) =
        LSeries (fun n ↦ (ArithmeticFunction.vonMangoldt n : ℂ))
          ((c : ℂ) + (t : ℂ) * Complex.I) := by
      rw [logDeriv, Pi.div_apply, h2]
      ring
    rw [he, LSeries, ← tsum_mul_left]
  rw [integral_congr_ae (Filter.Eventually.of_forall h1),
    perron_line_integral_swap φ hφ hc, ← tsum_mul_left]
  exact tsum_congr fun n ↦ perron_per_n_integral φ k c hInv n

end FormalResearch.RiemannHypothesis.PrimePowerPerron
```
