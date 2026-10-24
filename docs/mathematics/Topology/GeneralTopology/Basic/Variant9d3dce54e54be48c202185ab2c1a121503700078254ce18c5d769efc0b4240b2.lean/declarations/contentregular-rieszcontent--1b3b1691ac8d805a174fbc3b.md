# contentRegular_rieszContent

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "58f395a4c479e254b20ff7e3d40997094ea96bee",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 285,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/9d/9d3dce54e54be48c202185ab2c1a121503700078254ce18c5d769efc0b4240b2.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:9a62be8e-3a97-37d7-6456-8bdaee61bad2",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:158ecbab-515b-b1e5-b0e2-dd40a5ec6a64",
  "kind": "lemma",
  "lexical_name": "contentRegular_rieszContent",
  "mathematical_admission": "NOT_CLAIMED",
  "metrics": [
    {
      "coverage": "No exact-source compiler-observed verification dependency graph supplied.",
      "id": "spectral_log_volume",
      "profile": "docs/reference/ranking-profile.json",
      "profile_id": "spectral-volume-radius3-v1",
      "profile_sha256": "f8800b2ae8ab1d08df856bc79abc53dbafa1cbd922963b7247e927bf0ed9afd6",
      "radius": 3,
      "reason": "verification_dependency_graph_unavailable",
      "status": "UNAVAILABLE",
      "value": null
    }
  ],
  "schema": "grwtsk.source-declaration-article/1",
  "slug": "contentregular-rieszcontent--1b3b1691ac8d805a174fbc3b",
  "source": {
    "blob": "58f395a4c479e254b20ff7e3d40997094ea96bee",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 323,
    "line": 285,
    "path": "GRWTSK/Topology/GeneralTopology/Basic/Variant9d3dce54e54be48c202185ab2c1a121503700078254ce18c5d769efc0b4240b2.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:1b3b1691ac8d805a174fbc3bd935500acd76f0040acdc8ec25e99dd31d0e438b",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Basic/Variant9d3dce54e54be48c202185ab2c1a121503700078254ce18c5d769efc0b4240b2.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:158ecbab-515b-b1e5-b0e2-dd40a5ec6a64`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 285–323.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma contentRegular_rieszContent : (rieszContent Λ).ContentRegular := by
  intro K
  simp only [rieszContent, le_antisymm_iff, le_iInf_iff, ENNReal.coe_le_coe, Content.mk_apply]
  refine ⟨fun K' hK' ↦ rieszContentAux_mono Λ (hK'.trans interior_subset), ?_⟩
  rw [iInf_le_iff]
  intro b hb
  rw [rieszContentAux, ENNReal.le_coe_iff]
  have : b < ⊤ := by
    obtain ⟨F, hF⟩ := exists_compact_superset K.2
    exact (le_iInf_iff.mp (hb ⟨F, hF.1⟩) hF.2).trans_lt ENNReal.coe_lt_top
  refine ⟨b.toNNReal, (ENNReal.coe_toNNReal this.ne).symm, NNReal.coe_le_coe.mp ?_⟩
  apply le_iff_forall_pos_le_add.mpr
  intro ε hε
  lift ε to ℝ≥0 using hε.le
  obtain ⟨f, hfleoneonK, hfle⟩ := exists_lt_rieszContentAux_add_pos Λ K (Real.toNNReal_pos.mpr hε)
  rw [rieszContentAux, Real.toNNReal_of_nonneg hε.le, ← NNReal.coe_lt_coe] at hfle
  refine ((le_iff_forall_one_lt_le_mul₀ (zero_le (a := Λ f))).mpr fun α hα ↦ ?_).trans hfle.le
  rw [mul_comm, ← smul_eq_mul, ← map_smul]
  set K' := f ⁻¹' Ici α⁻¹
  have hKK' : ↑K ⊆ interior K' :=
    subset_interior_iff.2 ⟨f ⁻¹' Ioi α⁻¹, isOpen_Ioi.preimage f.1.2,
      fun x hx ↦ (inv_lt_one_of_one_lt₀ hα).trans_le (hfleoneonK x hx),
      preimage_mono Ioi_subset_Ici_self⟩
  have hK'cp : IsCompact K' := .of_isClosed_subset f.2 (isClosed_Ici.preimage f.1.2) fun x hx ↦
    subset_closure ((inv_pos_of_pos <| zero_lt_one.trans hα).trans_le hx).ne'
  set hb' := hb ⟨K', hK'cp⟩
  simp only [Compacts.coe_mk, le_iInf_iff] at hb'
  exact (ENNReal.toNNReal_mono (by simp) <| hb' hKK').trans <| csInf_le'
    ⟨α • f, fun x ↦ (inv_le_iff_one_le_mul₀' (zero_lt_one.trans hα)).mp, by simp⟩

end RieszContentRegular

namespace NNRealRMK

variable [T2Space X] [LocallyCompactSpace X] [MeasurableSpace X] [BorelSpace X]

/-- `rieszContent` gives a `Content` from `Λ : C_c(X, ℝ≥0) →ₗ[ℝ≥0] ℝ≥0`. Here `rieszContent Λ` is
promoted to a measure. It will be later shown that
`∫ (x : X), f x ∂(rieszMeasure Λ hΛ) = Λ f` for all `f : C_c(X, ℝ≥0)`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Basic/Variant9d3dce54e54be48c202185ab2c1a121503700078254ce18c5d769efc0b4240b2.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Basic/Variant9d3dce54e54be48c202185ab2c1a121503700078254ce18c5d769efc0b4240b2.lean#L285).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `58f395a4c479e254b20ff7e3d40997094ea96bee` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
