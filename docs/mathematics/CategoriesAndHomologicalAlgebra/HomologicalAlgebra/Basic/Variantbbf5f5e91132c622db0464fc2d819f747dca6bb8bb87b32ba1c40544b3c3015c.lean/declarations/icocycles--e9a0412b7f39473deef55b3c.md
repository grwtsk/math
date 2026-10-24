# iCocycles

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:88f8a20ede80f7471c007247454ff172003d5e4b8470578d8d71e0b761db85a2",
  "kind": "abbrev",
  "lexical_name": "iCocycles",
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
  "slug": "icocycles--e9a0412b7f39473deef55b3c",
  "source": {
    "blob": "3b7a4be321775aaf35ffdd3a6ee0951b806fa452",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 231,
    "line": 227,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/Basic/Variantbbf5f5e91132c622db0464fc2d819f747dca6bb8bb87b32ba1c40544b3c3015c.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:e9a0412b7f39473deef55b3c6b3ac6972772d67f9482b6e941783ef02817ab7f",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/Basic/Variantbbf5f5e91132c622db0464fc2d819f747dca6bb8bb87b32ba1c40544b3c3015c.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `abbrev` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:88f8a20ede80f7471c007247454ff172003d5e4b8470578d8d71e0b761db85a2`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 227–231.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
abbrev iCocycles (n : ℕ) : cocycles A n ⟶ ModuleCat.of k ((Fin n → G) → A) :=
  (inhomogeneousCochains A).iCycles n

/-- This is the map from `i`-cochains to `j`-cocycles induced by the differential in the complex of
inhomogeneous cochains. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/Basic/Variantbbf5f5e91132c622db0464fc2d819f747dca6bb8bb87b32ba1c40544b3c3015c.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/Basic/Variantbbf5f5e91132c622db0464fc2d819f747dca6bb8bb87b32ba1c40544b3c3015c.lean#L227).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `3b7a4be321775aaf35ffdd3a6ee0951b806fa452` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
