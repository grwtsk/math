-- corpus-organization-transform:v1
-- Mathematical subject: Analysis.RealAnalysis.Integration
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Analysis.RealAnalysis.Integration.ContractionCertificate.Varianta52bfdf4ab5e5223a041cd170167f7c97d49ea2025b5f87f253a0ff4a9f3886a","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"a52bfdf4ab5e5223a041cd170167f7c97d49ea2025b5f87f253a0ff4a9f3886a","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Analysis.Integration.SourceCorpus.ContractionCertificate.Varianta52bfdf4ab5e5223a041cd170167f7c97d49ea2025b5f87f253a0ff4a9f3886a","mathematical_subject":"Analysis.Integration","original_sha256":"a52bfdf4ab5e5223a041cd170167f7c97d49ea2025b5f87f253a0ff4a9f3886a","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Documents/N/formal/lean/Mathematics/Stability/Contraction.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Mathematics.Stability.FixedPoint

/-! # Certified contraction boundaries -/


namespace GRWTSK.Analysis.RealAnalysis.Integration.ContractionCertificate.Varianta52bfdf4ab5e5223a041cd170167f7c97d49ea2025b5f87f253a0ff4a9f3886a

namespace Mathematics.Stability

structure ContractionCertificate
    {X : Type}
    (construction : ReflectiveMap X)
    (metric : ResidualMetric X) where
  gainCertificate :
    ScaledDerivativeGainCertificate construction metric
  strictMargin :
    gainCertificate.numerator < gainCertificate.scale
  invariantDomain : construction.mapsDeclaredDomain

structure BanachFixedPointObligation
    {X : Type}
    (construction : ReflectiveMap X) where
  completeMetricDomain : Prop
  completeStatus : ProofDisposition
  fixedPointExistence : Prop
  existenceStatus : ProofDisposition
  fixedPointUniqueness : Prop
  uniquenessStatus : ProofDisposition
  globalBasinConvergence : Prop
  basinStatus : ProofDisposition

theorem certified_integral_traversal_obeys_affine_bound
    (actual : Nat → Nat)
    (gain localDefect initialDefect : Nat)
    (initial : actual 0 ≤ initialDefect)
    (step :
      ∀ n, actual (n + 1) ≤
        gain * actual n + localDefect) :
    ∀ n, actual n ≤
      constantAffineBound gain localDefect initialDefect n :=
  iterated_affine_defect_bound
    actual gain localDefect initialDefect initial step

/-!
This theorem is intentionally scoped to an integral gain.  In particular it
does not establish general sub-unit geometric convergence.  Such claims use a
`ScaledDerivativeGainCertificate` plus separately discharged completeness and
basin obligations.
-/

theorem exact_zero_gain_converges_after_one_step
    (initialDefect : Nat)
    (n : Nat) :
    constantAffineBound 0 0 initialDefect (n + 1) = 0 := by
  induction n with
  | zero => simp
  | succ n inductionHypothesis => simp

structure ResidualFloorObligation where
  gainNumerator : Nat
  gainScale : Nat
  localResidual : Nat
  asymptoticFloorStatement : Prop
  status : ProofDisposition

end Mathematics.Stability
