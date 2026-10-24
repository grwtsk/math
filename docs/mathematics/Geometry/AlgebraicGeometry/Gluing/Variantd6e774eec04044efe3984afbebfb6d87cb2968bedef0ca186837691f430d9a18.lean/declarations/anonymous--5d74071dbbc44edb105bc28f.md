# ι

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:ab2251146a8104251121cc5926de0abf70d933a62b8e432e413221675e6c36b9",
  "kind": "abbrev",
  "lexical_name": "ι",
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
  "slug": "anonymous--5d74071dbbc44edb105bc28f",
  "source": {
    "blob": "516ec4697b72be3ad354c27f0dcb974ab82c1416",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 171,
    "line": 167,
    "path": "GRWTSK/Geometry/AlgebraicGeometry/Gluing/Variantd6e774eec04044efe3984afbebfb6d87cb2968bedef0ca186837691f430d9a18.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:5d74071dbbc44edb105bc28f7ca629e3c2a1e398798e3a4b1b2cc044cbb15e53",
  "verification": {
    "reference": "docs/verification/Geometry/AlgebraicGeometry/Gluing/Variantd6e774eec04044efe3984afbebfb6d87cb2968bedef0ca186837691f430d9a18.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `abbrev` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:ab2251146a8104251121cc5926de0abf70d933a62b8e432e413221675e6c36b9`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 167–171.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
abbrev ι (i : D.J) : D.U i ⟶ D.glued :=
  𝖣.ι i
#align algebraic_geometry.Scheme.glue_data.ι AlgebraicGeometry.Scheme.GlueData.ι

/-- The gluing as sheafed spaces is isomorphic to the gluing as presheafed spaces. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Geometry/AlgebraicGeometry/Gluing/Variantd6e774eec04044efe3984afbebfb6d87cb2968bedef0ca186837691f430d9a18.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Geometry/AlgebraicGeometry/Gluing/Variantd6e774eec04044efe3984afbebfb6d87cb2968bedef0ca186837691f430d9a18.lean#L167).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `516ec4697b72be3ad354c27f0dcb974ab82c1416` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
