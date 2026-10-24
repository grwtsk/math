# Complete source: GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.ControllerRHTransport.Variant79647016501081bb2736384451bb61282edefaaac48ef2434f777c15bf3e11d4

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `1ab40c2e8799a641df2e709c3b8ff1b3d3af4086` · SHA-256 `858fe4e2b024e9d615f3b52d35a47cb8779b07b682b766009dba52c226c69fd7`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.NontrivialReLeHalfOfMassSubsequence.Variant96dc91005042d45109a79517e9385be22e4b6d408331b942aa6a856c6b1f4f99","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"96dc91005042d45109a79517e9385be22e4b6d408331b942aa6a856c6b1f4f99","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.NumberTheory.RiemannHypothesis.SourceCorpus.NontrivialReLeHalfOfMassSubsequence.Variant96dc91005042d45109a79517e9385be22e4b6d408331b942aa6a856c6b1f4f99","mathematical_subject":"NumberTheory.RiemannHypothesis","original_sha256":"96dc91005042d45109a79517e9385be22e4b6d408331b942aa6a856c6b1f4f99","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/scratch/source-filter-global/ControllerRHTransport.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["external_root_references_preserved","root_references_require_identity_review","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import FormalResearch.RiemannHypothesis.SourceComparison.ControllerSchedule
import FormalResearch.RiemannHypothesis.SourceComparison.FixedSourceResolventFloor
import FormalResearch.RiemannHypothesis.Defect
import FormalResearch.RiemannHypothesis.ZeroSymmetry

/-!
Conditional transport from an actual vanishing source-mass subsequence to
Mathlib's unchanged RH proposition. The full-residual convergence hypothesis in
the controller specialization remains explicit and is not proved here.
-/

namespace GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.NontrivialReLeHalfOfMassSubsequence.Variant96dc91005042d45109a79517e9385be22e4b6d408331b942aa6a856c6b1f4f99

set_option autoImplicit false
namespace ControllerRHTransportScratch
open Filter
open FormalResearch.RiemannHypothesis
open FormalResearch.RiemannHypothesis.SourceComparison
open HalfLineExponential HalfLineOperator SourceResolventTruncation
open FixedSourceResolventFloor ControllerSchedule
noncomputable section

/-- A vanishing subsequence at positive parameters contradicts each actual right-zero floor. -/
theorem nontrivial_re_le_half_of_mass_subsequence (α : ℕ → ℝ)
    (hα : ∀ j : ℕ, 1 ≤ j → 0 < α j)
    (hmass : Tendsto (fun j => sourceMass (α j)) atTop (nhds 0))
    (ρ : ℂ) (hρ : NontrivialZetaZero ρ) : ρ.re ≤ 1 / 2 := by
  by_contra hn
  obtain ⟨c, hc, hfloor⟩ := nontrivial_sourceMass_uniform_positive_floor ρ hρ
    (lt_of_not_ge hn)
  have hle : c ≤ 0 := le_of_tendsto_of_tendsto tendsto_const_nhds hmass (by
    filter_upwards [eventually_ge_atTop 1] with j hj
    exact hfloor (α j) (hα j hj))
  exact (not_le_of_gt hc) hle

/-- Functional-equation reflection rules out left zeros while retaining all original exclusions. -/
theorem nontrivial_re_eq_half_of_mass_subsequence (α : ℕ → ℝ)
    (hα : ∀ j : ℕ, 1 ≤ j → 0 < α j)
    (hmass : Tendsto (fun j => sourceMass (α j)) atTop (nhds 0))
    (ρ : ℂ) (hρ : NontrivialZetaZero ρ) : ρ.re = 1 / 2 := by
  have hright := nontrivial_re_le_half_of_mass_subsequence α hα hmass ρ hρ
  have hleft := nontrivial_re_le_half_of_mass_subsequence α hα hmass
    (zeroReflect ρ) hρ.reflect
  simp only [zeroReflect, Complex.sub_re, Complex.one_re] at hleft
  linarith

/-- Conditional transport reaches the unchanged root target through its exact defect equivalence. -/
theorem conditional_rh_of_mass_subsequence (α : ℕ → ℝ)
    (hα : ∀ j : ℕ, 1 ≤ j → 0 < α j)
    (hmass : Tendsto (fun j => sourceMass (α j)) atTop (nhds 0)) :
    _root_.RiemannHypothesis := by
  apply riemann_hypothesis_iff_defect_zero.mpr
  intro ρ hρ
  exact (rh_defect_eq_zero_iff ρ).mpr
    (nontrivial_re_eq_half_of_mass_subsequence α hα hmass ρ hρ)

/-- The exact controller schedule transports a separately proved full residual limit to root RH.
This declaration is conditional; it does not discharge its arithmetic convergence hypothesis. -/
theorem conditional_rh_of_full_residual (q : ℕ → H)
    (hres : Tendsto (fun j => ‖referenceVector - sourceOperator (q j)‖) atTop (nhds 0)) :
    _root_.RiemannHypothesis :=
  conditional_rh_of_mass_subsequence (controllerAlpha q) (controllerAlpha_pos q)
    (sourceMass_controllerAlpha_tendsto_zero q hres)

end
end ControllerRHTransportScratch
```
