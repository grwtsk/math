# Complete source: GRWTSK.CombinatoricsAndDiscreteMathematics.ActualPeanoCubicTypeAgreement.Variant09f374fdc23c48874e4703b3213e345cf1b8e38a2d5ff7c41598cb24d566d712

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `fa6afeffdfdc3f1e96119ebce91c308bc1035c07` · SHA-256 `722d51c7579d035d7260ae9f022c32286d417b8eee79cfffe18a62e310dbd6c4`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: CombinatoricsAndDiscreteMathematics
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CombinatoricsAndDiscreteMathematics.ActualRemainderTypeAgreement.Variant79778a1eca92be28da365c25cf0bf6872f88c0a6cb791f0d8960e1a65d55cd91","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"79778a1eca92be28da365c25cf0bf6872f88c0a6cb791f0d8960e1a65d55cd91","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Combinatorics.FiniteCombinatorics.SourceCorpus.ActualRemainderTypeAgreement.Variant79778a1eca92be28da365c25cf0bf6872f88c0a6cb791f0d8960e1a65d55cd91","mathematical_subject":"Combinatorics.FiniteCombinatorics","original_sha256":"79778a1eca92be28da365c25cf0bf6872f88c0a6cb791f0d8960e1a65d55cd91","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/scratch/rh16-continuation-20261006-signed-next/independent-stable-peano/ActualPeanoCubicTypeAgreement.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import ActualStablePeanoCubic
import SourceCorrectedOmegaPeanoTaylor

/-!
Independent exact type agreement for the actual stable-kernel source and the
root corrected-Omega consumer. No new arithmetic assumption is discharged.
AI attribution: OpenAI Codex independent signed reduction challenge.
-/

namespace GRWTSK.CombinatoricsAndDiscreteMathematics.ActualRemainderTypeAgreement.Variant79778a1eca92be28da365c25cf0bf6872f88c0a6cb791f0d8960e1a65d55cd91

set_option autoImplicit false
namespace RH16SignedIndependentLowerKernelReview
open FormalResearch.RiemannHypothesis.SourceCorrectedOmegaPeanoTaylor
open RH16IndependentChallengeNext
open FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.EstimateVaughanSource

/-- Literal actual-source remainder definitions agree, without profile substitution. -/
theorem actual_remainder_type_agreement (A t : ℝ) :
    actualPeanoCubicRemainder A t = actualStablePeanoCubicRemainder A t := rfl

/-- The independently proved stable-kernel norm bound discharges the exact actual rho leaf. -/
theorem actual_root_remainder_abs_le (A t : ℝ) (hA : 91 ≤ A) :
    |actualPeanoCubicRemainder A t| ≤ 320 * 67 / A ^ 4 := by
  rw [actual_remainder_type_agreement]
  exact actualStablePeanoCubicRemainder_abs_le A t hA

/-- Exactly the finite row callback requested by the original corrected consumer is supplied. -/
theorem actual_row_bound_for_root_consumer (A : ℝ) (hA : 91 ≤ A) :
    ∀ d ∈ Finset.Icc 1 (vaughanCutoff A),
      |actualPeanoCubicRemainder A (Real.log (d : ℝ))| ≤ 320 * 67 / A ^ 4 := by
  intro d _
  exact actual_root_remainder_abs_le A (Real.log (d : ℝ)) hA

end RH16SignedIndependentLowerKernelReview
```
