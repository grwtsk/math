# Complete source: GRWTSK.Topology.GeneralTopology.DomMulAct.Variant559ee94c0305d98347cb3f5e46512cb1376f2a8c0ce1571fe8008ca8360e277a

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `c55308687d443d6a7a642b9eb13eb800c2110a4e` · SHA-256 `66aacfceb17ecbc714b57156b1be3c96e70077d61d028de32af75fc627cae130`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: Topology.GeneralTopology
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Topology.GeneralTopology.ContinuousMk.Variantd4b65a6cce234b389226d043248370ec9052d4d230e9a7720e535f45a8cc9760","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"d4b65a6cce234b389226d043248370ec9052d4d230e9a7720e535f45a8cc9760","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Topology.GeneralTopology.SourceCorpus.ContinuousMk.Variantd4b65a6cce234b389226d043248370ec9052d4d230e9a7720e535f45a8cc9760","mathematical_subject":"Topology.GeneralTopology","original_sha256":"d4b65a6cce234b389226d043248370ec9052d4d230e9a7720e535f45a8cc9760","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/October/30/ooi/spectral-proof-of-RH/lean/mathlib4/Mathlib/Topology/Algebra/Constructions/DomMulAct.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2024 Yury Kudryashov. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Yury Kudryashov
-/
import Mathlib.Topology.Homeomorph.Lemmas
import Mathlib.GroupTheory.GroupAction.DomAct.Basic

/-!
# Topological space structure on `Mᵈᵐᵃ` and `Mᵈᵃᵃ`

In this file we define `TopologicalSpace` structure on `Mᵈᵐᵃ` and `Mᵈᵃᵃ`
and prove basic theorems about these topologies.
The topologies on `Mᵈᵐᵃ` and `Mᵈᵃᵃ` are the same as the topology on `M`.
Formally, they are induced by `DomMulAct.mk.symm` and `DomAddAct.mk.symm`,
since the types aren't definitionally equal.

## Tags

topological space, group action, domain action
-/


namespace GRWTSK.Topology.GeneralTopology.ContinuousMk.Variantd4b65a6cce234b389226d043248370ec9052d4d230e9a7720e535f45a8cc9760

open Filter TopologicalSpace Topology

namespace DomMulAct

variable {M : Type*} [TopologicalSpace M]

/-- Put the same topological space structure on `Mᵈᵐᵃ` as on the original space. -/
@[to_additive "Put the same topological space structure on `Mᵈᵃᵃ` as on the original space."]
instance instTopologicalSpace : TopologicalSpace Mᵈᵐᵃ := .induced mk.symm  ‹_›

@[to_additive (attr := continuity, fun_prop)]
theorem continuous_mk : Continuous (@mk M) := continuous_induced_rng.2 continuous_id

@[to_additive (attr := continuity, fun_prop)]
theorem continuous_mk_symm : Continuous (@mk M).symm := continuous_induced_dom

/-- `DomMulAct.mk` as a homeomorphism. -/
@[to_additive (attr := simps toEquiv) "`DomAddAct.mk` as a homeomorphism."]
def mkHomeomorph : M ≃ₜ Mᵈᵐᵃ where
  toEquiv := mk

@[to_additive (attr := simp)] theorem coe_mkHomeomorph : ⇑(mkHomeomorph : M ≃ₜ Mᵈᵐᵃ) = mk := rfl

@[to_additive (attr := simp)]
theorem coe_mkHomeomorph_symm : ⇑(mkHomeomorph : M ≃ₜ Mᵈᵐᵃ).symm = mk.symm := rfl

@[to_additive] theorem isInducing_mk : IsInducing (@mk M) := mkHomeomorph.isInducing
@[to_additive] theorem isEmbedding_mk : IsEmbedding (@mk M) := mkHomeomorph.isEmbedding
@[to_additive] theorem isOpenEmbedding_mk : IsOpenEmbedding (@mk M) := mkHomeomorph.isOpenEmbedding
@[to_additive] theorem isClosedEmbedding_mk : IsClosedEmbedding (@mk M) :=
  mkHomeomorph.isClosedEmbedding
@[to_additive] theorem isQuotientMap_mk : IsQuotientMap (@mk M) := mkHomeomorph.isQuotientMap

@[deprecated (since := "2024-10-28")] alias inducing_mk := isInducing_mk

@[deprecated (since := "2024-10-26")]
alias embedding_mk := isEmbedding_mk

@[deprecated (since := "2024-10-22")]
alias quotientMap_mk := isQuotientMap_mk

@[to_additive] theorem isInducing_mk_symm : IsInducing (@mk M).symm := mkHomeomorph.symm.isInducing
@[to_additive] theorem isEmbedding_mk_symm : IsEmbedding (@mk M).symm :=
  mkHomeomorph.symm.isEmbedding

@[deprecated (since := "2024-10-28")] alias inducing_mk_symm := isInducing_mk_symm

