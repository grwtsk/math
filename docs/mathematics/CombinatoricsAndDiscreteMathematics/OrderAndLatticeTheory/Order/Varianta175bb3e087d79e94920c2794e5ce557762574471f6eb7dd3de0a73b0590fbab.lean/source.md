# Complete source: GRWTSK.CombinatoricsAndDiscreteMathematics.OrderAndLatticeTheory.Order.Varianta175bb3e087d79e94920c2794e5ce557762574471f6eb7dd3de0a73b0590fbab

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `caf5db539b5b6cea3b54b4abeca7d6e9ad7d70da` · SHA-256 `7755e12dbd3611afbdae6ca72e010209f0eaece5678a6c10bf8ea34dd677a5c9`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: CombinatoricsAndDiscreteMathematics.OrderAndLatticeTheory
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CombinatoricsAndDiscreteMathematics.OrderAndLatticeTheory.Nonneg.Variant443d93f189bba83763ae5805a51deb4800302e83c0db297db81eefd1e9a67425","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"443d93f189bba83763ae5805a51deb4800302e83c0db297db81eefd1e9a67425","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Algebra.OrderTheory.SourceCorpus.Nonneg.Variant443d93f189bba83763ae5805a51deb4800302e83c0db297db81eefd1e9a67425","mathematical_subject":"Algebra.OrderTheory","original_sha256":"443d93f189bba83763ae5805a51deb4800302e83c0db297db81eefd1e9a67425","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/October/30/ooi/spectral-proof-of-RH/lean/mathlib4/Mathlib/Algebra/Ring/Subsemiring/Order.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2021 Damiano Testa. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Damiano Testa
-/
import Mathlib.Algebra.Order.Ring.InjSurj
import Mathlib.Algebra.Ring.Subsemiring.Defs
import Mathlib.Order.Interval.Set.Defs
import Mathlib.Tactic.FastInstance

/-!
# `Order`ed instances for `SubsemiringClass` and `Subsemiring`.
-/


namespace GRWTSK.CombinatoricsAndDiscreteMathematics.OrderAndLatticeTheory.Nonneg.Variant443d93f189bba83763ae5805a51deb4800302e83c0db297db81eefd1e9a67425

namespace SubsemiringClass
variable {R S : Type*} [SetLike S R] (s : S)

/-- A subsemiring of an ordered semiring is an ordered semiring. -/
instance toIsOrderedRing [Semiring R] [PartialOrder R] [IsOrderedRing R] [SubsemiringClass S R] :
    IsOrderedRing s :=
  Subtype.coe_injective.isOrderedRing Subtype.val rfl rfl (fun _ _ => rfl) (fun _ _ => rfl)
    (fun _ _ => rfl) (fun _ _ => rfl) fun _ => rfl

/-- A subsemiring of a strict ordered semiring is a strict ordered semiring. -/
instance toIsStrictOrderedRing [Semiring R] [PartialOrder R] [IsStrictOrderedRing R]
    [SubsemiringClass S R] : IsStrictOrderedRing s :=
  Subtype.coe_injective.isStrictOrderedRing Subtype.val rfl rfl (fun _ _ => rfl) (fun _ _ => rfl)
    (fun _ _ => rfl) (fun _ _ => rfl) fun _ => rfl

end SubsemiringClass

namespace Subsemiring

variable {R : Type*}

/-- A subsemiring of an ordered semiring is an ordered semiring. -/
instance toIsOrderedRing [Semiring R] [PartialOrder R] [IsOrderedRing R] (s : Subsemiring R) :
    IsOrderedRing s :=
  Subtype.coe_injective.isOrderedRing Subtype.val rfl rfl (fun _ _ => rfl) (fun _ _ => rfl)
    (fun _ _ => rfl) (fun _ _ => rfl) fun _ => rfl

/-- A subsemiring of a strict ordered semiring is a strict ordered semiring. -/
instance toIsStrictOrderedRing [Semiring R] [PartialOrder R] [IsStrictOrderedRing R]
    (s : Subsemiring R) : IsStrictOrderedRing s :=
  Subtype.coe_injective.isStrictOrderedRing Subtype.val rfl rfl (fun _ _ => rfl) (fun _ _ => rfl)
    (fun _ _ => rfl) (fun _ _ => rfl) fun _ => rfl

/-- The set of nonnegative elements in an ordered semiring, as a subsemiring. -/
@[simps]
def nonneg (R : Type*) [Semiring R] [PartialOrder R] [IsOrderedRing R] : Subsemiring R where
  carrier := Set.Ici 0
  mul_mem' := mul_nonneg
  one_mem' := zero_le_one
  add_mem' := add_nonneg
  zero_mem' := le_rfl

end Subsemiring
```
