# Complete source: GRWTSK.CombinatoricsAndDiscreteMathematics.SpectralCandidate.Variant1d60659ec48d420003c6c1d442dad3e16b24f2bde8a2d00864cc64665cd7183a

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `f9a2f4eceee0b7782fdf125f4d267d0f86cc2d70` · SHA-256 `1d60659ec48d420003c6c1d442dad3e16b24f2bde8a2d00864cc64665cd7183a`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
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
```
