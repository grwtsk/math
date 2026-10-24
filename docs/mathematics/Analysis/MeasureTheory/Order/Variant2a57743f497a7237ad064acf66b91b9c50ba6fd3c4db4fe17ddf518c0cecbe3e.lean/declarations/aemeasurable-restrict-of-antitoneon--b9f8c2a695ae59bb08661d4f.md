# aemeasurable_restrict_of_antitoneOn

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "517ca3c5463c6e3afa0b7d466bac6b87752cac37",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 643,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/2a/2a57743f497a7237ad064acf66b91b9c50ba6fd3c4db4fe17ddf518c0cecbe3e.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:04ad82b4-a788-ae1c-da29-fac6b11fd063",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:b1386b21-46f8-73a7-b503-5ffd60645ace",
  "kind": "theorem",
  "lexical_name": "aemeasurable_restrict_of_antitoneOn",
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
  "slug": "aemeasurable-restrict-of-antitoneon--b9f8c2a695ae59bb08661d4f",
  "source": {
    "blob": "517ca3c5463c6e3afa0b7d466bac6b87752cac37",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 647,
    "line": 643,
    "path": "GRWTSK/Analysis/MeasureTheory/Order/Variant2a57743f497a7237ad064acf66b91b9c50ba6fd3c4db4fe17ddf518c0cecbe3e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:b9f8c2a695ae59bb08661d4fe60dc41c4de3bd4915b8a4ba937cb06959037f51",
  "verification": {
    "reference": "docs/verification/Analysis/MeasureTheory/Order/Variant2a57743f497a7237ad064acf66b91b9c50ba6fd3c4db4fe17ddf518c0cecbe3e.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:b1386b21-46f8-73a7-b503-5ffd60645ace`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 643–647.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem aemeasurable_restrict_of_antitoneOn [LinearOrder β] [OrderClosedTopology β] {μ : Measure β}
    {s : Set β} (hs : MeasurableSet s) {f : β → α} (hf : AntitoneOn f s) :
    AEMeasurable f (μ.restrict s) :=
  @aemeasurable_restrict_of_monotoneOn αᵒᵈ β _ _ ‹_› _ _ _ _ _ ‹_› _ _ _ _ hs _ hf

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/MeasureTheory/Order/Variant2a57743f497a7237ad064acf66b91b9c50ba6fd3c4db4fe17ddf518c0cecbe3e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/MeasureTheory/Order/Variant2a57743f497a7237ad064acf66b91b9c50ba6fd3c4db4fe17ddf518c0cecbe3e.lean#L643).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `517ca3c5463c6e3afa0b7d466bac6b87752cac37` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
