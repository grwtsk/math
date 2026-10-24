# le_linearGrowthSup_add

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:60019d6b-c070-6f96-5c2f-f8330d361f27",
  "kind": "lemma",
  "lexical_name": "le_linearGrowthSup_add",
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
  "slug": "le-lineargrowthsup-add--26b373686cfeb37f3351f1e2",
  "source": {
    "blob": "b774387bd86b480da7def0ce1e8f3857fbbdf837",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 245,
    "line": 241,
    "path": "GRWTSK/Topology/GeneralTopology/LinearGrowth/Variantbb6eb43dc56feb32dce1a0c6ea56bb18cec8c6ec4d3d2a123fdb0210d1925a67.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:26b373686cfeb37f3351f1e2a8ca34ae0edcc86a44f10b3f691f5ab37437600f",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/LinearGrowth/Variantbb6eb43dc56feb32dce1a0c6ea56bb18cec8c6ec4d3d2a123fdb0210d1925a67.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:60019d6b-c070-6f96-5c2f-f8330d361f27`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 241–245.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma le_linearGrowthSup_add : linearGrowthSup u + linearGrowthInf v ≤ linearGrowthSup (u + v) := by
  refine le_limsup_add.trans_eq (limsup_congr (Eventually.of_forall fun n ↦ ?_))
  rw [Pi.add_apply, Pi.add_apply, add_div_of_nonneg_right n.cast_nonneg']

/-- See `le_linearGrowthSup_add` for a version with swapped argument `u` and `v`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/LinearGrowth/Variantbb6eb43dc56feb32dce1a0c6ea56bb18cec8c6ec4d3d2a123fdb0210d1925a67.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/LinearGrowth/Variantbb6eb43dc56feb32dce1a0c6ea56bb18cec8c6ec4d3d2a123fdb0210d1925a67.lean#L241).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b774387bd86b480da7def0ce1e8f3857fbbdf837` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
