# IsZariskiLocalAtTarget

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:d336393b9ac988ca62ded85f05b793b808b5ad3533dfb4c7e4cfd123aebe8cd3",
  "kind": "abbrev",
  "lexical_name": "IsZariskiLocalAtTarget",
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
  "slug": "iszariskilocalattarget--1a352ca55ae40d7a4533a4cc",
  "source": {
    "blob": "ef109d77ea0832b10e22aeb0537c7e22f330f82f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 130,
    "line": 120,
    "path": "GRWTSK/Geometry/AlgebraicGeometry/Basic/Variant455b69b8cec60ddddaff22e2191b52f42bb74950b85275fbc8a0826668a7dc13.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:1a352ca55ae40d7a4533a4cc7208fedbd88b50d0fe990c4d0260e2b4de8de5c3",
  "verification": {
    "reference": "docs/verification/Geometry/AlgebraicGeometry/Basic/Variant455b69b8cec60ddddaff22e2191b52f42bb74950b85275fbc8a0826668a7dc13.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `abbrev` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:d336393b9ac988ca62ded85f05b793b808b5ad3533dfb4c7e4cfd123aebe8cd3`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 120–130.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
abbrev IsZariskiLocalAtTarget (P : MorphismProperty Scheme.{u}) :=
  P.IsLocalAtTarget Scheme.zariskiPrecoverage

namespace IsZariskiLocalAtTarget

/--
`P` is local at the target if
1. `P` respects isomorphisms.
2. If `P` holds for `f : X ⟶ Y`, then `P` holds for `f ∣_ U` for any `U`.
3. If `P` holds for `f ∣_ U` for an open cover `U` of `Y`, then `P` holds for `f`.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Geometry/AlgebraicGeometry/Basic/Variant455b69b8cec60ddddaff22e2191b52f42bb74950b85275fbc8a0826668a7dc13.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Geometry/AlgebraicGeometry/Basic/Variant455b69b8cec60ddddaff22e2191b52f42bb74950b85275fbc8a0826668a7dc13.lean#L120).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ef109d77ea0832b10e22aeb0537c7e22f330f82f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
