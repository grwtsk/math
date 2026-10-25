# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.BridgeRangeDiagnosticAttempt02.Variant163e74479d0092eb80fc1863922ed7a828cb956ed8d2436c347ac9eccffa8b79

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `dec0c123693bc085e0f331ee317acf350fd5c509` · SHA-256 `f19d92ab68a707af5393d6e345455925b733293316ecaf9b371946f07999a17e`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.LinearRangeProfile.Variantc04ac93d79581c02b973a2c764df04257fb0fa3e652dc1278658b4962636c071","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"c04ac93d79581c02b973a2c764df04257fb0fa3e652dc1278658b4962636c071","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Foundations.MixedSubjects.SourceCorpus.LinearRangeProfile.Variantc04ac93d79581c02b973a2c764df04257fb0fa3e652dc1278658b4962636c071","mathematical_subject":"Foundations.MixedSubjects","original_sha256":"c04ac93d79581c02b973a2c764df04257fb0fa3e652dc1278658b4962636c071","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/scratch/continuous-research-01a109fc/pass14/bridge_envelope/BridgeRangeDiagnostic-attempt02.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import BridgeEnvelope

/-! Exact generic range-only diagnostic; not the actual prime discrepancy.
Direction grwtsk contributors; scratch diagnostic OpenAI Codex. -/

namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.LinearRangeProfile.Variantc04ac93d79581c02b973a2c764df04257fb0fa3e652dc1278658b4962636c071

set_option autoImplicit false
noncomputable section
namespace ContinuousResearch.BridgeRangeDiagnostic
open MeasureTheory Set BridgeEnvelope
open scoped Topology

def linearRangeProfile (L t : ℝ) : ℝ := t/L

theorem linearRangeProfile_continuous (L : ℝ) : Continuous (linearRangeProfile L) :=
  continuous_id.div_const L

theorem linearRangeProfile_bounds {L t : ℝ} (hL : 0<L) (ht : 0≤t) (htL : t≤L) :
    0≤linearRangeProfile L t ∧ linearRangeProfile L t≤1 := by
  unfold linearRangeProfile
  exact ⟨div_nonneg ht hL.le,(div_le_one hL).mpr htL⟩

theorem linearRangeProfile_integral (L u : ℝ) :
    (∫ t in 0..u,linearRangeProfile L t)=u^2/(2*L) := by
  have hd (t : ℝ) : HasDerivAt (fun t : ℝ=>t^2/2) t t := by
    convert ((hasDerivAt_id t).pow 2).div_const 2 using 1 <;>
      first | rfl | (dsimp only [id_eq];ring)
  have he := intervalIntegral.integral_eq_sub_of_hasDerivAt
    (fun t _=>hd t) (continuous_id.intervalIntegrable (μ:=volume) 0 u)
  simp only [zero_pow (by norm_num : 2≠0),zero_div,sub_zero] at he
  unfold linearRangeProfile
  rw [intervalIntegral.integral_div,he]
  ring

theorem linearRangeProfile_bridge {L u : ℝ} (hL : 0<L) :
    integralBridge (linearRangeProfile L) L u = -u*(L-u)/(2*L) := by
  unfold integralBridge
  rw [linearRangeProfile_integral,linearRangeProfile_integral]
  field_simp
  ring

theorem linearRangeProfile_midpoint {A : ℝ} (hA : 0<A) :
    |integralBridge (linearRangeProfile (2*A)) (2*A) A|=A/4 := by
  rw [linearRangeProfile_bridge (by linarith : 0<2*A)]
  have he : -A*(2*A-A)/(2*(2*A)) = -A/4 := by field_simp;ring
  rw [he,abs_div,abs_neg,abs_of_pos hA,abs_of_pos (by norm_num : (0:ℝ)<4)]

/-- Bounded continuous integrands alone give no all-range bound for the unscaled bridge. -/
theorem no_uniform_bridge_budget :
    ¬∃ C : ℝ,∀ A : ℝ,1≤A→
      |integralBridge (linearRangeProfile (2*A)) (2*A) A|≤C := by
  rintro ⟨C,hC⟩
  let A : ℝ := max 1 (4*C+1)
  have hA : 1≤A := le_max_left _ _
  have hh := hC A hA
  rw [linearRangeProfile_midpoint (by linarith : 0<A)] at hh
  have hAC : 4*C+1≤A := le_max_right _ _
  linarith

#print axioms linearRangeProfile
#print axioms linearRangeProfile_continuous
#print axioms linearRangeProfile_bounds
#print axioms linearRangeProfile_integral
#print axioms linearRangeProfile_bridge
#print axioms linearRangeProfile_midpoint
#print axioms no_uniform_bridge_budget
end ContinuousResearch.BridgeRangeDiagnostic
```
