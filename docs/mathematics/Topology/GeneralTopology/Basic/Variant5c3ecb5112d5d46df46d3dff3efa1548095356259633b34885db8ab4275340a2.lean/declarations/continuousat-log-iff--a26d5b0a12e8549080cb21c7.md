# continuousAt_log_iff

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "0ed3c957d0d1f37094a8da10e42e6d2c2807e7be",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 383,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/5c/5c3ecb5112d5d46df46d3dff3efa1548095356259633b34885db8ab4275340a2.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:a80f187b-95b6-ce04-bcff-c6177f219ba7",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:9487d75c-d39d-d55c-9feb-37d69e6e00db",
  "kind": "theorem",
  "lexical_name": "continuousAt_log_iff",
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
  "slug": "continuousat-log-iff--a26d5b0a12e8549080cb21c7",
  "source": {
    "blob": "0ed3c957d0d1f37094a8da10e42e6d2c2807e7be",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 389,
    "line": 383,
    "path": "GRWTSK/Topology/GeneralTopology/Basic/Variant5c3ecb5112d5d46df46d3dff3efa1548095356259633b34885db8ab4275340a2.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:a26d5b0a12e8549080cb21c772d68712db337f5dc33d877fcef09c96660b1de0",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Basic/Variant5c3ecb5112d5d46df46d3dff3efa1548095356259633b34885db8ab4275340a2.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:9487d75c-d39d-d55c-9feb-37d69e6e00db`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 383–389.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem continuousAt_log_iff : ContinuousAt log x ↔ x ≠ 0 := by
  refine ⟨?_, continuousAt_log⟩
  rintro h rfl
  exact not_tendsto_nhds_of_tendsto_atBot tendsto_log_nhdsNE_zero _ <|
    h.tendsto.mono_left nhdsWithin_le_nhds

open List in
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Basic/Variant5c3ecb5112d5d46df46d3dff3efa1548095356259633b34885db8ab4275340a2.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Basic/Variant5c3ecb5112d5d46df46d3dff3efa1548095356259633b34885db8ab4275340a2.lean#L383).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `0ed3c957d0d1f37094a8da10e42e6d2c2807e7be` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
