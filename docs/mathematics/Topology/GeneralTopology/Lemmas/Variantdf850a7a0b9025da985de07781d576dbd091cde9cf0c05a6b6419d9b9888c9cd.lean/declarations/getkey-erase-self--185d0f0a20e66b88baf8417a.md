# getKey!_erase_self

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:fb1de0ca-8108-dcde-4b94-593e371ad1cb",
  "kind": "theorem",
  "lexical_name": "getKey!_erase_self",
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
  "slug": "getkey-erase-self--185d0f0a20e66b88baf8417a",
  "source": {
    "blob": "1dcdcd09016e074ec7abcabb25fac49b93348b85",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 742,
    "line": 739,
    "path": "GRWTSK/Topology/GeneralTopology/Lemmas/Variantdf850a7a0b9025da985de07781d576dbd091cde9cf0c05a6b6419d9b9888c9cd.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:185d0f0a20e66b88baf8417ade1b9d775af609b266e91ee16f948c494c5ddf0d",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Lemmas/Variantdf850a7a0b9025da985de07781d576dbd091cde9cf0c05a6b6419d9b9888c9cd.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:fb1de0ca-8108-dcde-4b94-593e371ad1cb`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 739–742.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem getKey!_erase_self [EquivBEq α] [LawfulHashable α] [Inhabited α] {k : α} :
    (m.erase k).getKey! k = default :=
  m.inductionOn fun _ => DHashMap.getKey!_erase_self

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Lemmas/Variantdf850a7a0b9025da985de07781d576dbd091cde9cf0c05a6b6419d9b9888c9cd.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Lemmas/Variantdf850a7a0b9025da985de07781d576dbd091cde9cf0c05a6b6419d9b9888c9cd.lean#L739).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `1dcdcd09016e074ec7abcabb25fac49b93348b85` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
