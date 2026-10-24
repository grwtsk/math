# prodMk

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "896e7fa8d0719152e950aef4bd6d21eba46451f7",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 143,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/06/06a6e154e75d033c663a99f735401b4af4650a4fce6b46abed03138c4d1f27e4.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:4e3a3a01-4daf-b431-0b88-6f2d82bf57cc",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:e73b8adb-5345-8af0-fab0-5f2a1d670a03",
  "kind": "lemma",
  "lexical_name": "prodMk",
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
  "slug": "prodmk--f4ee28b661ccba6d0a0f6983",
  "source": {
    "blob": "896e7fa8d0719152e950aef4bd6d21eba46451f7",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 163,
    "line": 143,
    "path": "GRWTSK/Analysis/MeasureTheory/Tight/Variant06a6e154e75d033c663a99f735401b4af4650a4fce6b46abed03138c4d1f27e4.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:f4ee28b661ccba6d0a0f69835ef6e39473181a1e2a6d8a45ffc64e87d9bd400d",
  "verification": {
    "reference": "docs/verification/Analysis/MeasureTheory/Tight/Variant06a6e154e75d033c663a99f735401b4af4650a4fce6b46abed03138c4d1f27e4.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:e73b8adb-5345-8af0-fab0-5f2a1d670a03`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 143–163.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma prodMk {m𝓨 : MeasurableSpace 𝓨} [TopologicalSpace 𝓨] {μ : Set (Measure (𝓧 × 𝓨))}
    (hμ₁ : IsTightMeasureSet (Measure.fst '' μ)) (hμ₂ : IsTightMeasureSet (Measure.snd '' μ)) :
    IsTightMeasureSet μ := by
  rw [isTightMeasureSet_iff_exists_isCompact_measure_compl_le] at hμ₁ hμ₂ ⊢
  intro ε hε
  obtain ⟨K₁, hK₁_compact, hK₁_le⟩ := hμ₁ (ε / 2) (by aesop)
  obtain ⟨K₂, hK₂_compact, hK₂_le⟩ := hμ₂ (ε / 2) (by aesop)
  refine ⟨K₁ ×ˢ K₂, hK₁_compact.prod hK₂_compact, fun κ hκ_mem ↦ ?_⟩
  grw [compl_prod_eq_union, measure_union_le, ← ENNReal.add_halves (a := ε)]
  apply add_le_add
  · specialize hK₁_le _ <| mem_image_of_mem _ hκ_mem
    grw [Measure.fst, ← Measure.le_map_apply (by fun_prop)] at hK₁_le
    simpa [prod_univ] using hK₁_le
  · specialize hK₂_le _ <| Set.mem_image_of_mem _ hκ_mem
    grw [Measure.snd, ← Measure.le_map_apply (by fun_prop)] at hK₂_le
    simpa [univ_prod] using hK₂_le

end IsTightMeasureSet
end Basic

end MeasureTheory
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/MeasureTheory/Tight/Variant06a6e154e75d033c663a99f735401b4af4650a4fce6b46abed03138c4d1f27e4.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/MeasureTheory/Tight/Variant06a6e154e75d033c663a99f735401b4af4650a4fce6b46abed03138c4d1f27e4.lean#L143).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `896e7fa8d0719152e950aef4bd6d21eba46451f7` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
