# Complete source: GRWTSK.Topology.GeneralTopology.UrysohnsBounded.Variant897d177c0ae030d6ecaed9dac3b29476473b1d8b32ea2fc35e7bb944b9e67ac6

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `4b5070e0def1bfd2483c72a99db23f26d4168ddd` · SHA-256 `0a36d3661b96d92c0dacd8f0c252b04a55f53a30a746093e18e050caa2113f34`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: Topology.GeneralTopology
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Topology.GeneralTopology.ExistsBoundedZeroOneOfClosed.Variant7b5d3eac307fbc8a0761797ca6b8bd841dbed7cb8c2704fbf0dc12a15f73c5aa","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"7b5d3eac307fbc8a0761797ca6b8bd841dbed7cb8c2704fbf0dc12a15f73c5aa","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Topology.GeneralTopology.SourceCorpus.ExistsBoundedZeroOneOfClosed.Variant7b5d3eac307fbc8a0761797ca6b8bd841dbed7cb8c2704fbf0dc12a15f73c5aa","mathematical_subject":"Topology.GeneralTopology","original_sha256":"7b5d3eac307fbc8a0761797ca6b8bd841dbed7cb8c2704fbf0dc12a15f73c5aa","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/October/30/ooi/FEATURES/.lake/packages/mathlib/Mathlib/Topology/UrysohnsBounded.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2021 Yury Kudryashov. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Yury Kudryashov
-/
import Mathlib.Topology.UrysohnsLemma
import Mathlib.Topology.ContinuousFunction.Bounded


namespace GRWTSK.Topology.GeneralTopology.ExistsBoundedZeroOneOfClosed.Variant7b5d3eac307fbc8a0761797ca6b8bd841dbed7cb8c2704fbf0dc12a15f73c5aa

#align_import topology.urysohns_bounded from "leanprover-community/mathlib"@"af683b11d1bd89d1e85a03bf1eb5519379aabdc9"

/-!
# Urysohn's lemma for bounded continuous functions

In this file we reformulate Urysohn's lemma `exists_continuous_zero_one_of_closed` in terms of
bounded continuous functions `X →ᵇ ℝ`. These lemmas live in a separate file because
`Topology.ContinuousFunction.Bounded` imports too many other files.

## Tags

Urysohn's lemma, normal topological space
-/


open BoundedContinuousFunction

open Set Function

/-- Urysohn's lemma: if `s` and `t` are two disjoint closed sets in a normal topological space `X`,
then there exists a continuous function `f : X → ℝ` such that

* `f` equals zero on `s`;
* `f` equals one on `t`;
* `0 ≤ f x ≤ 1` for all `x`.
-/
theorem exists_bounded_zero_one_of_closed {X : Type*} [TopologicalSpace X] [NormalSpace X]
    {s t : Set X} (hs : IsClosed s) (ht : IsClosed t) (hd : Disjoint s t) :
    ∃ f : X →ᵇ ℝ, EqOn f 0 s ∧ EqOn f 1 t ∧ ∀ x, f x ∈ Icc (0 : ℝ) 1 :=
  let ⟨f, hfs, hft, hf⟩ := exists_continuous_zero_one_of_closed hs ht hd
  ⟨⟨f, 1, fun _ _ => Real.dist_le_of_mem_Icc_01 (hf _) (hf _)⟩, hfs, hft, hf⟩
#align exists_bounded_zero_one_of_closed exists_bounded_zero_one_of_closed

/-- Urysohn's lemma: if `s` and `t` are two disjoint closed sets in a normal topological space `X`,
and `a ≤ b` are two real numbers, then there exists a continuous function `f : X → ℝ` such that

* `f` equals `a` on `s`;
* `f` equals `b` on `t`;
* `a ≤ f x ≤ b` for all `x`.
-/
theorem exists_bounded_mem_Icc_of_closed_of_le {X : Type*} [TopologicalSpace X] [NormalSpace X]
    {s t : Set X} (hs : IsClosed s) (ht : IsClosed t) (hd : Disjoint s t) {a b : ℝ} (hle : a ≤ b) :
    ∃ f : X →ᵇ ℝ, EqOn f (Function.const X a) s ∧ EqOn f (Function.const X b) t ∧
    ∀ x, f x ∈ Icc a b :=
  let ⟨f, hfs, hft, hf01⟩ := exists_bounded_zero_one_of_closed hs ht hd
  ⟨BoundedContinuousFunction.const X a + (b - a) • f, fun x hx => by simp [hfs hx], fun x hx => by
    simp [hft hx], fun x =>
    ⟨by dsimp; nlinarith [(hf01 x).1], by dsimp; nlinarith [(hf01 x).2]⟩⟩
#align exists_bounded_mem_Icc_of_closed_of_le exists_bounded_mem_Icc_of_closed_of_le
```
