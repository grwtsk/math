# Complete source: GRWTSK.Algebra.GroupTheory.Embedding.Variant3ade394bd00116c421d3696ef46eff783ac475db42cf5c9a501a5e7399b03ec9

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `1589391422e058f889767d7a7fec62568e4768fd` · SHA-256 `0eadeba431d67ddc24d25d1dbcfdcd08916525a8228ff8588c50661c0ddbeb80`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: Algebra.GroupTheory
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Algebra.GroupTheory.SmulDef.Variant91a94e43a7f64e848839f9a7b04fcd20762aebee5d84882109f86fb3aba549c6","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"91a94e43a7f64e848839f9a7b04fcd20762aebee5d84882109f86fb3aba549c6","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Algebra.Groups.SourceCorpus.SmulDef.Variant91a94e43a7f64e848839f9a7b04fcd20762aebee5d84882109f86fb3aba549c6","mathematical_subject":"Algebra.Groups","original_sha256":"91a94e43a7f64e848839f9a7b04fcd20762aebee5d84882109f86fb3aba549c6","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/rh16-games-packets/external/replay/.lake/packages/mathlib/Mathlib/GroupTheory/GroupAction/Embedding.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2022 Eric Wieser. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Eric Wieser
-/
module

public import Mathlib.Algebra.Group.Action.Basic
public import Mathlib.Algebra.Group.Action.Pi
public import Mathlib.Algebra.Group.Opposite

/-!
# Group actions on embeddings

This file provides a `MulAction G (α ↪ β)` instance that agrees with the `MulAction G (α → β)`
instances defined by `Pi.mulAction`.

Note that unlike the `Pi` instance, this requires `G` to be a group.
-/


namespace GRWTSK.Algebra.GroupTheory.SmulDef.Variant91a94e43a7f64e848839f9a7b04fcd20762aebee5d84882109f86fb3aba549c6

public section

assert_not_exists MonoidWithZero

universe u v w

variable {G G' α β : Type*}

namespace Function.Embedding

@[to_additive]
instance smul [Group G] [MulAction G β] : SMul G (α ↪ β) :=
  ⟨fun g f => f.trans (MulAction.toPerm g).toEmbedding⟩

@[to_additive]
theorem smul_def [Group G] [MulAction G β] (g : G) (f : α ↪ β) :
    g • f = f.trans (MulAction.toPerm g).toEmbedding :=
  rfl

@[to_additive (attr := simp)]
theorem smul_apply [Group G] [MulAction G β] (g : G) (f : α ↪ β) (a : α) : (g • f) a = g • f a :=
  rfl

@[to_additive]
theorem coe_smul [Group G] [MulAction G β] (g : G) (f : α ↪ β) : ⇑(g • f) = g • ⇑f :=
  rfl

instance [Group G] [Group G'] [SMul G G'] [MulAction G β] [MulAction G' β]
    [IsScalarTower G G' β] : IsScalarTower G G' (α ↪ β) :=
  ⟨fun x y z => Function.Embedding.ext fun i => smul_assoc x y (z i)⟩

@[to_additive]
instance [Group G] [Group G'] [MulAction G β] [MulAction G' β] [SMulCommClass G G' β] :
    SMulCommClass G G' (α ↪ β) :=
  ⟨fun x y z => Function.Embedding.ext fun i => smul_comm x y (z i)⟩

instance [Group G] [MulAction G β] [MulAction Gᵐᵒᵖ β] [IsCentralScalar G β] :
    IsCentralScalar G (α ↪ β) :=
  ⟨fun _ _ => Function.Embedding.ext fun _ => op_smul_eq_smul _ _⟩

@[to_additive]
instance [Group G] [MulAction G β] : MulAction G (α ↪ β) :=
  DFunLike.coe_injective.mulAction _ coe_smul

end Function.Embedding
```
