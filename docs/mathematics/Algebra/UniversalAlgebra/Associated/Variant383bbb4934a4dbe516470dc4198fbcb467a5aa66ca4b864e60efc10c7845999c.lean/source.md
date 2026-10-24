# Complete source: GRWTSK.Algebra.UniversalAlgebra.Associated.Variant383bbb4934a4dbe516470dc4198fbcb467a5aa66ca4b864e60efc10c7845999c

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `d4c5a416beed9c85d8375d0d3a6d35932f164fe3` · SHA-256 `4176b5d32d8f6438b13fe7eb6915ddd707790ac6855e2a3cc1ca674f139aa3ca`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: Algebra.UniversalAlgebra
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Algebra.UniversalAlgebra.Associated.Variant497b9f3f6e5e48284c16fb026dadc9951277aa7b25080c3356d35d59f8f260af","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"497b9f3f6e5e48284c16fb026dadc9951277aa7b25080c3356d35d59f8f260af","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Algebra.GeneralAlgebra.SourceCorpus.Associated.Variant497b9f3f6e5e48284c16fb026dadc9951277aa7b25080c3356d35d59f8f260af","mathematical_subject":"Algebra.GeneralAlgebra","original_sha256":"497b9f3f6e5e48284c16fb026dadc9951277aa7b25080c3356d35d59f8f260af","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/October/30/ooi/spectral-proof-of-RH/lean/mathlib4/Mathlib/Algebra/Order/Monoid/Associated.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2018 Johannes Hölzl. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Johannes Hölzl, Jens Wagemaker
-/
import Mathlib.Algebra.GroupWithZero.Associated
import Mathlib.Algebra.Order.Monoid.Canonical.Defs

/-!
# Associated, prime, and irreducible elements.

In this file we define the predicate `Prime p`
saying that an element of a commutative monoid with zero is prime.
Namely, `Prime p` means that `p` isn't zero, it isn't a unit,
and `p ∣ a * b → p ∣ a ∨ p ∣ b` for all `a`, `b`;

In decomposition monoids (e.g., `ℕ`, `ℤ`), this predicate is equivalent to `Irreducible`,
however this is not true in general.

We also define an equivalence relation `Associated`
saying that two elements of a monoid differ by a multiplication by a unit.
Then we show that the quotient type `Associates` is a monoid
and prove basic properties of this quotient.
-/


namespace GRWTSK.Algebra.UniversalAlgebra.Associated.Variant497b9f3f6e5e48284c16fb026dadc9951277aa7b25080c3356d35d59f8f260af

variable {M : Type*} [CancelCommMonoidWithZero M]

namespace Associates

instance instIsOrderedMonoid : IsOrderedMonoid (Associates M) where
  mul_le_mul_left := fun a _ ⟨d, hd⟩ c => hd.symm ▸ mul_assoc c a d ▸ le_mul_right

instance : CanonicallyOrderedMul (Associates M) where
  exists_mul_of_le h := h
  le_self_mul _ b := ⟨b, rfl⟩

end Associates
```
