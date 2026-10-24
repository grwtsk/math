# Complete source: GRWTSK.Algebra.GroupTheory.Opposite.Variant185f9d1638bb8592f7243b52e86886b8b84022175fc87adaa3cbd612886e5e1f

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `eb2cc1bb878b8af350e9b96a6727adf67469c936` · SHA-256 `f9bf86e2c84ef13fd2a46d026020d2caa7a66b3162dfef7d5df1dec6edf6a188`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: Algebra.GroupTheory
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Algebra.GroupTheory.Faithful.Variant46a036e37a2b912e9d53c6d30c1fe89480df0ef9946a148ed2abf222c541f341","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"46a036e37a2b912e9d53c6d30c1fe89480df0ef9946a148ed2abf222c541f341","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Algebra.Groups.SourceCorpus.Faithful.Variant46a036e37a2b912e9d53c6d30c1fe89480df0ef9946a148ed2abf222c541f341","mathematical_subject":"Algebra.Groups","original_sha256":"46a036e37a2b912e9d53c6d30c1fe89480df0ef9946a148ed2abf222c541f341","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/October/30/ooi/spectral-proof-of-RH/lean/mathlib4/Mathlib/Algebra/GroupWithZero/Action/Opposite.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2020 Eric Wieser. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Eric Wieser
-/
import Mathlib.Algebra.Group.Action.Faithful
import Mathlib.Algebra.Group.Action.Opposite
import Mathlib.Algebra.GroupWithZero.Action.Defs
import Mathlib.Algebra.GroupWithZero.NeZero

/-!
# Scalar actions on and by `Mᵐᵒᵖ`

This file defines the actions on the opposite type `SMul R Mᵐᵒᵖ`, and actions by the opposite
type, `SMul Rᵐᵒᵖ M`.

Note that `MulOpposite.smul` is provided in an earlier file as it is needed to
provide the `AddMonoid.nsmul` and `AddCommGroup.zsmul` fields.

## Notation

With `open scoped RightActions`, this provides:

* `r •> m` as an alias for `r • m`
* `m <• r` as an alias for `MulOpposite.op r • m`
* `v +ᵥ> p` as an alias for `v +ᵥ p`
* `p <+ᵥ v` as an alias for `AddOpposite.op v +ᵥ p`
-/


namespace GRWTSK.Algebra.GroupTheory.Faithful.Variant46a036e37a2b912e9d53c6d30c1fe89480df0ef9946a148ed2abf222c541f341

assert_not_exists Ring

variable {M α : Type*}

/-! ### Actions _on_ the opposite type

Actions on the opposite type just act on the underlying type.
-/

namespace MulOpposite

instance instSMulZeroClass [AddMonoid α] [SMulZeroClass M α] : SMulZeroClass M αᵐᵒᵖ where
  smul_zero _ := unop_injective <| smul_zero _

instance instSMulWithZero [MonoidWithZero M] [AddMonoid α] [SMulWithZero M α] :
    SMulWithZero M αᵐᵒᵖ where
  zero_smul _ := unop_injective <| zero_smul _ _

instance instMulActionWithZero [MonoidWithZero M] [AddMonoid α] [MulActionWithZero M α] :
    MulActionWithZero M αᵐᵒᵖ where
  smul_zero _ := unop_injective <| smul_zero _
  zero_smul _ := unop_injective <| zero_smul _ _

instance instDistribMulAction [Monoid M] [AddMonoid α] [DistribMulAction M α] :
    DistribMulAction M αᵐᵒᵖ where
  smul_add _ _ _ := unop_injective <| smul_add _ _ _
  smul_zero _ := unop_injective <| smul_zero _

instance instMulDistribMulAction [Monoid M] [Monoid α] [MulDistribMulAction M α] :
    MulDistribMulAction M αᵐᵒᵖ where
  smul_mul _ _ _ := unop_injective <| smul_mul' _ _ _
  smul_one _ := unop_injective <| smul_one _

end MulOpposite


/-! ### Actions _by_ the opposite type (right actions)

In `Mul.toSMul` in another file, we define the left action `a₁ • a₂ = a₁ * a₂`. For the
multiplicative opposite, we define `MulOpposite.op a₁ • a₂ = a₂ * a₁`, with the multiplication
reversed.
-/

open MulOpposite

/-- `Monoid.toOppositeMulAction` is faithful on nontrivial cancellative monoids with zero. -/
instance CancelMonoidWithZero.toFaithfulSMul_opposite [CancelMonoidWithZero α]
    [Nontrivial α] : FaithfulSMul αᵐᵒᵖ α :=
  ⟨fun h => unop_injective <| mul_left_cancel₀ one_ne_zero (h 1)⟩
```
