# Complete source: GRWTSK.Algebra.LinearAlgebra.Opposite.Variant46f08b6721813756f7e5ea0236227961ccd5dc0b1d03a924b1361633829c062f

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `d490c1263eb8b36808bc749076df4a8cdcc0fa84` · SHA-256 `8272c1df0634fe2752a106d6397244087fa96c54629da8933341d8d2af622c78`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: Algebra.LinearAlgebra
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Algebra.LinearAlgebra.Opposite.Variante3ba1b515f1395c92572834a939211d7b554c57098c2159f10ece2780a9fa2f7","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"e3ba1b515f1395c92572834a939211d7b554c57098c2159f10ece2780a9fa2f7","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Algebra.LinearAlgebra.SourceCorpus.Opposite.Variante3ba1b515f1395c92572834a939211d7b554c57098c2159f10ece2780a9fa2f7","mathematical_subject":"Algebra.LinearAlgebra","original_sha256":"e3ba1b515f1395c92572834a939211d7b554c57098c2159f10ece2780a9fa2f7","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/October/30/ooi/spectral-proof-of-RH/lean/mathlib4/Mathlib/Algebra/Module/Opposite.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2020 Eric Wieser. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Eric Wieser
-/
import Mathlib.Algebra.GroupWithZero.Action.Opposite
import Mathlib.Algebra.Module.Defs
import Mathlib.Algebra.Ring.Opposite

/-!
# Module operations on `Mᵐᵒᵖ`

This file contains definitions that build on top of the group action definitions in
`Mathlib/Algebra/GroupWithZero/Action/Opposite.lean`.
-/


namespace GRWTSK.Algebra.LinearAlgebra.Opposite.Variante3ba1b515f1395c92572834a939211d7b554c57098c2159f10ece2780a9fa2f7

assert_not_exists LinearMap

section

variable {R M : Type*} [Semiring R] [AddCommMonoid M]

-- see Note [lower instance priority]
/-- Like `Semiring.toModule`, but multiplies on the right. -/
instance (priority := 910) Semiring.toOppositeModule [Semiring R] : Module Rᵐᵒᵖ R :=
  { MonoidWithZero.toOppositeMulActionWithZero R with
    smul_add := fun _ _ _ => add_mul _ _ _
    add_smul := fun _ _ _ => mul_add _ _ _ }

end

namespace MulOpposite

universe u v

variable (R : Type u) {M : Type v} [Semiring R] [AddCommMonoid M] [Module R M]

/-- `MulOpposite.distribMulAction` extends to a `Module` -/
instance instModule : Module R Mᵐᵒᵖ where
  add_smul _ _ _ := unop_injective <| add_smul _ _ _
  zero_smul _ := unop_injective <| zero_smul _ _

end MulOpposite
```
