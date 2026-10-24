# reflectsFiniteCoproductsOfReflectsIsomorphisms

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:a8de9d63a8dfec035753ac11856cf610d8321a179c94366f4f72048239fd0cc8",
  "kind": "instance",
  "lexical_name": "reflectsFiniteCoproductsOfReflectsIsomorphisms",
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
  "slug": "reflectsfinitecoproductsofreflectsisomorphisms--b3dd71ce77e4a9f76775bf22",
  "source": {
    "blob": "52796cefc97b7b3d3382646ecdd6a4e2f887580e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 343,
    "line": 339,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Finite/Variantb1089a0b81f0f9c3ac0ae66c089db0b34c8d60f5fa23a077bd0754588e719cee.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:b3dd71ce77e4a9f76775bf22a032809fe417dcfc1b04a595864ba9a320f82f89",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Finite/Variantb1089a0b81f0f9c3ac0ae66c089db0b34c8d60f5fa23a077bd0754588e719cee.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:a8de9d63a8dfec035753ac11856cf610d8321a179c94366f4f72048239fd0cc8`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 339–343.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
instance reflectsFiniteCoproductsOfReflectsIsomorphisms (F : C ⥤ D)
    [F.ReflectsIsomorphisms] [HasFiniteCoproducts C] [PreservesFiniteCoproducts F] :
      ReflectsFiniteCoproducts F where
  reflects _ := reflectsColimitsOfShape_of_reflectsIsomorphisms

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Finite/Variantb1089a0b81f0f9c3ac0ae66c089db0b34c8d60f5fa23a077bd0754588e719cee.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Finite/Variantb1089a0b81f0f9c3ac0ae66c089db0b34c8d60f5fa23a077bd0754588e719cee.lean#L339).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `52796cefc97b7b3d3382646ecdd6a4e2f887580e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
