# forall_isBounded_image_eval_iff

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:32b07457-3682-11dd-1a11-2ffafee210b9",
  "kind": "theorem",
  "lexical_name": "forall_isBounded_image_eval_iff",
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
  "slug": "forall-isbounded-image-eval-iff--bc5d16b8d94e54c9aa70735b",
  "source": {
    "blob": "511d70771daa548556498727add4093b3a53af0f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 106,
    "line": 103,
    "path": "GRWTSK/Topology/GeneralTopology/Constructions/Variantbd1d438738ca217ba18cb9c4b9000544aaa85f05abd577a3f7a2d42de536f74e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:bc5d16b8d94e54c9aa70735bcb43a746600cecf685549a46370b0812f40f22ca",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Constructions/Variantbd1d438738ca217ba18cb9c4b9000544aaa85f05abd577a3f7a2d42de536f74e.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:32b07457-3682-11dd-1a11-2ffafee210b9`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 103–106.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem forall_isBounded_image_eval_iff {s : Set (∀ i, π i)} :
    (∀ i, IsBounded (eval i '' s)) ↔ IsBounded s :=
  compl_mem_coprodᵢ.symm

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Constructions/Variantbd1d438738ca217ba18cb9c4b9000544aaa85f05abd577a3f7a2d42de536f74e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Constructions/Variantbd1d438738ca217ba18cb9c4b9000544aaa85f05abd577a3f7a2d42de536f74e.lean#L103).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `511d70771daa548556498727add4093b3a53af0f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
