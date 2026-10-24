# measurableSet_exists_tendsto

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "87224af46c33d836381f41b591bc52762e26c008",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 31,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/28/28816fa784d95ea0534621b73926020bbc6b3740e47b9b13ef79176aaa17a95a.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:bc0f7c8f-df4d-ed1d-394a-8b04b69e4bb0",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:0b7833bb-7ee6-c845-cf28-20b15785a209",
  "kind": "theorem",
  "lexical_name": "measurableSet_exists_tendsto",
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
  "slug": "measurableset-exists-tendsto--f1975f12f6234ba06d4e5f03",
  "source": {
    "blob": "87224af46c33d836381f41b591bc52762e26c008",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 48,
    "line": 31,
    "path": "GRWTSK/Analysis/MeasureTheory/StronglyMeasurable/Variant28816fa784d95ea0534621b73926020bbc6b3740e47b9b13ef79176aaa17a95a.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:f1975f12f6234ba06d4e5f039d43187b7c7090e738ac47c7e519aa833172a446",
  "verification": {
    "reference": "docs/verification/Analysis/MeasureTheory/StronglyMeasurable/Variant28816fa784d95ea0534621b73926020bbc6b3740e47b9b13ef79176aaa17a95a.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:0b7833bb-7ee6-c845-cf28-20b15785a209`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 31–48.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem measurableSet_exists_tendsto (hf : ∀ i, StronglyMeasurable (f i)) :
    MeasurableSet {x | ∃ c, Tendsto (f · x) l (𝓝 c)} := by
  obtain rfl | hl := eq_or_neBot l
  · simp_all
  borelize E
  letI := upgradeIsCompletelyMetrizable E
  let s := closure (⋃ i, range (f i))
  have : PolishSpace s :=
    { toSecondCountableTopology := @UniformSpace.secondCountable_of_separable s _ _
        (IsSeparable.iUnion (fun i ↦ (hf i).isSeparable_range)).closure.separableSpace
      toIsCompletelyMetrizableSpace := isClosed_closure.isCompletelyMetrizableSpace }
  let g i x : s := ⟨f i x, subset_closure <| mem_iUnion.2 ⟨i, ⟨x, rfl⟩⟩⟩
  have mg i : Measurable (g i) := (hf i).measurable.subtype_mk
  convert MeasureTheory.measurableSet_exists_tendsto (l := l) mg with x
  refine ⟨fun ⟨c, hc⟩ ↦ ⟨⟨c, ?_⟩, tendsto_subtype_rng.2 hc⟩,
    fun ⟨c, hc⟩ ↦ ⟨c, tendsto_subtype_rng.1 hc⟩⟩
  exact mem_closure_of_tendsto hc (Eventually.of_forall fun i ↦ mem_iUnion.2 ⟨i, ⟨x, rfl⟩⟩)

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/MeasureTheory/StronglyMeasurable/Variant28816fa784d95ea0534621b73926020bbc6b3740e47b9b13ef79176aaa17a95a.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/MeasureTheory/StronglyMeasurable/Variant28816fa784d95ea0534621b73926020bbc6b3740e47b9b13ef79176aaa17a95a.lean#L31).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `87224af46c33d836381f41b591bc52762e26c008` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
