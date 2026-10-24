# Complete source: GRWTSK.Algebra.LinearAlgebra.CharP.Variant2dbfa08afd66ed6dd93bacfa254aa0091a60649867e94b2f82f0e6dba91447e3

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `e7b82af6a95a55fd507a9084ffa096a60d8506cd` · SHA-256 `556111ec509138702ddf2cadd96761d2767fe23670018ae45d288aeb9f3b52be`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: Algebra.LinearAlgebra
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Algebra.LinearAlgebra.CharP.Variant840ddbdd7bc8773b3fba6f070111baf79e08d0c4817f73906c08e0f58e071358","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"840ddbdd7bc8773b3fba6f070111baf79e08d0c4817f73906c08e0f58e071358","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Algebra.LinearAlgebra.SourceCorpus.CharP.Variant840ddbdd7bc8773b3fba6f070111baf79e08d0c4817f73906c08e0f58e071358","mathematical_subject":"Algebra.LinearAlgebra","original_sha256":"840ddbdd7bc8773b3fba6f070111baf79e08d0c4817f73906c08e0f58e071358","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/rh16-games-packets/external/replay/.lake/packages/mathlib/Mathlib/LinearAlgebra/Matrix/CharP.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2020 Aaron Anderson. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Aaron Anderson
-/
module

public import Mathlib.Algebra.CharP.Defs
public import Mathlib.Data.Matrix.Diagonal

/-!
# Matrices in prime characteristic

In this file we prove that matrices over a ring of characteristic `p`
with nonempty index type have the same characteristic.
-/


namespace GRWTSK.Algebra.LinearAlgebra.CharP.Variant840ddbdd7bc8773b3fba6f070111baf79e08d0c4817f73906c08e0f58e071358

public section


namespace Matrix

variable {n : Type*} {R : Type*} [DecidableEq n] [Nonempty n] [AddMonoidWithOne R]

instance instCharP (p : ℕ) [CharP R p] : CharP (Matrix n n R) p where
  cast_eq_zero_iff k := by simp_rw [← diagonal_natCast, ← diagonal_zero, diagonal_eq_diagonal_iff,
    CharP.cast_eq_zero_iff R p k, forall_const]

instance instCharZero [CharZero R] : CharZero (Matrix n n R) where
  cast_injective _ _ h := by
    inhabit n
    simpa [natCast_apply] using congr($h default default)

instance instExpChar : ∀ {p} [ExpChar R p], ExpChar (Matrix n n R) p
  | _, @ExpChar.zero _ _ _ => .zero
  | _, @ExpChar.prime _ _ _ _ _ => .prime ‹_›

end Matrix
```
