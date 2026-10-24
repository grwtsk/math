# Complete source: GRWTSK.Topology.GeneralTopology.Star.Variant91502c3d08b2800908f4c976dba344f3f8d2465bfd754142869f3182122fdfac

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `b11163286459e9478263f9a60957adab31a982ce` · SHA-256 `3e0a04ea85a1af2246f5a31c5269adc8b6a060a7c2cc55b299ea85debeb6b98d`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: Topology.GeneralTopology
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Topology.GeneralTopology.ContinuousStar.Variantc7849190431012bf414050bd78796113d49440f0400317ba47c0392772810a82","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"c7849190431012bf414050bd78796113d49440f0400317ba47c0392772810a82","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Topology.GeneralTopology.SourceCorpus.ContinuousStar.Variantc7849190431012bf414050bd78796113d49440f0400317ba47c0392772810a82","mathematical_subject":"Topology.GeneralTopology","original_sha256":"c7849190431012bf414050bd78796113d49440f0400317ba47c0392772810a82","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/rh16-games-packets/external/replay/.lake/packages/mathlib/Mathlib/Topology/Algebra/Star.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2022 Eric Wieser. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Eric Wieser
-/
module

public import Mathlib.Topology.Algebra.Constructions
public import Mathlib.Topology.ContinuousMap.Defs
public import Mathlib.Algebra.Star.Basic

/-!
# Continuity of `star`

This file defines the `ContinuousStar` typeclass, along with instances on `Pi`, `Prod`,
`MulOpposite`, and `Units`.
-/


namespace GRWTSK.Topology.GeneralTopology.ContinuousStar.Variantc7849190431012bf414050bd78796113d49440f0400317ba47c0392772810a82

@[expose] public section

open Filter

open scoped Topology

/-- Basic hypothesis to talk about a topological space with a continuous `star` operator. -/
class ContinuousStar (R : Type*) [TopologicalSpace R] [Star R] : Prop where
  /-- The `star` operator is continuous. -/
  continuous_star : Continuous (star : R → R)

export ContinuousStar (continuous_star)

section Continuity

variable {α R : Type*} [TopologicalSpace R] [Star R] [ContinuousStar R]

theorem continuousOn_star {s : Set R} : ContinuousOn star s :=
  continuous_star.continuousOn

theorem continuousWithinAt_star {s : Set R} {x : R} : ContinuousWithinAt star s x :=
  continuous_star.continuousWithinAt

theorem continuousAt_star {x : R} : ContinuousAt star x :=
  continuous_star.continuousAt

theorem tendsto_star (a : R) : Tendsto star (𝓝 a) (𝓝 (star a)) :=
  continuousAt_star

theorem Filter.Tendsto.star {f : α → R} {l : Filter α} {y : R} (h : Tendsto f l (𝓝 y)) :
    Tendsto (fun x => star (f x)) l (𝓝 (star y)) :=
  (continuous_star.tendsto y).comp h

variable [TopologicalSpace α] {f : α → R} {s : Set α} {x : α}

@[continuity, fun_prop]
theorem Continuous.star (hf : Continuous f) : Continuous fun x => star (f x) :=
  continuous_star.comp hf

@[fun_prop]
theorem ContinuousAt.star (hf : ContinuousAt f x) : ContinuousAt (fun x => star (f x)) x :=
  continuousAt_star.comp hf

@[fun_prop]
theorem ContinuousOn.star (hf : ContinuousOn f s) : ContinuousOn (fun x => star (f x)) s :=
  continuous_star.comp_continuousOn hf

theorem ContinuousWithinAt.star (hf : ContinuousWithinAt f s x) :
    ContinuousWithinAt (fun x => star (f x)) s x :=
  Filter.Tendsto.star hf

/-- The star operation bundled as a continuous map. -/
@[simps]
def starContinuousMap : C(R, R) :=
  ⟨star, continuous_star⟩

end Continuity

section Instances

variable {R S ι : Type*}

instance [Star R] [Star S] [TopologicalSpace R] [TopologicalSpace S] [ContinuousStar R]
    [ContinuousStar S] : ContinuousStar (R × S) :=
  ⟨(continuous_star.comp continuous_fst).prodMk (continuous_star.comp continuous_snd)⟩

instance {C : ι → Type*} [∀ i, TopologicalSpace (C i)] [∀ i, Star (C i)]
    [∀ i, ContinuousStar (C i)] : ContinuousStar (∀ i, C i) where
  continuous_star := continuous_pi fun i => Continuous.star (continuous_apply i)

instance [Star R] [TopologicalSpace R] [ContinuousStar R] : ContinuousStar Rᵐᵒᵖ :=
  ⟨MulOpposite.continuous_op.comp <| MulOpposite.continuous_unop.star⟩

instance [Monoid R] [StarMul R] [TopologicalSpace R] [ContinuousStar R] :
    ContinuousStar Rˣ :=
  ⟨continuous_induced_rng.2 Units.continuous_embedProduct.star⟩

end Instances
```
