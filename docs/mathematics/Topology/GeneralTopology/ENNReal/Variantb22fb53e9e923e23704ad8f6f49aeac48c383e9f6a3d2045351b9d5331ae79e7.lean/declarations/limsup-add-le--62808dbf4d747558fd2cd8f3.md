# limsup_add_le

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:d7ac7144-40ce-edc3-adf8-84a5317f37f1",
  "kind": "theorem",
  "lexical_name": "limsup_add_le",
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
  "slug": "limsup-add-le--62808dbf4d747558fd2cd8f3",
  "source": {
    "blob": "070e1fd7e0c7026414aae3dcf182d9517ca6e6b5",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 93,
    "line": 88,
    "path": "GRWTSK/Topology/GeneralTopology/ENNReal/Variantb22fb53e9e923e23704ad8f6f49aeac48c383e9f6a3d2045351b9d5331ae79e7.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:62808dbf4d747558fd2cd8f3eda2defdcc29e9d5b043a771bb0dda458de0a934",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/ENNReal/Variantb22fb53e9e923e23704ad8f6f49aeac48c383e9f6a3d2045351b9d5331ae79e7.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:d7ac7144-40ce-edc3-adf8-84a5317f37f1`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 88–93.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem limsup_add_le [CountableInterFilter f] (u v : α → ℝ≥0∞) :
    f.limsup (u + v) ≤ f.limsup u + f.limsup v :=
  sInf_le ((eventually_le_limsup u).mp
    ((eventually_le_limsup v).mono fun _ hxg hxf => add_le_add hxf hxg))
#align ennreal.limsup_add_le ENNReal.limsup_add_le

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/ENNReal/Variantb22fb53e9e923e23704ad8f6f49aeac48c383e9f6a3d2045351b9d5331ae79e7.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/ENNReal/Variantb22fb53e9e923e23704ad8f6f49aeac48c383e9f6a3d2045351b9d5331ae79e7.lean#L88).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `070e1fd7e0c7026414aae3dcf182d9517ca6e6b5` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
