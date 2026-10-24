# MeasureTheory.isClopenable_iff_measurableSet

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "ba288244a053d74d4bb04222b13b3317001393f9",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 904,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/f0/f064495bd1ffd52cf4866379acb6730f9bf07ebe3797edac8adcf00df93099b6.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:b2ca6a7e-5492-f950-ed85-cf22d1b25c73",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:81861d94-2eae-e6a3-ae5b-6680f11fca97",
  "kind": "theorem",
  "lexical_name": "MeasureTheory.isClopenable_iff_measurableSet",
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
  "slug": "measuretheory-isclopenable-iff-measurableset--cbd5fff93c86d8e5e55d4031",
  "source": {
    "blob": "ba288244a053d74d4bb04222b13b3317001393f9",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 925,
    "line": 904,
    "path": "GRWTSK/Analysis/MeasureTheory/Basic/Variantf064495bd1ffd52cf4866379acb6730f9bf07ebe3797edac8adcf00df93099b6.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:cbd5fff93c86d8e5e55d4031f4856c9735dfdeaad247a61bea108738e92e39ca",
  "verification": {
    "reference": "docs/verification/Analysis/MeasureTheory/Basic/Variantf064495bd1ffd52cf4866379acb6730f9bf07ebe3797edac8adcf00df93099b6.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:81861d94-2eae-e6a3-ae5b-6680f11fca97`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 904–925.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem MeasureTheory.isClopenable_iff_measurableSet
    [tγ : TopologicalSpace γ] [PolishSpace γ] [MeasurableSpace γ] [BorelSpace γ] :
    IsClopenable s ↔ MeasurableSet s := by
  -- we already know that a measurable set is clopenable. Conversely, assume that `s` is clopenable.
  refine ⟨fun hs => ?_, fun hs => hs.isClopenable⟩
  borelize γ
  -- consider a finer topology `t'` in which `s` is open and closed.
  obtain ⟨t', t't, t'_polish, _, s_open⟩ :
    ∃ t' : TopologicalSpace γ, t' ≤ tγ ∧ @PolishSpace γ t' ∧ IsClosed[t'] s ∧ IsOpen[t'] s := hs
  rw [← borel_eq_borel_of_le t'_polish _ t't]
  · exact MeasurableSpace.measurableSet_generateFrom s_open
  infer_instance

end

section LinearOrder

variable {α β : Type*} {t : Set α} {g : α → β}
  [TopologicalSpace α] [MeasurableSpace α] [BorelSpace α] [LinearOrder α] [OrderTopology α]
  [PolishSpace α]
  [TopologicalSpace β] [MeasurableSpace β] [BorelSpace β] [LinearOrder β] [OrderTopology β]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/MeasureTheory/Basic/Variantf064495bd1ffd52cf4866379acb6730f9bf07ebe3797edac8adcf00df93099b6.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/MeasureTheory/Basic/Variantf064495bd1ffd52cf4866379acb6730f9bf07ebe3797edac8adcf00df93099b6.lean#L904).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ba288244a053d74d4bb04222b13b3317001393f9` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
