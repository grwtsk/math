# Complete source: GRWTSK.Analysis.RealAnalysis.DifferentialCalculus.Test.Variant78ed6c867d15abdf4e009cfc341c98f52793fd121caa7434e546f38ad1ced057

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `519c87e148428a6645141a012895c7f817df1eb6` · SHA-256 `bdbaf53be5a4f140e88ff1474661b520684b509305d7c6d2a9fe61a8d91c663b`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: Analysis.RealAnalysis.DifferentialCalculus
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Analysis.RealAnalysis.DifferentialCalculus.P1.Variant7f08c907a0c2b022dc957ce676079653d1df60534087865f6abf0be60fcc64d5","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"7f08c907a0c2b022dc957ce676079653d1df60534087865f6abf0be60fcc64d5","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Analysis.Calculus.SourceCorpus.P1.Variant7f08c907a0c2b022dc957ce676079653d1df60534087865f6abf0be60fcc64d5","mathematical_subject":"Analysis.Calculus","original_sha256":"7f08c907a0c2b022dc957ce676079653d1df60534087865f6abf0be60fcc64d5","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/scratch/rh-packet-20261005/peano-worker/Test.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import FormalResearch.RiemannHypothesis.SourceBumpAutocorrelation


namespace GRWTSK.Analysis.RealAnalysis.DifferentialCalculus.P1.Variant7f08c907a0c2b022dc957ce676079653d1df60534087865f6abf0be60fcc64d5

noncomputable section
open FormalResearch.RiemannHypothesis.SourceBumpAutocorrelation

def p1 (u : ℝ) : ℝ :=
  7*u^7+112*u^6+768*u^5+2880*u^4+6144*u^3+6912*u^2+4096*u+1024

example (u : ℝ) : -deriv overlapProfile u = u*(2-u)^8*p1 u / 90090 := by
  unfold overlapProfile overlapP0
  simp (disch := fun_prop) only [deriv_div_const,
    deriv_fun_mul, deriv_fun_add, deriv_const_mul_id,
    deriv_fun_pow, deriv_const_sub_id, deriv_id'', deriv_const]
  dsimp [p1]
  ring

def p2 (u : ℝ) : ℝ :=
  7*u^8+98*u^7+904*u^6+6384*u^5+30096*u^4+88032*u^3+
    149056*u^2+108416*u+30976

theorem dprofile (u : ℝ) : deriv overlapProfile u = -(u*(2-u)^8*p1 u / 90090) := by
  have h : -deriv overlapProfile u = u*(2-u)^8*p1 u / 90090 := by
    unfold overlapProfile overlapP0
    simp (disch := fun_prop) only [deriv_div_const,
      deriv_fun_mul, deriv_fun_add, deriv_const_mul_id,
      deriv_fun_pow, deriv_const_sub_id, deriv_id'', deriv_const]
    dsimp [p1]
    ring
  linarith

example (u : ℝ) : deriv (deriv overlapProfile) u + (34 / 7) * overlapProfile u =
    u^2*(2-u)^7*p2 u / 315315 := by
  rw [show deriv overlapProfile = fun u => -(u*(2-u)^8*p1 u / 90090) from funext dprofile]
  unfold p1 overlapProfile overlapP0
  simp (disch := fun_prop) only [deriv.fun_neg, deriv_div_const,
    deriv_fun_mul, deriv_fun_add, deriv_const_mul_id,
    deriv_fun_pow, deriv_const_sub_id, deriv_id'', deriv_const]
  dsimp [p2]
  ring
```
