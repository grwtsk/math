# Complete source: GRWTSK.Topology.GeneralTopology.Defs.Variantd661ec76a17d59cbc954ecd4fc817a86ceb4c90232549ba5e81c278e635309ce

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `be0f37296fc48138aad8bc3d20a20776dac50083` · SHA-256 `ca3f9eae820ec6586884bf6f7f38e811b4d1c03a621f855c2ad93bb2ffb1be9f`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: Topology.GeneralTopology
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Topology.GeneralTopology.ContinuousAdd.Variant766e299d87bbb4a2f89915f514819024090ca55da44adff18e2dbe856f4d31a9","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"766e299d87bbb4a2f89915f514819024090ca55da44adff18e2dbe856f4d31a9","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Topology.GeneralTopology.SourceCorpus.ContinuousAdd.Variant766e299d87bbb4a2f89915f514819024090ca55da44adff18e2dbe856f4d31a9","mathematical_subject":"Topology.GeneralTopology","original_sha256":"766e299d87bbb4a2f89915f514819024090ca55da44adff18e2dbe856f4d31a9","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/October/30/ooi/spectral-proof-of-RH/lean/mathlib4/Mathlib/Topology/Algebra/Monoid/Defs.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2017 Johannes Hölzl. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Johannes Hölzl
-/
import Mathlib.Topology.Constructions.SumProd

/-!
# Topological monoids - definitions

In this file we define two mixin typeclasses:

- `ContinuousMul M` says that the multiplication on `M` is continuous as a function on `M × M`;
- `ContinuousAdd M` says that the addition on `M` is continuous as a function on `M × M`.

These classes are `Prop`-valued mixins,
i.e., they take data (`TopologicalSpace`, `Mul`/`Add`) as arguments
instead of extending typeclasses with these fields.

We also provide convenience dot notation lemmas like `Filter.Tendsto.mul` and `ContinuousAt.add`.
-/


namespace GRWTSK.Topology.GeneralTopology.ContinuousAdd.Variant766e299d87bbb4a2f89915f514819024090ca55da44adff18e2dbe856f4d31a9

open scoped Topology

/-- Basic hypothesis to talk about a topological additive monoid or a topological additive
semigroup. A topological additive monoid over `M`, for example, is obtained by requiring both the
instances `AddMonoid M` and `ContinuousAdd M`.

Continuity in only the left/right argument can be stated using
`ContinuousConstVAdd α α`/`ContinuousConstVAdd αᵐᵒᵖ α`. -/
class ContinuousAdd (M : Type*) [TopologicalSpace M] [Add M] : Prop where
  continuous_add : Continuous fun p : M × M => p.1 + p.2

/-- Basic hypothesis to talk about a topological monoid or a topological semigroup.
A topological monoid over `M`, for example, is obtained by requiring both the instances `Monoid M`
and `ContinuousMul M`.

Continuity in only the left/right argument can be stated using
`ContinuousConstSMul α α`/`ContinuousConstSMul αᵐᵒᵖ α`. -/
@[to_additive]
class ContinuousMul (M : Type*) [TopologicalSpace M] [Mul M] : Prop where
  continuous_mul : Continuous fun p : M × M => p.1 * p.2

section ContinuousMul

variable {M : Type*} [TopologicalSpace M] [Mul M] [ContinuousMul M]

@[to_additive (attr := continuity, fun_prop)]
theorem continuous_mul : Continuous fun p : M × M => p.1 * p.2 :=
  ContinuousMul.continuous_mul

@[to_additive]
theorem Filter.Tendsto.mul {α : Type*} {f g : α → M} {x : Filter α} {a b : M}
    (hf : Tendsto f x (𝓝 a)) (hg : Tendsto g x (𝓝 b)) : Tendsto (fun x ↦ f x * g x) x (𝓝 (a * b)) :=
  (continuous_mul.tendsto _).comp (hf.prodMk_nhds hg)

variable {X : Type*} [TopologicalSpace X] {f g : X → M} {s : Set X} {x : X}

@[to_additive (attr := continuity, fun_prop)]
theorem Continuous.mul (hf : Continuous f) (hg : Continuous g) :
    Continuous fun x => f x * g x :=
  continuous_mul.comp₂ hf hg

@[to_additive]
theorem ContinuousWithinAt.mul (hf : ContinuousWithinAt f s x) (hg : ContinuousWithinAt g s x) :
    ContinuousWithinAt (fun x => f x * g x) s x :=
  Filter.Tendsto.mul hf hg

@[to_additive (attr := fun_prop)]
theorem ContinuousAt.mul (hf : ContinuousAt f x) (hg : ContinuousAt g x) :
    ContinuousAt (fun x => f x * g x) x :=
  Filter.Tendsto.mul hf hg

@[to_additive (attr := fun_prop)]
theorem ContinuousOn.mul (hf : ContinuousOn f s) (hg : ContinuousOn g s) :
    ContinuousOn (fun x => f x * g x) s := fun x hx ↦
  (hf x hx).mul (hg x hx)

end ContinuousMul
```
