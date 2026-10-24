# ContinuousAt.stronglyMeasurableAtFilter

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "62fd395cdd29539d7e4f65d0fc48cf06416fcf5c",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 605,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/e0/e0ae0162600dee00a1aa32213707d0fc2617225349367178f64dbffc6a3e91b5.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:fc0dbf04-c722-13d8-a72a-d25076f373a5",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:8157fff6-b9f6-9205-15b9-4fdd4eca0241",
  "kind": "theorem",
  "lexical_name": "ContinuousAt.stronglyMeasurableAtFilter",
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
  "slug": "continuousat-stronglymeasurableatfilter--0159b95bc275d2891b79aa21",
  "source": {
    "blob": "62fd395cdd29539d7e4f65d0fc48cf06416fcf5c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 610,
    "line": 605,
    "path": "GRWTSK/Analysis/MeasureTheory/IntegrableOn/Variante0ae0162600dee00a1aa32213707d0fc2617225349367178f64dbffc6a3e91b5.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:0159b95bc275d2891b79aa219b99f81ea35160c273151d1054cd6030823a7456",
  "verification": {
    "reference": "docs/verification/Analysis/MeasureTheory/IntegrableOn/Variante0ae0162600dee00a1aa32213707d0fc2617225349367178f64dbffc6a3e91b5.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:8157fff6-b9f6-9205-15b9-4fdd4eca0241`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 605–610.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem ContinuousAt.stronglyMeasurableAtFilter [TopologicalSpace α] [OpensMeasurableSpace α]
    [SecondCountableTopologyEither α E] {f : α → E} {s : Set α} {μ : Measure α} (hs : IsOpen s)
    (hf : ∀ x ∈ s, ContinuousAt f x) : ∀ x ∈ s, StronglyMeasurableAtFilter f (𝓝 x) μ :=
  ContinuousOn.stronglyMeasurableAtFilter hs <| ContinuousAt.continuousOn hf
#align continuous_at.strongly_measurable_at_filter ContinuousAt.stronglyMeasurableAtFilter

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/MeasureTheory/IntegrableOn/Variante0ae0162600dee00a1aa32213707d0fc2617225349367178f64dbffc6a3e91b5.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/MeasureTheory/IntegrableOn/Variante0ae0162600dee00a1aa32213707d0fc2617225349367178f64dbffc6a3e91b5.lean#L605).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `62fd395cdd29539d7e4f65d0fc48cf06416fcf5c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
