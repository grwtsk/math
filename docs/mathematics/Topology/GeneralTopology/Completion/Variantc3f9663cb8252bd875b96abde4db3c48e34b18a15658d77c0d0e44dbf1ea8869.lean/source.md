# Complete source: GRWTSK.Topology.GeneralTopology.Completion.Variantc3f9663cb8252bd875b96abde4db3c48e34b18a15658d77c0d0e44dbf1ea8869

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `fd0f0c3197d36236ca69d89def667cc5e828495d` · SHA-256 `520e5faaecf4131b6e2fb9050ba57ddc4708ecb8bcf10234ca8ffb07f5bd67a8`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: Topology.GeneralTopology
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Topology.GeneralTopology.NormCoe.Variantac6c9148a58408f28bbee8c80ffba88a683b51133b3860a7afdfab5e05c1b9ac","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"ac6c9148a58408f28bbee8c80ffba88a683b51133b3860a7afdfab5e05c1b9ac","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Topology.GeneralTopology.SourceCorpus.NormCoe.Variantac6c9148a58408f28bbee8c80ffba88a683b51133b3860a7afdfab5e05c1b9ac","mathematical_subject":"Topology.GeneralTopology","original_sha256":"ac6c9148a58408f28bbee8c80ffba88a683b51133b3860a7afdfab5e05c1b9ac","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/October/30/ooi/spectral-proof-of-RH/lean/mathlib4/Mathlib/Analysis/Normed/Group/Completion.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2021 Johan Commelin. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Johan Commelin
-/
import Mathlib.Analysis.Normed.Group.Uniform
import Mathlib.Topology.Algebra.GroupCompletion
import Mathlib.Topology.MetricSpace.Completion

/-!
# Completion of a normed group

In this file we prove that the completion of a (semi)normed group is a normed group.

## Tags

normed group, completion
-/



namespace GRWTSK.Topology.GeneralTopology.NormCoe.Variantac6c9148a58408f28bbee8c80ffba88a683b51133b3860a7afdfab5e05c1b9ac

noncomputable section

namespace UniformSpace

namespace Completion

variable (E : Type*)

instance [UniformSpace E] [Norm E] : Norm (Completion E) where
  norm := Completion.extension Norm.norm

@[simp]
theorem norm_coe {E} [SeminormedAddCommGroup E] (x : E) : ‖(x : Completion E)‖ = ‖x‖ :=
  Completion.extension_coe uniformContinuous_norm x

instance [SeminormedAddCommGroup E] : NormedAddCommGroup (Completion E) where
  dist_eq x y := by
    induction x, y using Completion.induction_on₂
    · refine isClosed_eq (Completion.uniformContinuous_extension₂ _).continuous ?_
      exact Continuous.comp Completion.continuous_extension continuous_sub
    · rw [← Completion.coe_sub, norm_coe, Completion.dist_eq, dist_eq_norm]

@[simp]
theorem nnnorm_coe {E} [SeminormedAddCommGroup E] (x : E) : ‖(x : Completion E)‖₊ = ‖x‖₊ := by
  simp [nnnorm]

@[simp]
lemma enorm_coe {E} [SeminormedAddCommGroup E] (x : E) : ‖(x : Completion E)‖ₑ = ‖x‖ₑ := by
  simp [enorm]

end Completion

end UniformSpace
```
