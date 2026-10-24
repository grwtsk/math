# Complete source: GRWTSK.Analysis.ComplexAnalysis.QuotientOrder.Varianta3d79655fab23a4d810463ffea02bbc2ad1591ff050082de32d90b139446adb9

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `cb75c2facd32dd8d1dbdf1da32407db24d683189` · SHA-256 `a3d79655fab23a4d810463ffea02bbc2ad1591ff050082de32d90b139446adb9`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Mathlib.Analysis.Meromorphic.Order
import Mathlib.Analysis.Complex.Basic
import Mathlib.Tactic

/-!
Independent scratch bridge for formal-research #240.
This does not identify any Xi source, operator, determinant, or limit.
The quotient is the raw pointwise quotient, including Lean's value zero at 0/0.
The third theorem upgrades its meromorphic normal form to the actual analytic germ.
Codex AI authored, reusing pinned Mathlib db584cd6d46c92f209a44c0f1c829460d327499d.
-/

namespace ResearchScratch.QuotientOrder

open WithTop.LinearOrderedAddCommGroup
open Filter
open scoped Topology

/-- A finite positive analytic zero order forces denominator order one less. -/
theorem denominator_order {f : ℂ → ℂ} {z₀ : ℂ} {n : ℕ}
    (hf : AnalyticAt ℂ f z₀) (horder : analyticOrderAt f z₀ = n + 1) :
    analyticOrderAt (fun z ↦ f z + deriv f z) z₀ = n := by
  have hd : analyticOrderAt (deriv f) z₀ = n := analyticOrderAt_deriv_of_pos hf horder
  have hlt : analyticOrderAt (deriv f) z₀ < analyticOrderAt f z₀ := by
    rw [hd, horder]
    exact_mod_cast Nat.lt_succ_self n
  simpa only [Pi.add_def, hd] using analyticOrderAt_add_eq_right_of_lt hlt

/-- At a finite positive analytic zero, the reduced quotient has meromorphic order one. -/
theorem reduced_quotient_meromorphic_order {f : ℂ → ℂ} {z₀ : ℂ} {n : ℕ}
    (hf : AnalyticAt ℂ f z₀) (horder : analyticOrderAt f z₀ = n + 1) :
    meromorphicOrderAt (fun z ↦ f z / (f z + deriv f z)) z₀ = 1 := by
  have hden : AnalyticAt ℂ (fun z ↦ f z + deriv f z) z₀ := hf.add hf.deriv
  have hdenorder := denominator_order hf horder
  have h := meromorphicOrderAt_div hf.meromorphicAt hden.meromorphicAt
  rw [hf.meromorphicOrderAt_eq, hden.meromorphicOrderAt_eq, horder, hdenorder] at h
  simp only [← Nat.cast_add_one, ENat.map_natCast] at h
  change meromorphicOrderAt (f / fun z ↦ f z + deriv f z) z₀ = 1
  rw [h]
  rw [← coe_sub]
  norm_num

/-- The raw totalized quotient itself agrees with its removable analytic germ. -/
theorem reduced_quotient_analytic_and_order {f : ℂ → ℂ} {z₀ : ℂ} {n : ℕ}
    (hf : AnalyticAt ℂ f z₀) (horder : analyticOrderAt f z₀ = n + 1) :
    AnalyticAt ℂ (fun z ↦ f z / (f z + deriv f z)) z₀ ∧
      analyticOrderAt (fun z ↦ f z / (f z + deriv f z)) z₀ = 1 := by
  let q : ℂ → ℂ := fun z ↦ f z / (f z + deriv f z)
  have hq : MeromorphicAt q z₀ := hf.meromorphicAt.div (hf.add hf.deriv).meromorphicAt
  have hqorder : meromorphicOrderAt q z₀ = (1 : ℤ) :=
    reduced_quotient_meromorphic_order hf horder
  obtain ⟨u, hu, hu₀, hqu⟩ := (meromorphicOrderAt_eq_int_iff hq).mp hqorder
  have hf₀ : f z₀ = 0 := (analyticOrderAt_ne_zero.mp (by rw [horder]; simp)).2
  have hq₀ : q z₀ = 0 := by simp [q, hf₀]
  have hqu' : q =ᶠ[𝓝 z₀] fun z ↦ (z - z₀) * u z := by
    filter_upwards [eventually_nhdsWithin_iff.mp hqu] with z hz
    by_cases hzz : z = z₀
    · simp [hzz, hq₀]
    · simpa only [zpow_one, smul_eq_mul] using hz hzz
  have hqa : AnalyticAt ℂ q z₀ :=
    (analyticAt_congr hqu').mpr ((analyticAt_id.sub analyticAt_const).mul hu)
  refine ⟨hqa, hqa.analyticOrderAt_eq_natCast.mpr ⟨u, hu, hu₀, ?_⟩⟩
  simpa only [pow_one, smul_eq_mul, Filter.EventuallyEq] using hqu'

/-- Exact simple-, double-, and triple-source-zero specializations. -/
example : analyticOrderAt (fun z : ℂ ↦ z / (z + deriv (fun w : ℂ ↦ w) z)) 0 = 1 :=
  (reduced_quotient_analytic_and_order (n := 0) analyticAt_id (by simp)).2

example : analyticOrderAt
    (fun z : ℂ ↦ z ^ 2 / (z ^ 2 + deriv (fun w : ℂ ↦ w ^ 2) z)) 0 = 1 :=
  (reduced_quotient_analytic_and_order (n := 1) (analyticAt_id.pow 2) (by
    have h := analyticOrderAt_centeredMonomial (z₀ := (0 : ℂ)) (n := 2)
    norm_num [Pi.pow_def] at h ⊢
    exact h)).2

example : analyticOrderAt
    (fun z : ℂ ↦ z ^ 3 / (z ^ 3 + deriv (fun w : ℂ ↦ w ^ 3) z)) 0 = 1 :=
  (reduced_quotient_analytic_and_order (n := 2) (analyticAt_id.pow 3) (by
    have h := analyticOrderAt_centeredMonomial (z₀ := (0 : ℂ)) (n := 3)
    norm_num [Pi.pow_def] at h ⊢
    exact h)).2

#check denominator_order
#check reduced_quotient_meromorphic_order
#check reduced_quotient_analytic_and_order
#print axioms denominator_order
#print axioms reduced_quotient_meromorphic_order
#print axioms reduced_quotient_analytic_and_order

end ResearchScratch.QuotientOrder
```
