# Complete source: GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.Fixtures.Variantc1bd9c8eb500fadc47f95e71bd97d423aef28774601ab5b2ae3f22bc0073e578

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `076b8f1ba1499fb11d57cc9a4dc2ef97346c9a7c` · SHA-256 `3add55eeca57ca44569ac90b001a1628363520afac173d49553a43b540297639`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.Cycle14PhaseMassRegent.Variant3e1f0f585fe3baa5be8c24d9f2c4048bbc4330f8a23104977b00e9cb95cfc596","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"3e1f0f585fe3baa5be8c24d9f2c4048bbc4330f8a23104977b00e9cb95cfc596","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.NumberTheory.RiemannHypothesis.SourceCorpus.Cycle14PhaseMassRegent.Variant3e1f0f585fe3baa5be8c24d9f2c4048bbc4330f8a23104977b00e9cb95cfc596","mathematical_subject":"NumberTheory.RiemannHypothesis","original_sha256":"3e1f0f585fe3baa5be8c24d9f2c4048bbc4330f8a23104977b00e9cb95cfc596","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/scratch/confluence/cycle14/regent-phase-mass-ftc-attempt01/Fixtures.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Cycle14PhaseMassRegent


namespace GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.Cycle14PhaseMassRegent.Variant3e1f0f585fe3baa5be8c24d9f2c4048bbc4330f8a23104977b00e9cb95cfc596

noncomputable section
open FormalResearch.RiemannHypothesis.SourcePhaseMassFTC
open FormalResearch.RiemannHypothesis.SourcePairedPrimeWork
open FormalResearch.RiemannHypothesis.SourceFirstPrimeAbel
open scoped Interval

example {A : ℝ} (hA : 1 ≤ A) : criticalPrimeTest A 0 - 1 = 0 := by
  rw [criticalPrimeTest_sub_one_eq_phase_prefix hA 0]
  simp

example {A : ℝ} (hA : 1 ≤ A) (u : ℝ) : criticalPrimeTest A u - 1 =
    (∫ t in 0..u, positiveSlope A t) - (∫ t in 0..u, negativeSlope A t) :=
  criticalPrimeTest_sub_one_eq_phase_prefix hA u

example : ¬ ∃ B R : ℝ, ∀ A : ℝ, 1 ≤ A → R ≤ A → positiveMass A ≤ B :=
  positiveMass_not_eventually_bounded
```
