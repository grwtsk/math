# HasColimit.isoOfEquivalence_inv_π

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "f3a1506080c39901e54ba4f9dc3968a9c13af066",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 955,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/f7/f71d2fa60640e65e0abbc3f58ba1f1ac95a99f88dadc89a82d529bef140893a1.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:585b7e45-f994-86b9-6791-f94795fe8df3",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:b44d750d-9937-ec60-b6ea-dc1189e625a5",
  "kind": "theorem",
  "lexical_name": "HasColimit.isoOfEquivalence_inv_π",
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
  "slug": "hascolimit-isoofequivalence-inv--648b6b70e562034338e1fdf7",
  "source": {
    "blob": "f3a1506080c39901e54ba4f9dc3968a9c13af066",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 967,
    "line": 955,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/HasLimits/Variantf71d2fa60640e65e0abbc3f58ba1f1ac95a99f88dadc89a82d529bef140893a1.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:648b6b70e562034338e1fdf7755806f623e6d04287b26041983f714ee9fab377",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/HasLimits/Variantf71d2fa60640e65e0abbc3f58ba1f1ac95a99f88dadc89a82d529bef140893a1.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:b44d750d-9937-ec60-b6ea-dc1189e625a5`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 955–967.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem HasColimit.isoOfEquivalence_inv_π {F : J ⥤ C} [HasColimit F] {G : K ⥤ C} [HasColimit G]
    (e : J ≌ K) (w : e.functor ⋙ G ≅ F) (k : K) :
    colimit.ι G k ≫ (HasColimit.isoOfEquivalence e w).inv =
      G.map (e.counitInv.app k) ≫ w.hom.app (e.inverse.obj k) ≫ colimit.ι F (e.inverse.obj k) := by
  simp [HasColimit.isoOfEquivalence, IsColimit.coconePointsIsoOfEquivalence_inv]
#align category_theory.limits.has_colimit.iso_of_equivalence_inv_π CategoryTheory.Limits.HasColimit.isoOfEquivalence_inv_π

section Pre

variable (F) [HasColimit F] (E : K ⥤ J) [HasColimit (E ⋙ F)]

/-- The canonical morphism from the colimit of `E ⋙ F` to the colimit of `F`.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/HasLimits/Variantf71d2fa60640e65e0abbc3f58ba1f1ac95a99f88dadc89a82d529bef140893a1.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/HasLimits/Variantf71d2fa60640e65e0abbc3f58ba1f1ac95a99f88dadc89a82d529bef140893a1.lean#L955).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f3a1506080c39901e54ba4f9dc3968a9c13af066` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
