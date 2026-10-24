# Complete source: GRWTSK.Topology.GeneralTopology.ExtrClosure.Variant4b607e73e75a9ce1d94cd896bf74a73193baf7309ce361535807d833af8316dc

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `a712901da78c7d687361460bd85c33e066a62290` · SHA-256 `87a3395c08acd94b3c38b1b420449d57da3029f22c70ba53320da8f6328fb707`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: Topology.GeneralTopology
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Topology.GeneralTopology.IsMaxOnClosure.Variant88c4a9e55248d52b0d8bda24b31cea11e37c2b80926a01f17252f8b2740206ed","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"88c4a9e55248d52b0d8bda24b31cea11e37c2b80926a01f17252f8b2740206ed","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Topology.GeneralTopology.SourceCorpus.IsMaxOnClosure.Variant88c4a9e55248d52b0d8bda24b31cea11e37c2b80926a01f17252f8b2740206ed","mathematical_subject":"Topology.GeneralTopology","original_sha256":"88c4a9e55248d52b0d8bda24b31cea11e37c2b80926a01f17252f8b2740206ed","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/rh16-games-packets/external/replay/.lake/packages/mathlib/Mathlib/Topology/Order/ExtrClosure.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2022 Yury Kudryashov. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Yury Kudryashov
-/
module

public import Mathlib.Topology.Order.OrderClosed
public import Mathlib.Topology.Order.LocalExtr

/-!
# Maximum/minimum on the closure of a set

In this file we prove several versions of the following statement: if `f : X → Y` has a (local or
not) maximum (or minimum) on a set `s` at a point `a` and is continuous on the closure of `s`, then
`f` has an extremum of the same type on `Closure s` at `a`.
-/


namespace GRWTSK.Topology.GeneralTopology.IsMaxOnClosure.Variant88c4a9e55248d52b0d8bda24b31cea11e37c2b80926a01f17252f8b2740206ed

public section


open Filter Set

variable {X Y : Type*} [TopologicalSpace X] [TopologicalSpace Y] [Preorder Y]
  [OrderClosedTopology Y] {f : X → Y} {s : Set X} {a : X}

protected theorem IsMaxOn.closure (h : IsMaxOn f s a) (hc : ContinuousOn f (closure s)) :
    IsMaxOn f (closure s) a := fun x hx =>
  ContinuousWithinAt.closure_le hx ((hc x hx).mono subset_closure) continuousWithinAt_const h

protected theorem IsMinOn.closure (h : IsMinOn f s a) (hc : ContinuousOn f (closure s)) :
    IsMinOn f (closure s) a :=
  h.dual.closure hc

protected theorem IsExtrOn.closure (h : IsExtrOn f s a) (hc : ContinuousOn f (closure s)) :
    IsExtrOn f (closure s) a :=
  h.elim (fun h => Or.inl <| h.closure hc) fun h => Or.inr <| h.closure hc

protected theorem IsLocalMaxOn.closure (h : IsLocalMaxOn f s a) (hc : ContinuousOn f (closure s)) :
    IsLocalMaxOn f (closure s) a := by
  rcases mem_nhdsWithin.1 h with ⟨U, Uo, aU, hU⟩
  refine mem_nhdsWithin.2 ⟨U, Uo, aU, ?_⟩
  rintro x ⟨hxU, hxs⟩
  refine ContinuousWithinAt.closure_le ?_ ?_ continuousWithinAt_const hU
  · rwa [mem_closure_iff_nhdsWithin_neBot, nhdsWithin_inter_of_mem, ←
      mem_closure_iff_nhdsWithin_neBot]
    exact nhdsWithin_le_nhds (Uo.mem_nhds hxU)
  · exact (hc _ hxs).mono (inter_subset_right.trans subset_closure)

protected theorem IsLocalMinOn.closure (h : IsLocalMinOn f s a) (hc : ContinuousOn f (closure s)) :
    IsLocalMinOn f (closure s) a :=
  IsLocalMaxOn.closure h.dual hc

protected theorem IsLocalExtrOn.closure (h : IsLocalExtrOn f s a)
    (hc : ContinuousOn f (closure s)) : IsLocalExtrOn f (closure s) a :=
  h.elim (fun h => Or.inl <| h.closure hc) fun h => Or.inr <| h.closure hc
```
