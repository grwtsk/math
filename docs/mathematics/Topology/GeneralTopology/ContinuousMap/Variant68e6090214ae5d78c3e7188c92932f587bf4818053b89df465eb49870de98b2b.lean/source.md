# Complete source: GRWTSK.Topology.GeneralTopology.ContinuousMap.Variant68e6090214ae5d78c3e7188c92932f587bf4818053b89df465eb49870de98b2b

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `8c7b57a1328db35cb45a901910bdfb36328dea4d` · SHA-256 `120b8250a2d9f774d5bf39ad3e56351ae665bdb460a5d6fa7ce00afb0370ddb5`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: Topology.GeneralTopology
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Topology.GeneralTopology.Classes.Variant38e51e81b2064d6127fa14621fd863531f2efc774b7a2406f168606ccec0833e","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"38e51e81b2064d6127fa14621fd863531f2efc774b7a2406f168606ccec0833e","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Topology.GeneralTopology.SourceCorpus.Classes.Variant38e51e81b2064d6127fa14621fd863531f2efc774b7a2406f168606ccec0833e","mathematical_subject":"Topology.GeneralTopology","original_sha256":"38e51e81b2064d6127fa14621fd863531f2efc774b7a2406f168606ccec0833e","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/October/30/ooi/spectral-proof-of-RH/lean/mathlib4/Mathlib/Analysis/CStarAlgebra/ContinuousMap.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2024 Jireh Loreaux. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Jireh Loreaux
-/
import Mathlib.Analysis.CStarAlgebra.Classes
import Mathlib.Topology.ContinuousMap.Compact
import Mathlib.Topology.ContinuousMap.ZeroAtInfty

/-! # C⋆-algebras of continuous functions

We place these here because, for reasons related to the import hierarchy, they cannot be placed in
earlier files.
-/


namespace GRWTSK.Topology.GeneralTopology.Classes.Variant38e51e81b2064d6127fa14621fd863531f2efc774b7a2406f168606ccec0833e

variable {α A : Type*}
noncomputable section

namespace BoundedContinuousFunction

variable [TopologicalSpace α]

#adaptation_note /-- 2025-03-29 for lean4#7717 had to add `norm_mul_self_le` field. -/
instance [NonUnitalCStarAlgebra A] : NonUnitalCStarAlgebra (α →ᵇ A) where
  norm_mul_self_le := CStarRing.norm_mul_self_le

instance [NonUnitalCommCStarAlgebra A] : NonUnitalCommCStarAlgebra (α →ᵇ A) where
  mul_comm := mul_comm

#adaptation_note /-- 2025-03-29 for lean4#7717 had to add `norm_mul_self_le` field. -/
instance [CStarAlgebra A] : CStarAlgebra (α →ᵇ A) where
  norm_mul_self_le := CStarRing.norm_mul_self_le

instance [CommCStarAlgebra A] : CommCStarAlgebra (α →ᵇ A) where
  mul_comm := mul_comm

end BoundedContinuousFunction

namespace ContinuousMap

variable [TopologicalSpace α] [CompactSpace α]

#adaptation_note /-- 2025-03-29 for lean4#7717 had to add `norm_mul_self_le` field. -/
instance [NonUnitalCStarAlgebra A] : NonUnitalCStarAlgebra C(α, A) where
  norm_mul_self_le := CStarRing.norm_mul_self_le

instance [NonUnitalCommCStarAlgebra A] : NonUnitalCommCStarAlgebra C(α, A) where
  mul_comm := mul_comm

#adaptation_note /-- 2025-03-29 for lean4#7717 had to add `norm_mul_self_le` field. -/
instance [CStarAlgebra A] : CStarAlgebra C(α, A) where
  norm_mul_self_le := CStarRing.norm_mul_self_le

instance [CommCStarAlgebra A] : CommCStarAlgebra C(α, A) where
  mul_comm := mul_comm

end ContinuousMap

namespace ZeroAtInftyContinuousMap

open ZeroAtInfty

#adaptation_note /-- 2025-03-29 for lean4#7717 had to add `norm_mul_self_le` field. -/
instance [TopologicalSpace α] [NonUnitalCStarAlgebra A] : NonUnitalCStarAlgebra C₀(α, A) where
  norm_mul_self_le := CStarRing.norm_mul_self_le

instance [TopologicalSpace α] [NonUnitalCommCStarAlgebra A] :
    NonUnitalCommCStarAlgebra C₀(α, A) where
  mul_comm := mul_comm

end ZeroAtInftyContinuousMap
```
