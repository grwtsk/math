# LeftHomotopy

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:113cc3d79beb3154de473f055ee8e577e00446ca15ea36ff6d13d9fe7bde757e",
  "kind": "abbrev",
  "lexical_name": "LeftHomotopy",
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
  "slug": "lefthomotopy--26c7e2881c7afc821e28bffa",
  "source": {
    "blob": "dc9b5d2b71d45ab61ca2d350ce7ca40a46d810d2",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 125,
    "line": 116,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/LeftHomotopy/Variant47853239687927781124264797a3128dfca47e7427c405c00c28b978b7a0e2c6.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:26c7e2881c7afc821e28bffa06cc0da1f90421a8dd36361726873ef43ad72e7b",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/LeftHomotopy/Variant47853239687927781124264797a3128dfca47e7427c405c00c28b978b7a0e2c6.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `abbrev` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:113cc3d79beb3154de473f055ee8e577e00446ca15ea36ff6d13d9fe7bde757e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 116–125.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
abbrev LeftHomotopy [CategoryWithWeakEquivalences C] (P : Cylinder X) (f g : X ⟶ Y) : Type v :=
  P.toPrecylinder.LeftHomotopy f g

namespace LeftHomotopy

section

variable [CategoryWithWeakEquivalences C] (P : Cylinder X)

/-- `f : X ⟶ Y` is left homotopic to itself relative to any cylinder. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/LeftHomotopy/Variant47853239687927781124264797a3128dfca47e7427c405c00c28b978b7a0e2c6.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/LeftHomotopy/Variant47853239687927781124264797a3128dfca47e7427c405c00c28b978b7a0e2c6.lean#L116).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `dc9b5d2b71d45ab61ca2d350ce7ca40a46d810d2` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
