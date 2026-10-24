# ulift_apply

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:f03546bd-f148-c9e9-1c2a-22007462e9e2",
  "kind": "theorem",
  "lexical_name": "ulift_apply",
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
  "slug": "ulift-apply--1459c16b26d68b52410efcc0",
  "source": {
    "blob": "f8f221fb4dc2dba0001fd7b22fce06af72d14316",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 221,
    "line": 217,
    "path": "GRWTSK/Topology/AlgebraicTopology/InducedMaps/Variant15dff5a1eb0fb22dab2f28263c5b20b12a0c0a58fa010e295beeda4713aed280.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:1459c16b26d68b52410efcc02ead99512f1cff3af6644383b0a497734e43b8cc",
  "verification": {
    "reference": "docs/verification/Topology/AlgebraicTopology/InducedMaps/Variant15dff5a1eb0fb22dab2f28263c5b20b12a0c0a58fa010e295beeda4713aed280.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:f03546bd-f148-c9e9-1c2a-22007462e9e2`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 217–221.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem ulift_apply (i : ULift.{u} I) (x : X) : H.uliftMap (i, x) = H (i.down, x) :=
  rfl

/-- An abbreviation for `prodToProdTop`, with some types already in place to help the
typechecker. In particular, the first path should be on the ulifted unit interval. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/AlgebraicTopology/InducedMaps/Variant15dff5a1eb0fb22dab2f28263c5b20b12a0c0a58fa010e295beeda4713aed280.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/AlgebraicTopology/InducedMaps/Variant15dff5a1eb0fb22dab2f28263c5b20b12a0c0a58fa010e295beeda4713aed280.lean#L217).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f8f221fb4dc2dba0001fd7b22fce06af72d14316` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
