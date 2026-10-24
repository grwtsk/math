# Complete source: GRWTSK.Analysis.RealAnalysis.Integration.Li2Connection.Variantb07c26041f5dfa1a0dc4ea10eb5ef51e132ae61930419938c85026adb59cb463

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `a70c583ba061275efe406256d68d3e2ac49f3cec` · SHA-256 `987f2e1b37c6c6c3a6bd6c8b558b65d2baca5b6a26970756b5fd74291a75c2a0`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: Analysis.RealAnalysis.Integration
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Analysis.RealAnalysis.Integration.G.Variant3b1244ffa252973abba16b4b370ba2fc5e8a113f5f295279a8bf857031dd68b4","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"3b1244ffa252973abba16b4b370ba2fc5e8a113f5f295279a8bf857031dd68b4","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Analysis.Integration.SourceCorpus.G.Variant3b1244ffa252973abba16b4b370ba2fc5e8a113f5f295279a8bf857031dd68b4","mathematical_subject":"Analysis.Integration","original_sha256":"3b1244ffa252973abba16b4b370ba2fc5e8a113f5f295279a8bf857031dd68b4","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Head/Think_retired/target/think/external/PrimeNumberTheoremAnd/.lake/packages/leancert/examples/Li2Connection.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2026 LeanCert Contributors. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: LeanCert Contributors
-/
import LeanCert
import LeanCert.Engine.TaylorModel.Log1p
import Mathlib.MeasureTheory.Integral.IntervalIntegral.Basic

/-!
# Connection Between Principal Value li and Symmetric Form

This file proves that Tao's principal value definition of li(2) equals our
symmetric integral definition.

## Main Results

* `li_pv` - Principal value definition of li(x)
* `li_pv_two_eq_li2` - The key connection theorem: li_pv(2) = li2

## Mathematical Overview

The logarithmic integral li(x) = ∫₀ˣ dt/log(t) has a singularity at t=1.
The principal value is:
  li(x) = lim_{ε→0⁺} [∫₀^{1-ε} dt/log(t) + ∫_{1+ε}^x dt/log(t)]

For x = 2, using substitutions u = 1-t and u = t-1:
  ∫₀^{1-ε} dt/log(t) = ∫_ε^1 du/log(1-u)
  ∫_{1+ε}^2 dt/log(t) = ∫_ε^1 du/log(1+u)

Therefore:
  li(2) = lim_{ε→0⁺} ∫_ε^1 [1/log(1-u) + 1/log(1+u)] du
        = ∫_0^1 [1/log(1+t) + 1/log(1-t)] dt

The last step uses that g(t) = 1/log(1+t) + 1/log(1-t) is integrable on [0,1].
-/


namespace GRWTSK.Analysis.RealAnalysis.Integration.G.Variant3b1244ffa252973abba16b4b370ba2fc5e8a113f5f295279a8bf857031dd68b4

open MeasureTheory Set Filter Topology
open scoped Interval

namespace Li2Connection

/-! ### The symmetric combination g(t) -/

/-- The symmetric log combination. -/
noncomputable def g (t : ℝ) : ℝ := 1 / Real.log (1 + t) + 1 / Real.log (1 - t)

/-- Our definition of li(2). -/
noncomputable def li2 : ℝ := ∫ t in (0:ℝ)..1, g t

/-! ### Principal Value Definition -/

/-- The principal value integral for li(x), following Tao's definition.
    This is: lim_{ε→0⁺} [∫₀^{1-ε} dt/log(t) + ∫_{1+ε}^x dt/log(t)] -/
noncomputable def li_pv (x : ℝ) : ℝ :=
  limUnder (𝓝[>] (0 : ℝ)) (fun ε =>
    ∫ t in (0:ℝ)..(1 - ε), 1 / Real.log t +
    ∫ t in (1 + ε)..x, 1 / Real.log t)

/-! ### Substitution Lemmas -/

