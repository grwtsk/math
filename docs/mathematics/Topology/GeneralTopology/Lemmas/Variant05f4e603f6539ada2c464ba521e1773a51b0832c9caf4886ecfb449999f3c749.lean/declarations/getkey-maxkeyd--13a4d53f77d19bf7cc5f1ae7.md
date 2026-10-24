# getKey?_maxKeyD

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:bc0d2c2d-00c4-8a9b-28bd-45d13969ef60",
  "kind": "theorem",
  "lexical_name": "getKey?_maxKeyD",
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
  "slug": "getkey-maxkeyd--13a4d53f77d19bf7cc5f1ae7",
  "source": {
    "blob": "386b17bd8e4dea5253f1a7d5b0a83eca130926a0",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 3761,
    "line": 3758,
    "path": "GRWTSK/Topology/GeneralTopology/Lemmas/Variant05f4e603f6539ada2c464ba521e1773a51b0832c9caf4886ecfb449999f3c749.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:13a4d53f77d19bf7cc5f1ae713a5e88caa69e2b3ba698212b506b9bef574a8aa",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Lemmas/Variant05f4e603f6539ada2c464ba521e1773a51b0832c9caf4886ecfb449999f3c749.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:bc0d2c2d-00c4-8a9b-28bd-45d13969ef60`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 3758–3761.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem getKey?_maxKeyD [TransCmp cmp] (he : t ≠ ∅) {fallback} :
    t.getKey? (t.maxKeyD fallback) = some (t.maxKeyD fallback) :=
  ExtDTreeMap.getKey?_maxKeyD (mt ext he)

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Lemmas/Variant05f4e603f6539ada2c464ba521e1773a51b0832c9caf4886ecfb449999f3c749.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Lemmas/Variant05f4e603f6539ada2c464ba521e1773a51b0832c9caf4886ecfb449999f3c749.lean#L3758).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `386b17bd8e4dea5253f1a7d5b0a83eca130926a0` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
