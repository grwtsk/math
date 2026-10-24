# whiskerRight_toSheafify_sheafifyCompIso_hom

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:adbe36cb-e970-97e7-2b29-9ffc00aaa788",
  "kind": "theorem",
  "lexical_name": "whiskerRight_toSheafify_sheafifyCompIso_hom",
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
  "slug": "whiskerright-tosheafify-sheafifycompiso-hom--8d73cf1a2735a5338ee7843c",
  "source": {
    "blob": "e3edb8f670fcf20a4aa7af9fd63f153e34384eff",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 145,
    "line": 135,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/CompatibleSheafification/Variantb4d59979b4c5a8081f337338619330823147a28a16e109290e4406bd82fd2a96.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:8d73cf1a2735a5338ee7843c11ef563c48aef939a810cbd827a6bfbf2b059c76",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/CompatibleSheafification/Variantb4d59979b4c5a8081f337338619330823147a28a16e109290e4406bd82fd2a96.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:adbe36cb-e970-97e7-2b29-9ffc00aaa788`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 135–145.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem whiskerRight_toSheafify_sheafifyCompIso_hom :
    whiskerRight (J.toSheafify _) _ ≫ (J.sheafifyCompIso F P).hom = J.toSheafify _ := by
  dsimp [sheafifyCompIso]
  erw [whiskerRight_comp, Category.assoc]
  slice_lhs 2 3 => rw [plusCompIso_whiskerRight]
  rw [Category.assoc, ← J.plusMap_comp, whiskerRight_toPlus_comp_plusCompIso_hom, ←
    Category.assoc, whiskerRight_toPlus_comp_plusCompIso_hom]
  rfl
#align category_theory.grothendieck_topology.whisker_right_to_sheafify_sheafify_comp_iso_hom CategoryTheory.GrothendieckTopology.whiskerRight_toSheafify_sheafifyCompIso_hom

@[simp, reassoc]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/CompatibleSheafification/Variantb4d59979b4c5a8081f337338619330823147a28a16e109290e4406bd82fd2a96.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/CompatibleSheafification/Variantb4d59979b4c5a8081f337338619330823147a28a16e109290e4406bd82fd2a96.lean#L135).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e3edb8f670fcf20a4aa7af9fd63f153e34384eff` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
