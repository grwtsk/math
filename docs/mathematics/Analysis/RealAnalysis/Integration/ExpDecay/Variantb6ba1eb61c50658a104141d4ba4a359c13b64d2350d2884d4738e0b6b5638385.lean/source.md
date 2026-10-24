# Complete source: GRWTSK.Analysis.RealAnalysis.Integration.ExpDecay.Variantb6ba1eb61c50658a104141d4ba4a359c13b64d2350d2884d4738e0b6b5638385

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `b1ff70c5f7779cee1d501cc6a2cf4d2be66c2eeb` · SHA-256 `b6ba1eb61c50658a104141d4ba4a359c13b64d2350d2884d4738e0b6b5638385`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Copyright (c) 2022 David Loeffler. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: David Loeffler
-/
module

public import Mathlib.MeasureTheory.Integral.Asymptotics
public import Mathlib.MeasureTheory.Integral.IntegralEqImproper

/-!
# Integrals with exponential decay at ∞

As easy special cases of general theorems in the library, we prove the following test
for integrability:

* `integrable_of_isBigO_exp_neg`: If `f` is continuous on `[a,∞)`, for some `a ∈ ℝ`, and there
  exists `b > 0` such that `f(x) = O(exp(-b x))` as `x → ∞`, then `f` is integrable on `(a, ∞)`.
* `integrableOn_exp_neg_smul_of_isBigO_exp`: exponential decay dominates a locally integrable
  function of strictly smaller exponential order, with `integrableOn_exp_neg_mul_of_isBigO_exp`
  as the real-valued specialization.
-/

public section


noncomputable section

open Real intervalIntegral MeasureTheory Set Filter Asymptotics

open scoped Topology

/-- `exp (-b * x)` is integrable on `(a, ∞)`. -/
theorem exp_neg_integrableOn_Ioi (a : ℝ) {b : ℝ} (h : 0 < b) :
    IntegrableOn (fun x : ℝ => exp (-b * x)) (Ioi a) := by
  have : Tendsto (fun x => -exp (-b * x) / b) atTop (𝓝 (-0 / b)) := by
    refine Tendsto.div_const (Tendsto.neg ?_) _
    exact tendsto_exp_atBot.comp (tendsto_id.const_mul_atTop_of_neg (neg_neg_iff_pos.2 h))
  refine integrableOn_Ioi_deriv_of_nonneg' (fun x _ => ?_) (fun x _ => (exp_pos _).le) this
  simpa [h.ne'] using ((hasDerivAt_id x).const_mul b).neg.exp.neg.div_const b

/-- If `f` is continuous on `[a, ∞)`, and is `O (exp (-b * x))` at `∞` for some `b > 0`, then
`f` is integrable on `(a, ∞)`. -/
theorem integrable_of_isBigO_exp_neg {f : ℝ → ℝ} {a b : ℝ} (h0 : 0 < b)
    (hf : ContinuousOn f (Ici a)) (ho : f =O[atTop] fun x => exp (-b * x)) :
    IntegrableOn f (Ioi a) :=
  integrableOn_Ici_iff_integrableOn_Ioi (by finiteness) |>.mp <|
    (hf.locallyIntegrableOn measurableSet_Ici).integrableOn_of_isBigO_atTop
    ho ⟨Ioi b, Ioi_mem_atTop b, exp_neg_integrableOn_Ioi b h0⟩

/-- If `f` is locally integrable on `[c, ∞)` and `f x = O(exp (a * x))` at `∞`, then
`exp (-b * x) • f x` is integrable on `[c, ∞)` for every `a < b`. -/
theorem integrableOn_exp_neg_smul_of_isBigO_exp {E : Type*} [NormedAddCommGroup E]
    [NormedSpace ℝ E] {a b c : ℝ} {f : ℝ → E} (hfc : LocallyIntegrableOn f (Ici c))
    (hf : f =O[atTop] fun x : ℝ => exp (a * x)) (hab : a < b) :
    IntegrableOn (fun x : ℝ => exp (-b * x) • f x) (Ici c) := by
  have hloc : LocallyIntegrableOn (fun x : ℝ => exp (-b * x) • f x) (Ici c) :=
    hfc.continuousOn_smul isClosed_Ici.isLocallyClosed (by fun_prop)
  exact hloc.integrableOn_of_isBigO_atTop (g := fun x : ℝ => exp ((a - b) * x))
    (((isBigO_refl _ atTop).smul hf).congr_right fun x => by
      simp only [smul_eq_mul, ← exp_add]; ring_nf)
    ⟨Ioi c, Ioi_mem_atTop c, by
      simpa [neg_sub] using exp_neg_integrableOn_Ioi c (sub_pos.mpr hab)⟩

/-- Real-valued specialization of `integrableOn_exp_neg_smul_of_isBigO_exp`. -/
theorem integrableOn_exp_neg_mul_of_isBigO_exp {a b c : ℝ} {f : ℝ → ℝ}
    (hfc : LocallyIntegrableOn f (Ici c)) (hf : f =O[atTop] fun x : ℝ => exp (a * x))
    (hab : a < b) : IntegrableOn (fun x : ℝ => exp (-b * x) * f x) (Ici c) := by
  simpa using integrableOn_exp_neg_smul_of_isBigO_exp hfc hf hab
```
