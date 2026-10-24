# Complete source: GRWTSK.Topology.GeneralTopology.LinearUpperLowerSetTopology.Variant6878eae372921b2018a5d0db4b0e3ca26b55d2209332aba641e002d13763123c

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `52d889af9937a81556b06969ec65fb1220e83a36` · SHA-256 `878226c9b8d2256b12798e569f5c26f0725454e1888338c44fdd78f307041a9a`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: Topology.GeneralTopology
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Topology.GeneralTopology.UpperLowerSetTopology.Variant161d040a59c8a6cbfd4e7db5c356e839c0874b98a519a92857f145f772f3450e","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"161d040a59c8a6cbfd4e7db5c356e839c0874b98a519a92857f145f772f3450e","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Topology.GeneralTopology.SourceCorpus.UpperLowerSetTopology.Variant161d040a59c8a6cbfd4e7db5c356e839c0874b98a519a92857f145f772f3450e","mathematical_subject":"Topology.GeneralTopology","original_sha256":"161d040a59c8a6cbfd4e7db5c356e839c0874b98a519a92857f145f772f3450e","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/rh16-games-packets/external/replay/.lake/packages/mathlib/Mathlib/Topology/Separation/LinearUpperLowerSetTopology.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2025 Miyahara Kō. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Miyahara Kō
-/
module

public import Mathlib.Topology.Order.UpperLowerSetTopology
public import Mathlib.Topology.Separation.Regular

/-!
# Linear upper or lower sets topologies are completely normal
-/


namespace GRWTSK.Topology.GeneralTopology.UpperLowerSetTopology.Variant161d040a59c8a6cbfd4e7db5c356e839c0874b98a519a92857f145f772f3450e

public section

open Set Topology.IsUpperSet

instance (priority := low) {α : Type*}
    [TopologicalSpace α] [LinearOrder α] [Topology.IsUpperSet α] : CompletelyNormalSpace α where
  completely_normal s t hcst hsct := by
    obtain (rfl | ⟨a, ha⟩) := s.eq_empty_or_nonempty
    case inl => simp
    obtain (rfl | ⟨b, hb⟩) := t.eq_empty_or_nonempty
    case inl => simp
    exfalso
    grewrite [← singleton_subset_iff.mpr ha, ← singleton_subset_iff.mpr hb] at hcst hsct
    conv at hcst => equals a < b => simp
    conv at hsct => equals b < a => simp
    exact lt_asymm hcst hsct

instance (priority := low) {α : Type*}
    [TopologicalSpace α] [LinearOrder α] [Topology.IsLowerSet α] :
    CompletelyNormalSpace α :=
  inferInstanceAs (CompletelyNormalSpace αᵒᵈ)

instance : CompletelyNormalSpace Prop :=
  let := Prop.linearOrder
  inferInstance
```
