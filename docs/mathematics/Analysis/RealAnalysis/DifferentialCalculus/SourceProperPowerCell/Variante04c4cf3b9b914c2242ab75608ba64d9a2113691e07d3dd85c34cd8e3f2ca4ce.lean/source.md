# Complete source: GRWTSK.Analysis.RealAnalysis.DifferentialCalculus.SourceProperPowerCell.Variante04c4cf3b9b914c2242ab75608ba64d9a2113691e07d3dd85c34cd8e3f2ca4ce

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `66120c8768710337e574eb61a7657db85af4abde` · SHA-256 `f26b8268e7a6f088fb3cb8943d563a9c7ac4c9886ec4794bc974a08e5813670d`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: Analysis.RealAnalysis.DifferentialCalculus
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Analysis.RealAnalysis.DifferentialCalculus.PowerTailBudget.Variantc24cd60074b702f4686fa3bc59f63827bc96aaf287a3b6eaa425556ab21b8872","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"c24cd60074b702f4686fa3bc59f63827bc96aaf287a3b6eaa425556ab21b8872","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Analysis.Calculus.SourceCorpus.PowerTailBudget.Variantc24cd60074b702f4686fa3bc59f63827bc96aaf287a3b6eaa425556ab21b8872","mathematical_subject":"Analysis.Calculus","original_sha256":"c24cd60074b702f4686fa3bc59f63827bc96aaf287a3b6eaa425556ab21b8872","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/rh16-balance-overnight-20261007/graph-review/independent-proper-power-diagonal/author-evidence/author-attempt02/SourceProperPowerCell.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import FormalResearch.RiemannHypothesis.WeightedPrimeMertens
import Mathlib.Analysis.Calculus.Deriv.MeanValue

/-! A finite discrete-cell certificate for the actual proper-power majorant.
Research direction: grwtsk contributors. Calculation/formalization: OpenAI Codex.
This module supplies no signed arithmetic witness. -/


namespace GRWTSK.Analysis.RealAnalysis.DifferentialCalculus.PowerTailBudget.Variantc24cd60074b702f4686fa3bc59f63827bc96aaf287a3b6eaa425556ab21b8872

set_option autoImplicit false
noncomputable section

namespace RH16ProperPowerCell

open Finset Real

/-- The same scalar budget is used at the global and large-base consumers. -/
def powerTailBudget (u : ℝ) : ℝ := (Real.log u + 1) / u + 1 / (2 * u ^ 2)

theorem log_le_half_sub_inv (z : ℝ) (hz : 1 ≤ z) :
    Real.log z ≤ (z - z⁻¹) / 2 := by
  let f : ℝ → ℝ := fun x => (x - x⁻¹) / 2 - Real.log x
  have hd (x : ℝ) (hx : 1 ≤ x) :
      HasDerivAt f ((x - 1) ^ 2 / (2 * x ^ 2)) x := by
    have hx0 : x ≠ 0 := by linarith
    convert (((hasDerivAt_id x).sub (hasDerivAt_inv hx0)).div_const 2).sub
      (Real.hasDerivAt_log hx0) using 1 <;>
      (first | rfl | (field_simp; ring))
  have hm : MonotoneOn f (Set.Ici 1) := by
    apply monotoneOn_of_hasDerivWithinAt_nonneg (convex_Ici 1)
    · intro x hx
      exact (hd x hx).continuousAt.continuousWithinAt
    · intro x hx
      exact (hd x (Set.mem_Ici.mp (interior_subset hx))).hasDerivWithinAt
    · intro x hx
      positivity
  have hh := hm (by simp : (1 : ℝ) ∈ Set.Ici 1) hz hz
  simpa [f] using hh

theorem powerTailBudget_nonneg (u : ℝ) (hu : 1 ≤ u) : 0 ≤ powerTailBudget u := by
  have hl := Real.log_nonneg hu
  unfold powerTailBudget
  positivity

/-- Each integer cell retains the logarithm at the closed upper endpoint. -/
theorem integer_cell_le (n : ℕ) (hn : 2 ≤ n) :
    Real.log (n : ℝ) / ((n : ℝ) * ((n : ℝ) - 1)) ≤
      powerTailBudget ((n : ℝ) - 1) - powerTailBudget (n : ℝ) := by
  have hnR : (2 : ℝ) ≤ n := by exact_mod_cast hn
  have ha : 0 < (n : ℝ) - 1 := by linarith
  have hb : 0 < (n : ℝ) := by linarith
  have hz : 1 ≤ (n : ℝ) / ((n : ℝ) - 1) := by
    apply (le_div_iff₀ ha).2
    linarith
  have hl := log_le_half_sub_inv ((n : ℝ) / ((n : ℝ) - 1)) hz
  rw [Real.log_div (ne_of_gt hb) (ne_of_gt ha)] at hl
  have hi : ((n : ℝ) / ((n : ℝ) - 1))⁻¹ = ((n : ℝ) - 1) / (n : ℝ) := by
    field_simp
  rw [hi] at hl
  apply sub_nonneg.mp
  have he : powerTailBudget ((n : ℝ) - 1) - powerTailBudget (n : ℝ) -
      Real.log (n : ℝ) / ((n : ℝ) * ((n : ℝ) - 1)) =
      (((n : ℝ) / ((n : ℝ) - 1) - ((n : ℝ) - 1) / (n : ℝ)) / 2 -
        (Real.log (n : ℝ) - Real.log ((n : ℝ) - 1))) / ((n : ℝ) - 1) +
      1 / (2 * ((n : ℝ) - 1) * (n : ℝ) ^ 2) := by
    unfold powerTailBudget
    field_simp
    ring
  rw [he]
  exact add_nonneg (div_nonneg (sub_nonneg.mpr hl) ha.le) (by positivity)

/-- A finite inventory bound: no infinite subtraction or cutoff limit is used. -/
theorem finite_integer_tail_le (U V : ℕ) (hU : 1 ≤ U) (hUV : U ≤ V) :
    (∑ n ∈ Ioc U V, Real.log (n : ℝ) / ((n : ℝ) * ((n : ℝ) - 1))) ≤
      powerTailBudget U - powerTailBudget V := by
  induction V, hUV using Nat.le_induction with
  | base => simp
  | succ V hUV ih =>
    rw [Finset.sum_Ioc_succ_top hUV]
    simp only [Nat.cast_add, Nat.cast_one, add_sub_cancel_right]
    have hc := integer_cell_le (V + 1) (by omega)
    simp only [Nat.cast_add, Nat.cast_one, add_sub_cancel_right] at hc
    linarith

theorem finite_integer_tail_budget (U V : ℕ) (hU : 1 ≤ U) :
    (∑ n ∈ Ioc U V, Real.log (n : ℝ) / ((n : ℝ) * ((n : ℝ) - 1))) ≤
      powerTailBudget U := by
  by_cases hUV : U ≤ V
  · exact (finite_integer_tail_le U V hU hUV).trans
      (sub_le_self _ (powerTailBudget_nonneg V (by exact_mod_cast (le_trans hU hUV))))
  · have hVU : V ≤ U := by omega
    simp only [Finset.Ioc_eq_empty_of_le hVU, Finset.sum_empty]
    exact powerTailBudget_nonneg U (by exact_mod_cast hU)

end RH16ProperPowerCell
```
