# Complete source: GRWTSK.Algebra.GroupTheory.Subgroup.Variant6c31880825e37b22d6bd5dcbc2759a323e002b7c22efd12bfabab8a8e0ae36f9

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `653797432865deeb6631bf847050de6dce204339` · SHA-256 `0a766ac9d71ae5300b20b64f9587ae433b14003ea0392b7d57282784874e87b4`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: Algebra.GroupTheory
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Algebra.GroupTheory.CoeNorm.Variant0495fabdaaa12c6b1f07bec81398766c1a0e7ee31ba9dbbcef800177386701eb","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"0495fabdaaa12c6b1f07bec81398766c1a0e7ee31ba9dbbcef800177386701eb","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Algebra.Groups.SourceCorpus.CoeNorm.Variant0495fabdaaa12c6b1f07bec81398766c1a0e7ee31ba9dbbcef800177386701eb","mathematical_subject":"Algebra.Groups","original_sha256":"0495fabdaaa12c6b1f07bec81398766c1a0e7ee31ba9dbbcef800177386701eb","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/October/30/ooi/spectral-proof-of-RH/lean/mathlib4/Mathlib/Analysis/Normed/Group/Subgroup.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2018 Patrick Massot. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Patrick Massot, Johannes Hölzl, Yaël Dillies
-/
import Mathlib.Algebra.Group.Subgroup.Defs
import Mathlib.Analysis.Normed.Group.Basic

/-!
# Subgroups of normed (semi)groups

In this file, we prove that subgroups of a normed (semi)group are also normed (semi)groups.

## Tags

normed group
-/



namespace GRWTSK.Algebra.GroupTheory.CoeNorm.Variant0495fabdaaa12c6b1f07bec81398766c1a0e7ee31ba9dbbcef800177386701eb

open Filter Function Metric Bornology
open ENNReal Filter NNReal Uniformity Pointwise Topology

/-! ### Subgroups of normed groups -/

variable {E : Type*}

namespace Subgroup

section SeminormedGroup

variable [SeminormedGroup E] {s : Subgroup E}

/-- A subgroup of a seminormed group is also a seminormed group,
with the restriction of the norm. -/
@[to_additive "A subgroup of a seminormed group is also a seminormed group, with the restriction of
the norm."]
instance seminormedGroup : SeminormedGroup s :=
  SeminormedGroup.induced _ _ s.subtype

/-- If `x` is an element of a subgroup `s` of a seminormed group `E`, its norm in `s` is equal to
its norm in `E`. -/
@[to_additive (attr := simp) "If `x` is an element of a subgroup `s` of a seminormed group `E`, its
norm in `s` is equal to its norm in `E`."]
theorem coe_norm (x : s) : ‖x‖ = ‖(x : E)‖ :=
  rfl

/-- If `x` is an element of a subgroup `s` of a seminormed group `E`, its norm in `s` is equal to
its norm in `E`.

This is a reversed version of the `simp` lemma `Subgroup.coe_norm` for use by `norm_cast`. -/
@[to_additive (attr := norm_cast) "If `x` is an element of a subgroup `s` of a seminormed group `E`,
its norm in `s` is equal to its norm in `E`.

This is a reversed version of the `simp` lemma `AddSubgroup.coe_norm` for use by `norm_cast`."]
theorem norm_coe {s : Subgroup E} (x : s) : ‖(x : E)‖ = ‖x‖ :=
  rfl

end SeminormedGroup

@[to_additive]
instance seminormedCommGroup [SeminormedCommGroup E] {s : Subgroup E} : SeminormedCommGroup s :=
  SeminormedCommGroup.induced _ _ s.subtype

@[to_additive]
instance normedGroup [NormedGroup E] {s : Subgroup E} : NormedGroup s :=
  NormedGroup.induced _ _ s.subtype Subtype.coe_injective

@[to_additive]
instance normedCommGroup [NormedCommGroup E] {s : Subgroup E} : NormedCommGroup s :=
  NormedCommGroup.induced _ _ s.subtype Subtype.coe_injective

end Subgroup

/-! ### Subgroup classes of normed groups -/


namespace SubgroupClass

section SeminormedGroup

variable [SeminormedGroup E] {S : Type*} [SetLike S E] [SubgroupClass S E] (s : S)

/-- A subgroup of a seminormed group is also a seminormed group,
with the restriction of the norm. -/
@[to_additive "A subgroup of a seminormed additive group is also a seminormed additive group, with
the restriction of the norm."]
instance (priority := 75) seminormedGroup : SeminormedGroup s :=
  SeminormedGroup.induced _ _ (SubgroupClass.subtype s)

/-- If `x` is an element of a subgroup `s` of a seminormed group `E`, its norm in `s` is equal to
its norm in `E`. -/
@[to_additive (attr := simp) "If `x` is an element of an additive subgroup `s` of a seminormed
additive group `E`, its norm in `s` is equal to its norm in `E`."]
theorem coe_norm (x : s) : ‖x‖ = ‖(x : E)‖ :=
  rfl

end SeminormedGroup

@[to_additive]
instance (priority := 75) seminormedCommGroup [SeminormedCommGroup E] {S : Type*} [SetLike S E]
    [SubgroupClass S E] (s : S) : SeminormedCommGroup s :=
  SeminormedCommGroup.induced _ _ (SubgroupClass.subtype s)

@[to_additive]
instance (priority := 75) normedGroup [NormedGroup E] {S : Type*} [SetLike S E] [SubgroupClass S E]
    (s : S) : NormedGroup s :=
  NormedGroup.induced _ _ (SubgroupClass.subtype s) Subtype.coe_injective

@[to_additive]
instance (priority := 75) normedCommGroup [NormedCommGroup E] {S : Type*} [SetLike S E]
    [SubgroupClass S E] (s : S) : NormedCommGroup s :=
  NormedCommGroup.induced _ _ (SubgroupClass.subtype s) Subtype.coe_injective

end SubgroupClass
```
