# Complete source: GRWTSK.Topology.MetricTopology.MulOpposite.Variantfa5197b8e3d9a2a8344932fae9fbe0941596ef9eb51ad464f5db9889de493715

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `5d6f082831317d91a2a5d1880ea173921f88a967` · SHA-256 `bab8275dbe724a2963795a505031d155b61d9895eb56512383c582187ad5115f`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: Topology.MetricTopology
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Topology.MetricTopology.EdistUnop.Variant760d99bdb3bf8d9d0c8406d32e7e1dd1a0a07eae90b42abae3e7164471e832eb","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"760d99bdb3bf8d9d0c8406d32e7e1dd1a0a07eae90b42abae3e7164471e832eb","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Topology.MetricSpaces.SourceCorpus.EdistUnop.Variant760d99bdb3bf8d9d0c8406d32e7e1dd1a0a07eae90b42abae3e7164471e832eb","mathematical_subject":"Topology.MetricSpaces","original_sha256":"760d99bdb3bf8d9d0c8406d32e7e1dd1a0a07eae90b42abae3e7164471e832eb","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/rh16-games-packets/external/replay/.lake/packages/mathlib/Mathlib/Topology/EMetricSpace/MulOpposite.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2026 Felix Pernegger. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Felix Pernegger
-/
module

public import Mathlib.Topology.Algebra.Constructions
public import Mathlib.Topology.EMetricSpace.Defs

/-!
# Extended metric spaces on multiplicative opposites

This file proves that if `α` is some (weak) pseudo extended metric space, so is `αᵐᵒᵖ`.
We do this in this file instead of `Mathlib/Topology/EMetricSpace/Defs.lean` to avoid imports.
-/


namespace GRWTSK.Topology.MetricTopology.EdistUnop.Variant760d99bdb3bf8d9d0c8406d32e7e1dd1a0a07eae90b42abae3e7164471e832eb

public section

open Filter Set Topology Set.Notation

namespace MulOpposite

variable {α : Type*} [TopologicalSpace α] [WeakPseudoEMetricSpace α]

/-- weak pseudoemetric space instance on the multiplicative opposite of a
weak pseudoemetric space. -/
@[to_additive
/-- Weak pseudoemetric space instance on the additive opposite of a weak pseudoemetric space. -/]
instance {α : Type*} [TopologicalSpace α] [WeakPseudoEMetricSpace α] :
    WeakPseudoEMetricSpace αᵐᵒᵖ :=
  WeakPseudoEMetricSpace.IsInducing MulOpposite.opHomeomorph.symm.isInducing ‹_›

/-- Pseudoemetric space instance on the multiplicative opposite of a pseudoemetric space. -/
@[to_additive
/-- Pseudoemetric space instance on the additive opposite of a pseudoemetric space. -/]
instance {α : Type*} [PseudoEMetricSpace α] : PseudoEMetricSpace αᵐᵒᵖ :=
  PseudoEMetricSpace.induced unop ‹_›

@[to_additive]
theorem edist_unop (x y : αᵐᵒᵖ) : edist (unop x) (unop y) = edist x y := rfl

@[to_additive]
theorem edist_op (x y : α) : edist (op x) (op y) = edist x y := rfl

end MulOpposite
```
