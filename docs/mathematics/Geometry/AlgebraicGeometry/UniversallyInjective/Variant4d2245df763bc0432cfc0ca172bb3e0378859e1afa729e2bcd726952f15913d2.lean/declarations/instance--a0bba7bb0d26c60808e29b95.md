# Anonymous instance

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:247ac498c0012657fcc21388832f1e172d80edb2b6ca4ae821d67ba0db7d0963",
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
  "slug": "instance--a0bba7bb0d26c60808e29b95",
  "source": {
    "blob": "e6e8b6be0ce55816e8a2377f35e1fe5341becae5",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 85,
    "line": 82,
    "path": "GRWTSK/Geometry/AlgebraicGeometry/UniversallyInjective/Variant4d2245df763bc0432cfc0ca172bb3e0378859e1afa729e2bcd726952f15913d2.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:a0bba7bb0d26c60808e29b95764d21f2e761283583bc377577fd001c9c0113a0",
  "verification": {
    "reference": "docs/verification/Geometry/AlgebraicGeometry/UniversallyInjective/Variant4d2245df763bc0432cfc0ca172bb3e0378859e1afa729e2bcd726952f15913d2.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:247ac498c0012657fcc21388832f1e172d80edb2b6ca4ae821d67ba0db7d0963`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 82–85.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
instance (priority := 900) [Mono f] : UniversallyInjective f :=
  have := (pullback.isIso_diagonal_iff f).mpr inferInstance
  (UniversallyInjective.iff_diagonal f).mpr inferInstance

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Geometry/AlgebraicGeometry/UniversallyInjective/Variant4d2245df763bc0432cfc0ca172bb3e0378859e1afa729e2bcd726952f15913d2.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Geometry/AlgebraicGeometry/UniversallyInjective/Variant4d2245df763bc0432cfc0ca172bb3e0378859e1afa729e2bcd726952f15913d2.lean#L82).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e6e8b6be0ce55816e8a2377f35e1fe5341becae5` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
