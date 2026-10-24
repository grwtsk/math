# Complete source: GRWTSK.Algebra.UniversalAlgebra.Module.Variant7b910b95185a290d716a0303370910b5c148b8228551d34837aa601091647b90

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `a77f55261fe148632412385e225098287dd9db0d` · SHA-256 `8eb27e7ffc78ea0cbba5ccbab7ecb0e125b8d16d96c5aa47566a4108ba511c63`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: Algebra.UniversalAlgebra
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Algebra.UniversalAlgebra.LinearEquivShrink.Variante9c387e01e64826d49e64b3ce9b34ae9ddd6895dfe3d5173259d269ac3a793f9","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"e9c387e01e64826d49e64b3ce9b34ae9ddd6895dfe3d5173259d269ac3a793f9","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Algebra.GeneralAlgebra.SourceCorpus.LinearEquivShrink.Variante9c387e01e64826d49e64b3ce9b34ae9ddd6895dfe3d5173259d269ac3a793f9","mathematical_subject":"Algebra.GeneralAlgebra","original_sha256":"e9c387e01e64826d49e64b3ce9b34ae9ddd6895dfe3d5173259d269ac3a793f9","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/October/30/ooi/spectral-proof-of-RH/lean/mathlib4/Mathlib/Algebra/Small/Module.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2021 Kim Morrison. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Kim Morrison
-/
import Mathlib.Algebra.Small.Group
import Mathlib.Algebra.Small.Ring

/-!
# Transfer module and algebra structures from `α` to `Shrink α`.
-/


namespace GRWTSK.Algebra.UniversalAlgebra.LinearEquivShrink.Variante9c387e01e64826d49e64b3ce9b34ae9ddd6895dfe3d5173259d269ac3a793f9

noncomputable section

variable {α β : Type*}

instance [Semiring α] [AddCommMonoid β] [Module α β] [Small β] : Module α (Shrink β) :=
  (equivShrink _).symm.module α

/-- A small module is linearly equivalent to its small model. -/
def linearEquivShrink (α β) [Semiring α] [AddCommMonoid β] [Module α β] [Small β] :
    β ≃ₗ[α] Shrink β :=
  ((equivShrink β).symm.linearEquiv α).symm

instance [CommSemiring α] [Semiring β] [Algebra α β] [Small β] : Algebra α (Shrink β) :=
  (equivShrink _).symm.algebra α

/-- A small algebra is algebra equivalent to its small model. -/
def algEquivShrink (α β) [CommSemiring α] [Semiring β] [Algebra α β] [Small β] :
    β ≃ₐ[α] Shrink β :=
  ((equivShrink β).symm.algEquiv α).symm
```
