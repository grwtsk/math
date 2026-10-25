-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.KroneckerKernel.Variant36065dd142cd5fc80fc67bb8944386a1fcb3a9e25195adc12184e4b8d4d2f046","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"36065dd142cd5fc80fc67bb8944386a1fcb3a9e25195adc12184e4b8d4d2f046","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Foundations.Unclassified.SourceCorpus.KroneckerKernel.Variant36065dd142cd5fc80fc67bb8944386a1fcb3a9e25195adc12184e4b8d4d2f046","mathematical_subject":"Foundations.Unclassified","original_sha256":"36065dd142cd5fc80fc67bb8944386a1fcb3a9e25195adc12184e4b8d4d2f046","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/08/10/Surface/.surface/revoked-artifacts/source-structure/2487c9da77d9d8ececb8ffd882948a360b9125bba2b28ca69972182b0e8e2352/failed-candidates/post-application-e89443c73810dcdf/MathDiscovery/Kernel/Kronecker.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import MathDiscovery.Kernel.Regularization

/-!
# Kronecker baseline

The Kronecker kernel is the zero semantic kernel plus the exact identity channel
with weight one.  It is the compatibility baseline for ordinary `ℓ²` concept
coordinates; it is not a useful semantic clustering kernel by itself.
-/


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.KroneckerKernel.Variant36065dd142cd5fc80fc67bb8944386a1fcb3a9e25195adc12184e4b8d4d2f046

noncomputable section

namespace MathDiscovery.Kernel

open scoped ComplexOrder

universe u

variable {Index : Type u} [DecidableEq Index]

/-- Exact Kronecker kernel. -/
def kroneckerKernel : PositiveKernel Index :=
  regularizedKernel (zeroSemanticKernel (Index := Index)) 1 (by norm_num)

@[simp]
theorem kroneckerKernel_apply (left right : Index) :
    kroneckerKernel left right =
      if left = right then (1 : ℂ) else 0 := by
  simp [kroneckerKernel]

/-- The Kronecker kernel is positive definite. -/
theorem kroneckerKernel_posDef :
    (kroneckerKernel (Index := Index)).matrix.PosDef :=
  regularizedKernel_posDef
    (zeroSemanticKernel (Index := Index)) (1 : ℝ) (by norm_num)

end MathDiscovery.Kernel
