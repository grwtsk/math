# Complete source: GRWTSK.Topology.GeneralTopology.Shrink.Variantee325baf65b630c37380e2dd4eb1ece5fc81aa559827b66a8874e107592bc90b

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `69d21e53334f17cfec5159e0daeddcb454cdbb5d` · SHA-256 `8a80e65d4969ff6d87feb3ccbd84842bf62251870d9e8710d1405c0a98b48155`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: Topology.GeneralTopology
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Topology.GeneralTopology.Homeomorph.Varianta32e72fdbf93f47c61faf336d581d0b7921bc3ed42d33f6be2ca4654af6f22d1","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"a32e72fdbf93f47c61faf336d581d0b7921bc3ed42d33f6be2ca4654af6f22d1","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Topology.GeneralTopology.SourceCorpus.Homeomorph.Varianta32e72fdbf93f47c61faf336d581d0b7921bc3ed42d33f6be2ca4654af6f22d1","mathematical_subject":"Topology.GeneralTopology","original_sha256":"a32e72fdbf93f47c61faf336d581d0b7921bc3ed42d33f6be2ca4654af6f22d1","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/October/30/ooi/spectral-proof-of-RH/lean/mathlib4/Mathlib/Topology/Instances/Shrink.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2025 Christian Merten. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Christian Merten
-/
import Mathlib.Logic.Small.Defs
import Mathlib.Topology.Defs.Induced
import Mathlib.Topology.Homeomorph.Defs

/-!
# Topological space structure on `Shrink X`
-/


namespace GRWTSK.Topology.GeneralTopology.Homeomorph.Varianta32e72fdbf93f47c61faf336d581d0b7921bc3ed42d33f6be2ca4654af6f22d1

universe v u

namespace Shrink

noncomputable instance (X : Type u) [TopologicalSpace X] [Small.{v} X] :
    TopologicalSpace (Shrink.{v} X) :=
  .coinduced (equivShrink X) inferInstance

/-- `equivShrink` as a homeomorphism. -/
@[simps toEquiv]
noncomputable def homeomorph (X : Type u) [TopologicalSpace X] [Small.{v} X] :
    X ≃ₜ Shrink.{v} X where
  __ := equivShrink X
  continuous_toFun := continuous_coinduced_rng
  continuous_invFun := by
    convert continuous_induced_dom
    simp only [Equiv.invFun_as_coe, Equiv.induced_symm]
    rfl

end Shrink
```
