-- corpus-organization-transform:v1
-- Mathematical subject: CombinatoricsAndDiscreteMathematics
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CombinatoricsAndDiscreteMathematics.PercolationProfile.Variant13ca6553e50be79a817e2059f259d6c30230f9635623976071a54f425405dbe4","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"13ca6553e50be79a817e2059f259d6c30230f9635623976071a54f425405dbe4","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Combinatorics.FiniteCombinatorics.SourceCorpus.PercolationProfile.Variant13ca6553e50be79a817e2059f259d6c30230f9635623976071a54f425405dbe4","mathematical_subject":"Combinatorics.FiniteCombinatorics","original_sha256":"13ca6553e50be79a817e2059f259d6c30230f9635623976071a54f425405dbe4","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/08/10/Surface/Mathematics/AbelReynolds/Percolation.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Mathlib.Data.Finset.Basic

/-!
# Certified Abel--Reynolds percolation

Noetherianity is used only after a total, stage-independent transformer has
been supplied.  An arithmetically undetermined next step remains a typed
unknown instead of being searched for indefinitely.
-/


namespace GRWTSK.CombinatoricsAndDiscreteMathematics.PercolationProfile.Variant13ca6553e50be79a817e2059f259d6c30230f9635623976071a54f425405dbe4

namespace Mathematics.AbelReynolds

universe u v

structure PercolationProfile (Ideal : Type u) [PartialOrder Ideal] where
  step : Ideal → Ideal
  finitePresentation : Ideal → Finset String
  inflationary : ∀ ideal, ideal ≤ step ideal
  monotone : Monotone step
  radicalStable : Ideal → Prop
  orbitStable : Ideal → Prop
  symmetryStable : Ideal → Prop
  stepPreservesRadical :
    ∀ ideal, radicalStable (step ideal)
  stepPreservesOrbit :
    ∀ ideal, orbitStable (step ideal)
  stepPreservesSymmetry :
    ∀ ideal, symmetryStable (step ideal)

def percolate
    [PartialOrder Ideal]
    (profile : PercolationProfile Ideal)
    (initial : Ideal) : Nat → Ideal
  | 0 => initial
  | stage + 1 => profile.step (percolate profile initial stage)

theorem percolate_inflationary
    [PartialOrder Ideal]
    (profile : PercolationProfile Ideal)
    (initial : Ideal)
    (stage : Nat) :
    percolate profile initial stage ≤
      percolate profile initial (stage + 1) :=
  profile.inflationary _

inductive EffectiveStep (Ideal : Type u) (Obligation : Type v)
  | determined (next : Ideal)
  | undetermined (obligation : Obligation)
  deriving DecidableEq, Repr

structure StabilizationCertificate
    [PartialOrder Ideal]
    (profile : PercolationProfile Ideal)
    (initial : Ideal) where
  terminalStage : Nat
  stable :
    percolate profile initial (terminalStage + 1) =
      percolate profile initial terminalStage
  aboveInitial :
    initial ≤ percolate profile initial terminalStage
  leastClosed :
    ∀ candidate,
      initial ≤ candidate →
      profile.step candidate ≤ candidate →
      percolate profile initial terminalStage ≤ candidate

def terminalIdeal
    [PartialOrder Ideal]
    {profile : PercolationProfile Ideal}
    {initial : Ideal}
    (certificate : StabilizationCertificate profile initial) : Ideal :=
  percolate profile initial certificate.terminalStage

theorem terminalIdeal_closed
    [PartialOrder Ideal]
    {profile : PercolationProfile Ideal}
    {initial : Ideal}
    (certificate : StabilizationCertificate profile initial) :
    profile.step (terminalIdeal certificate) =
      terminalIdeal certificate := by
  simpa [terminalIdeal, percolate] using certificate.stable

theorem terminalIdeal_least
    [PartialOrder Ideal]
    {profile : PercolationProfile Ideal}
    {initial : Ideal}
    (certificate : StabilizationCertificate profile initial)
    {candidate : Ideal}
    (above : initial ≤ candidate)
    (closed : profile.step candidate ≤ candidate) :
    terminalIdeal certificate ≤ candidate :=
  certificate.leastClosed candidate above closed

end Mathematics.AbelReynolds
