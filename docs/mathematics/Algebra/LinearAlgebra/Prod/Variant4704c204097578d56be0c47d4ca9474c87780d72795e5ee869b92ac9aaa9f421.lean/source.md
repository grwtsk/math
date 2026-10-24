# Complete source: GRWTSK.Algebra.LinearAlgebra.Prod.Variant4704c204097578d56be0c47d4ca9474c87780d72795e5ee869b92ac9aaa9f421

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `9629df49319e42fc927c5e25b8edd12fb2d4b115` · SHA-256 `d893b08ee7bdf24a8aecd7de1acc7318f6016007ea10765f685fcb1e81f14c04`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: Algebra.LinearAlgebra
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Algebra.LinearAlgebra.Prod.Variant0711ce5f1d54db4a1ded0b8d25ed3807a8991b0b3bc0418cb11c5ccfb3d983fc","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"0711ce5f1d54db4a1ded0b8d25ed3807a8991b0b3bc0418cb11c5ccfb3d983fc","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Algebra.LinearAlgebra.SourceCorpus.Prod.Variant0711ce5f1d54db4a1ded0b8d25ed3807a8991b0b3bc0418cb11c5ccfb3d983fc","mathematical_subject":"Algebra.LinearAlgebra","original_sha256":"0711ce5f1d54db4a1ded0b8d25ed3807a8991b0b3bc0418cb11c5ccfb3d983fc","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/October/30/ooi/spectral-proof-of-RH/lean/mathlib4/Mathlib/Algebra/Module/Prod.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2018 Simon Hudon. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Simon Hudon, Patrick Massot, Eric Wieser
-/
import Mathlib.Algebra.GroupWithZero.Action.Prod
import Mathlib.Algebra.Module.Defs

/-!
# Prod instances for module and multiplicative actions

This file defines instances for binary product of modules
-/



namespace GRWTSK.Algebra.LinearAlgebra.Prod.Variant0711ce5f1d54db4a1ded0b8d25ed3807a8991b0b3bc0418cb11c5ccfb3d983fc

variable {R : Type*} {M : Type*} {N : Type*}

namespace Prod

instance smulWithZero [Zero R] [Zero M] [Zero N] [SMulWithZero R M] [SMulWithZero R N] :
    SMulWithZero R (M × N) where
  smul_zero _ := by ext <;> exact smul_zero ..
  zero_smul _ := by ext <;> exact zero_smul ..

instance mulActionWithZero [MonoidWithZero R] [Zero M] [Zero N] [MulActionWithZero R M]
    [MulActionWithZero R N] : MulActionWithZero R (M × N) :=
  { Prod.mulAction, Prod.smulWithZero with }

instance instModule [Semiring R] [AddCommMonoid M] [AddCommMonoid N] [Module R M] [Module R N] :
    Module R (M × N) where
  add_smul _ _ _ := by ext <;> exact add_smul ..
  zero_smul _ := by ext <;> exact zero_smul ..

end Prod
```
