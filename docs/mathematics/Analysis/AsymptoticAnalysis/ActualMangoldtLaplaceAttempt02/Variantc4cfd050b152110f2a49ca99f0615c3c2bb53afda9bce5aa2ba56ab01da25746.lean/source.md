# Complete source: GRWTSK.Analysis.AsymptoticAnalysis.ActualMangoldtLaplaceAttempt02.Variantc4cfd050b152110f2a49ca99f0615c3c2bb53afda9bce5aa2ba56ab01da25746

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `55453c4a3659ece04773b5119ad787578d37e1d6` · SHA-256 `c4cfd050b152110f2a49ca99f0615c3c2bb53afda9bce5aa2ba56ab01da25746`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import FormalResearch.RiemannHypothesis.SourceMangoldtAbel
import Mathlib.NumberTheory.LSeries.Dirichlet
import Mathlib.Analysis.SpecialFunctions.ImproperIntegrals
import Mathlib.MeasureTheory.Integral.DominatedConvergence

/-! Literal closed full-Mangoldt prefix: positive log-onset Laplace transport.
Direction grwtsk contributors; focused scratch construction OpenAI Codex.
No Ramaré, unweighted residual L1, desired intercept, signed bound or RH premise. -/
set_option autoImplicit false
set_option maxHeartbeats 800000
noncomputable section
namespace ContinuousResearch.ActualMangoldtLaplace
open MeasureTheory Set Filter
open scoped Topology
open FormalResearch.RiemannHypothesis.SourceMangoldtAbel
open FormalResearch.RiemannHypothesis.SourcePairing

 def mangoldtWeight (n : ℕ) : ℝ :=
  ArithmeticFunction.vonMangoldt (n+2) / ((n+2 : ℕ) : ℝ)

 def laplaceAtom (s : ℝ) (n : ℕ) : ℝ → ℝ :=
  (Ici (Real.log ((n+2 : ℕ) : ℝ))).indicator
    (fun t => mangoldtWeight n * Real.exp (-s*t))

theorem onset_pos (n : ℕ) : 0 < Real.log ((n+2 : ℕ) : ℝ) := by
  exact Real.log_pos (by exact_mod_cast (by omega : 1 < n+2))

theorem weight_nonneg (n : ℕ) : 0 ≤ mangoldtWeight n := by
  unfold mangoldtWeight
  exact div_nonneg ArithmeticFunction.vonMangoldt_nonneg (by positivity)

theorem atom_nonneg (s t : ℝ) (n : ℕ) : 0 ≤ laplaceAtom s n t := by
  exact indicator_nonneg (fun _ _ => mul_nonneg (weight_nonneg n) (Real.exp_pos _).le) t

theorem atom_measurable (s : ℝ) (n : ℕ) : Measurable (laplaceAtom s n) := by
  unfold laplaceAtom
  apply Measurable.indicator _ measurableSet_Ici
  exact measurable_const.mul (((measurable_const.mul measurable_id) :
    Measurable (fun t : ℝ => (-s)*t)).exp)

theorem atom_integrable {s : ℝ} (hs : 0 < s) (n : ℕ) : Integrable (laplaceAtom s n) := by
  unfold laplaceAtom
  apply IntegrableOn.integrable_indicator _ measurableSet_Ici
  apply Integrable.const_mul
  exact Iff.mpr integrableOn_Ici_iff_integrableOn_Ioi
    (integrableOn_exp_mul_Ioi (by linarith : -s < 0) _)

theorem atom_integral {s : ℝ} (hs : 0 < s) (n : ℕ) :
    (∫ t : ℝ, laplaceAtom s n t) =
      (mangoldtWeight n * Real.exp (-s * Real.log ((n+2 : ℕ) : ℝ))) / s := by
  unfold laplaceAtom
  rw [integral_indicator measurableSet_Ici, integral_const_mul,
    integral_Ici_eq_integral_Ioi,integral_exp_mul_Ioi (by linarith : -s < 0)]
  ring

