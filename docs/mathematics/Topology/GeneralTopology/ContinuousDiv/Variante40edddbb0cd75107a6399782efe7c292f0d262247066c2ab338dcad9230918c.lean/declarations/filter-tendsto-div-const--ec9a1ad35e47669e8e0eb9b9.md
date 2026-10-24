# Filter.Tendsto.div_const'

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "f95b89ff2c230a6b37f433282994e2694ea132ab",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 27,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/e4/e40edddbb0cd75107a6399782efe7c292f0d262247066c2ab338dcad9230918c.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:7e109f0c-4e74-5c09-0881-e915fd975a24",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:dbff5994-3bf7-e8d0-ada3-0db2d05f9632",
  "kind": "theorem",
  "lexical_name": "Filter.Tendsto.div_const'",
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
  "slug": "filter-tendsto-div-const--ec9a1ad35e47669e8e0eb9b9",
  "source": {
    "blob": "f95b89ff2c230a6b37f433282994e2694ea132ab",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 30,
    "line": 27,
    "path": "GRWTSK/Topology/GeneralTopology/ContinuousDiv/Variante40edddbb0cd75107a6399782efe7c292f0d262247066c2ab338dcad9230918c.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:ec9a1ad35e47669e8e0eb9b96f0e384aafae795caaac2ad5e21cdc6a64c6c759",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/ContinuousDiv/Variante40edddbb0cd75107a6399782efe7c292f0d262247066c2ab338dcad9230918c.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:dbff5994-3bf7-e8d0-ada3-0db2d05f9632`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 27–30.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem Filter.Tendsto.div_const' {c : G} {f : α → G} {l : Filter α} (h : Tendsto f l (𝓝 c))
    (b : G) : Tendsto (f · / b) l (𝓝 (c / b)) :=
  h.div' tendsto_const_nhds

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/ContinuousDiv/Variante40edddbb0cd75107a6399782efe7c292f0d262247066c2ab338dcad9230918c.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/ContinuousDiv/Variante40edddbb0cd75107a6399782efe7c292f0d262247066c2ab338dcad9230918c.lean#L27).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f95b89ff2c230a6b37f433282994e2694ea132ab` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