@[deprecated (since := "2024-10-26")]
alias embedding_mk_symm := isEmbedding_mk_symm

@[to_additive]
theorem isOpenEmbedding_mk_symm : IsOpenEmbedding (@mk M).symm := mkHomeomorph.symm.isOpenEmbedding

@[to_additive]
theorem isClosedEmbedding_mk_symm : IsClosedEmbedding (@mk M).symm :=
  mkHomeomorph.symm.isClosedEmbedding

@[to_additive]
theorem isQuotientMap_mk_symm : IsQuotientMap (@mk M).symm := mkHomeomorph.symm.isQuotientMap

@[deprecated (since := "2024-10-22")]
alias quotientMap_mk_symm := isQuotientMap_mk_symm

@[to_additive] instance instT0Space [T0Space M] : T0Space Mᵈᵐᵃ := mkHomeomorph.t0Space
@[to_additive] instance instT1Space [T1Space M] : T1Space Mᵈᵐᵃ := mkHomeomorph.t1Space
@[to_additive] instance instT2Space [T2Space M] : T2Space Mᵈᵐᵃ := mkHomeomorph.t2Space
@[to_additive] instance instT25Space [T25Space M] : T25Space Mᵈᵐᵃ := mkHomeomorph.t25Space
@[to_additive] instance instT3Space [T3Space M] : T3Space Mᵈᵐᵃ := mkHomeomorph.t3Space
@[to_additive] instance instT4Space [T4Space M] : T4Space Mᵈᵐᵃ := mkHomeomorph.t4Space
@[to_additive] instance instT5Space [T5Space M] : T5Space Mᵈᵐᵃ := mkHomeomorph.t5Space

@[to_additive] instance instR0Space [R0Space M] : R0Space Mᵈᵐᵃ := isEmbedding_mk_symm.r0Space
@[to_additive] instance instR1Space [R1Space M] : R1Space Mᵈᵐᵃ := isEmbedding_mk_symm.r1Space

@[to_additive]
instance instRegularSpace [RegularSpace M] : RegularSpace Mᵈᵐᵃ := isEmbedding_mk_symm.regularSpace

@[to_additive]
instance instNormalSpace [NormalSpace M] : NormalSpace Mᵈᵐᵃ := mkHomeomorph.normalSpace

@[to_additive]
instance instCompletelyNormalSpace [CompletelyNormalSpace M] : CompletelyNormalSpace Mᵈᵐᵃ :=
  isEmbedding_mk_symm.completelyNormalSpace

@[to_additive]
instance instDiscreteTopology [DiscreteTopology M] : DiscreteTopology Mᵈᵐᵃ :=
  isEmbedding_mk_symm.discreteTopology

@[to_additive]
instance instSeparableSpace [SeparableSpace M] : SeparableSpace Mᵈᵐᵃ :=
  isQuotientMap_mk.separableSpace

@[to_additive]
instance instFirstCountableTopology [FirstCountableTopology M] : FirstCountableTopology Mᵈᵐᵃ :=
  isInducing_mk_symm.firstCountableTopology

@[to_additive]
instance instSecondCountableTopology [SecondCountableTopology M] : SecondCountableTopology Mᵈᵐᵃ :=
  isInducing_mk_symm.secondCountableTopology

@[to_additive]
instance instCompactSpace [CompactSpace M] : CompactSpace Mᵈᵐᵃ :=
  mkHomeomorph.compactSpace

@[to_additive]
instance instLocallyCompactSpace [LocallyCompactSpace M] : LocallyCompactSpace Mᵈᵐᵃ :=
  isOpenEmbedding_mk_symm.locallyCompactSpace

@[to_additive]
instance instWeaklyLocallyCompactSpace [WeaklyLocallyCompactSpace M] :
    WeaklyLocallyCompactSpace Mᵈᵐᵃ :=
  isClosedEmbedding_mk_symm.weaklyLocallyCompactSpace

@[to_additive (attr := simp)]
theorem map_mk_nhds (x : M) : map (mk : M → Mᵈᵐᵃ) (𝓝 x) = 𝓝 (mk x) :=
  mkHomeomorph.map_nhds_eq x

@[to_additive (attr := simp)]
theorem map_mk_symm_nhds (x : Mᵈᵐᵃ) : map (mk.symm : Mᵈᵐᵃ → M) (𝓝 x) = 𝓝 (mk.symm x) :=
  mkHomeomorph.symm.map_nhds_eq x

@[to_additive (attr := simp)]
theorem comap_mk_nhds (x : Mᵈᵐᵃ) : comap (mk : M → Mᵈᵐᵃ) (𝓝 x) = 𝓝 (mk.symm x) :=
  mkHomeomorph.comap_nhds_eq x

@[to_additive (attr := simp)]
theorem comap_mk.symm_nhds (x : M) : comap (mk.symm : Mᵈᵐᵃ → M) (𝓝 x) = 𝓝 (mk x) :=
  mkHomeomorph.symm.comap_nhds_eq x

end DomMulAct
```
