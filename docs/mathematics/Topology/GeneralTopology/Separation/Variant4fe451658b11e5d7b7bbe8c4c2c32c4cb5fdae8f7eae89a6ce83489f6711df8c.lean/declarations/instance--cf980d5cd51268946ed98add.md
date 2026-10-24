# Anonymous instance

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:d89c237dad30967ccc22552d2276f68cb4544ba003b2b8305f9429a3da05dbcb",
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
  "slug": "instance--cf980d5cd51268946ed98add",
  "source": {
    "blob": "8041057b0f000fc21fa6ad7206c20e3699305b49",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 123,
    "line": 119,
    "path": "GRWTSK/Topology/GeneralTopology/Separation/Variant4fe451658b11e5d7b7bbe8c4c2c32c4cb5fdae8f7eae89a6ce83489f6711df8c.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:cf980d5cd51268946ed98addf9bfab7b6d50e9f2bfb0c71a9c55390075825234",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Separation/Variant4fe451658b11e5d7b7bbe8c4c2c32c4cb5fdae8f7eae89a6ce83489f6711df8c.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:d89c237dad30967ccc22552d2276f68cb4544ba003b2b8305f9429a3da05dbcb`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 119–123.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
instance (priority := 100) UniformSpace.to_regularSpace : RegularSpace α :=
  .of_hasBasis
    (fun _ ↦ nhds_basis_uniformity' uniformity_hasBasis_closed)
    fun a _V hV ↦ isClosed_ball a hV.2

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Separation/Variant4fe451658b11e5d7b7bbe8c4c2c32c4cb5fdae8f7eae89a6ce83489f6711df8c.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Separation/Variant4fe451658b11e5d7b7bbe8c4c2c32c4cb5fdae8f7eae89a6ce83489f6711df8c.lean#L119).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `8041057b0f000fc21fa6ad7206c20e3699305b49` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
