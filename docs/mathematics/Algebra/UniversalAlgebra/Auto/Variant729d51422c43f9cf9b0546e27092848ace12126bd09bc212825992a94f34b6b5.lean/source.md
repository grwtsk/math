# Complete source: GRWTSK.Algebra.UniversalAlgebra.Auto.Variant729d51422c43f9cf9b0546e27092848ace12126bd09bc212825992a94f34b6b5

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `3cc3926e9e7f94c5b5a34ec165fc5b7e8d3a153b` · SHA-256 `45d7cc475992a3bd578169ce3deed176bb08d22fedb75956ba48b672bb6351a5`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

````lean
-- corpus-organization-transform:v1
-- Mathematical subject: Algebra.UniversalAlgebra
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Algebra.UniversalAlgebra.Expr.Variantb2ec9d694b8241bdd5af793826bb2218f2f5ba7f931d8866d41be21d26dc2cde","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"b2ec9d694b8241bdd5af793826bb2218f2f5ba7f931d8866d41be21d26dc2cde","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Algebra.GeneralAlgebra.SourceCorpus.Expr.Variantb2ec9d694b8241bdd5af793826bb2218f2f5ba7f931d8866d41be21d26dc2cde","mathematical_subject":"Algebra.GeneralAlgebra","original_sha256":"b2ec9d694b8241bdd5af793826bb2218f2f5ba7f931d8866d41be21d26dc2cde","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/October/30/ooi/spectral-proof-of-RH/lean/mathlib4/Mathlib/Data/Matrix/Auto.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2022 Eric Wieser. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Eric Wieser
-/
import Mathlib.Algebra.Expr
import Mathlib.Data.Matrix.Reflection

/-! # Automatically generated lemmas for working with concrete matrices

In Mathlib3, this file contained "magic" lemmas which autogenerate to the correct size of matrix.
For instance, `Matrix.of_mul_of_fin` could be used as:
```lean
example {α} [AddCommMonoid α] [Mul α] (a₁₁ a₁₂ a₂₁ a₂₂ b₁₁ b₁₂ b₂₁ b₂₂ : α) :
  !![a₁₁, a₁₂;
     a₂₁, a₂₂] * !![b₁₁, b₁₂;
                    b₂₁, b₂₂] = !![a₁₁ * b₁₁ + a₁₂ * b₂₁, a₁₁ * b₁₂ + a₁₂ * b₂₂;
                                   a₂₁ * b₁₁ + a₂₂ * b₂₁, a₂₁ * b₁₂ + a₂₂ * b₂₂] := by
  rw [of_mul_of_fin]
```

TODO: These magic lemmas have been skipped for now, though the plumbing lemmas in
`Mathlib/Data/Matrix/Reflection.lean` are still available.
They should probably be implemented as simprocs.
-/

namespace GRWTSK.Algebra.UniversalAlgebra.Expr.Variantb2ec9d694b8241bdd5af793826bb2218f2f5ba7f931d8866d41be21d26dc2cde

````
