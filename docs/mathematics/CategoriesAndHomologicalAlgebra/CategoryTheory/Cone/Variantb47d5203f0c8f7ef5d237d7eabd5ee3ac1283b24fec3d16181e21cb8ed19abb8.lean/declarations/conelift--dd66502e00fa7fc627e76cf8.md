# coneLift

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:a7f262f1850f4e2e92c11292b7cb7007a7793f2651e7f12b6e82483aa2319d24",
  "kind": "def",
  "lexical_name": "coneLift",
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
  "slug": "conelift--dd66502e00fa7fc627e76cf8",
  "source": {
    "blob": "8a53a909ccc908ccd8f1786a4c6a9f0631effe6c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 101,
    "line": 78,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Cone/Variantb47d5203f0c8f7ef5d237d7eabd5ee3ac1283b24fec3d16181e21cb8ed19abb8.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:dd66502e00fa7fc627e76cf8c854e4efc3baf0a6720126bc06faf1106c8ae677",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Cone/Variantb47d5203f0c8f7ef5d237d7eabd5ee3ac1283b24fec3d16181e21cb8ed19abb8.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:a7f262f1850f4e2e92c11292b7cb7007a7793f2651e7f12b6e82483aa2319d24`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 78–101.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private def coneLift : Cone K ⥤ Cone (liftFromOver.obj K) where
  obj t := {
    pt := t.pt.left
    π.app
    | of a => (t.π.app a).left
    | star => t.pt.hom
    π.naturality
    | star, star, _
    | of a, star, _ => by aesop
    | of a, of b, f => by simp [← Comma.comp_left]
  }
  map {t₁ t₂} f := {
    hom := f.hom.left
    w
    | star => by cat_disch
    | of a => by simp [← Comma.comp_left]
  }

set_option backward.isDefEq.respectTransparency.types false in
set_option backward.privateInPublic true in
/-- This is the inverse of the previous construction: a cone of an extended functor
`liftFromOver.obj K : WithTerminal J ⥤ C` consists of an object of `C`, together
with morphisms. This same object is a cone of the original functor `K : J ⥤ Over X`. -/
@[simps]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Cone/Variantb47d5203f0c8f7ef5d237d7eabd5ee3ac1283b24fec3d16181e21cb8ed19abb8.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Cone/Variantb47d5203f0c8f7ef5d237d7eabd5ee3ac1283b24fec3d16181e21cb8ed19abb8.lean#L78).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `8a53a909ccc908ccd8f1786a4c6a9f0631effe6c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
