# Complete source: GRWTSK.CombinatoricsAndDiscreteMathematics.OrderAndLatticeTheory.Lattice.Variantd1356860d8d635a3c38385e35f8f78b36ae449d29ca92b09bc4f9e6574afca31

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `b5e7e7769af1f93f63ae7862f2428dbcb6edcede` · SHA-256 `1f33d5f5c387d2b00654f8ce975b827419525ff4f8b3922b033b8bf1bbe042db`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: CombinatoricsAndDiscreteMathematics.OrderAndLatticeTheory
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CombinatoricsAndDiscreteMathematics.OrderAndLatticeTheory.CoeMabs.Variant02ebb7f397726881247b7ee4b1fc230d1974ab360256c2b3d838af1c8f25a551","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"02ebb7f397726881247b7ee4b1fc230d1974ab360256c2b3d838af1c8f25a551","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Algebra.OrderTheory.SourceCorpus.CoeMabs.Variant02ebb7f397726881247b7ee4b1fc230d1974ab360256c2b3d838af1c8f25a551","mathematical_subject":"Algebra.OrderTheory","original_sha256":"02ebb7f397726881247b7ee4b1fc230d1974ab360256c2b3d838af1c8f25a551","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/October/30/ooi/spectral-proof-of-RH/lean/mathlib4/Mathlib/Topology/ContinuousMap/Lattice.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2019 Kim Morrison. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Kim Morrison, Nicolò Cavalleri
-/
import Mathlib.Algebra.Algebra.Pi
import Mathlib.Algebra.Order.Group.Lattice
import Mathlib.Topology.ContinuousMap.Algebra
import Mathlib.Topology.ContinuousMap.Ordered

/-!
# Continuous maps as a lattice ordered group
-/


/-!
We now provide formulas for `f ⊓ g` and `f ⊔ g`, where `f g : C(α, β)`,
in terms of `ContinuousMap.abs`.
-/


namespace GRWTSK.CombinatoricsAndDiscreteMathematics.OrderAndLatticeTheory.CoeMabs.Variant02ebb7f397726881247b7ee4b1fc230d1974ab360256c2b3d838af1c8f25a551

namespace ContinuousMap

section Lattice

variable {α : Type*} [TopologicalSpace α]
variable {β : Type*} [TopologicalSpace β]

/-! `C(α, β)`is a lattice ordered group -/

@[to_additive]
instance instMulLeftMono [PartialOrder β] [Mul β] [ContinuousMul β] [MulLeftMono β] :
    MulLeftMono C(α, β) :=
  ⟨fun _ _ _ hg₁₂ x => mul_le_mul_left' (hg₁₂ x) _⟩

@[to_additive]
instance instMulRightMono [PartialOrder β] [Mul β] [ContinuousMul β] [MulRightMono β] :
    MulRightMono C(α, β) :=
  ⟨fun _ _ _ hg₁₂ x => mul_le_mul_right' (hg₁₂ x) _⟩

variable [Group β] [IsTopologicalGroup β] [Lattice β] [TopologicalLattice β]

@[to_additive (attr := simp, norm_cast)]
lemma coe_mabs (f : C(α, β)) : ⇑|f|ₘ = |⇑f|ₘ := rfl

@[to_additive (attr := simp)]
lemma mabs_apply (f : C(α, β)) (x : α) : |f|ₘ x = |f x|ₘ := rfl

end Lattice

end ContinuousMap
```
