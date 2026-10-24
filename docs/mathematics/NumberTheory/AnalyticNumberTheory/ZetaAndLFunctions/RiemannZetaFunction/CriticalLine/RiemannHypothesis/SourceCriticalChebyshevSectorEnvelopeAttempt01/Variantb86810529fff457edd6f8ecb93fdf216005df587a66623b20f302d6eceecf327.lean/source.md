# Complete source: GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.SourceCriticalChebyshevSectorEnvelopeAttempt01.Variantb86810529fff457edd6f8ecb93fdf216005df587a66623b20f302d6eceecf327

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `75433808d553e25e52ea899ddef2f1896bb0d357` · SHA-256 `62034015ae7423327482cde8efaf7a471bdc1b6b97437887b53119f152d139d1`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.ChebyshevSectorEnvelope.Variant0ee70258c0453e5b982b0a1da6376665ccc874863651f51802c487500f37464f","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"0ee70258c0453e5b982b0a1da6376665ccc874863651f51802c487500f37464f","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.NumberTheory.RiemannHypothesis.SourceCorpus.ChebyshevSectorEnvelope.Variant0ee70258c0453e5b982b0a1da6376665ccc874863651f51802c487500f37464f","mathematical_subject":"NumberTheory.RiemannHypothesis","original_sha256":"0ee70258c0453e5b982b0a1da6376665ccc874863651f51802c487500f37464f","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/scratch/rh16-continuation-20261006-critical-arithmetic/SourceCriticalChebyshevSectorEnvelope.attempt01.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import SourceCriticalSignedSectorMass

/-!
A genuine elementary Chebyshev bound for the actual signed critical-relative pairing.
The bound keeps both actual critical kernel sign sectors. Its resulting envelope
has no eventual constant budget; this is not a claim that actual Q is unbounded.
Direction: grwtsk contributors. Formal construction: OpenAI Codex issue ingestion.
-/

namespace GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.ChebyshevSectorEnvelope.Variant0ee70258c0453e5b982b0a1da6376665ccc874863651f51802c487500f37464f

set_option autoImplicit false
noncomputable section
namespace FormalResearch.RiemannHypothesis.SourceCriticalChebyshevSectorEnvelope
open MeasureTheory Set
open SourceCriticalRelativeCompensation SourceCriticalWeightMassObstruction
open SourceCriticalSignedSectorMass
open OmegaResearch.CriticalRelativePairing

def chebyshevSectorEnvelope (A : ℝ) : ℝ :=
  (Real.log 4 + 3) * positiveCriticalWeightMass A + negativeCriticalWeightMass A

/-- Actual Chebyshev psi, with all prime powers, satisfies this elementary relative bound. -/
theorem actualRelativePsiError_elementary_bounds (t : ℝ) :
    -1 ≤ relativePsiError t ∧ relativePsiError t ≤ Real.log 4 + 3 := by
  have hp := Chebyshev.psi_nonneg (Real.exp t)
  have he := (Real.exp_pos (-t)).le
  have hc := Chebyshev.psi_le_const_mul_self (Real.exp_pos t).le
  have hm := mul_le_mul_of_nonneg_left hc he
  have hid : Real.exp (-t) * Real.exp t = 1 := by
    rw [← Real.exp_add]
    simp
  constructor
  · unfold relativePsiError
    nlinarith [mul_nonneg he hp]
  · unfold relativePsiError
    calc
      Real.exp (-t) * Chebyshev.psi (Real.exp t) - 1 ≤
          Real.exp (-t) * ((Real.log 4 + 4) * Real.exp t) - 1 :=
        sub_le_sub_right hm 1
      _ = Real.log 4 + 3 := by
        calc
          _ = (Real.log 4 + 4) * (Real.exp (-t) * Real.exp t) - 1 := by ring
          _ = _ := by rw [hid]; ring

theorem criticalKernel_eq_error_mul_baseline (A t : ℝ) :
    criticalKernel A t = relativePsiError t * baselineLogKernel A t := by
  unfold criticalKernel baselineLogKernel
  ring

/-- The actual arithmetic pairing retains separate positive and negative source weights. -/
theorem actualCriticalKernel_sector_upper (A t : ℝ) :
    criticalKernel A t ≤ (Real.log 4 + 3) * max (baselineLogKernel A t) 0 +
      max (-baselineLogKernel A t) 0 := by
  have hb := actualRelativePsiError_elementary_bounds t
  rw [criticalKernel_eq_error_mul_baseline]
  by_cases h : 0 ≤ baselineLogKernel A t
  · rw [max_eq_left h, max_eq_right (by linarith : -baselineLogKernel A t ≤ 0)]
    simpa using mul_le_mul_of_nonneg_right hb.2 h
  · have hn : baselineLogKernel A t ≤ 0 := (lt_of_not_ge h).le
    rw [max_eq_right hn, max_eq_left (by linarith : 0 ≤ -baselineLogKernel A t)]
    have hm := mul_le_mul_of_nonpos_right hb.1 hn
    simpa using hm

theorem actualCriticalRelativePairing_le_sectorEnvelope {A : ℝ} (hA : 1 ≤ A) :
    criticalRelativePairing A ≤ chebyshevSectorEnvelope A := by
  have hi := ((positiveCriticalWeightMass_integrable hA).const_mul
    (Real.log 4 + 3)).add (negativeCriticalWeightMass_integrable hA)
  have hm := integral_mono (criticalKernel_integrable hA) hi
    (actualCriticalKernel_sector_upper A)
  rw [integral_add ((positiveCriticalWeightMass_integrable hA).const_mul
    (Real.log 4 + 3)) (negativeCriticalWeightMass_integrable hA), integral_const_mul] at hm
  exact hm

theorem positiveCriticalWeightMass_nonneg (A : ℝ) : 0 ≤ positiveCriticalWeightMass A :=
  integral_nonneg (fun t => le_max_right _ _)

/-- The genuine elementary bound has a growing envelope even though actual Q may cancel. -/
theorem chebyshevSectorEnvelope_ge_absoluteMass {A : ℝ} (hA : 1 ≤ A) :
    absoluteCriticalWeightMass A ≤ chebyshevSectorEnvelope A := by
  rw [← criticalWeightMass_sum hA]
  unfold chebyshevSectorEnvelope
  have hl : 0 ≤ Real.log 4 := Real.log_nonneg (by norm_num)
  nlinarith [positiveCriticalWeightMass_nonneg A]

theorem chebyshevSectorEnvelope_linear_lower {A : ℝ} (hA : 40 ≤ A) :
    A / 128 ≤ chebyshevSectorEnvelope A :=
  (absoluteCriticalWeightMass_linear_lower hA).trans
    (chebyshevSectorEnvelope_ge_absoluteMass (by linarith))

/-- No constant tail budget follows from this particular elementary sign-sector envelope. -/
theorem chebyshevSectorEnvelope_not_eventually_bounded :
    ¬ ∃ M R : ℝ, ∀ A : ℝ, 40 ≤ A → R ≤ A → chebyshevSectorEnvelope A ≤ M := by
  rintro ⟨M, R, h⟩
  apply absoluteCriticalWeightMass_not_eventually_bounded
  exact ⟨M, R, fun A h40 hR =>
    (chebyshevSectorEnvelope_ge_absoluteMass (by linarith)).trans (h A h40 hR)⟩

end FormalResearch.RiemannHypothesis.SourceCriticalChebyshevSectorEnvelope
```
