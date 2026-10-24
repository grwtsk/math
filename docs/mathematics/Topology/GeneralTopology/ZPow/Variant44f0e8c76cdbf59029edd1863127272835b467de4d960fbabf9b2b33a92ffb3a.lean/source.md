# Complete source: GRWTSK.Topology.GeneralTopology.ZPow.Variant44f0e8c76cdbf59029edd1863127272835b467de4d960fbabf9b2b33a92ffb3a

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `e0a28519dd1f3a1112a6e78e1134e01c26cb5886` · SHA-256 `7096cb0123f4ed892021a3032e58b56ed66eb9709a5f7a92c9a185f9050590ce`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: Topology.GeneralTopology
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Topology.GeneralTopology.ContinuousZpow.Variant3a0d3549b361b3f219d5526a45bd19139b49cc0c83ca59e7400932dbbcea9e75","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"3a0d3549b361b3f219d5526a45bd19139b49cc0c83ca59e7400932dbbcea9e75","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Topology.GeneralTopology.SourceCorpus.ContinuousZpow.Variant3a0d3549b361b3f219d5526a45bd19139b49cc0c83ca59e7400932dbbcea9e75","mathematical_subject":"Topology.GeneralTopology","original_sha256":"3a0d3549b361b3f219d5526a45bd19139b49cc0c83ca59e7400932dbbcea9e75","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/rh16-games-packets/external/replay/.lake/packages/mathlib/Mathlib/Topology/Algebra/Group/ZPow.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2017 Johannes Hölzl. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Johannes Hölzl, Mario Carneiro, Patrick Massot
-/
module

public import Mathlib.Topology.Algebra.Monoid

/-!
# Integer powers in topological groups

Continuity results for integer powers and integer scalar multiplication in topological groups.
-/


namespace GRWTSK.Topology.GeneralTopology.ContinuousZpow.Variant3a0d3549b361b3f219d5526a45bd19139b49cc0c83ca59e7400932dbbcea9e75

public section

open Filter Topology

variable {G α : Type*}

variable [TopologicalSpace G] [Group G] [IsTopologicalGroup G] [TopologicalSpace α]

section ZPow

@[to_additive (attr := continuity, fun_prop)]
theorem continuous_zpow : ∀ z : ℤ, Continuous fun a : G => a ^ z
  | Int.ofNat n => by simpa using continuous_pow n
  | Int.negSucc n => by simpa using (continuous_pow (n + 1)).fun_inv

instance AddGroup.continuousConstSMul_int {A} [AddGroup A] [TopologicalSpace A]
    [IsTopologicalAddGroup A] : ContinuousConstSMul ℤ A :=
  ⟨continuous_zsmul⟩

instance AddGroup.continuousSMul_int {A} [AddGroup A] [TopologicalSpace A]
    [IsTopologicalAddGroup A] : ContinuousSMul ℤ A :=
  ⟨continuous_prod_of_discrete_left.mpr continuous_zsmul⟩

@[to_fun (attr := to_additive (attr := continuity, fun_prop))]
theorem Continuous.zpow {f : α → G} (h : Continuous f) (z : ℤ) : Continuous (f ^ z) :=
  (continuous_zpow z).comp h

@[to_additive]
theorem continuousOn_zpow {s : Set G} (z : ℤ) : ContinuousOn (fun x => x ^ z) s :=
  (continuous_zpow z).continuousOn

@[to_additive]
theorem continuousAt_zpow (x : G) (z : ℤ) : ContinuousAt (fun x => x ^ z) x :=
  (continuous_zpow z).continuousAt

@[to_additive]
theorem Filter.Tendsto.zpow {α} {l : Filter α} {f : α → G} {x : G} (hf : Tendsto f l (𝓝 x))
    (z : ℤ) : Tendsto (fun x => f x ^ z) l (𝓝 (x ^ z)) :=
  (continuousAt_zpow _ _).tendsto.comp hf

@[to_fun (attr := to_additive (attr := fun_prop))]
theorem ContinuousWithinAt.zpow {f : α → G} {x : α} {s : Set α} (hf : ContinuousWithinAt f s x)
    (z : ℤ) : ContinuousWithinAt (f ^ z) s x :=
  Filter.Tendsto.zpow hf z

@[to_fun (attr := to_additive (attr := fun_prop))]
theorem ContinuousAt.zpow {f : α → G} {x : α} (hf : ContinuousAt f x) (z : ℤ) :
    ContinuousAt (f ^ z) x :=
  Filter.Tendsto.zpow hf z

@[to_fun (attr := to_additive (attr := fun_prop))]
theorem ContinuousOn.zpow {f : α → G} {s : Set α} (hf : ContinuousOn f s) (z : ℤ) :
    ContinuousOn (f ^ z) s := fun x hx => (hf x hx).zpow z

end ZPow
```
