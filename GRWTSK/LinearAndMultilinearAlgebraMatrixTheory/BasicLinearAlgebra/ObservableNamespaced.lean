-- corpus-organization-transform:v1
-- Mathematical subject: Algebra.LinearAlgebra
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Algebra.LinearAlgebra.HermitianObservable.Variant81d297587fd3230c11dd92a030a904fcbdae40a6f4462b4db1ba529ef738f28c","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"81d297587fd3230c11dd92a030a904fcbdae40a6f4462b4db1ba529ef738f28c","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Algebra.LinearAlgebra.SourceCorpus.HermitianObservable.Variant81d297587fd3230c11dd92a030a904fcbdae40a6f4462b4db1ba529ef738f28c","mathematical_subject":"Algebra.LinearAlgebra","original_sha256":"81d297587fd3230c11dd92a030a904fcbdae40a6f4462b4db1ba529ef738f28c","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/08/10/Surface/Mathematics/TensorNetwork/Observable.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Mathematics.TensorNetwork.Canonical

/-!
# Gauge-independent finite observables

Observable expectations are normalized contractions of the represented state.
The unnormalized numerator and normalization denominator remain separately
available.
-/


namespace GRWTSK.Algebra.LinearAlgebra.HermitianObservable.Variant81d297587fd3230c11dd92a030a904fcbdae40a6f4462b4db1ba529ef738f28c

namespace Mathematics.TensorNetwork

open scoped BigOperators

/-- A finite Hermitian observable in the selected tensor basis. -/
structure HermitianObservable (N D : Nat) where
  matrix :
    PhysicalConfiguration N D →
    PhysicalConfiguration N D →
    ℂ
  hermitian :
    ∀ left right,
      star (matrix right left) = matrix left right

/-- Exact squared norm in the coordinate basis. -/
noncomputable def stateWeight
    (state : TensorState N D) : ℂ :=
  ∑ basis : PhysicalConfiguration N D,
    star (state basis) * state basis

/-- Exact unnormalized quadratic contraction. -/
noncomputable def observableNumerator
    (observable : HermitianObservable N D)
    (state : TensorState N D) : ℂ :=
  ∑ left : PhysicalConfiguration N D,
    ∑ right : PhysicalConfiguration N D,
      star (state left) *
        observable.matrix left right *
        state right

/-- Normalized expectation; semantic use additionally certifies nonzero weight. -/
noncomputable def normalizedExpectation
    (observable : HermitianObservable N D)
    (state : TensorState N D) : ℂ :=
  observableNumerator observable state / stateWeight state

/-- A nonzero-state witness for normalized observable use. -/
structure NormalizedStateCertificate
    (state : TensorState N D) where
  nonzeroWeight : stateWeight state ≠ 0

/-- Gauge-equivalent MPS coordinates give the same normalized expectation. -/
theorem normalizedExpectation_gauge_invariant
    (observable : HermitianObservable N D)
    {source target : OpenMPS N D}
    (gauge : GaugeTransformation source target) :
    normalizedExpectation observable target.contract =
      normalizedExpectation observable source.contract := by
  rw [gauge.contractPreserved]

end Mathematics.TensorNetwork
