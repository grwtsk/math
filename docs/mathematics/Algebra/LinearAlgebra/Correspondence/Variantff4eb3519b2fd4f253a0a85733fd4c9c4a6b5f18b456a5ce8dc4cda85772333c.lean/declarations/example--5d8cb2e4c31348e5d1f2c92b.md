# Anonymous example

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:d157792d803934fba6e757d07f73ec7c56a2786f59be0504133adde65f0fe82e",
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
  "slug": "example--5d8cb2e4c31348e5d1f2c92b",
  "source": {
    "blob": "d166e769594453cba6158b99ee78dd2cf5c4fe25",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 152,
    "line": 146,
    "path": "GRWTSK/Algebra/LinearAlgebra/Correspondence/Variantff4eb3519b2fd4f253a0a85733fd4c9c4a6b5f18b456a5ce8dc4cda85772333c.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:5d8cb2e4c31348e5d1f2c92bfd5b98f11408b41e75743df0fac0af339f238dab",
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

Occurrence: `declaration:d157792d803934fba6e757d07f73ec7c56a2786f59be0504133adde65f0fe82e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 146–152.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
example {R V : Type*} [Ring R] [AddCommGroup V] [Module R V]
    (transformation : V →ₗ[R] V) (point : V) :
    point ∈ BitMatrix.Runtime.Semantics.FixedSet transformation ↔
      point ∈ LinearMap.ker (LinearMap.id - transformation) :=
  BitMatrix.Runtime.Semantics.mem_fixedSet_linear_iff_mem_ker_id_sub
    transformation point

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/Correspondence/Variantff4eb3519b2fd4f253a0a85733fd4c9c4a6b5f18b456a5ce8dc4cda85772333c.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/Correspondence/Variantff4eb3519b2fd4f253a0a85733fd4c9c4a6b5f18b456a5ce8dc4cda85772333c.lean#L146).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `d166e769594453cba6158b99ee78dd2cf5c4fe25` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