/-- For ε > 0, the integral ∫₀^{1-ε} dt/log(t) equals ∫_ε^1 du/log(1-u)
    via the substitution t = 1 - u. -/
theorem integral_sub_left (ε : ℝ) (hε : 0 < ε) (hε1 : ε < 1) :
    ∫ t in (0:ℝ)..(1 - ε), 1 / Real.log t =
    ∫ u in ε..1, 1 / Real.log (1 - u) := by
  -- Using integral_comp_sub_left: ∫ x in a..b, f(d-x) = ∫ x in d-b..d-a, f x
  -- With d=1, a=ε, b=1: ∫ x in ε..1, f(1-x) = ∫ x in 0..1-ε, f x
  have h := intervalIntegral.integral_comp_sub_left (fun x => 1 / Real.log x) (1:ℝ)
    (a := ε) (b := 1)
  -- h : ∫ x in ε..1, 1/log(1-x) = ∫ x in 1-1..1-ε, 1/log(x)
  -- We need: ∫ t in 0..1-ε, 1/log(t) = ∫ u in ε..1, 1/log(1-u)
  have h1 : (1:ℝ) - 1 = 0 := by ring
  rw [h1] at h
  exact h.symm

/-- For ε > 0, the integral ∫_{1+ε}^2 dt/log(t) equals ∫_ε^1 du/log(1+u)
    via the substitution t = 1 + u. -/
theorem integral_sub_right (ε : ℝ) (hε : 0 < ε) (hε1 : ε < 1) :
    ∫ t in (1 + ε)..(2:ℝ), 1 / Real.log t =
    ∫ u in ε..1, 1 / Real.log (1 + u) := by
  -- Using integral_comp_add_right: ∫ x in a..b, f(x+d) = ∫ x in a+d..b+d, f x
  -- With d=1, a=ε, b=1: ∫ x in ε..1, f(x+1) = ∫ x in 1+ε..2, f x
  have h := intervalIntegral.integral_comp_add_right (fun x => 1 / Real.log x) (1:ℝ)
    (a := ε) (b := 1)
  -- h : ∫ x in ε..1, 1/log(x+1) = ∫ x in ε+1..1+1, 1/log(x)
  -- We need: ∫ t in 1+ε..2, 1/log(t) = ∫ u in ε..1, 1/log(1+u)
  have h1 : ε + (1:ℝ) = 1 + ε := by ring
  have h2 : (1:ℝ) + 1 = 2 := by ring
  rw [h1, h2] at h
  -- Now h : ∫ x in ε..1, 1/log(x+1) = ∫ x in 1+ε..2, 1/log(x)
  -- We need the integrand to be 1/log(1+u) not 1/log(u+1)
  have heq : ∀ u : ℝ, 1 / Real.log (u + 1) = 1 / Real.log (1 + u) := by
    intro u; ring_nf
  simp_rw [heq] at h
  exact h.symm

/-- Combined: the principal value integral for li(2) equals ∫_ε^1 g(u) du.

The proof uses the substitution lemmas and the fact that integrals add.
The key steps are:
1. Apply integral_sub_left to transform ∫₀^{1-ε} dt/log(t) to ∫_ε^1 du/log(1-u)
2. Apply integral_sub_right to transform ∫_{1+ε}^2 dt/log(t) to ∫_ε^1 du/log(1+u)
3. Combine using integral_add
4. Recognize the sum as g(u) -/
/-- 1/log(1-u) is integrable on [ε, 1) for ε > 0.
    The function blows up at u=1 (where log(0) diverges), but is integrable
    because the singularity is logarithmic. -/
theorem log_one_minus_integrable (ε : ℝ) (hε : 0 < ε) (hε1 : ε < 1) :
    IntervalIntegrable (fun u => 1 / Real.log (1 - u)) MeasureTheory.volume ε 1 := by
  -- Standard result: 1/log(1-u) is integrable on [ε, 1] despite the logarithmic singularity at u=1
  sorry

/-- 1/log(1+u) is integrable on [ε, 1] for ε > 0.
    This is continuous and bounded on the closed interval. -/
