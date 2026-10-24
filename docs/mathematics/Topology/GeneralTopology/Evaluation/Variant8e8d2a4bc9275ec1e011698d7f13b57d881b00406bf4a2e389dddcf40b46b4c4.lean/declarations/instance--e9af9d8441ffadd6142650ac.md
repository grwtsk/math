# Anonymous instance

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:7270cba8c8d10e66ec8e4ab9ad39df1d2fed95db87780a08f3f0955de19f6dc4",
  "kind": "instance",
  "lexical_name": null,
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
  "slug": "instance--e9af9d8441ffadd6142650ac",
  "source": {
    "blob": "e09acfc6324171966f4efc0088d04d7b3a8a525f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 137,
    "line": 135,
    "path": "GRWTSK/Topology/GeneralTopology/Evaluation/Variant8e8d2a4bc9275ec1e011698d7f13b57d881b00406bf4a2e389dddcf40b46b4c4.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:e9af9d8441ffadd6142650acfb6cafe4bc918e74728a6786acb4a262f15555ab",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Evaluation/Variant8e8d2a4bc9275ec1e011698d7f13b57d881b00406bf4a2e389dddcf40b46b4c4.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:7270cba8c8d10e66ec8e4ab9ad39df1d2fed95db87780a08f3f0955de19f6dc4`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 135–137.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private instance [IsUniformAddGroup R] : IsUniformAddGroup (MvPolynomial σ R) :=
  IsUniformAddGroup.comap coeToMvPowerSeries.ringHom

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Evaluation/Variant8e8d2a4bc9275ec1e011698d7f13b57d881b00406bf4a2e389dddcf40b46b4c4.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Evaluation/Variant8e8d2a4bc9275ec1e011698d7f13b57d881b00406bf4a2e389dddcf40b46b4c4.lean#L135).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e09acfc6324171966f4efc0088d04d7b3a8a525f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
