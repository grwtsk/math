# Anonymous instance

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:f5371aaf5365fd3b5ac4ce1a727de1f0a731f288362a8df6f1440e97cb8c5243",
  "kind": "instance",
  "lexical_name": null,
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
  "slug": "instance--2cec158a61d3c5d20acf582b",
  "source": {
    "blob": "7f1281ba61abfe74bb14bc3d3405967fa8926ebf",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 402,
    "line": 375,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant72f2076648b9fe745621c2f1e8af5070c09e47dc05628c3750b71e2d90433581.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:2cec158a61d3c5d20acf582b47e36a9267bc6efcb72a1ef0c3bf51bd65de915b",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant72f2076648b9fe745621c2f1e8af5070c09e47dc05628c3750b71e2d90433581.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:f5371aaf5365fd3b5ac4ce1a727de1f0a731f288362a8df6f1440e97cb8c5243`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 375–402.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
noncomputable instance : Bicategory (SpanBicat C Wₗ Wᵣ) where
  homCategory := inferInstance
  whiskerLeft {_ _ _} S₀ {S₁ S₂} f := compLift (πₗ ..) (πᵣ .. ≫ f.hom)
  whiskerRight {_ _ _} {S₀ S₁} f S₂ := compLift (πₗ .. ≫ f.hom) (πᵣ ..)
  associator S₀ S₁ S₂ := associator _ _ _
  leftUnitor _ := leftUnitor _
  rightUnitor _ := rightUnitor _
  id_whiskerLeft := by grind [leftUnitor]
  whiskerRight_id := by grind [rightUnitor]
  comp_whiskerLeft := by grind (ematch := 10) [associator]
  whiskerRight_comp := by grind (ematch := 10) [associator]
  whisker_assoc := by
    intros
    ext <;> simp [associator]
  pentagon := by
    intros
    ext <;> simp [associator]
  triangle := by
    intros
    ext <;> simp [associator, leftUnitor, rightUnitor]

open CategoryTheory.Bicategory

section

variable {W X Y Z : SpanBicat C Wₗ Wᵣ}

@[reassoc (attr := simp), grind =]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant72f2076648b9fe745621c2f1e8af5070c09e47dc05628c3750b71e2d90433581.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant72f2076648b9fe745621c2f1e8af5070c09e47dc05628c3750b71e2d90433581.lean#L375).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `7f1281ba61abfe74bb14bc3d3405967fa8926ebf` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
