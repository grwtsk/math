# Complete source: GRWTSK.Topology.GeneralTopology.Real.Variant2d9e6319a26dd7cdb9b82898b75d40fd2ec527a80dfb3a85805bd1cdf6d870a8

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `4e25f751230827b977dcdb4acdab8caaed9491d2` · SHA-256 `0450da11de836e4ab3530f0a3620aadcb23fb00c1c9d055afc3f066c564c60b1`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: Topology.GeneralTopology
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Topology.GeneralTopology.ContinuousCoe.Variantef6e303bdaf7db05ca2ed000442450b2951583685da034ff64427f28a18b0410","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"ef6e303bdaf7db05ca2ed000442450b2951583685da034ff64427f28a18b0410","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Topology.GeneralTopology.SourceCorpus.ContinuousCoe.Variantef6e303bdaf7db05ca2ed000442450b2951583685da034ff64427f28a18b0410","mathematical_subject":"Topology.GeneralTopology","original_sha256":"ef6e303bdaf7db05ca2ed000442450b2951583685da034ff64427f28a18b0410","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/October/30/ooi/spectral-proof-of-RH/lean/mathlib4/Mathlib/Topology/UniformSpace/Real.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2017 Johannes Hölzl. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Johannes Hölzl, Mario Carneiro
-/
import Mathlib.Topology.ContinuousMap.Basic
import Mathlib.Topology.MetricSpace.Cauchy

/-!
# The reals are complete

This file provides the instances `CompleteSpace ℝ` and `CompleteSpace ℝ≥0`.
Along the way, we add a shortcut instance for the natural topology on `ℝ≥0`
(the one induced from `ℝ`), and add some basic API.
-/


namespace GRWTSK.Topology.GeneralTopology.ContinuousCoe.Variantef6e303bdaf7db05ca2ed000442450b2951583685da034ff64427f28a18b0410

assert_not_exists IsTopologicalRing UniformContinuousConstSMul UniformOnFun

noncomputable section

open Filter Metric Set

instance Real.instCompleteSpace : CompleteSpace ℝ := by
  apply complete_of_cauchySeq_tendsto
  intro u hu
  let c : CauSeq ℝ abs := ⟨u, Metric.cauchySeq_iff'.1 hu⟩
  refine ⟨c.lim, fun s h => ?_⟩
  rcases Metric.mem_nhds_iff.1 h with ⟨ε, ε0, hε⟩
  have := c.equiv_lim ε ε0
  simp only [mem_map, mem_atTop_sets, mem_setOf_eq]
  exact this.imp fun N hN n hn => hε (hN n hn)

namespace NNReal

/-!
### Topology on `ℝ≥0`
All the instances are inherited from the corresponding structures on the reals.

-/

instance : TopologicalSpace ℝ≥0 := inferInstance

instance : CompleteSpace ℝ≥0 :=
  isClosed_Ici.completeSpace_coe

theorem continuous_coe : Continuous ((↑) : ℝ≥0 → ℝ) :=
  continuous_subtype_val

/-- Embedding of `ℝ≥0` to `ℝ` as a bundled continuous map. -/
@[simps -fullyApplied]
def _root_.GRWTSK.Topology.GeneralTopology.ContinuousCoe.Variantef6e303bdaf7db05ca2ed000442450b2951583685da034ff64427f28a18b0410.ContinuousMap.coeNNRealReal : C(ℝ≥0, ℝ) :=
  ⟨(↑), continuous_coe⟩

@[simp]
lemma coeNNRealReal_zero : ContinuousMap.coeNNRealReal 0 = 0 := rfl

instance ContinuousMap.canLift {X : Type*} [TopologicalSpace X] :
    CanLift C(X, ℝ) C(X, ℝ≥0) ContinuousMap.coeNNRealReal.comp fun f => ∀ x, 0 ≤ f x where
  prf f hf := ⟨⟨fun x => ⟨f x, hf x⟩, f.2.subtype_mk _⟩, DFunLike.ext' rfl⟩

end NNReal
```
