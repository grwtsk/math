# colimitYonedaHomIsoLimit

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:cc9a72c1650ea8aeb4e773365f849a12d23a5baa51b2359e183906b798428ef0",
  "kind": "def",
  "lexical_name": "colimitYonedaHomIsoLimit",
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
  "slug": "colimityonedahomisolimit--ee9242ce1d64c8e551478241",
  "source": {
    "blob": "112cf860a6722a6b83bd70f5603c5b433d924262",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 216,
    "line": 210,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/IndYoneda/Varianta4916197cd841c1114665da729bf58bfef315740a04d00138acb114a6351c879.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:ee9242ce1d64c8e551478241900e3f626b013488c62f328bcec822e01feda81f",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/IndYoneda/Varianta4916197cd841c1114665da729bf58bfef315740a04d00138acb114a6351c879.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:cc9a72c1650ea8aeb4e773365f849a12d23a5baa51b2359e183906b798428ef0`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 210–216.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
noncomputable def colimitYonedaHomIsoLimit :
      (colimit (D.unop ⋙ yoneda) ⟶ F) ≅ limit (D ⋙ F ⋙ uliftFunctor.{u₁}) :=
  colimitHomIsoLimitYoneda _ _ ≪≫
    HasLimit.isoOfNatIso (Functor.isoWhiskerLeft (D ⋙ Prod.sectL _ _) (yonedaLemma C))

set_option backward.isDefEq.respectTransparency.types false in
@[simp]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/IndYoneda/Varianta4916197cd841c1114665da729bf58bfef315740a04d00138acb114a6351c879.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/IndYoneda/Varianta4916197cd841c1114665da729bf58bfef315740a04d00138acb114a6351c879.lean#L210).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `112cf860a6722a6b83bd70f5603c5b433d924262` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
