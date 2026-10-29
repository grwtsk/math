-- corpus-organization-transform:v1
-- Mathematical subject: Topology.GeneralTopology
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Topology.GeneralTopology.HasProdApply.Variantc1badf724df1f4114478eddd5f0940b33dc5dcc6339c1afba50f87d29b7f7b74","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"c1badf724df1f4114478eddd5f0940b33dc5dcc6339c1afba50f87d29b7f7b74","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Topology.GeneralTopology.SourceCorpus.HasProdApply.Variantc1badf724df1f4114478eddd5f0940b33dc5dcc6339c1afba50f87d29b7f7b74","mathematical_subject":"Topology.GeneralTopology","original_sha256":"c1badf724df1f4114478eddd5f0940b33dc5dcc6339c1afba50f87d29b7f7b74","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/rh16-games-packets/external/replay/.lake/packages/mathlib/Mathlib/Topology/Algebra/InfiniteSum/ContinuousEval.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2026 Weiyi Wang. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Weiyi Wang
-/
module

public import Mathlib.Topology.Algebra.InfiniteSum.Basic

import Mathlib.Data.FunLike.Group
public import Mathlib.Topology.Hom.ContinuousEvalConst

/-! # Applying an infinite sum of functions

This file provides lemmas for `(∏'[L] n, f n) x` and `(∑'[L] n, f n) x` where `f` is a family of
functions. We state this for `FunLike` objects that are `ContinuousEvalConst`. This is applicable
to e.g. `ContinuousLinearMap`.
-/


namespace GRWTSK.Topology.GeneralTopology.HasProdApply.Variantc1badf724df1f4114478eddd5f0940b33dc5dcc6339c1afba50f87d29b7f7b74

public section

variable {α β γ F : Type*} [TopologicalSpace β] [CommMonoid β]
  [FunLike F α β] [TopologicalSpace F] [CommMonoid F] [ContinuousEvalConst F α β]
  [IsMulApply F α β] [IsOneApply F α β] {f : γ → F} {g : F} {L : SummationFilter γ}

/-- See also `Pi.hasProd` for bare pi type. -/
@[to_additive /-- See also `Pi.hasSum` for bare pi type. -/]
theorem hasProd_apply (hf : HasProd f g L) (x : α) : HasProd (f · x) (g x) L :=
  hf.map ((Pi.evalMonoidHom _ x).comp (FunLike.coeMonoidHom F α β)) (continuous_eval_const x)

/-- See also `Pi.multipliable` for bare pi type. -/
@[to_additive /-- See also `Pi.summable` for bare pi type. -/]
theorem multipliable_apply (hf : Multipliable f L) (x : α) : Multipliable (f · x) L :=
  hf.map ((Pi.evalMonoidHom _ x).comp (FunLike.coeMonoidHom F α β)) (continuous_eval_const x)

/-- See also `Pi.tprod_apply` for bare pi type. -/
@[to_additive /-- See also `Pi.tsum_apply` for bare pi type. -/]
theorem tprod_apply [T2Space β] [L.NeBot] (hf : Multipliable f L) (x : α) :
    (∏'[L] n, f n) x = ∏'[L] n, f n x :=
  hf.map_tprod ((Pi.evalMonoidHom _ x).comp (FunLike.coeMonoidHom F α β)) (continuous_eval_const x)
