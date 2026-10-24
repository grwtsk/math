-- corpus-organization-transform:v1
-- Mathematical subject: NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.Cycle14PhaseMassRegent.Variant63502a97ee9c70e26b215ce738bc6926f71240e9b59084685a8ccf12dfa19fdd","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"63502a97ee9c70e26b215ce738bc6926f71240e9b59084685a8ccf12dfa19fdd","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.NumberTheory.RiemannHypothesis.SourceCorpus.Cycle14PhaseMassRegent.Variant63502a97ee9c70e26b215ce738bc6926f71240e9b59084685a8ccf12dfa19fdd","mathematical_subject":"NumberTheory.RiemannHypothesis","original_sha256":"63502a97ee9c70e26b215ce738bc6926f71240e9b59084685a8ccf12dfa19fdd","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/scratch/confluence/cycle14/regent-phase-mass-ftc/Fixtures.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Cycle14PhaseMassRegent


namespace GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.Cycle14PhaseMassRegent.Variant63502a97ee9c70e26b215ce738bc6926f71240e9b59084685a8ccf12dfa19fdd

noncomputable section
open FormalResearch.RiemannHypothesis.SourcePhaseMassFTC
open FormalResearch.RiemannHypothesis.SourcePairedPrimeWork
open FormalResearch.RiemannHypothesis.SourceFirstPrimeAbel

example {A : ℝ} (hA : 1 ≤ A) : criticalPrimeTest A 0 - 1 = 0 := by
  rw [criticalPrimeTest_sub_one_eq_phase_prefix hA 0]
  simp

example {A : ℝ} (hA : 1 ≤ A) (u : ℝ) : criticalPrimeTest A u - 1 =
    (∫ t in 0..u, positiveSlope A t) - (∫ t in 0..u, negativeSlope A t) :=
  criticalPrimeTest_sub_one_eq_phase_prefix hA u

example : ¬ ∃ B R : ℝ, ∀ A : ℝ, 1 ≤ A → R ≤ A → positiveMass A ≤ B :=
  positiveMass_not_eventually_bounded
