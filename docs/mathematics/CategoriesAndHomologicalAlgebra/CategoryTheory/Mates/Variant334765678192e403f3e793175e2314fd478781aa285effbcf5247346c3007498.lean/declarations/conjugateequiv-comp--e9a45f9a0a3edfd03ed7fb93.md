# conjugateEquiv_comp

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:4d7c3c46-fe1b-daea-eb49-3f6e837559b5",
  "kind": "theorem",
  "lexical_name": "conjugateEquiv_comp",
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
  "slug": "conjugateequiv-comp--e9a45f9a0a3edfd03ed7fb93",
  "source": {
    "blob": "d8983fbc15b0c685a03faf33bd9d03aab8e47e1a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 341,
    "line": 327,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Mates/Variant334765678192e403f3e793175e2314fd478781aa285effbcf5247346c3007498.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:e9a45f9a0a3edfd03ed7fb93f5af5d8dc3a3613647807efcc8c6a2e2abd3893c",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Mates/Variant334765678192e403f3e793175e2314fd478781aa285effbcf5247346c3007498.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:4d7c3c46-fe1b-daea-eb49-3f6e837559b5`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 327–341.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem conjugateEquiv_comp (α : L₂ ⟶ L₁) (β : L₃ ⟶ L₂) :
    conjugateEquiv adj₁ adj₂ α ≫ conjugateEquiv adj₂ adj₃ β =
      conjugateEquiv adj₁ adj₃ (β ≫ α) := by
  ext d
  dsimp [conjugateEquiv, mateEquiv]
  have vcomp := mateEquiv_vcomp adj₁ adj₂ adj₃
    (L₂.leftUnitor.hom ≫ α ≫ L₁.rightUnitor.inv)
    (L₃.leftUnitor.hom ≫ β ≫ L₂.rightUnitor.inv)
  have vcompd := congr_app vcomp d
  dsimp [mateEquiv, vComp, vComp] at vcompd
  simp only [hComp_app, id_obj, comp_app, comp_obj, leftUnitor_hom_app, rightUnitor_inv_app,
    comp_id, id_comp, Functor.id_map, map_comp, assoc] at vcompd ⊢
  rw [vcompd]

@[simp]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Mates/Variant334765678192e403f3e793175e2314fd478781aa285effbcf5247346c3007498.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Mates/Variant334765678192e403f3e793175e2314fd478781aa285effbcf5247346c3007498.lean#L327).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `d8983fbc15b0c685a03faf33bd9d03aab8e47e1a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
