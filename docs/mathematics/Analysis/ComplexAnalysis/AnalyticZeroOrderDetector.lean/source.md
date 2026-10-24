# Complete source: GRWTSK.Analysis.Complex.AnalyticZeroOrderDetector

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `cbfcd672b3ac88d8b40e404d15058f37529e2872` · SHA-256 `72c753aaad1e1dbf0242a76e6ce42c99a73319ea3c4d64a15c02f07f8ca08d8a`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import GRWTSK.Analysis.Complex.LogarithmicOrderDetection
import Mathlib.Analysis.Analytic.Uniqueness

/-! Finite analytic order supplies the local factorization required by B3.
The completed function and proof that its germ is nonzero remain source obligations. -/
namespace GRWTSK.Analysis.Complex.LogarithmicPrincipalPart
open Filter
open scoped Topology

/-- A nonzero value on a preconnected analytic domain excludes an identically zero germ. -/
theorem analytic_order_finite_of_nonzero_value (f : ℂ → ℂ) (D : Set ℂ)
    (hf : AnalyticOnNhd ℂ f D) (hD : IsPreconnected D) (a b : ℂ)
    (ha : a ∈ D) (hb : b ∈ D) (hfb : f b ≠ 0) : analyticOrderAt f a ≠ ⊤ := by
  intro htop
  have hzero : f =ᶠ[𝓝 a] fun _ => (0 : ℂ) := analyticOrderAt_eq_top.mp htop
  have heq := hf.eqOn_of_preconnected_of_eventuallyEq analyticOnNhd_const hD ha hzero
  exact hfb (heq hb)

/-- Extract an actual analytic unit from analyticity and finite analytic order. -/
theorem analytic_finite_order_factorization (f : ℂ → ℂ) (a : ℂ)
    (hf : AnalyticAt ℂ f a) (hfinite : analyticOrderAt f a ≠ ⊤) :
    ∃ u : ℂ → ℂ, AnalyticAt ℂ u a ∧ u a ≠ 0 ∧
      f =ᶠ[𝓝[≠] a] fun s => (s - a) ^ (analyticOrderNatAt f a : ℤ) * u s := by
  obtain ⟨u, hu, hu0, hfactor⟩ := hf.analyticOrderAt_ne_top.mp hfinite
  refine ⟨u, hu, hu0, ?_⟩
  simpa only [zpow_natCast, smul_eq_mul] using hfactor.filter_mono nhdsWithin_le_nhds

/-- The signed scaled logarithmic coefficient is now derived without a supplied unit. -/
theorem analytic_finite_order_scaled_coefficient (f : ℂ → ℂ) (a : ℂ)
    (hf : AnalyticAt ℂ f a) (hfinite : analyticOrderAt f a ≠ ⊤) :
    Tendsto (fun s => (s - a) * (-logDeriv f s)) (𝓝[≠] a)
      (𝓝 (-(analyticOrderNatAt f a : ℂ))) := by
  obtain ⟨u, hu, hu0, hfactor⟩ := analytic_finite_order_factorization f a hf hfinite
  simpa using tendsto_scaled_neg_logDeriv_of_factorization f u a
    (analyticOrderNatAt f a : ℤ) hu hu0 hfactor

/-- A finite-order analytic zero has strictly positive natural multiplicity. -/
theorem analytic_zero_order_pos (f : ℂ → ℂ) (a : ℂ)
    (hf : AnalyticAt ℂ f a) (hfinite : analyticOrderAt f a ≠ ⊤) (hzero : f a = 0) :
    0 < analyticOrderNatAt f a := by
  apply Nat.pos_of_ne_zero
  intro hn
  have hnonzero := hf.analyticOrderAt_ne_zero.mpr hzero
  apply hnonzero
  rw [← Nat.cast_analyticOrderNatAt hfinite, hn]
  rfl

/-- The local zero detector has no continuous logDeriv extension at a finite-order zero. -/
theorem analytic_zero_no_continuous_logDeriv_extension (f : ℂ → ℂ) (a : ℂ)
    (hf : AnalyticAt ℂ f a) (hfinite : analyticOrderAt f a ≠ ⊤) (hzero : f a = 0) :
    ¬ ∃ H : ℂ → ℂ, ContinuousAt H a ∧ H =ᶠ[𝓝[≠] a] logDeriv f := by
  obtain ⟨u, hu, hu0, hfactor⟩ := analytic_finite_order_factorization f a hf hfinite
  apply no_continuous_extension_of_nonzero_order f u a (analyticOrderNatAt f a : ℤ)
    hu hu0 hfactor
  exact_mod_cast (Nat.ne_of_gt (analytic_zero_order_pos f a hf hfinite hzero))
/-- A nonzero analytic source value supplies the finite-order gate for the local detector. -/
theorem analytic_zero_detector_of_nonzero_value (f : ℂ → ℂ) (D : Set ℂ)
    (hf : AnalyticOnNhd ℂ f D) (hD : IsPreconnected D) (a b : ℂ)
    (ha : a ∈ D) (hb : b ∈ D) (hfb : f b ≠ 0) (hzero : f a = 0) :
    ¬ ∃ H : ℂ → ℂ, ContinuousAt H a ∧ H =ᶠ[𝓝[≠] a] logDeriv f :=
  analytic_zero_no_continuous_logDeriv_extension f a (hf a ha)
    (analytic_order_finite_of_nonzero_value f D hf hD a b ha hb hfb) hzero
end GRWTSK.Analysis.Complex.LogarithmicPrincipalPart
```
