# finite_prod

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:886b1e997ff2583a27cff35c25c0fdd31dddad0af501b710b83010eb9acaa21a",
  "kind": "instance",
  "lexical_name": "finite_prod",
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
  "slug": "finite-prod--c7eaccf8c3107547e74a6d78",
  "source": {
    "blob": "096c0e7a9cff10286916fac4c43dc7276e351863",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 80,
    "line": 75,
    "path": "GRWTSK/Topology/GeneralTopology/ClopenBox/Variant01c04f52852cf63d4c3ce1122b1fbcc061630056dc250823ca4900f9c7ea1a10.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:c7eaccf8c3107547e74a6d78287d98ff120da0d4d54d4611f59c3ec4560c634f",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/ClopenBox/Variant01c04f52852cf63d4c3ce1122b1fbcc061630056dc250823ca4900f9c7ea1a10.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:886b1e997ff2583a27cff35c25c0fdd31dddad0af501b710b83010eb9acaa21a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 75–80.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
instance finite_prod [Finite (Clopens X)] [Finite (Clopens Y)] :
    Finite (Clopens (X × Y)) := by
  cases nonempty_fintype (Clopens X)
  cases nonempty_fintype (Clopens Y)
  exact .of_surjective _ surjective_finset_sup_prod

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/ClopenBox/Variant01c04f52852cf63d4c3ce1122b1fbcc061630056dc250823ca4900f9c7ea1a10.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/ClopenBox/Variant01c04f52852cf63d4c3ce1122b1fbcc061630056dc250823ca4900f9c7ea1a10.lean#L75).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `096c0e7a9cff10286916fac4c43dc7276e351863` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
