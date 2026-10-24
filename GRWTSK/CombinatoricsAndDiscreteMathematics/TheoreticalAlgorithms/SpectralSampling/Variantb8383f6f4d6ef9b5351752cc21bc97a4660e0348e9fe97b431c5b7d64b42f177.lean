-- corpus-organization-transform:v1
-- Mathematical subject: CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.SpectrumRole.Variant42ddd6081a97f74a968a1d7ec961027c7bfdaa10a4493794e9e6a2bc30087cf9","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"42ddd6081a97f74a968a1d7ec961027c7bfdaa10a4493794e9e6a2bc30087cf9","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.DataStructures.SourceCorpus.SpectrumRole.Variant42ddd6081a97f74a968a1d7ec961027c7bfdaa10a4493794e9e6a2bc30087cf9","mathematical_subject":"Computation.DataStructures","original_sha256":"42ddd6081a97f74a968a1d7ec961027c7bfdaa10a4493794e9e6a2bc30087cf9","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/07/21/Surface/formal/.surface/overlays/session:2e628ee6531784ebd1c16c0e/workspace/lib/Surface/Refactor/SpectralSampling.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
module

public import Surface.Refactor.BitSampling

/-! # Finite spectral scheduling witnesses -/


namespace GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.SpectrumRole.Variant42ddd6081a97f74a968a1d7ec961027c7bfdaa10a4493794e9e6a2bc30087cf9

public section

namespace Surface.Refactor

@[surface_novel]
inductive SpectrumRole where
  | cyclicDft
  | samplingMask
  | responseSignal
  | sourceResponseCoherence
  | mixedRadixCharacter
  | walshHadamard
  | directPeriodResidual
deriving DecidableEq, Repr, BEq

@[surface_certificate]
structure SpectralWitness where
  role : SpectrumRole
  inputDigest : ContentHash256
  transformSize : Nat
  realCoefficients : List Int
  imaginaryCoefficients : List Int
  precisionBits : Nat
deriving Repr

@[surface_certificate]
structure DirectPeriodCheck where
  candidatePeriod : Nat
  checkedSampleIndices : List Nat
  residualNumerator : Nat
  residualDenominator : Nat
deriving DecidableEq, Repr

@[expose] def SpectralWitness.authority (_witness : SpectralWitness) :
    RefactorAuthority := .numericalWitness

@[expose] def DirectPeriodCheck.authority (_check : DirectPeriodCheck) :
    RefactorAuthority := .finiteEvidence

@[surface_novel]
structure ValidatedPeriodCandidate where
  spectralCandidate : SpectralWitness
  directCheck : DirectPeriodCheck

@[surface_novel, surface_published]
theorem period_candidate_requires_direct_check (candidate : ValidatedPeriodCandidate) :
    candidate.directCheck.authority = .finiteEvidence :=
  rfl

@[surface_novel, surface_published]
theorem finite_period_residual_is_finite_evidence (check : DirectPeriodCheck) :
    check.authority = .finiteEvidence :=
  rfl

@[surface_novel, surface_published]
theorem spectral_packet_not_kernel_authority (witness : SpectralWitness) :
    witness.authority ≠ .leanKernelChecked := by
  intro h
  cases h

@[surface_novel, surface_published]
theorem sampling_source_spectrum_is_distinct_from_response_spectrum :
    SpectrumRole.samplingMask ≠ .responseSignal := by
  decide

end Surface.Refactor
