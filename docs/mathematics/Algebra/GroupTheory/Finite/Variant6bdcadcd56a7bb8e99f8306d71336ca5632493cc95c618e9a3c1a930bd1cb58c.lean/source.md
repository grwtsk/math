# Complete source: GRWTSK.Algebra.GroupTheory.Finite.Variant6bdcadcd56a7bb8e99f8306d71336ca5632493cc95c618e9a3c1a930bd1cb58c

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `6d76d86ecb0e0722c70df7224aac435bf93a74c5` · SHA-256 `7fc9ada67285dc9d1f0b5d79b6a38fb3b5e3d0d9dad536bf450ca4fbebd291a4`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: Algebra.GroupTheory
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Algebra.GroupTheory.FintypeOfKerLeRange.Varianted63a1fee406232edbf35bd25fed130f422228825a27c9b26e5b6b0905580a8c","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"ed63a1fee406232edbf35bd25fed130f422228825a27c9b26e5b6b0905580a8c","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Algebra.Groups.SourceCorpus.FintypeOfKerLeRange.Varianted63a1fee406232edbf35bd25fed130f422228825a27c9b26e5b6b0905580a8c","mathematical_subject":"Algebra.Groups","original_sha256":"ed63a1fee406232edbf35bd25fed130f422228825a27c9b26e5b6b0905580a8c","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/October/30/ooi/spectral-proof-of-RH/lean/mathlib4/Mathlib/GroupTheory/QuotientGroup/Finite.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2018 Kevin Buzzard, Patrick Massot. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Kevin Buzzard, Patrick Massot
-/
-- This file is to a certain extent based on `quotient_module.lean` by Johannes Hölzl.

import Mathlib.Algebra.Group.Subgroup.Finite
import Mathlib.Data.Finite.Prod
import Mathlib.GroupTheory.QuotientGroup.Basic

/-!
# Deducing finiteness of a group.
-/


namespace GRWTSK.Algebra.GroupTheory.FintypeOfKerLeRange.Varianted63a1fee406232edbf35bd25fed130f422228825a27c9b26e5b6b0905580a8c

open Function
open scoped Pointwise

universe u v w x

namespace Group

open QuotientGroup Subgroup

variable {F G H : Type u} [Group F] [Group G] [Group H] [Fintype F] [Fintype H]
variable (f : F →* G) (g : G →* H)

open scoped Classical in
/-- If `F` and `H` are finite such that `ker(G →* H) ≤ im(F →* G)`, then `G` is finite. -/
@[to_additive "If `F` and `H` are finite such that `ker(G →+ H) ≤ im(F →+ G)`, then `G` is finite."]
noncomputable def fintypeOfKerLeRange (h : g.ker ≤ f.range) : Fintype G :=
  @Fintype.ofEquiv _ _
    (@instFintypeProd _ _ (Fintype.ofInjective _ <| kerLift_injective g) <|
      Fintype.ofInjective _ <| inclusion_injective h)
    groupEquivQuotientProdSubgroup.symm

/-- If `F` and `H` are finite such that `ker(G →* H) = im(F →* G)`, then `G` is finite. -/
@[to_additive "If `F` and `H` are finite such that `ker(G →+ H) = im(F →+ G)`, then `G` is finite."]
noncomputable def fintypeOfKerEqRange (h : g.ker = f.range) : Fintype G :=
  fintypeOfKerLeRange _ _ h.le

/-- If `ker(G →* H)` and `H` are finite, then `G` is finite. -/
@[to_additive "If `ker(G →+ H)` and `H` are finite, then `G` is finite."]
noncomputable def fintypeOfKerOfCodom [Fintype g.ker] : Fintype G :=
  fintypeOfKerLeRange ((topEquiv : _ ≃* G).toMonoidHom.comp <| inclusion le_top) g fun x hx =>
    ⟨⟨x, hx⟩, rfl⟩

/-- If `F` and `coker(F →* G)` are finite, then `G` is finite. -/
@[to_additive "If `F` and `coker(F →+ G)` are finite, then `G` is finite."]
noncomputable def fintypeOfDomOfCoker [Normal f.range] [Fintype <| G ⧸ f.range] : Fintype G :=
  fintypeOfKerLeRange _ (mk' f.range) fun x => (eq_one_iff x).mp

@[to_additive]
lemma _root_.GRWTSK.Algebra.GroupTheory.FintypeOfKerLeRange.Varianted63a1fee406232edbf35bd25fed130f422228825a27c9b26e5b6b0905580a8c.Finite.of_finite_quot_finite_subgroup {H : Subgroup G} [Finite H] [Finite (G ⧸ H)] :
    Finite G :=
  Finite.of_equiv _ (groupEquivQuotientProdSubgroup (s := H)).symm

end Group
```
