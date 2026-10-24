# borel_eq_generateFrom_Iio

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "373362a90f7b59d21ae884ceadb84fc51fcae514",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 56,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/cf/cff664bc50930c81700403e99cbd298c1014a61f0f44100b1e0f57af6431b15a.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:8cb84291-37bc-3e10-6aa4-aee5a2fba45c",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:dce401e4-f50f-c34c-3f66-bdc3465e5d98",
  "kind": "theorem",
  "lexical_name": "borel_eq_generateFrom_Iio",
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
  "slug": "borel-eq-generatefrom-iio--b29a7f02412db2d83f353b07",
  "source": {
    "blob": "373362a90f7b59d21ae884ceadb84fc51fcae514",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 77,
    "line": 56,
    "path": "GRWTSK/Analysis/MeasureTheory/Order/Variantcff664bc50930c81700403e99cbd298c1014a61f0f44100b1e0f57af6431b15a.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:b29a7f02412db2d83f353b07cb55a882e6bc27e2ddc5f128f083451bd4307b89",
  "verification": {
    "reference": "docs/verification/Analysis/MeasureTheory/Order/Variantcff664bc50930c81700403e99cbd298c1014a61f0f44100b1e0f57af6431b15a.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:dce401e4-f50f-c34c-3f66-bdc3465e5d98`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 56–77.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem borel_eq_generateFrom_Iio : borel α = .generateFrom (range Iio) := by
  refine le_antisymm ?_ (generateFrom_le ?_)
  · rw [borel_eq_generateFrom_of_subbasis (@OrderTopology.topology_eq_generate_intervals α _ _ _)]
    let : MeasurableSpace α := MeasurableSpace.generateFrom (range Iio)
    have H : ∀ a : α, MeasurableSet (Iio a) := fun a => GenerateMeasurable.basic _ ⟨_, rfl⟩
    refine generateFrom_le ?_
    rintro _ ⟨a, rfl | rfl⟩
    · rcases em (∃ b, a ⋖ b) with ⟨b, hb⟩ | hcovBy
      · rw [hb.Ioi_eq, ← compl_Iio]
        exact (H _).compl
      · rcases isOpen_biUnion_countable (Ioi a) Ioi fun _ _ ↦ isOpen_Ioi with ⟨t, hat, htc, htU⟩
        have : Ioi a = ⋃ b ∈ t, Ici b := by
          refine Subset.antisymm ?_ <| iUnion₂_subset fun b hb ↦ Ici_subset_Ioi.2 (hat hb)
          refine Subset.trans ?_ <| iUnion₂_mono fun _ _ ↦ Ioi_subset_Ici_self
          simpa [CovBy, htU, subset_def] using hcovBy
        simp only [this, ← compl_Iio]
        exact .biUnion htc <| fun _ _ ↦ (H _).compl
    · apply H
  · rw [forall_mem_range]
    intro a
    exact GenerateMeasurable.basic _ isOpen_Iio

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/MeasureTheory/Order/Variantcff664bc50930c81700403e99cbd298c1014a61f0f44100b1e0f57af6431b15a.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/MeasureTheory/Order/Variantcff664bc50930c81700403e99cbd298c1014a61f0f44100b1e0f57af6431b15a.lean#L56).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `373362a90f7b59d21ae884ceadb84fc51fcae514` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
