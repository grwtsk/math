-- corpus-organization-transform:v1
-- Mathematical subject: Algebra.LinearAlgebra
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Algebra.LinearAlgebra.PosDef.Variant2ec9cbd5e99b294a6f0b9c534de2cfbe1830359f186b6e3f8f5df37dda81051f","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"2ec9cbd5e99b294a6f0b9c534de2cfbe1830359f186b6e3f8f5df37dda81051f","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Algebra.LinearAlgebra.SourceCorpus.PosDef.Variant2ec9cbd5e99b294a6f0b9c534de2cfbe1830359f186b6e3f8f5df37dda81051f","mathematical_subject":"Algebra.LinearAlgebra","original_sha256":"2ec9cbd5e99b294a6f0b9c534de2cfbe1830359f186b6e3f8f5df37dda81051f","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/October/30/ooi/spectral-proof-of-RH/lean/mathlib4/MathlibTest/PosDef.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Mathlib.LinearAlgebra.Matrix.PosDef


namespace GRWTSK.Algebra.LinearAlgebra.PosDef.Variant2ec9cbd5e99b294a6f0b9c534de2cfbe1830359f186b6e3f8f5df37dda81051f

open Matrix
open scoped ComplexOrder

variable {n 𝕜 : Type*} [Fintype n] [RCLike 𝕜] [DecidableEq n]
  {A : Matrix n n 𝕜} (hA : PosSemidef A)

-- test for custom elaborator
/--
info: (⋯ : A.PosSemidef).sqrt : Matrix n n 𝕜
-/
#guard_msgs in
#check (id hA).sqrt
