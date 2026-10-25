# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.MathematicalLogic.GeneratorEquiv.Variant9f784ab2ba0aaca2599d083366316a9f32bf245a647a87ba19760db4999b6295

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `7b264d7a6bb1b1a1c551e82d4b3f812fdab165c1` · SHA-256 `5216258b51cecbd46d416a8603def44c9cbfed8c1cfe39a28bd3025374aaf65d`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.MathematicalLogic
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.MathematicalLogic.FreeAbelianGroupBasis.Variantc1409b75b8ace36148d20fcecad32f60de3ab99935ed9abda4942d521490fb6e","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"c1409b75b8ace36148d20fcecad32f60de3ab99935ed9abda4942d521490fb6e","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Logic.Foundations.SourceCorpus.FreeAbelianGroupBasis.Variantc1409b75b8ace36148d20fcecad32f60de3ab99935ed9abda4942d521490fb6e","mathematical_subject":"Logic.Foundations","original_sha256":"c1409b75b8ace36148d20fcecad32f60de3ab99935ed9abda4942d521490fb6e","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/October/30/ooi/spectral-proof-of-RH/lean/mathlib4/Mathlib/GroupTheory/FreeGroup/GeneratorEquiv.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2021 Johan Commelin. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Johan Commelin
-/
import Mathlib.Algebra.FreeAbelianGroup.Finsupp
import Mathlib.GroupTheory.FreeGroup.IsFreeGroup
import Mathlib.LinearAlgebra.Dimension.StrongRankCondition

/-!
# Isomorphisms between free groups come from equivalences of their generators

This file proves that an isomorphism `e : G ≃* H` between free groups `G` and `H` is induced by an
equivalence of generators.

## TODO

We currently construct the equivalence of generators, but don't show that it induces the isomorphism
of groups.
-/


namespace GRWTSK.FoundationsLogicAndTypeTheory.MathematicalLogic.FreeAbelianGroupBasis.Variantc1409b75b8ace36148d20fcecad32f60de3ab99935ed9abda4942d521490fb6e

noncomputable section

variable {α β G H : Type*}

open IsFreeGroup

/-- `A` is a basis of the ℤ-module `FreeAbelianGroup A`. -/
noncomputable def FreeAbelianGroup.basis (α : Type*) : Basis α ℤ (FreeAbelianGroup α) :=
  ⟨(FreeAbelianGroup.equivFinsupp α).toIntLinearEquiv⟩

/-- Isomorphic free abelian groups (as modules) have equivalent bases. -/
def Equiv.ofFreeAbelianGroupLinearEquiv (e : FreeAbelianGroup α ≃ₗ[ℤ] FreeAbelianGroup β) : α ≃ β :=
  let t : Basis α ℤ (FreeAbelianGroup β) := (FreeAbelianGroup.basis α).map e
  t.indexEquiv <| FreeAbelianGroup.basis _

/-- Isomorphic free abelian groups (as additive groups) have equivalent bases. -/
def Equiv.ofFreeAbelianGroupEquiv (e : FreeAbelianGroup α ≃+ FreeAbelianGroup β) : α ≃ β :=
  .ofFreeAbelianGroupLinearEquiv e.toIntLinearEquiv

/-- Isomorphic free groups have equivalent bases. -/
def Equiv.ofFreeGroupEquiv (e : FreeGroup α ≃* FreeGroup β) : α ≃ β :=
  .ofFreeAbelianGroupEquiv (MulEquiv.toAdditive e.abelianizationCongr)

/-- Isomorphic free groups have equivalent bases (`IsFreeGroup` variant). -/
def Equiv.ofIsFreeGroupEquiv [Group G] [Group H] [IsFreeGroup G] [IsFreeGroup H] (e : G ≃* H) :
    Generators G ≃ Generators H :=
  .ofFreeGroupEquiv <| (toFreeGroup G).symm.trans <| e.trans <| toFreeGroup H
```
