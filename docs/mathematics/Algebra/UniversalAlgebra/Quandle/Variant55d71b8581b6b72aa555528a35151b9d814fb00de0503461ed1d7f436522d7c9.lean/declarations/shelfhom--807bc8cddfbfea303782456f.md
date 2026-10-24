# ShelfHom

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:737c96b3b21d7f6a65a525a6bcc5fbc928a7ddaf38de8a3c0c6e7e9f11b26230",
  "kind": "structure",
  "lexical_name": "ShelfHom",
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
  "slug": "shelfhom--807bc8cddfbfea303782456f",
  "source": {
    "blob": "dbb43d4c67b9a5b616eea52e6eadde341d65e357",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 130,
    "line": 115,
    "path": "GRWTSK/Algebra/UniversalAlgebra/Quandle/Variant55d71b8581b6b72aa555528a35151b9d814fb00de0503461ed1d7f436522d7c9.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:807bc8cddfbfea303782456ff8c8e206462b52b49f6c501e9c4a3eaf9adebc92",
  "verification": {
    "reference": "docs/verification/Algebra/UniversalAlgebra/Quandle/Variant55d71b8581b6b72aa555528a35151b9d814fb00de0503461ed1d7f436522d7c9.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `structure` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:737c96b3b21d7f6a65a525a6bcc5fbc928a7ddaf38de8a3c0c6e7e9f11b26230`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 115–130.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
structure ShelfHom (S₁ : Type*) (S₂ : Type*) [Shelf S₁] [Shelf S₂] where
  /-- The function under the Shelf Homomorphism -/
  toFun : S₁ → S₂
  /-- The homomorphism property of a Shelf Homomorphism-/
  map_act' : ∀ {x y : S₁}, toFun (Shelf.act x y) = Shelf.act (toFun x) (toFun y)
#align shelf_hom ShelfHom
#align shelf_hom.ext_iff ShelfHom.ext_iff
#align shelf_hom.ext ShelfHom.ext

/-- A *rack* is an automorphic set (a set with an action on itself by
bijections) that is self-distributive.  It is a shelf such that each
element's action is invertible.

The notations `x ◃ y` and `x ◃⁻¹ y` denote the action and the
inverse action, respectively, and they are right associative.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/UniversalAlgebra/Quandle/Variant55d71b8581b6b72aa555528a35151b9d814fb00de0503461ed1d7f436522d7c9.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/UniversalAlgebra/Quandle/Variant55d71b8581b6b72aa555528a35151b9d814fb00de0503461ed1d7f436522d7c9.lean#L115).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `dbb43d4c67b9a5b616eea52e6eadde341d65e357` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
