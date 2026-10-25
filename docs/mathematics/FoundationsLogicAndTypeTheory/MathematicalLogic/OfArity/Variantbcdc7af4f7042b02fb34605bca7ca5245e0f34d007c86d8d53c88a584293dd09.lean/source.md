# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.MathematicalLogic.OfArity.Variantbcdc7af4f7042b02fb34605bca7ca5245e0f34d007c86d8d53c88a584293dd09

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `faca9083859eb2069e5ec0c8d627887e37c2f41c` · SHA-256 `0a1232be8e0020831f8500b0551edf516c18264a7b3fbf8170ec73c373668cc9`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.MathematicalLogic
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.MathematicalLogic.OfArity.Variantb016d8caf9c5e720cdc170ed8eb208477ae5cbc9609c6d049e057e34b474f698","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"b016d8caf9c5e720cdc170ed8eb208477ae5cbc9609c6d049e057e34b474f698","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Logic.Foundations.SourceCorpus.OfArity.Variantb016d8caf9c5e720cdc170ed8eb208477ae5cbc9609c6d049e057e34b474f698","mathematical_subject":"Logic.Foundations","original_sha256":"b016d8caf9c5e720cdc170ed8eb208477ae5cbc9609c6d049e057e34b474f698","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/October/30/ooi/spectral-proof-of-RH/lean/mathlib4/Mathlib/Logic/Function/OfArity.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2017 Mario Carneiro. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Mario Carneiro
-/

import Mathlib.Logic.Function.FromTypes

/-! # Function types of a given arity

This provides `Function.OfArity`, such that `OfArity α β 2 = α → α → β`.
Note that it is often preferable to use `(Fin n → α) → β` in place of `OfArity n α β`.

## Main definitions

* `Function.OfArity α β n`: `n`-ary function `α → α → ... → β`. Defined inductively.
* `Function.OfArity.const α b n`: `n`-ary constant function equal to `b`.
-/


namespace GRWTSK.FoundationsLogicAndTypeTheory.MathematicalLogic.OfArity.Variantb016d8caf9c5e720cdc170ed8eb208477ae5cbc9609c6d049e057e34b474f698

universe u

namespace Function

/-- The type of `n`-ary functions `α → α → ... → β`.

Note that this is not universe polymorphic, as this would require that when `n=0` we produce either
`Unit → β` or `ULift β`. -/
abbrev OfArity (α β : Type u) (n : ℕ) : Type u := FromTypes (fun (_ : Fin n) => α) β

@[simp]
theorem ofArity_zero (α β : Type u) : OfArity α β 0 = β := fromTypes_zero _ _

@[simp]
theorem ofArity_succ (α β : Type u) (n : ℕ) :
    OfArity α β n.succ = (α → OfArity α β n) := fromTypes_succ _ _

namespace OfArity

/-- Constant `n`-ary function with value `b`. -/
def const (α : Type u) {β : Type u} (b : β) (n : ℕ) : OfArity α β n :=
  FromTypes.const (fun _ => α) b

@[simp]
theorem const_zero (α : Type u) {β : Type u} (b : β) : const α b 0 = b :=
  FromTypes.const_zero (fun _ => α) b

@[simp]
theorem const_succ (α : Type u) {β : Type u} (b : β) (n : ℕ) :
    const α b n.succ = fun _ => const _ b n :=
  FromTypes.const_succ (fun _ => α) b

theorem const_succ_apply (α : Type u) {β : Type u} (b : β) (n : ℕ) (x : α) :
    const α b n.succ x = const _ b n := FromTypes.const_succ_apply _ b x

instance inhabited {α β n} [Inhabited β] : Inhabited (OfArity α β n) :=
  inferInstanceAs (Inhabited (FromTypes (fun _ => α) β))

end OfArity

namespace FromTypes

lemma fromTypes_fin_const (α β : Type u) (n : ℕ) :
    FromTypes (fun (_ : Fin n) => α) β = OfArity α β n := rfl

/-- The definitional equality between heterogeneous functions with constant
domain and `n`-ary functions with that domain. -/
def fromTypes_fin_const_equiv (α β : Type u) (n : ℕ) :
    FromTypes (fun (_ : Fin n) => α) β ≃ OfArity α β n := .refl _

end FromTypes

end Function
```
