# Complete source: GRWTSK.Algebra.LinearAlgebra.Pointwise.Variant15323d496429f57e6e4546c9c9175af6bf0a0a61cd087b195f3a23115ee74ac6

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `1c651af0cc2a4d57d20f1447394c6dd31e6b9b08` · SHA-256 `e8b7a29d3ceabd6de46dd27b5075a273a46eaeddd3adc6cb406ed499acbaa11c`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: Algebra.LinearAlgebra
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Algebra.LinearAlgebra.SmulPrime.Variant2d2241d2705d4f6d896cf08c55044e4d2f6361b34af8ccd3770d83735c379fda","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"2d2241d2705d4f6d896cf08c55044e4d2f6361b34af8ccd3770d83735c379fda","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Algebra.LinearAlgebra.SourceCorpus.SmulPrime.Variant2d2241d2705d4f6d896cf08c55044e4d2f6361b34af8ccd3770d83735c379fda","mathematical_subject":"Algebra.LinearAlgebra","original_sha256":"2d2241d2705d4f6d896cf08c55044e4d2f6361b34af8ccd3770d83735c379fda","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/rh16-games-packets/external/replay/.lake/packages/mathlib/Mathlib/LinearAlgebra/SModEq/Pointwise.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2025 Jiedong Jiang. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Jiedong Jiang
-/
module

public import Mathlib.Algebra.Algebra.Operations
public import Mathlib.LinearAlgebra.SModEq.Basic

/-!
# Pointwise lemmas for modular equivalence

In this file, we record more lemmas about `SModEq` on elements
of modules or rings.
-/


namespace GRWTSK.Algebra.LinearAlgebra.SmulPrime.Variant2d2241d2705d4f6d896cf08c55044e4d2f6361b34af8ccd3770d83735c379fda

public section

open Submodule

variable {R : Type*} [Ring R] {I : Ideal R}
variable {M : Type*} [AddCommGroup M] [Module R M] {U : Submodule R M}
variable {x y : M}

namespace SModEq

/--
A variant of `SModEq.smul`, where the scalar belongs to an ideal.
-/
theorem smul' (hxy : x ≡ y [SMOD U])
    {c : R} (hc : c ∈ I) : c • x ≡ c • y [SMOD (I • U)] := by
  rw [SModEq.sub_mem] at hxy ⊢
  rw [← smul_sub]
  exact smul_mem_smul hc hxy

end SModEq
```
