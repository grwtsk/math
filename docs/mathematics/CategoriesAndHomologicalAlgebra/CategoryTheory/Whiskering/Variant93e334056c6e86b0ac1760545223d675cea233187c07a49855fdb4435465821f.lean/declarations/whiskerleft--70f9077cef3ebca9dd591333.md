# whiskerLeft

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:a9f8862aa57b85a234cc9d2f8e6bc06c1254328960961f99ea5fb3d49f31477f",
  "kind": "def",
  "lexical_name": "whiskerLeft",
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
  "slug": "whiskerleft--70f9077cef3ebca9dd591333",
  "source": {
    "blob": "0a174fd66170b1541d9a4d3932ce928edd63cb85",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 52,
    "line": 41,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Whiskering/Variant93e334056c6e86b0ac1760545223d675cea233187c07a49855fdb4435465821f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:70f9077cef3ebca9dd591333a3938bfabc2096940b95dabb9f675154528fbefa",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Whiskering/Variant93e334056c6e86b0ac1760545223d675cea233187c07a49855fdb4435465821f.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:a9f8862aa57b85a234cc9d2f8e6bc06c1254328960961f99ea5fb3d49f31477f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 41–52.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
protected def whiskerLeft (adj : F ⊣ G) :
    (whiskeringLeft E D C).obj G ⊣ (whiskeringLeft D E C).obj F where
  unit :=
    { app := fun X =>
        (Functor.leftUnitor _).inv ≫ whiskerRight adj.unit X ≫ (Functor.associator _ _ _).hom }
  counit :=
    { app := fun X =>
        (Functor.associator _ _ _).inv ≫ whiskerRight adj.counit X ≫ (Functor.leftUnitor _).hom }
  left_triangle_components X := by ext; simp [← X.map_comp]
  right_triangle_components X := by ext; simp [← X.map_comp]

end CategoryTheory.Adjunction
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Whiskering/Variant93e334056c6e86b0ac1760545223d675cea233187c07a49855fdb4435465821f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Whiskering/Variant93e334056c6e86b0ac1760545223d675cea233187c07a49855fdb4435465821f.lean#L41).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `0a174fd66170b1541d9a4d3932ce928edd63cb85` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