theorem weighted_exp_eq_norm_term (s : ℝ) (n : ℕ) :
    mangoldtWeight n * Real.exp (-s * Real.log ((n+2 : ℕ) : ℝ)) =
      ‖LSeries.term (fun k : ℕ => (ArithmeticFunction.vonMangoldt k : ℂ))
        ((s+1 : ℝ) : ℂ) (n+2)‖ := by
  rw [LSeries.norm_term_eq,if_neg (by omega : n+2 ≠ 0)]
  simp only [Complex.norm_real,Real.norm_eq_abs,abs_of_nonneg ArithmeticFunction.vonMangoldt_nonneg,
    Complex.ofReal_re]
  have hc : 0 < ((n+2 : ℕ) : ℝ) := by positivity
  rw [Real.rpow_add hc,Real.rpow_one,Real.rpow_def_of_pos hc]
  simp only [mangoldtWeight,neg_mul,Real.exp_neg]
  rw [mul_comm (Real.log ((n+2 : ℕ) : ℝ)) s]
  ring

theorem atom_norm_integrals_summable {s : ℝ} (hs : 0 < s) :
    Summable (fun n : ℕ => ∫ t : ℝ, ‖laplaceAtom s n t‖) := by
  have h := (ArithmeticFunction.LSeriesSummable_vonMangoldt
    (s:=((s+1 : ℝ):ℂ)) (by simp only [Complex.ofReal_re]; linarith)).norm
  have hn := (summable_nat_add_iff 2).mpr h
  have he (n : ℕ) : (∫ t : ℝ, ‖laplaceAtom s n t‖) =
    ‖LSeries.term (fun k : ℕ => (ArithmeticFunction.vonMangoldt k : ℂ))
        ((s+1 : ℝ) : ℂ) (n+2)‖ / s := by
    simp_rw [Real.norm_of_nonneg (atom_nonneg s _ n)]
    rw [atom_integral hs,weighted_exp_eq_norm_term]
  simp_rw [he]
  exact hn.div_const s

theorem onset_closed_iff (n : ℕ) (t : ℝ) :
    Real.log ((n+2 : ℕ) : ℝ) ≤ t ↔ n+2 ≤ ⌊Real.exp t⌋₊ := by
  have hc : 0 < ((n+2 : ℕ) : ℝ) := by positivity
  rw [Real.log_le_iff_le_exp hc, Nat.le_floor_iff (Real.exp_pos t).le]

theorem atom_zero_outside (s t : ℝ) (n : ℕ)
    (hn : n ∉ Finset.range (⌊Real.exp t⌋₊ - 1)) : laplaceAtom s n t = 0 := by
  apply indicator_of_notMem
  simp only [mem_Ici]
  intro h
  have hc := (onset_closed_iff n t).mp h
  simp only [Finset.mem_range] at hn
  omega

theorem atoms_summable (s t : ℝ) : Summable (fun n : ℕ => laplaceAtom s n t) := by
  exact summable_of_ne_finset_zero (fun n => atom_zero_outside s t n)

theorem atoms_tsum_eq_actual (s t : ℝ) :
    (∑' n : ℕ, laplaceAtom s n t) = Real.exp (-s*t) * mangoldtLogPrefix t := by
  rw [tsum_eq_sum (s:=Finset.range (⌊Real.exp t⌋₊-1)) (atom_zero_outside s t),
    mangoldtLogPrefix_eq_sum,Finset.mul_sum]
  apply Finset.sum_bij (fun n _ => n+2)
  · intro n hn
    simp only [primePowerInventory,Finset.mem_Icc]
    simp only [Finset.mem_range] at hn
    omega
  · intro n _ m _ he
    omega
  · intro n hn
    simp only [primePowerInventory,Finset.mem_Icc] at hn
    refine ⟨n-2,?_,?_⟩
    · simp only [Finset.mem_range]
      omega
    · omega
  · intro n hn
    have hc : n+2 ≤ ⌊Real.exp t⌋₊ := by
      simp only [Finset.mem_range] at hn
      omega
    have ht := (onset_closed_iff n t).mpr hc
    rw [laplaceAtom,indicator_of_mem (show t ∈ Ici (Real.log ((n+2 : ℕ) : ℝ)) from ht)]
    unfold mangoldtWeight
    ring

end ContinuousResearch.ActualMangoldtLaplace
```
