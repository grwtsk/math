# MulEquiv.toMagmaCatIso

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:56eb81707132254b4cf3a49608f1e9a9e8d8e2cdca43c7eab38c0cdbd4a325fc",
  "kind": "def",
  "lexical_name": "MulEquiv.toMagmaCatIso",
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
  "slug": "mulequiv-tomagmacatiso--26e14454aa3105364accf27b",
  "source": {
    "blob": "1c3a1891230d3ff20f52c4073302f21638fd9a83",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 415,
    "line": 402,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variantfc5759f1f052d89c4443fa6f5c3299f29a2802fdc6e0555115c7a351f1b314ce.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:26e14454aa3105364accf27b138f0462cce5ba75fd759890959d379478b5e1af",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variantfc5759f1f052d89c4443fa6f5c3299f29a2802fdc6e0555115c7a351f1b314ce.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:56eb81707132254b4cf3a49608f1e9a9e8d8e2cdca43c7eab38c0cdbd4a325fc`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 402–415.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def MulEquiv.toMagmaCatIso (e : X ≃* Y) : MagmaCat.of X ≅ MagmaCat.of Y where
  hom := MagmaCat.ofHom e.toMulHom
  inv := MagmaCat.ofHom e.symm.toMulHom

end

section

variable [Semigroup X] [Semigroup Y]

/-- Build an isomorphism in the category `Semigroup` from a `MulEquiv` between `Semigroup`s. -/
@[to_additive (attr := simps)
  /-- Build an isomorphism in the category
  `AddSemigroup` from an `AddEquiv` between `AddSemigroup`s. -/]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variantfc5759f1f052d89c4443fa6f5c3299f29a2802fdc6e0555115c7a351f1b314ce.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variantfc5759f1f052d89c4443fa6f5c3299f29a2802fdc6e0555115c7a351f1b314ce.lean#L402).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `1c3a1891230d3ff20f52c4073302f21638fd9a83` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
