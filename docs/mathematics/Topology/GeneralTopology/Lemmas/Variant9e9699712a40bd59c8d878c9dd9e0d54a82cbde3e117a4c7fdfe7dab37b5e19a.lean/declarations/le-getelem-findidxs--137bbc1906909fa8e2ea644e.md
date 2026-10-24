# le_getElem_findIdxs

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:e8e9cf1d-e86f-1654-14f0-e662e9443e57",
  "kind": "theorem",
  "lexical_name": "le_getElem_findIdxs",
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
  "slug": "le-getelem-findidxs--137bbc1906909fa8e2ea644e",
  "source": {
    "blob": "6e76f03e72fb833bd030093498832393e7816fed",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 580,
    "line": 575,
    "path": "GRWTSK/Topology/GeneralTopology/Lemmas/Variant9e9699712a40bd59c8d878c9dd9e0d54a82cbde3e117a4c7fdfe7dab37b5e19a.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:137bbc1906909fa8e2ea644ec56c635a1027351b121d375f3d4032bf0760947e",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Lemmas/Variant9e9699712a40bd59c8d878c9dd9e0d54a82cbde3e117a4c7fdfe7dab37b5e19a.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:e8e9cf1d-e86f-1654-14f0-e662e9443e57`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 575–580.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem le_getElem_findIdxs (h : i < ((xs : List α).findIdxs p s).length) :
    s ≤ (xs.findIdxs p s)[i] := by grind [getElem_mem]

grind_pattern le_getElem_findIdxs => (xs.findIdxs p s)[i]

@[simp]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Lemmas/Variant9e9699712a40bd59c8d878c9dd9e0d54a82cbde3e117a4c7fdfe7dab37b5e19a.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Lemmas/Variant9e9699712a40bd59c8d878c9dd9e0d54a82cbde3e117a4c7fdfe7dab37b5e19a.lean#L575).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `6e76f03e72fb833bd030093498832393e7816fed` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
