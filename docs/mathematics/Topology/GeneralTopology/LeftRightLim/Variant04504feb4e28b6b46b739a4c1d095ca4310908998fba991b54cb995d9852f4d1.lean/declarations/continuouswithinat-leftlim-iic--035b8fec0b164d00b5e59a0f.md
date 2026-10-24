# continuousWithinAt_leftLim_Iic

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:5d9f067a-aab8-5e92-8927-e49853d33215",
  "kind": "theorem",
  "lexical_name": "continuousWithinAt_leftLim_Iic",
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
  "slug": "continuouswithinat-leftlim-iic--035b8fec0b164d00b5e59a0f",
  "source": {
    "blob": "a138060bebf654b31e51e47f85e50a17e2bb74ee",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 184,
    "line": 161,
    "path": "GRWTSK/Topology/GeneralTopology/LeftRightLim/Variant04504feb4e28b6b46b739a4c1d095ca4310908998fba991b54cb995d9852f4d1.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:035b8fec0b164d00b5e59a0f2e5e6dc6afb3f5e569bfe3970684a6384604d1ee",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/LeftRightLim/Variant04504feb4e28b6b46b739a4c1d095ca4310908998fba991b54cb995d9852f4d1.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:5d9f067a-aab8-5e92-8927-e49853d33215`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 161–184.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem continuousWithinAt_leftLim_Iic [TopologicalSpace α] [OrderTopology α] [T3Space β]
    {f : α → β} {a : α} (h : Tendsto f (𝓝[<] a) (𝓝 (f.leftLim a))) :
    ContinuousWithinAt f.leftLim (Iic a) a := by
  have : 𝓝[≤] a = 𝓝[<] a ⊔ pure a := by
    rw [← Iio_union_Icc_eq_Iic le_rfl, nhdsWithin_union]
    simp
  rw [ContinuousWithinAt, this, tendsto_sup]
  simp only [tendsto_pure_nhds, and_true]
  apply (closed_nhds_basis (f.leftLim a)).tendsto_right_iff.2
  rintro s ⟨s_mem, s_closed⟩
  rcases eq_or_neBot (𝓝[<] a) with h' | h'
  · simp [h']
  obtain ⟨b, hb⟩ : (Iio a).Nonempty := Filter.nonempty_of_mem (self_mem_nhdsWithin (a := a))
  obtain ⟨u, au, hu⟩ : ∃ u, u < a ∧ Ioo u a ⊆ {x | f x ∈ s} := by
    have := (closed_nhds_basis (f.leftLim a)).tendsto_right_iff.1 h s ⟨s_mem, s_closed⟩
    simpa using (mem_nhdsLT_iff_exists_Ioo_subset' hb).1 this
  filter_upwards [Ioo_mem_nhdsLT au] with c hc
  rcases eq_or_neBot (𝓝[<] c) with h'c | h'c
  · simpa [h'c, leftLim_eq_of_eq_bot] using hu hc
  by_cases! h''c : ¬ ∃ y, Tendsto f (𝓝[<] c) (𝓝 y)
  · simpa [leftLim_eq_of_not_tendsto _ h''c] using hu hc
  apply s_closed.mem_of_tendsto (tendsto_leftLim_of_tendsto h''c)
  filter_upwards [Ioo_mem_nhdsLT_of_mem ⟨hc.1, hc.2.le⟩] with d hd using hu hd

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/LeftRightLim/Variant04504feb4e28b6b46b739a4c1d095ca4310908998fba991b54cb995d9852f4d1.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/LeftRightLim/Variant04504feb4e28b6b46b739a4c1d095ca4310908998fba991b54cb995d9852f4d1.lean#L161).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a138060bebf654b31e51e47f85e50a17e2bb74ee` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
