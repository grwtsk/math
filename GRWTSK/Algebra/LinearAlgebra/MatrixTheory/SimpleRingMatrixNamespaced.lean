-- corpus-organization-transform:v1
-- Mathematical subject: Algebra.LinearAlgebra
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Algebra.LinearAlgebra.Ideal.Variant64a7f6e10869088785a67bcc748e756d000aa1ca314c5deb3e0313bdba26ec59","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"64a7f6e10869088785a67bcc748e756d000aa1ca314c5deb3e0313bdba26ec59","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Algebra.LinearAlgebra.SourceCorpus.Ideal.Variant64a7f6e10869088785a67bcc748e756d000aa1ca314c5deb3e0313bdba26ec59","mathematical_subject":"Algebra.LinearAlgebra","original_sha256":"64a7f6e10869088785a67bcc748e756d000aa1ca314c5deb3e0313bdba26ec59","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/October/30/ooi/spectral-proof-of-RH/lean/mathlib4/Mathlib/RingTheory/SimpleRing/Matrix.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2024 Jujian Zhang. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Jujian Zhang
-/
import Mathlib.LinearAlgebra.Matrix.Ideal
import Mathlib.RingTheory.SimpleRing.Basic

/-!
The matrix ring over a simple ring is simple
-/


namespace GRWTSK.Algebra.LinearAlgebra.Ideal.Variant64a7f6e10869088785a67bcc748e756d000aa1ca314c5deb3e0313bdba26ec59

namespace IsSimpleRing

variable (ι A : Type*) [Ring A] [Fintype ι] [Nonempty ι]

instance matrix [IsSimpleRing A] : IsSimpleRing (Matrix ι ι A) where
  simple := letI := Classical.decEq ι; TwoSidedIdeal.orderIsoMatricesOver |>.symm.isSimpleOrder

end IsSimpleRing
