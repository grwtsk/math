# Complete source: GRWTSK.Algebra.LinearAlgebra.Basis.Variantfa34f6cfc808157d9fdf9322096e00010bba211f0ba79fd31318fe051c285056

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `df288abffad9b83600617e06f07a0e19be963b3a` · SHA-256 `b63db0fb67ba66ff35fb0cab78e39b9a956368969b09a5051fb9660ff77a0a90`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: Algebra.LinearAlgebra
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Algebra.LinearAlgebra.Module.Variantb2fc01a18e81d3c2ac74518fcda68a9cb2eb6498398b1a012b3822089fca2ca0","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"b2fc01a18e81d3c2ac74518fcda68a9cb2eb6498398b1a012b3822089fca2ca0","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Algebra.LinearAlgebra.SourceCorpus.Module.Variantb2fc01a18e81d3c2ac74518fcda68a9cb2eb6498398b1a012b3822089fca2ca0","mathematical_subject":"Algebra.LinearAlgebra","original_sha256":"b2fc01a18e81d3c2ac74518fcda68a9cb2eb6498398b1a012b3822089fca2ca0","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/October/30/ooi/spectral-proof-of-RH/lean/mathlib4/Mathlib/LinearAlgebra/DirectSum/Basis.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2021 Riccardo Brasca. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Riccardo Brasca
-/
import Mathlib.Algebra.DirectSum.Module
import Mathlib.LinearAlgebra.Finsupp.VectorSpace

/-!
# Bases for direct sum of modules

This file defines a `Module.Free` instance for the direct sum of modules.

## Implementation notes

Currently, to get a basis on `⨁ i, M i` from a basis on each `M i`, use `DFinsupp.basis`
(using that the types are defeq).
-/


namespace GRWTSK.Algebra.LinearAlgebra.Module.Variantb2fc01a18e81d3c2ac74518fcda68a9cb2eb6498398b1a012b3822089fca2ca0

open DirectSum

section Semiring

variable (R : Type*) [Semiring R] {ι : Type*} (M : ι → Type*) [∀ i : ι, AddCommMonoid (M i)]
variable [∀ i : ι, Module R (M i)]

instance Module.Free.directSum [∀ i : ι, Module.Free R (M i)] : Module.Free R (⨁ i, M i) :=
  Module.Free.dfinsupp R M

end Semiring
```
