# Complete source: GRWTSK.CombinatoricsAndDiscreteMathematics.OrderAndLatticeTheory.Infinite.Variant1ec4a4553f7286d98a7ac9d62937170d95be516514de099eac825efa22a725f2

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `b123595abe2730e13e39b3d26ecffbc22d262dc6` · SHA-256 `029d9dd0b47a7d55666d975540cb55d5596318515855c561a418ec626c7ce7cf`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: CombinatoricsAndDiscreteMathematics.OrderAndLatticeTheory
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CombinatoricsAndDiscreteMathematics.OrderAndLatticeTheory.IooInfinite.Variantcb02145866ed3f914f137db6b0f456ff29f4925d63fee975be0949968ef7a510","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"cb02145866ed3f914f137db6b0f456ff29f4925d63fee975be0949968ef7a510","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Algebra.OrderTheory.SourceCorpus.IooInfinite.Variantcb02145866ed3f914f137db6b0f456ff29f4925d63fee975be0949968ef7a510","mathematical_subject":"Algebra.OrderTheory","original_sha256":"cb02145866ed3f914f137db6b0f456ff29f4925d63fee975be0949968ef7a510","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/October/30/ooi/spectral-proof-of-RH/lean/mathlib4/Mathlib/Order/Interval/Set/Infinite.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2020 Reid Barton. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Reid Barton
-/
import Mathlib.Data.Set.Finite.Basic
import Mathlib.Order.Interval.Set.Basic

/-!
# Infinitude of intervals

Bounded intervals in dense orders are infinite, as are unbounded intervals
in orders that are unbounded on the appropriate side. We also prove that an unbounded
preorder is an infinite type.
-/



namespace GRWTSK.CombinatoricsAndDiscreteMathematics.OrderAndLatticeTheory.IooInfinite.Variantcb02145866ed3f914f137db6b0f456ff29f4925d63fee975be0949968ef7a510

variable {α : Type*} [Preorder α]

/-- A nonempty preorder with no maximal element is infinite. -/
instance NoMaxOrder.infinite [Nonempty α] [NoMaxOrder α] : Infinite α :=
  let ⟨f, hf⟩ := Nat.exists_strictMono α
  Infinite.of_injective f hf.injective

/-- A nonempty preorder with no minimal element is infinite. -/
instance NoMinOrder.infinite [Nonempty α] [NoMinOrder α] : Infinite α :=
  @NoMaxOrder.infinite αᵒᵈ _ _ _

namespace Set

section DenselyOrdered

variable [DenselyOrdered α] {a b : α} (h : a < b)
include h

theorem Ioo.infinite : Infinite (Ioo a b) :=
  @NoMaxOrder.infinite _ _ (nonempty_Ioo_subtype h) _

theorem Ioo_infinite : (Ioo a b).Infinite :=
  infinite_coe_iff.1 <| Ioo.infinite h

theorem Ico_infinite : (Ico a b).Infinite :=
  (Ioo_infinite h).mono Ioo_subset_Ico_self

theorem Ico.infinite : Infinite (Ico a b) :=
  infinite_coe_iff.2 <| Ico_infinite h

theorem Ioc_infinite : (Ioc a b).Infinite :=
  (Ioo_infinite h).mono Ioo_subset_Ioc_self

theorem Ioc.infinite : Infinite (Ioc a b) :=
  infinite_coe_iff.2 <| Ioc_infinite h

theorem Icc_infinite : (Icc a b).Infinite :=
  (Ioo_infinite h).mono Ioo_subset_Icc_self

theorem Icc.infinite : Infinite (Icc a b) :=
  infinite_coe_iff.2 <| Icc_infinite h

end DenselyOrdered

instance [NoMinOrder α] {a : α} : Infinite (Iio a) :=
  NoMinOrder.infinite

theorem Iio_infinite [NoMinOrder α] (a : α) : (Iio a).Infinite :=
  infinite_coe_iff.1 inferInstance

instance [NoMinOrder α] {a : α} : Infinite (Iic a) :=
  NoMinOrder.infinite

theorem Iic_infinite [NoMinOrder α] (a : α) : (Iic a).Infinite :=
  infinite_coe_iff.1 inferInstance

instance [NoMaxOrder α] {a : α} : Infinite (Ioi a) :=
  NoMaxOrder.infinite

theorem Ioi_infinite [NoMaxOrder α] (a : α) : (Ioi a).Infinite :=
  infinite_coe_iff.1 inferInstance

instance [NoMaxOrder α] {a : α} : Infinite (Ici a) :=
  NoMaxOrder.infinite

theorem Ici_infinite [NoMaxOrder α] (a : α) : (Ici a).Infinite :=
  infinite_coe_iff.1 inferInstance

end Set
```
