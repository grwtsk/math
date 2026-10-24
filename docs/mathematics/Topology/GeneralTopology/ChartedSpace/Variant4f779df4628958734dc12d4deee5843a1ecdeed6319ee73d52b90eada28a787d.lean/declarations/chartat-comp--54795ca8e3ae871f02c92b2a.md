# chartAt_comp

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "809ef539879eabdf0907b06ac7bee0b3a65d22ba",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 301,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/4f/4f779df4628958734dc12d4deee5843a1ecdeed6319ee73d52b90eada28a787d.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:b288bdec-29e7-7ec4-035a-a42e637bfb00",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:72c37c1b-a59c-9442-3236-87f86f376dc6",
  "kind": "theorem",
  "lexical_name": "chartAt_comp",
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
  "slug": "chartat-comp--54795ca8e3ae871f02c92b2a",
  "source": {
    "blob": "809ef539879eabdf0907b06ac7bee0b3a65d22ba",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 307,
    "line": 301,
    "path": "GRWTSK/Topology/GeneralTopology/ChartedSpace/Variant4f779df4628958734dc12d4deee5843a1ecdeed6319ee73d52b90eada28a787d.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:54795ca8e3ae871f02c92b2a7df3423f4faeddce4144627c7bb8817be3614acf",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/ChartedSpace/Variant4f779df4628958734dc12d4deee5843a1ecdeed6319ee73d52b90eada28a787d.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:72c37c1b-a59c-9442-3236-87f86f376dc6`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 301–307.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem chartAt_comp (H : Type*) [TopologicalSpace H] (H' : Type*) [TopologicalSpace H']
    {M : Type*} [TopologicalSpace M] [ChartedSpace H H'] [ChartedSpace H' M] (x : M) :
    (letI := ChartedSpace.comp H H' M; chartAt H x) = chartAt H' x ≫ₕ chartAt H (chartAt H' x x) :=
  rfl

/-- A charted space over a T1 space is T1. Note that this is *not* true for T2 (for instance for
the real line with a double origin). -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/ChartedSpace/Variant4f779df4628958734dc12d4deee5843a1ecdeed6319ee73d52b90eada28a787d.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/ChartedSpace/Variant4f779df4628958734dc12d4deee5843a1ecdeed6319ee73d52b90eada28a787d.lean#L301).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `809ef539879eabdf0907b06ac7bee0b3a65d22ba` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
