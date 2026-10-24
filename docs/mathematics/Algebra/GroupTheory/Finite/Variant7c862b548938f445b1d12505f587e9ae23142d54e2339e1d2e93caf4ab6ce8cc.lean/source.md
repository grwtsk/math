# Complete source: GRWTSK.Algebra.GroupTheory.Finite.Variant7c862b548938f445b1d12505f587e9ae23142d54e2339e1d2e93caf4ab6ce8cc

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `b2a83834125e3b5f09568e3c123f8b234b790a3c` · SHA-256 `10c033a7a752f81ea59c8c903ce79bf5d29a15d5e4aa6ded210533bd539bda22`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: Algebra.GroupTheory
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Algebra.GroupTheory.FintypeOfKerLeRange.Variant8bedefa19c99086b3f793041df859d24500fba501f107fab0a93a92b30cecaa2","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"8bedefa19c99086b3f793041df859d24500fba501f107fab0a93a92b30cecaa2","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Algebra.Groups.SourceCorpus.FintypeOfKerLeRange.Variant8bedefa19c99086b3f793041df859d24500fba501f107fab0a93a92b30cecaa2","mathematical_subject":"Algebra.Groups","original_sha256":"8bedefa19c99086b3f793041df859d24500fba501f107fab0a93a92b30cecaa2","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/rh16-games-packets/external/replay/.lake/packages/mathlib/Mathlib/GroupTheory/QuotientGroup/Finite.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2018 Kevin Buzzard, Patrick Massot. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Kevin Buzzard, Patrick Massot
-/
-- This file is to a certain extent based on `quotient_module.lean` by Johannes Hölzl.
module

public import Mathlib.Algebra.Group.Subgroup.Finite
public import Mathlib.Basic.Finite.Prod
public import Mathlib.GroupTheory.QuotientGroup.Basic

/-!
# Deducing finiteness of a group.
-/


namespace GRWTSK.Algebra.GroupTheory.FintypeOfKerLeRange.Variant8bedefa19c99086b3f793041df859d24500fba501f107fab0a93a92b30cecaa2

@[expose] public section

open Function QuotientGroup Subgroup
open scoped Pointwise


variable {F G H : Type*} [Group F] [Group G] [Group H] [Fintype F] [Fintype H]
variable (f : F →* G) (g : G →* H)

namespace Group

open scoped Classical in
/-- If `F` and `H` are finite such that `ker(G →* H) ≤ im(F →* G)`, then `G` is finite. -/
@[to_additive (attr := instance_reducible)
/-- If `F` and `H` are finite such that `ker(G →+ H) ≤ im(F →+ G)`, then `G` is finite. -/]
noncomputable def fintypeOfKerLeRange (h : g.ker ≤ f.range) : Fintype G :=
  @Fintype.ofEquiv _ _
    (@instFintypeProd _ _ (Fintype.ofInjective _ <| kerLift_injective g) <|
      Fintype.ofInjective _ <| inclusion_injective h)
    groupEquivQuotientProdSubgroup.symm

/-- If `F` and `H` are finite such that `ker(G →* H) = im(F →* G)`, then `G` is finite. -/
@[to_additive (attr := instance_reducible)
/-- If `F` and `H` are finite such that `ker(G →+ H) = im(F →+ G)`, then `G` is finite. -/]
noncomputable def fintypeOfKerEqRange (h : g.ker = f.range) : Fintype G :=
  fintypeOfKerLeRange _ _ h.le

/-- If `ker(G →* H)` and `H` are finite, then `G` is finite. -/
@[to_additive (attr := instance_reducible)
  /-- If `ker(G →+ H)` and `H` are finite, then `G` is finite. -/]
noncomputable def fintypeOfKerOfCodom [Fintype g.ker] : Fintype G :=
  fintypeOfKerLeRange ((topEquiv : _ ≃* G).toMonoidHom.comp <| inclusion le_top) g fun x hx =>
    ⟨⟨x, hx⟩, rfl⟩

/-- If `F` and `coker(F →* G)` are finite, then `G` is finite. -/
@[to_additive (attr := instance_reducible)
  /-- If `F` and `coker(F →+ G)` are finite, then `G` is finite. -/]
noncomputable def fintypeOfDomOfCoker [Normal f.range] [Fintype <| G ⧸ f.range] : Fintype G :=
  fintypeOfKerLeRange _ (mk' f.range) fun x => (eq_one_iff x).mp

end Group

@[to_additive]
lemma finite_iff_subgroup_quotient (H : Subgroup G) : Finite G ↔ Finite H ∧ Finite (G ⧸ H) := by
  rw [(groupEquivQuotientProdSubgroup (s := H)).finite_iff, Prod.finite_iff, and_comm]

@[to_additive]
lemma Finite.of_subgroup_quotient (H : Subgroup G) [Finite H] [Finite (G ⧸ H)] : Finite G := by
  rw [finite_iff_subgroup_quotient]; constructor <;> assumption
```
