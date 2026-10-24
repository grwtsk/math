# Complete source: GRWTSK.Algebra.Noetherian.Variant36ca9400de031f7c55e8d8069a9995899fdaa1ba7d24ff78d67148beaf90be18

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `2ab307cc2d05a88340b319f4084dad999c0e07fb` · SHA-256 `c0ef8610c6b6339d13d2e9a792a1d0e9954a7f65b4fce226f4bb247adccf01c4`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: Algebra
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Algebra.GradedAlgebra.Variantfa7acdf927ac3426cd47643bf0549566f992c0f22af543d771cd4b3c8e0078a0","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"fa7acdf927ac3426cd47643bf0549566f992c0f22af543d771cd4b3c8e0078a0","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Algebra.RingsAndFields.SourceCorpus.GradedAlgebra.Variantfa7acdf927ac3426cd47643bf0549566f992c0f22af543d771cd4b3c8e0078a0","mathematical_subject":"Algebra.RingsAndFields","original_sha256":"fa7acdf927ac3426cd47643bf0549566f992c0f22af543d771cd4b3c8e0078a0","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/October/30/ooi/spectral-proof-of-RH/lean/mathlib4/Mathlib/RingTheory/GradedAlgebra/Noetherian.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2023 Fangming Li. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Fangming Li
-/
import Mathlib.RingTheory.GradedAlgebra.Basic
import Mathlib.RingTheory.Noetherian.Basic

/-!
# The properties of a graded Noetherian ring.

This file proves that the 0-th grade of a Noetherian ring is
also a Noetherian ring.
-/


namespace GRWTSK.Algebra.GradedAlgebra.Variantfa7acdf927ac3426cd47643bf0549566f992c0f22af543d771cd4b3c8e0078a0

variable {ι A σ : Type*}
variable [Ring A] [IsNoetherianRing A]
variable [DecidableEq ι] [AddCommMonoid ι] [PartialOrder ι] [CanonicallyOrderedAdd ι]
variable [SetLike σ A] [AddSubgroupClass σ A]
variable (𝒜 : ι → σ) [GradedRing 𝒜]

namespace GradedRing

/-- If the internally graded ring `A` is Noetherian, then `𝒜 0` is a Noetherian ring. -/
instance GradeZero.isNoetherianRing : IsNoetherianRing (𝒜 0) :=
  isNoetherianRing_of_surjective
    A (𝒜 0) (GradedRing.projZeroRingHom' 𝒜) (GradedRing.projZeroRingHom'_surjective 𝒜)

end GradedRing
```
