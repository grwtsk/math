# measurable_inclusion_predictable

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "256cb3bff218421de976104a3231aacad07c5b6e",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 138,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/c6/c630b30043afead15bd717dcdfaaec9ffb5ff17a1228542e40694b67cf61bc0a.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:53dc9a6d-7b3d-55ee-7a23-290302a0b26b",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:f9b55a86-7b50-0096-8177-68b9c2b6171b",
  "kind": "lemma",
  "lexical_name": "measurable_inclusion_predictable",
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
  "slug": "measurable-inclusion-predictable--a32c397f1f2ecc943f8180c3",
  "source": {
    "blob": "256cb3bff218421de976104a3231aacad07c5b6e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 162,
    "line": 138,
    "path": "GRWTSK/Analysis/MeasureTheory/Predictable/Variantc630b30043afead15bd717dcdfaaec9ffb5ff17a1228542e40694b67cf61bc0a.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:a32c397f1f2ecc943f8180c3409667b57ad4ffa3f6a976a114c44986b626121c",
  "verification": {
    "reference": "docs/verification/Analysis/MeasureTheory/Predictable/Variantc630b30043afead15bd717dcdfaaec9ffb5ff17a1228542e40694b67cf61bc0a.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:f9b55a86-7b50-0096-8177-68b9c2b6171b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 138–162.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma measurable_inclusion_predictable [LinearOrder ι] [OrderBot ι] [MeasurableSpace ι]
    [TopologicalSpace ι] [OpensMeasurableSpace ι] [OrderClosedTopology ι] {𝓕 : Filtration ι m} {i} :
    @Measurable (Set.Iic i × Ω) (ι × Ω) (Subtype.instMeasurableSpace.prod (𝓕 i)) 𝓕.predictable
    fun x ↦ ⟨x.1.val, x.2⟩ := by
  rw [measurable_iff_comap_le]
  refine MeasurableSpace.comap_le_iff_le_map.2 <|
    measurableSpace_le_predictable_of_measurableSet ?_ ?_
  · intros A hA
    simp only [MeasurableSpace.map_def,
      (by aesop : (fun (p : Set.Iic i × Ω) ↦ ((p.1 : ι), p.2)) ⁻¹' ({⊥} ×ˢ A) = {⊥} ×ˢ A)]
    exact (measurableSet_singleton _).prod <| 𝓕.mono bot_le _ hA
  · intros j A hA
    simp only [MeasurableSpace.map_def]
    obtain hji | hij := le_total j i
    · rw [(by grind : (fun (p : Set.Iic i × Ω) ↦ ((p.1 : ι), p.2)) ⁻¹' Set.Ioi j ×ˢ A
        = (Subtype.val ⁻¹' (Set.Ioc j i)) ×ˢ A)]
      exact (measurable_subtype_coe measurableSet_Ioc).prod (𝓕.mono hji _ hA)
    · simp [(by grind : (fun (p : Set.Iic i × Ω) ↦ ((p.1 : ι), p.2)) ⁻¹' Set.Ioi j ×ˢ A = ∅)]

end

variable [TopologicalSpace E]

/-- A process is said to be predictable if it is measurable with respect to the predictable
σ-algebra. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/MeasureTheory/Predictable/Variantc630b30043afead15bd717dcdfaaec9ffb5ff17a1228542e40694b67cf61bc0a.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/MeasureTheory/Predictable/Variantc630b30043afead15bd717dcdfaaec9ffb5ff17a1228542e40694b67cf61bc0a.lean#L138).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `256cb3bff218421de976104a3231aacad07c5b6e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
