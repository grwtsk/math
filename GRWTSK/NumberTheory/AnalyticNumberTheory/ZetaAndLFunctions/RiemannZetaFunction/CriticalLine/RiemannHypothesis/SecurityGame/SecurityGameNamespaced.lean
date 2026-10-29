-- corpus-organization-transform:v1
-- Mathematical subject: NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.SecurityGame.Variant2e30131798fd1589e3d41bfa63bd45385e7df5031bd9bb51490b80220fdd0d73","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"2e30131798fd1589e3d41bfa63bd45385e7df5031bd9bb51490b80220fdd0d73","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Foundations.Unclassified.SourceCorpus.SecurityGame.Variant2e30131798fd1589e3d41bfa63bd45385e7df5031bd9bb51490b80220fdd0d73","mathematical_subject":"Foundations.Unclassified","original_sha256":"2e30131798fd1589e3d41bfa63bd45385e7df5031bd9bb51490b80220fdd0d73","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/08/10/Surface/Mathematics/MobiusOntology/SecurityGame.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Mathematics.MobiusOntology.EffectivePresentation
import Mathematics.Resolution.AdversaryInvariant

/-!
# Declared security games

The success event, oracle model, advantage, and resource measure are part of
the game object; no topological invariant supplies them implicitly.
-/


namespace GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.SecurityGame.Variant2e30131798fd1589e3d41bfa63bd45385e7df5031bd9bb51490b80220fdd0d73

namespace Mathematics.MobiusOntology

universe u v w x

abbrev OracleProblem :=
  Mathematics.Resolution.OracleProblem

structure SecurityGame
    (Input : Type u) (Output : Type v)
    (Coordinate : Type w) (Attack : Type x) where
  problem : OracleProblem Input Output Coordinate
  successful : Attack → Prop
  advantage : Attack → ℝ
  resources : Attack → ResourceCost
  modelSemantics : Prop
  modelSemanticsProof : modelSemantics

inductive SecurityProblemKind
  | preimage
  | collision
  | keySearch
  | distinguishing
  | forgery
  | proofSimulation
  deriving DecidableEq, Repr

end Mathematics.MobiusOntology
