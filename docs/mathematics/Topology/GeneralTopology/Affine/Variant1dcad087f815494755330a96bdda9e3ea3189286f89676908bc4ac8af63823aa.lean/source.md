# Complete source: GRWTSK.Topology.GeneralTopology.Affine.Variant1dcad087f815494755330a96bdda9e3ea3189286f89676908bc4ac8af63823aa

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `13d1f5a19aa8bbad21ce8bbc2b1de648bcc88937` · SHA-256 `483cc1e7e722551064505fa0367cd5377085691603df39e963de0d6e8aafbaf8`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: Topology.GeneralTopology
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Topology.GeneralTopology.ContinuousIff.Variant6cbc70cc9bb02915fed9e7baedadc36cbecd23f37eb65201e5ac18713ff71c8d","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"6cbc70cc9bb02915fed9e7baedadc36cbecd23f37eb65201e5ac18713ff71c8d","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Topology.GeneralTopology.SourceCorpus.ContinuousIff.Variant6cbc70cc9bb02915fed9e7baedadc36cbecd23f37eb65201e5ac18713ff71c8d","mathematical_subject":"Topology.GeneralTopology","original_sha256":"6cbc70cc9bb02915fed9e7baedadc36cbecd23f37eb65201e5ac18713ff71c8d","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/October/30/ooi/spectral-proof-of-RH/lean/mathlib4/Mathlib/Topology/Algebra/Affine.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2020 Frédéric Dupuis. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Frédéric Dupuis
-/
import Mathlib.LinearAlgebra.AffineSpace.AffineMap
import Mathlib.Topology.Algebra.MulAction
import Mathlib.Topology.Algebra.Group.Defs

/-!
# Topological properties of affine spaces and maps

For now, this contains only a few facts regarding the continuity of affine maps in the special
case when the point space and vector space are the same.

TODO: Deal with the case where the point spaces are different from the vector spaces. Note that
we do have some results in this direction under the assumption that the topologies are induced by
(semi)norms.
-/



namespace GRWTSK.Topology.GeneralTopology.ContinuousIff.Variant6cbc70cc9bb02915fed9e7baedadc36cbecd23f37eb65201e5ac18713ff71c8d

namespace AffineMap

variable {R E F : Type*}
variable [AddCommGroup E] [TopologicalSpace E]
variable [AddCommGroup F] [TopologicalSpace F] [IsTopologicalAddGroup F]

section Ring

variable [Ring R] [Module R E] [Module R F]

/-- An affine map is continuous iff its underlying linear map is continuous. See also
`AffineMap.continuous_linear_iff`. -/
theorem continuous_iff {f : E →ᵃ[R] F} : Continuous f ↔ Continuous f.linear := by
  constructor
  · intro hc
    rw [decomp' f]
    exact hc.sub continuous_const
  · intro hc
    rw [decomp f]
    exact hc.add continuous_const

/-- The line map is continuous. -/
@[continuity]
theorem lineMap_continuous [TopologicalSpace R] [ContinuousSMul R F] {p v : F} :
    Continuous (lineMap p v : R →ᵃ[R] F) :=
  continuous_iff.mpr <|
    (continuous_id.smul continuous_const).add <| @continuous_const _ _ _ _ (0 : F)

end Ring

section CommRing

variable [CommRing R] [Module R F] [ContinuousConstSMul R F]

@[continuity]
theorem homothety_continuous (x : F) (t : R) : Continuous <| homothety x t := by
  suffices ⇑(homothety x t) = fun y => t • (y - x) + x by
    rw [this]
    fun_prop
  ext y
  simp [homothety_apply]

end CommRing

section Field

variable [Field R] [Module R F] [ContinuousConstSMul R F]

theorem homothety_isOpenMap (x : F) (t : R) (ht : t ≠ 0) : IsOpenMap <| homothety x t := by
  apply IsOpenMap.of_inverse (homothety_continuous x t⁻¹) <;> intro e <;>
    simp [← AffineMap.comp_apply, ← homothety_mul, ht]

end Field

end AffineMap
```
