# Complete source: GRWTSK.Analysis.LaplaceTransform.ExponentialEnergy

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `c16035cb063fb71371e19b294ab32eb51862b9ff` · SHA-256 `bffd214fed216b14466037fc07d90703550a7666e6666dfeeae0cb49c41bf3df`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/- Copyright (c) 2026 grwtsk contributors. MIT.
Human mathematical direction: grwtsk contributors. Formalization assistance: OpenAI Codex.
Mathlib results retain their upstream authorship and Apache-2.0 license. -/
import GRWTSK.Analysis.LaplaceTransform.PolynomialEnergy
import Mathlib.Algebra.Order.Star.Real

set_option autoImplicit false
noncomputable section
namespace GRWTSK.RiemannHypothesis.CCC
open MeasureTheory Set Filter
open scoped Topology

/-- One cumulative exponential rate pays only strictly larger square-energy tilts. -/
theorem integrableOn_sq_tilt_of_energy_exponential {f : ℝ → ℝ} (hf : Continuous f)
    {C δ σ : ℝ} (hσ : 0 < σ) (hgap : δ < σ)
    (hb : ∀ T : ℝ, 0 ≤ T →
      (∫ u in (0 : ℝ)..T, f u ^ 2) ≤ C * Real.exp (δ * T)) :
    IntegrableOn (fun u ↦ Real.exp (-σ * u) * f u ^ 2) (Ici 0) := by
  have hfsq : Continuous (fun u ↦ f u ^ 2) := hf.pow 2
  have ht : Continuous (fun u ↦ Real.exp (-σ * u) * f u ^ 2) :=
    (Real.continuous_exp.comp (continuous_const.mul continuous_id)).mul hfsq
  have hblock (n : ℕ) :
      (∫ u in Icc (n : ℝ) ((n : ℝ) + 1), ‖Real.exp (-σ * u) * f u ^ 2‖) ≤
        (C * Real.exp δ) * Real.exp (-(σ - δ) * n) := by
    have hm : Continuous (fun u ↦ Real.exp (-σ * (n : ℝ)) * f u ^ 2) :=
      continuous_const.mul hfsq
    have hi :
        (∫ u in Icc (n : ℝ) ((n : ℝ) + 1), ‖Real.exp (-σ * u) * f u ^ 2‖) ≤
          ∫ u in Icc (n : ℝ) ((n : ℝ) + 1), Real.exp (-σ * (n : ℝ)) * f u ^ 2 := by
      apply setIntegral_mono_on ht.norm.integrableOn_Icc hm.integrableOn_Icc
        measurableSet_Icc
      intro u hu
      rw [Real.norm_eq_abs, abs_of_nonneg (mul_nonneg (Real.exp_pos _).le (sq_nonneg _))]
      apply mul_le_mul_of_nonneg_right _ (sq_nonneg _)
      exact Real.exp_le_exp.mpr (by nlinarith [hu.1])
    have hp : (∫ u in Icc (n : ℝ) ((n : ℝ) + 1), f u ^ 2) ≤
        ∫ u in Icc (0 : ℝ) ((n : ℝ) + 1), f u ^ 2 := by
      apply setIntegral_mono_set hfsq.integrableOn_Icc (ae_of_all _ (fun u ↦ sq_nonneg (f u)))
      exact ae_of_all _ (fun u hu ↦ ⟨le_trans (Nat.cast_nonneg n) hu.1, hu.2⟩)
    have he : (∫ u in Icc (0 : ℝ) ((n : ℝ) + 1), f u ^ 2) ≤
        C * Real.exp (δ * ((n : ℝ) + 1)) := by
      simpa only [intervalIntegral.integral_of_le (by positivity : (0 : ℝ) ≤ (n : ℝ) + 1),
        integral_Icc_eq_integral_Ioc] using hb ((n : ℝ) + 1) (by positivity)
    rw [integral_const_mul] at hi
    calc
      _ ≤ Real.exp (-σ * n) * (C * Real.exp (δ * ((n : ℝ) + 1))) :=
        hi.trans (mul_le_mul_of_nonneg_left (hp.trans he) (Real.exp_pos _).le)
      _ = _ := by
        have hexp : Real.exp (-σ * (n : ℝ)) * Real.exp (δ * ((n : ℝ) + 1)) =
            Real.exp δ * Real.exp (-(σ - δ) * n) := by
          rw [← Real.exp_add, ← Real.exp_add]
          congr 1
          ring
        calc
          _ = C * (Real.exp (-σ * (n : ℝ)) * Real.exp (δ * ((n : ℝ) + 1))) := by ring
          _ = _ := by rw [hexp]; ring
  have hs : Summable (fun n : ℕ ↦ Real.exp (-(σ - δ) * n)) := by
    simpa only [Real.rpow_zero, mul_one] using
      summable_exp_neg_mul_nat_add_rpow (σ - δ) 0 (sub_pos.mpr hgap)
  have hnorm : Summable (fun n : ℕ ↦
      ∫ u in Icc (n : ℝ) ((n : ℝ) + 1), ‖Real.exp (-σ * u) * f u ^ 2‖) :=
    Summable.of_nonneg_of_le (fun n ↦ integral_nonneg (fun _ ↦ norm_nonneg _))
      hblock (hs.mul_left (C * Real.exp δ))
  have hi : IntegrableOn (fun u ↦ Real.exp (-σ * u) * f u ^ 2)
      (⋃ n : ℕ, Icc (n : ℝ) ((n : ℝ) + 1)) :=
    integrableOn_iUnion_of_summable_integral_norm (fun _ ↦ ht.integrableOn_Icc) hnorm
  apply hi.mono_set
  intro u hu
  exact mem_iUnion.mpr ⟨⌊u⌋₊, Nat.floor_le hu, (Nat.lt_floor_add_one u).le⟩

end GRWTSK.RiemannHypothesis.CCC
```