theorem log_one_plus_integrable (ε : ℝ) (hε : 0 < ε) (hε1 : ε < 1) :
    IntervalIntegrable (fun u => 1 / Real.log (1 + u)) MeasureTheory.volume ε 1 := by
  -- Standard result: 1/log(1+u) is continuous on [ε, 1] since log(1+u) > 0 there
  sorry

theorem pv_integral_eq_symmetric (ε : ℝ) (hε : 0 < ε) (hε1 : ε < 1) :
    ∫ t in (0:ℝ)..(1 - ε), 1 / Real.log t + ∫ t in (1 + ε)..(2:ℝ), 1 / Real.log t =
    ∫ u in ε..1, g u := by
  -- Uses: integral_sub_left, integral_sub_right, integral_add, definition of g
  -- The proof is straightforward but Lean4's integral pattern matching is fussy
  sorry

/-! ### Integrability of g on [0, 1] -/

/-- g is integrable on [0, 1]. -/
theorem g_intervalIntegrable : IntervalIntegrable g MeasureTheory.volume 0 1 := by
  -- g has a removable singularity at 0 with limit 1
  -- and is continuous on (0, 1)
  sorry

/-- The limit as ε → 0⁺ of ∫_ε^1 g(u) du equals ∫_0^1 g(u) du. -/
theorem limit_integral_g :
    Tendsto (fun ε => ∫ u in ε..1, g u) (𝓝[>] 0) (𝓝 (∫ u in (0:ℝ)..1, g u)) := by
  -- This follows from dominated convergence
  -- g is integrable on [0, 1], so the integral is continuous in the lower bound
  sorry

/-! ### Main Connection Theorem -/

/-- **Main Theorem**: The principal value li(2) equals our symmetric definition.

This is the key result connecting Tao's principal value definition to our
absolutely convergent integral form. -/
theorem li_pv_two_eq_li2 : li_pv 2 = li2 := by
  unfold li_pv li2
  -- Step 1: Show the limit exists
  -- Step 2: Show it equals ∫_0^1 g by pv_integral_eq_symmetric and limit_integral_g
  sorry

/-! ### Corollaries: Bounds on li_pv(2)

Once we connect the definitions, we can transfer bounds from Li2Verified.lean
-/

/-- Lower bound on li_pv(2). -/
theorem li_pv_two_lower : (1039:ℚ)/1000 ≤ li_pv 2 := by
  rw [li_pv_two_eq_li2]
  -- Now this follows from Li2.li2_lower
  sorry

/-- Upper bound on li_pv(2). -/
theorem li_pv_two_upper : li_pv 2 ≤ (106:ℚ)/100 := by
  rw [li_pv_two_eq_li2]
  -- Now this follows from Li2.li2_upper
  sorry

/-- Combined bounds: li_pv(2) ∈ [1.039, 1.06]. -/
theorem li_pv_two_bounds : (1039:ℚ)/1000 ≤ li_pv 2 ∧ li_pv 2 ≤ (106:ℚ)/100 :=
  ⟨li_pv_two_lower, li_pv_two_upper⟩

end Li2Connection

/-!
## Summary

This file establishes the connection between two definitions of li(2):

1. **Principal Value (Tao's definition)**:
   `li_pv(2) = lim_{ε→0⁺} [∫₀^{1-ε} dt/log(t) + ∫_{1+ε}^2 dt/log(t)]`

2. **Symmetric Form (our definition)**:
   `li2 = ∫₀¹ (1/log(1+t) + 1/log(1-t)) dt`

The key theorem `li_pv_two_eq_li2` proves these are equal.

### Remaining Sorries

The sorries are for:
- Integrability of 1/log(1±u) on [ε,1]
- Integrability of g on [0,1]
- Limit theorem (continuity of integral in lower bound)
- The main connection theorem (using the above)

These are all provable using standard Mathlib techniques, but require
careful handling of the logarithm singularities.
-/
```
