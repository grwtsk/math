# mapIso_trans

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:cee5538d-e5c9-cd6f-2257-a0a54d994e6f",
  "kind": "theorem",
  "lexical_name": "mapIso_trans",
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
  "slug": "mapiso-trans--dc4172552a1bbb912a5bb684",
  "source": {
    "blob": "97f6ce3b4d6ddb46f4fbab8c7488783dbd26ffd0",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 617,
    "line": 612,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Iso/Variant691fb2b950b1b3dd9e2e3682a1c7786cf47c8956cdc33b3babacbaa6b306ba7f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:dc4172552a1bbb912a5bb6841c4979c419c1c8a32920f8d60a03d2e210c1eab3",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Iso/Variant691fb2b950b1b3dd9e2e3682a1c7786cf47c8956cdc33b3babacbaa6b306ba7f.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:cee5538d-e5c9-cd6f-2257-a0a54d994e6f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 612–617.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem mapIso_trans (F : C ⥤ D) {X Y Z : C} (i : X ≅ Y) (j : Y ≅ Z) :
    F.mapIso (i ≪≫ j) = F.mapIso i ≪≫ F.mapIso j :=
  by ext; apply Functor.map_comp
#align category_theory.functor.map_iso_trans CategoryTheory.Functor.mapIso_trans

@[simp]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Iso/Variant691fb2b950b1b3dd9e2e3682a1c7786cf47c8956cdc33b3babacbaa6b306ba7f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Iso/Variant691fb2b950b1b3dd9e2e3682a1c7786cf47c8956cdc33b3babacbaa6b306ba7f.lean#L612).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `97f6ce3b4d6ddb46f4fbab8c7488783dbd26ffd0` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
