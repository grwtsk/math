# Complete source: GRWTSK.Topology.AffineSubspace.Variant97ff8359d7052e4bab4e0ee69be8e1b904f9ef9009369d4d2827f894227ddd34

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `65f94c5c65b4462def435470e95b94728f1d4d95` · SHA-256 `981a95c72d3b7ec8b00948b8cef7aa5ce370b5fd83d414544ca16139d4540fd5`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: Topology
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Topology.SubtypeA.Varianta6561776abde7e0df235a7f5b722314d0a23703ce0a710e7e6a6ff8caed6883f","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"a6561776abde7e0df235a7f5b722314d0a23703ce0a710e7e6a6ff8caed6883f","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Foundations.MixedSubjects.SourceCorpus.SubtypeA.Varianta6561776abde7e0df235a7f5b722314d0a23703ce0a710e7e6a6ff8caed6883f","mathematical_subject":"Foundations.MixedSubjects","original_sha256":"a6561776abde7e0df235a7f5b722314d0a23703ce0a710e7e6a6ff8caed6883f","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/October/30/ooi/spectral-proof-of-RH/lean/mathlib4/Mathlib/Topology/Algebra/AffineSubspace.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2025 Joseph Myers. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Joseph Myers
-/
import Mathlib.LinearAlgebra.AffineSpace.AffineSubspace.Basic
import Mathlib.Topology.Algebra.ContinuousAffineMap

/-!
# Topology of affine subspaces.

This file defines the embedding map from an affine subspace to the ambient space as a continuous
affine map.

## Main definitions

* `AffineSubspace.subtypeA` is `AffineSubspace.subtype` as a `ContinuousAffineMap`.

-/



namespace GRWTSK.Topology.SubtypeA.Varianta6561776abde7e0df235a7f5b722314d0a23703ce0a710e7e6a6ff8caed6883f

namespace AffineSubspace

variable {R V P : Type*} [Ring R] [AddCommGroup V] [Module R V] [TopologicalSpace P]
  [AddTorsor V P]

attribute [local instance] toAddTorsor

/-- Embedding of an affine subspace to the ambient space, as a continuous affine map. -/
def subtypeA (s : AffineSubspace R P) [Nonempty s] : s →ᴬ[R] P where
  toAffineMap := s.subtype
  cont := continuous_subtype_val

@[simp] lemma coe_subtypeA (s : AffineSubspace R P) [Nonempty s] : ⇑s.subtypeA = Subtype.val :=
  rfl

@[simp] lemma subtypeA_toAffineMap (s : AffineSubspace R P) [Nonempty s] :
    s.subtypeA.toAffineMap = s.subtype :=
  rfl

end AffineSubspace
```
