# Complete source: GRWTSK.Algebra.LinearAlgebra.SubmoduleQuotient.Variant9bd42af79e14119eae3dbae52f41d77d882076b3062df219d749f7ab7cfb21a4

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `df9d4bf75e8a9ecc4151765f4ed8f8d07d2f14e7` · SHA-256 `38589c34a64510bf21496f772777d480de86a6130f1e9616175793257553488c`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: Algebra.LinearAlgebra
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Algebra.LinearAlgebra.Quotient.Variant96cc1b8d6866daa8510ab4b1e7b3735f7f68684d9e6fcc75681625d01768da73","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"96cc1b8d6866daa8510ab4b1e7b3735f7f68684d9e6fcc75681625d01768da73","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Algebra.LinearAlgebra.SourceCorpus.Quotient.Variant96cc1b8d6866daa8510ab4b1e7b3735f7f68684d9e6fcc75681625d01768da73","mathematical_subject":"Algebra.LinearAlgebra","original_sha256":"96cc1b8d6866daa8510ab4b1e7b3735f7f68684d9e6fcc75681625d01768da73","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/October/30/ooi/spectral-proof-of-RH/lean/mathlib4/Mathlib/MeasureTheory/Constructions/SubmoduleQuotient.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2024 Yaël Dillies. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Yaël Dillies
-/
import Mathlib.LinearAlgebra.Quotient.Defs
import Mathlib.MeasureTheory.MeasurableSpace.Constructions

/-!
# Measurability on the quotient of a module by a submodule
-/


namespace GRWTSK.Algebra.LinearAlgebra.Quotient.Variant96cc1b8d6866daa8510ab4b1e7b3735f7f68684d9e6fcc75681625d01768da73

namespace Submodule.Quotient
variable {R M : Type*} [Ring R] [AddCommGroup M] [Module R M] {p : Submodule R M}

instance [MeasurableSpace M] : MeasurableSpace (M ⧸ p) := Quotient.instMeasurableSpace
instance [MeasurableSpace M] [DiscreteMeasurableSpace M] : DiscreteMeasurableSpace (M ⧸ p) :=
  Quotient.instDiscreteMeasurableSpace

end Submodule.Quotient
```
