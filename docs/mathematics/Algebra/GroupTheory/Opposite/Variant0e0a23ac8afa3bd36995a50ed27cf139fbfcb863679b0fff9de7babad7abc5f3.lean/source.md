# Complete source: GRWTSK.Algebra.GroupTheory.Opposite.Variant0e0a23ac8afa3bd36995a50ed27cf139fbfcb863679b0fff9de7babad7abc5f3

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `b328aadc85ffd9924af14d3bac89377acdb18d2b` · SHA-256 `92fc56c1cac4f20c269c7056529bd2b4e883cb48a118a6d6270ab252a7f7fda1`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: Algebra.GroupTheory
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Algebra.GroupTheory.Op.Variant767e70348b9d3cb257985532955ac2581be5c5be78e04f9871ca200db80789f1","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"767e70348b9d3cb257985532955ac2581be5c5be78e04f9871ca200db80789f1","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Algebra.Groups.SourceCorpus.Op.Variant767e70348b9d3cb257985532955ac2581be5c5be78e04f9871ca200db80789f1","mathematical_subject":"Algebra.Groups","original_sha256":"767e70348b9d3cb257985532955ac2581be5c5be78e04f9871ca200db80789f1","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/October/30/ooi/spectral-proof-of-RH/lean/mathlib4/Mathlib/RingTheory/Congruence/Opposite.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2022 Eric Wieser. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Eric Wieser
-/

import Mathlib.RingTheory.Congruence.Basic
import Mathlib.GroupTheory.Congruence.Opposite

/-!
# Congruences on the opposite ring

This file defines the order isomorphism between the congruences on a ring `R` and the congruences on
the opposite ring `Rᵐᵒᵖ`.

-/


namespace GRWTSK.Algebra.GroupTheory.Op.Variant767e70348b9d3cb257985532955ac2581be5c5be78e04f9871ca200db80789f1

variable {R : Type*} [Add R] [Mul R]

namespace RingCon

/--
If `c` is a `RingCon R`, then `(a, b) ↦ c b.unop a.unop` is a `RingCon Rᵐᵒᵖ`.
-/
def op (c : RingCon R) : RingCon Rᵐᵒᵖ where
  __ := c.toCon.op
  mul' h1 h2 := c.toCon.op.mul h1 h2
  add' h1 h2 := c.add h1 h2

lemma op_iff {c : RingCon R} {x y : Rᵐᵒᵖ} : c.op x y ↔ c y.unop x.unop := Iff.rfl

/--
If `c` is a `RingCon Rᵐᵒᵖ`, then `(a, b) ↦ c b.op a.op` is a `RingCon R`.
-/
def unop (c : RingCon Rᵐᵒᵖ) : RingCon R where
  __ := c.toCon.unop
  mul' h1 h2 := c.toCon.unop.mul h1 h2
  add' h1 h2 := c.add h1 h2

lemma unop_iff {c : RingCon Rᵐᵒᵖ} {x y : R} : c.unop x y ↔ c (.op y) (.op x) := Iff.rfl

/--
The congruences of a ring `R` biject to the congruences of the opposite ring `Rᵐᵒᵖ`.
-/
@[simps]
def opOrderIso : RingCon R ≃o RingCon Rᵐᵒᵖ where
  toFun := op
  invFun := unop
  left_inv _ := rfl
  right_inv _ := rfl
  map_rel_iff' {c d} := by rw [le_def, le_def]; constructor <;> intro h _ _ h' <;> exact h h'

end RingCon
```
