# Complete source: GRWTSK.Analysis.RealAnalysis.DifferentialCalculus.EndpointRadius.Variant20c0c3e934e16772a80292c3ad5f79e56c747034a95e52057ddaaa2ed2803dc5

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `3af1880ae6b6018bf8637dacfb0027821d4232cf` · SHA-256 `3fbb0b0b81c51d0cd758f2a5b9d2bd1c1d411db22900f1e6ad08fe4a20a686a7`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: Analysis.RealAnalysis.DifferentialCalculus
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Analysis.RealAnalysis.DifferentialCalculus.Envelope.Variant31b9526548c8ecfce760e1669afc15607cb2eb2e789cbb5b441d2c81c36bf5f8","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"31b9526548c8ecfce760e1669afc15607cb2eb2e789cbb5b441d2c81c36bf5f8","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Analysis.Calculus.SourceCorpus.Envelope.Variant31b9526548c8ecfce760e1669afc15607cb2eb2e789cbb5b441d2c81c36bf5f8","mathematical_subject":"Analysis.Calculus","original_sha256":"31b9526548c8ecfce760e1669afc15607cb2eb2e789cbb5b441d2c81c36bf5f8","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/rh16-followthrough-20261006/dependencies/independent-endpoint-replay/EndpointRadius.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Mathlib.Analysis.Calculus.Deriv.MeanValue
import Mathlib.Analysis.Calculus.Deriv.Pow
import Mathlib.Analysis.SpecialFunctions.ExpDeriv
import Mathlib.Tactic

/-! Exact fixed-radius endpoint scalar bound. AI proof construction: OpenAI Codex.
Local candidate; supplies no signed arithmetic witness. -/

namespace GRWTSK.Analysis.RealAnalysis.DifferentialCalculus.Envelope.Variant31b9526548c8ecfce760e1669afc15607cb2eb2e789cbb5b441d2c81c36bf5f8

set_option autoImplicit false
namespace RH16EndpointRadius
noncomputable section

def envelope (A : ℝ) : ℝ := 2 * A ^ 3 * Real.exp (-A)
def endpointBudget (R : ℝ) : ℝ := envelope (max 3 R)

theorem envelope_hasDerivAt (A : ℝ) :
    HasDerivAt envelope (2 * A ^ 2 * Real.exp (-A) * (3 - A)) A := by
  have hd : HasDerivAt (fun x : ℝ => 2 * x ^ 3 * Real.exp (-x))
      (2 * (3 * A ^ 2 * 1) * Real.exp (-A) +
        2 * A ^ 3 * (Real.exp (-A) * -1)) A :=
    (((hasDerivAt_id A).pow 3).const_mul 2).mul ((hasDerivAt_id A).neg.exp)
  convert hd using 1 <;> first | rfl | ring

theorem envelope_antitoneOn : AntitoneOn envelope (Set.Ici 3) := by
  apply antitoneOn_of_hasDerivWithinAt_nonpos (f' := fun A =>
    2 * A ^ 2 * Real.exp (-A) * (3 - A)) (convex_Ici 3)
  · exact (continuous_iff_continuousAt.mpr
      (fun A => (envelope_hasDerivAt A).continuousAt)).continuousOn
  · intro A _
    exact (envelope_hasDerivAt A).hasDerivWithinAt
  · intro A hA
    have ha : 3 ≤ A := interior_subset hA
    exact mul_nonpos_of_nonneg_of_nonpos (by positivity) (by linarith)

theorem envelope_le_peak (A : ℝ) (hA : 0 ≤ A) : envelope A ≤ envelope 3 := by
  have hlinear : Real.exp 1 * (A / 3) ≤ Real.exp (A / 3) :=
    Real.exp_one_mul_le_exp
  have hcube : (Real.exp 1 * (A / 3)) ^ 3 ≤ (Real.exp (A / 3)) ^ 3 := by
    gcongr
  have he1 : (Real.exp (1 : ℝ)) ^ 3 = Real.exp (3 : ℝ) := by
    rw [← Real.exp_nat_mul]; norm_num
  have heA : (Real.exp (A / 3)) ^ 3 = Real.exp A := by
    rw [← Real.exp_nat_mul]; congr 1; ring
  rw [mul_pow, he1, heA] at hcube
  have hi := mul_le_mul_of_nonneg_right hcube (Real.exp_pos (-3)).le
  have he3 : Real.exp 3 * Real.exp (-3) = 1 := by rw [← Real.exp_add]; simp
  have hl : Real.exp 3 * (A / 3) ^ 3 * Real.exp (-3) = (A / 3) ^ 3 := by
    calc
      _ = (Real.exp 3 * Real.exp (-3)) * (A / 3) ^ 3 := by ring
      _ = _ := by rw [he3]; ring
  rw [hl] at hi
  have hc : A ^ 3 ≤ 27 * Real.exp (-3) * Real.exp A := by nlinarith [hi]
  have hc2 := mul_le_mul_of_nonneg_right hc (Real.exp_pos (-A)).le
  have he : Real.exp A * Real.exp (-A) = 1 := by rw [← Real.exp_add]; simp
  have hr : 27 * Real.exp (-3) * Real.exp A * Real.exp (-A) =
      27 * Real.exp (-3) := by
    calc
      _ = 27 * Real.exp (-3) * (Real.exp A * Real.exp (-A)) := by ring
      _ = _ := by rw [he]; ring
  rw [hr] at hc2
  simp only [envelope]
  nlinarith [hc2]

theorem envelope_le_budget (R A : ℝ) (hA : 0 ≤ A) (hRA : R ≤ A) :
    envelope A ≤ endpointBudget R := by
  by_cases hR : R ≤ 3
  · simpa [endpointBudget, max_eq_left hR] using envelope_le_peak A hA
  · have h3R : 3 ≤ R := le_of_lt (lt_of_not_ge hR)
    simpa only [endpointBudget, max_eq_right h3R] using
      envelope_antitoneOn h3R (h3R.trans hRA) hRA

theorem envelope_peak_lt_three : envelope 3 < 3 := by
  have hsum := Real.sum_le_exp_of_nonneg (by norm_num : (0 : ℝ) ≤ 3) 6
  norm_num [Finset.sum_range_succ, Nat.factorial] at hsum
  have h18 : (18 : ℝ) < Real.exp 3 := by linarith
  have hm := mul_lt_mul_of_pos_right h18 (Real.exp_pos (-3))
  have he : Real.exp 3 * Real.exp (-3) = 1 := by rw [← Real.exp_add]; simp
  rw [he] at hm
  unfold envelope
  norm_num
  linarith

theorem endpointBudget_nonneg (R : ℝ) : 0 ≤ endpointBudget R := by
  unfold endpointBudget envelope
  have h : (0 : ℝ) ≤ max 3 R := by linarith [le_max_left (3 : ℝ) R]
  positivity

theorem endpointBudget_eq_of_three_le (R : ℝ) (hR : 3 ≤ R) :
    endpointBudget R = 2 * R ^ 3 * Real.exp (-R) := by
  simp [endpointBudget, envelope, max_eq_right hR]

end
end RH16EndpointRadius
```
