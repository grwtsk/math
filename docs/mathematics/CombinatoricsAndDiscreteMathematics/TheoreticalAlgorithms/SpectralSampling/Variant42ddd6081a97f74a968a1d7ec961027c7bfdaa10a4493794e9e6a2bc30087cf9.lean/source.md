# Complete source: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.SpectralSampling.Variant42ddd6081a97f74a968a1d7ec961027c7bfdaa10a4493794e9e6a2bc30087cf9

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `972b29e6c9234f4b7f23effc3d412e9652f610ea` · SHA-256 `42ddd6081a97f74a968a1d7ec961027c7bfdaa10a4493794e9e6a2bc30087cf9`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
module

public import Surface.Refactor.BitSampling

/-! # Finite spectral scheduling witnesses -/

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
```
