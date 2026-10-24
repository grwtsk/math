# contentRegular_rieszContent

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:6dc22014-4594-11ac-9b2b-523ca92c76fc",
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
  "slug": "contentregular-rieszcontent--454a481a8405ce56661bae06",
  "source": {
    "blob": "c815a40e88877056dcb31ecbe757ca3bb9b3702f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 331,
    "line": 293,
    "path": "GRWTSK/Topology/GeneralTopology/Basic/Variantfb2a35e61ab3eca2051b14870a5cc9cb7c9a00209017f41e7e48e57abbf6545a.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:454a481a8405ce56661bae06abefd35eef1c5a828c7147c14d1efac904d02281",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Basic/Variantfb2a35e61ab3eca2051b14870a5cc9cb7c9a00209017f41e7e48e57abbf6545a.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:6dc22014-4594-11ac-9b2b-523ca92c76fc`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 293–331.

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

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Basic/Variantfb2a35e61ab3eca2051b14870a5cc9cb7c9a00209017f41e7e48e57abbf6545a.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Basic/Variantfb2a35e61ab3eca2051b14870a5cc9cb7c9a00209017f41e7e48e57abbf6545a.lean#L293).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c815a40e88877056dcb31ecbe757ca3bb9b3702f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
