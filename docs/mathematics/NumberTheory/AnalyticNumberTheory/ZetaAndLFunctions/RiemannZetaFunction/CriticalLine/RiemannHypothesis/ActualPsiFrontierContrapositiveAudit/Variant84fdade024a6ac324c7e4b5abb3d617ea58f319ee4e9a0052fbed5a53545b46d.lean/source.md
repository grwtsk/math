# Complete source: GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.ActualPsiFrontierContrapositiveAudit.Variant84fdade024a6ac324c7e4b5abb3d617ea58f319ee4e9a0052fbed5a53545b46d

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `b8fac633cd11f36d4fd356580bb1f8fd32f4cfd3` · SHA-256 `0117f0d0e0bf2105ea304748f1f93d700212de074c4a3ed3a7b3a3be75aefd55`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.SourceActualPsiIntegerExact.Variant4b3dcffd20d8b7d93c7c042e7b2a0184cc366ed9e9d0b2193fb0c995ec160fb5","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"4b3dcffd20d8b7d93c7c042e7b2a0184cc366ed9e9d0b2193fb0c995ec160fb5","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.NumberTheory.RiemannHypothesis.SourceCorpus.SourceActualPsiIntegerExact.Variant4b3dcffd20d8b7d93c7c042e7b2a0184cc366ed9e9d0b2193fb0c995ec160fb5","mathematical_subject":"NumberTheory.RiemannHypothesis","original_sha256":"4b3dcffd20d8b7d93c7c042e7b2a0184cc366ed9e9d0b2193fb0c995ec160fb5","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/scratch/rh16-continuation-20261006-challenge-next/ActualPsiFrontierContrapositiveAudit.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["external_root_references_preserved","root_references_require_identity_review","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import SourceActualPsiIntegerExact
import FormalResearch.RiemannHypothesis.Landau.Bridge


namespace GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.SourceActualPsiIntegerExact.Variant4b3dcffd20d8b7d93c7c042e7b2a0184cc366ed9e9d0b2193fb0c995ec160fb5

set_option autoImplicit false
open FormalResearch.RiemannHypothesis.SourceActualPoleMomentAnnihilation
open FormalResearch.RiemannHypothesis.SourceActualPsiIntegerExact
open FormalResearch.RiemannHypothesis.Landau.Bridge

example (hnot : ¬ _root_.RiemannHypothesis) (K R : ℝ) (hR : 1 ≤ R) :
    ∃ A : ℝ, R ≤ A ∧ K < actualPsiFloorPairing A := by
  by_contra h
  have hup : ∀ A : ℝ, R ≤ A → actualPsiFloorPairing A ≤ K := by
    intro A hRA
    by_contra hA
    exact h ⟨A, hRA, lt_of_not_ge hA⟩
  exact hnot (riemann_hypothesis_of_uniform_lower_bound
    (original_estimate_of_actual_psi_floor_upper hR hup))
```
