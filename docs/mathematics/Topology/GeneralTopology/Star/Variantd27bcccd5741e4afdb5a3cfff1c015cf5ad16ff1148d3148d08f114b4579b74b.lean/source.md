# Complete source: GRWTSK.Topology.GeneralTopology.Star.Variantd27bcccd5741e4afdb5a3cfff1c015cf5ad16ff1148d3148d08f114b4579b74b

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `e2239db4309fe23cc82f05c68ad0e4c9d954f626` · SHA-256 `58d662fb10816cad9e95fab31ddcbab1fbbc9bdc69bfebd595d573b5fa71895f`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: Topology.GeneralTopology
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Topology.GeneralTopology.ContinuousStar.Variant1778db7b829e4cf28262155c20dec926405e22b3c8cb7d4f485645563132795a","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"1778db7b829e4cf28262155c20dec926405e22b3c8cb7d4f485645563132795a","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Topology.GeneralTopology.SourceCorpus.ContinuousStar.Variant1778db7b829e4cf28262155c20dec926405e22b3c8cb7d4f485645563132795a","mathematical_subject":"Topology.GeneralTopology","original_sha256":"1778db7b829e4cf28262155c20dec926405e22b3c8cb7d4f485645563132795a","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/October/30/ooi/FEATURES/.lake/packages/mathlib/Mathlib/Topology/Algebra/Star.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2022 Eric Wieser. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Eric Wieser
-/
import Mathlib.Algebra.Star.Pi
import Mathlib.Algebra.Star.Prod
import Mathlib.Topology.Algebra.Constructions
import Mathlib.Topology.ContinuousFunction.Basic


namespace GRWTSK.Topology.GeneralTopology.ContinuousStar.Variant1778db7b829e4cf28262155c20dec926405e22b3c8cb7d4f485645563132795a

#align_import topology.algebra.star from "leanprover-community/mathlib"@"4c19a16e4b705bf135cf9a80ac18fcc99c438514"

/-!
# Continuity of `star`

This file defines the `ContinuousStar` typeclass, along with instances on `Pi`, `Prod`,
`MulOpposite`, and `Units`.
-/

set_option autoImplicit true

open Filter Topology

/-- Basic hypothesis to talk about a topological space with a continuous `star` operator. -/
class ContinuousStar (R : Type*) [TopologicalSpace R] [Star R] : Prop where
  /-- The `star` operator is continuous. -/
  continuous_star : Continuous (star : R → R)
#align has_continuous_star ContinuousStar

export ContinuousStar (continuous_star)

section Continuity

variable [TopologicalSpace R] [Star R] [ContinuousStar R]

theorem continuousOn_star {s : Set R} : ContinuousOn star s :=
  continuous_star.continuousOn
#align continuous_on_star continuousOn_star

theorem continuousWithinAt_star {s : Set R} {x : R} : ContinuousWithinAt star s x :=
  continuous_star.continuousWithinAt
#align continuous_within_at_star continuousWithinAt_star

theorem continuousAt_star {x : R} : ContinuousAt star x :=
  continuous_star.continuousAt
#align continuous_at_star continuousAt_star

theorem tendsto_star (a : R) : Tendsto star (𝓝 a) (𝓝 (star a)) :=
  continuousAt_star
#align tendsto_star tendsto_star

theorem Filter.Tendsto.star {f : α → R} {l : Filter α} {y : R} (h : Tendsto f l (𝓝 y)) :
    Tendsto (fun x => star (f x)) l (𝓝 (star y)) :=
  (continuous_star.tendsto y).comp h
#align filter.tendsto.star Filter.Tendsto.star

variable [TopologicalSpace α] {f : α → R} {s : Set α} {x : α}

@[continuity]
theorem Continuous.star (hf : Continuous f) : Continuous fun x => star (f x) :=
  continuous_star.comp hf
#align continuous.star Continuous.star

theorem ContinuousAt.star (hf : ContinuousAt f x) : ContinuousAt (fun x => star (f x)) x :=
  continuousAt_star.comp hf
#align continuous_at.star ContinuousAt.star

theorem ContinuousOn.star (hf : ContinuousOn f s) : ContinuousOn (fun x => star (f x)) s :=
  continuous_star.comp_continuousOn hf
#align continuous_on.star ContinuousOn.star

theorem ContinuousWithinAt.star (hf : ContinuousWithinAt f s x) :
    ContinuousWithinAt (fun x => star (f x)) s x :=
  Filter.Tendsto.star hf
#align continuous_within_at.star ContinuousWithinAt.star

/-- The star operation bundled as a continuous map. -/
@[simps]
def starContinuousMap : C(R, R) :=
  ⟨star, continuous_star⟩
#align star_continuous_map starContinuousMap

end Continuity

section Instances

instance [Star R] [Star S] [TopologicalSpace R] [TopologicalSpace S] [ContinuousStar R]
    [ContinuousStar S] : ContinuousStar (R × S) :=
  ⟨(continuous_star.comp continuous_fst).prod_mk (continuous_star.comp continuous_snd)⟩

instance {C : ι → Type*} [∀ i, TopologicalSpace (C i)] [∀ i, Star (C i)]
    [∀ i, ContinuousStar (C i)] : ContinuousStar (∀ i, C i)
    where continuous_star := continuous_pi fun i => Continuous.star (continuous_apply i)

instance [Star R] [TopologicalSpace R] [ContinuousStar R] : ContinuousStar Rᵐᵒᵖ :=
  ⟨MulOpposite.continuous_op.comp <| MulOpposite.continuous_unop.star⟩

instance [Monoid R] [StarMul R] [TopologicalSpace R] [ContinuousStar R] :
    ContinuousStar Rˣ :=
  ⟨continuous_induced_rng.2 Units.continuous_embedProduct.star⟩

end Instances
```
