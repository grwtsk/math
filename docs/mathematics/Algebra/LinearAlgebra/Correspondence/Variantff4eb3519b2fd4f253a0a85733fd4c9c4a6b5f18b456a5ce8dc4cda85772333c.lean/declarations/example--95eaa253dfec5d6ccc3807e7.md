# Anonymous example

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:2942323a3338da1b0caf5ef7acccba3142f5a4f8f5c82771efd00785cb2d1618",
  "kind": "example",
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
  "slug": "example--95eaa253dfec5d6ccc3807e7",
  "source": {
    "blob": "d166e769594453cba6158b99ee78dd2cf5c4fe25",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 382,
    "line": 368,
    "path": "GRWTSK/Algebra/LinearAlgebra/Correspondence/Variantff4eb3519b2fd4f253a0a85733fd4c9c4a6b5f18b456a5ce8dc4cda85772333c.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:95eaa253dfec5d6ccc3807e74a0213ad5163cf08c218397f3d56a3e194643342",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/Correspondence/Variantff4eb3519b2fd4f253a0a85733fd4c9c4a6b5f18b456a5ce8dc4cda85772333c.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `example` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:2942323a3338da1b0caf5ef7acccba3142f5a4f8f5c82771efd00785cb2d1618`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 368–382.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
example :
    [BitMatrix.Runtime.Semantics.ownershipMaskResult
        configuredOwnershipFixture 4 .counterclockwise .topLeft,
      BitMatrix.Runtime.Semantics.ownershipMaskResult
        configuredOwnershipFixture 4 .counterclockwise .topRight,
      BitMatrix.Runtime.Semantics.ownershipMaskResult
        configuredOwnershipFixture 4 .counterclockwise .bottomRight,
      BitMatrix.Runtime.Semantics.ownershipMaskResult
        configuredOwnershipFixture 4 .counterclockwise .bottomLeft] =
      [.ok [false, false, true, true],
       .ok [true, false, false, true],
       .ok [true, true, false, false],
       .ok [false, true, true, false]] := by
  native_decide

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/Correspondence/Variantff4eb3519b2fd4f253a0a85733fd4c9c4a6b5f18b456a5ce8dc4cda85772333c.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/Correspondence/Variantff4eb3519b2fd4f253a0a85733fd4c9c4a6b5f18b456a5ce8dc4cda85772333c.lean#L368).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `d166e769594453cba6158b99ee78dd2cf5c4fe25` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
