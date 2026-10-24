# Complete source: GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.ActualMuntzStripZeros.Varianta87f60c6bee5266edc8dd4026689ee1683d8367a518128a390d96d94f64a9b37

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `b0c1b21f9e1e9c80d75b4d747e0d05c353f0a4fb` · SHA-256 `ee25251d0d5c49318f35eed7dd1f51f83cd020c8e931401467da8bc5e8327aec`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.ActualSourceMellinHalfstripNeZero.Variant33ed9121a0e77fad698ab1abf5bf2e61466b6b3364b6679b3af299fcd0c1c997","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"33ed9121a0e77fad698ab1abf5bf2e61466b6b3364b6679b3af299fcd0c1c997","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.NumberTheory.LFunctions.SourceCorpus.ActualSourceMellinHalfstripNeZero.Variant33ed9121a0e77fad698ab1abf5bf2e61466b6b3364b6679b3af299fcd0c1c997","mathematical_subject":"NumberTheory.LFunctions","original_sha256":"33ed9121a0e77fad698ab1abf5bf2e61466b6b3364b6679b3af299fcd0c1c997","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/scratch/continuous-research-01a109fc/pass21/muntz_mellin/ActualMuntzStripZeros.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import ActualMuntzMellinProduct
import QuarticBumpEnergy

/-! Literal actual source zero transport in its nonvanishing halfstrip.
Direction grwtsk contributors; focused scratch proof OpenAI Codex.
This transform identity does not assert a dilation closure or RH. -/

namespace GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.ActualSourceMellinHalfstripNeZero.Variant33ed9121a0e77fad698ab1abf5bf2e61466b6b3364b6679b3af299fcd0c1c997

set_option autoImplicit false
noncomputable section
namespace ContinuousResearch.ActualMuntzStripZeros
open ContinuousResearch.ActualMuntzMellinDomain ContinuousResearch.ActualMuntzMellinProduct

theorem actual_source_mellin_halfstrip_ne_zero {A : ℝ} (hA : 1 ≤ A) {s : ℂ}
    (hl : 1/2 < s.re) (hu : s.re < 1) : mellin (complexSource A) s ≠ 0 := by
  exact ContinuousResearch.QuarticBumpEnergy.actual_mellin_halfstrip_nonzero hA hl hu

theorem actual_muntz_mellin_halfstrip_zero_iff {A : ℝ} (hA : 1 ≤ A) {s : ℂ}
    (hl : 1/2 < s.re) (hu : s.re < 1) :
    mellin (complexMuntz A) s = 0 ↔ riemannZeta s = 0 := by
  have hn := actual_source_mellin_halfstrip_ne_zero hA hl hu
  rw [actual_muntz_mellin_strip hA (by linarith) hu,mul_eq_zero]
  simp only [hn,or_false]

theorem actual_muntz_mellin_halfstrip_ne_zero_iff {A : ℝ} (hA : 1 ≤ A) {s : ℂ}
    (hl : 1/2 < s.re) (hu : s.re < 1) :
    mellin (complexMuntz A) s ≠ 0 ↔ riemannZeta s ≠ 0 :=
  not_congr (actual_muntz_mellin_halfstrip_zero_iff hA hl hu)

end ContinuousResearch.ActualMuntzStripZeros

/- Exact public type, proof and trusted dependency audits. -/

#check ContinuousResearch.ActualMuntzStripZeros.actual_source_mellin_halfstrip_ne_zero
#print axioms ContinuousResearch.ActualMuntzStripZeros.actual_source_mellin_halfstrip_ne_zero
#print ContinuousResearch.ActualMuntzStripZeros.actual_source_mellin_halfstrip_ne_zero

#check ContinuousResearch.ActualMuntzStripZeros.actual_muntz_mellin_halfstrip_zero_iff
#print axioms ContinuousResearch.ActualMuntzStripZeros.actual_muntz_mellin_halfstrip_zero_iff
#print ContinuousResearch.ActualMuntzStripZeros.actual_muntz_mellin_halfstrip_zero_iff

#check ContinuousResearch.ActualMuntzStripZeros.actual_muntz_mellin_halfstrip_ne_zero_iff
#print axioms ContinuousResearch.ActualMuntzStripZeros.actual_muntz_mellin_halfstrip_ne_zero_iff
#print ContinuousResearch.ActualMuntzStripZeros.actual_muntz_mellin_halfstrip_ne_zero_iff
```
