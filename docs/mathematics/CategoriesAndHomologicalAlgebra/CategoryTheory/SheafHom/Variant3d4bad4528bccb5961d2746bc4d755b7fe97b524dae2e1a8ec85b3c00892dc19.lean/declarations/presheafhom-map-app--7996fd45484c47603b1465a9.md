# presheafHom_map_app

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:5c7ba86f-7dca-491a-37d6-a29f155c3864",
  "kind": "lemma",
  "lexical_name": "presheafHom_map_app",
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
  "slug": "presheafhom-map-app--7996fd45484c47603b1465a9",
  "source": {
    "blob": "5b799ba89507032577c1618c90be307c9c7ac827",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 75,
    "line": 68,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/SheafHom/Variant3d4bad4528bccb5961d2746bc4d755b7fe97b524dae2e1a8ec85b3c00892dc19.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:7996fd45484c47603b1465a963004c9b35c98409b4be1130948949382484df1c",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/SheafHom/Variant3d4bad4528bccb5961d2746bc4d755b7fe97b524dae2e1a8ec85b3c00892dc19.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:5c7ba86f-7dca-491a-37d6-a29f155c3864`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 68–75.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma presheafHom_map_app {X Y Z : C} (f : Z ⟶ Y) (g : Y ⟶ X) (h : Z ⟶ X) (w : f ≫ g = h)
    (α : (presheafHom F G).obj (op X)) :
    ((presheafHom F G).map g.op α).app (op (Over.mk f)) =
      α.app (op (Over.mk h)) := by
  subst w
  rfl

@[simp]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/SheafHom/Variant3d4bad4528bccb5961d2746bc4d755b7fe97b524dae2e1a8ec85b3c00892dc19.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/SheafHom/Variant3d4bad4528bccb5961d2746bc4d755b7fe97b524dae2e1a8ec85b3c00892dc19.lean#L68).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `5b799ba89507032577c1618c90be307c9c7ac827` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
