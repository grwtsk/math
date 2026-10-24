# Complete source: GRWTSK.Topology.GeneralTopology.Basic.Variant95ea962fa7f9cc5a6b832f613250d2659db8a891c914142c9715819c02bc18d9

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `50bcf7b9bae5a207dd4137c89bb464b2005c3142` · SHA-256 `a2d4b603510d1b3d0a37198cd7dc82153fb0054b4efbb7ba14dea62f81ac74ea`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: Topology.GeneralTopology
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Topology.GeneralTopology.NormLeNormOne.Variant9195af58bc5180d0f3d5303ffac039400c599762a722aeddac8eca421190e5d3","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"9195af58bc5180d0f3d5303ffac039400c599762a722aeddac8eca421190e5d3","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Topology.GeneralTopology.SourceCorpus.NormLeNormOne.Variant9195af58bc5180d0f3d5303ffac039400c599762a722aeddac8eca421190e5d3","mathematical_subject":"Topology.GeneralTopology","original_sha256":"9195af58bc5180d0f3d5303ffac039400c599762a722aeddac8eca421190e5d3","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/October/30/ooi/spectral-proof-of-RH/lean/mathlib4/Mathlib/Analysis/Normed/Algebra/Basic.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2022 Frédéric Dupuis. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Frédéric Dupuis
-/
import Mathlib.Topology.Algebra.Module.CharacterSpace
import Mathlib.Analysis.Normed.Module.WeakDual
import Mathlib.Analysis.Normed.Algebra.Spectrum

/-!
# Normed algebras

This file contains basic facts about normed algebras.

## Main results

* We show that the character space of a normed algebra is compact using the Banach-Alaoglu theorem.

## TODO

* Show compactness for topological vector spaces; this requires the TVS version of Banach-Alaoglu.

## Tags

normed algebra, character space, continuous functional calculus

-/



namespace GRWTSK.Topology.GeneralTopology.NormLeNormOne.Variant9195af58bc5180d0f3d5303ffac039400c599762a722aeddac8eca421190e5d3

variable {𝕜 : Type*} {A : Type*}

namespace WeakDual

namespace CharacterSpace

variable [NontriviallyNormedField 𝕜] [NormedRing A] [NormedAlgebra 𝕜 A] [CompleteSpace A]

theorem norm_le_norm_one (φ : characterSpace 𝕜 A) : ‖toNormedDual (φ : WeakDual 𝕜 A)‖ ≤ ‖(1 : A)‖ :=
  ContinuousLinearMap.opNorm_le_bound _ (norm_nonneg (1 : A)) fun a =>
    mul_comm ‖a‖ ‖(1 : A)‖ ▸ spectrum.norm_le_norm_mul_of_mem (apply_mem_spectrum φ a)

instance [ProperSpace 𝕜] : CompactSpace (characterSpace 𝕜 A) := by
  rw [← isCompact_iff_compactSpace]
  have h : characterSpace 𝕜 A ⊆ toNormedDual ⁻¹' Metric.closedBall 0 ‖(1 : A)‖ := by
    intro φ hφ
    rw [Set.mem_preimage, mem_closedBall_zero_iff]
    exact (norm_le_norm_one ⟨φ, ⟨hφ.1, hφ.2⟩⟩ :)
  exact (isCompact_closedBall 𝕜 0 _).of_isClosed_subset CharacterSpace.isClosed h

end CharacterSpace

end WeakDual
```
