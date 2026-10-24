# Complete source: GRWTSK.Topology.Simple.Variant526058926a75797da63ca2087626a267b4aca6b7304ff8194c7e63e349cac22c

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `d0d7d5baa7d67652766f933586d2f8e926898e2b` · SHA-256 `33fe7d8df903b9958c1f1c901be1a00659bca864c1e740766ac65897e5427752`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: Topology
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Topology.LinearMapIsClosedOrDenseKer.Variant5846ffeb8d5c28b3edac7955eb6115265daf07fa0b4dbcdfd81a443b45b0c888","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"5846ffeb8d5c28b3edac7955eb6115265daf07fa0b4dbcdfd81a443b45b0c888","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Foundations.MixedSubjects.SourceCorpus.LinearMapIsClosedOrDenseKer.Variant5846ffeb8d5c28b3edac7955eb6115265daf07fa0b4dbcdfd81a443b45b0c888","mathematical_subject":"Foundations.MixedSubjects","original_sha256":"5846ffeb8d5c28b3edac7955eb6115265daf07fa0b4dbcdfd81a443b45b0c888","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/October/30/ooi/spectral-proof-of-RH/lean/mathlib4/Mathlib/Topology/Algebra/Module/Simple.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2022 Anatole Dedecker. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Anatole Dedecker
-/
import Mathlib.RingTheory.SimpleModule.Basic
import Mathlib.Topology.Algebra.Module.Basic

/-!
# The kernel of a linear function is closed or dense

In this file we prove (`LinearMap.isClosed_or_dense_ker`) that the kernel of a linear function
`f : M →ₗ[R] N` is either closed or dense in `M` provided that `N` is a simple module over `R`. This
applies, e.g., to the case when `R = N` is a division ring.
-/



namespace GRWTSK.Topology.LinearMapIsClosedOrDenseKer.Variant5846ffeb8d5c28b3edac7955eb6115265daf07fa0b4dbcdfd81a443b45b0c888

universe u v w

variable {R : Type u} {M : Type v} {N : Type w} [Ring R] [TopologicalSpace R] [TopologicalSpace M]
  [AddCommGroup M] [AddCommGroup N] [Module R M] [ContinuousSMul R M] [Module R N] [ContinuousAdd M]
  [IsSimpleModule R N]

/-- The kernel of a linear map taking values in a simple module over the base ring is closed or
dense. Applies, e.g., to the case when `R = N` is a division ring. -/
theorem LinearMap.isClosed_or_dense_ker (l : M →ₗ[R] N) :
    IsClosed (LinearMap.ker l : Set M) ∨ Dense (LinearMap.ker l : Set M) := by
  rcases l.surjective_or_eq_zero with (hl | rfl)
  · exact (LinearMap.ker l).isClosed_or_dense_of_isCoatom (LinearMap.isCoatom_ker_of_surjective hl)
  · rw [LinearMap.ker_zero]
    left
    exact isClosed_univ
```
