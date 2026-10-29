import Mathematics.RHIsolation.Completeness

/-!
# Proposal-only spectral candidates

Model self-adjointness can place model parameters on the model critical line.
It cannot construct an analytic zero certificate.
-/

namespace Mathematics.RHIsolation

structure EigenvalueCluster where
  center : ℝ
  radius : ℝ
  radius_nonneg : 0 ≤ radius

structure SpectralCandidate where
  id : SpectralCandidateId
  spectralCut : SpectralCutId
  eigenCluster : EigenvalueCluster
  multiplicity : Nat
  multiplicity_pos : 0 < multiplicity
  ordinateInterval : RealInterval
  perturbationRadius : ℝ
  perturbationRadius_nonneg :
    0 ≤ perturbationRadius
  invariantLawCertificate :
    CertificateDigest
  selfAdjointnessCertificate :
    CertificateDigest

def SpectralCandidate.modelRegion
    (candidate : SpectralCandidate) :
    Set ℂ :=
  {z |
    z.re = (1 : ℝ) / 2 ∧
      candidate.ordinateInterval.Contains z.im}

/--
Analytic-zero authority is deliberately uninhabited for a bare proposal.
-/
def CarriesAnalyticZeroAuthority
    (_candidate : SpectralCandidate) : Prop :=
  False

theorem spectralCandidate_has_no_analyticAuthority
    (candidate : SpectralCandidate) :
    ¬ CarriesAnalyticZeroAuthority candidate :=
  id

theorem spectral_candidate_has_no_analytic_zero_field
    (candidate : SpectralCandidate) :
    ¬ CarriesAnalyticZeroAuthority candidate :=
  spectralCandidate_has_no_analyticAuthority candidate

structure SelfAdjointSpectralCut where
  id : SpectralCutId
  Candidate : Type
  candidateFintype : Fintype Candidate
  candidateDecEq : DecidableEq Candidate
  candidate : Candidate → SpectralCandidate
  modelParameter : Candidate → ℂ
  modelParameter_mem :
    ∀ index,
      modelParameter index ∈
        (candidate index).modelRegion
  selfAdjoint : Prop
  selfAdjointProof : selfAdjoint

attribute [instance]
  SelfAdjointSpectralCut.candidateFintype
  SelfAdjointSpectralCut.candidateDecEq

theorem selfAdjoint_modelCandidates_on_modelLine
    (model : SelfAdjointSpectralCut)
    (index : model.Candidate) :
    (model.modelParameter index).re =
      (1 : ℝ) / 2 :=
  (model.modelParameter_mem index).1

end Mathematics.RHIsolation
