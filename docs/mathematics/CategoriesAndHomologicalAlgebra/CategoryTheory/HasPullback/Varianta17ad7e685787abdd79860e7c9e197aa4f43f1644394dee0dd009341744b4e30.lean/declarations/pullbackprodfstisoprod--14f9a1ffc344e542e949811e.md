# pullbackProdFstIsoProd

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:0413638574af4b06d95ee3541dd5cadb6682a9a42991d0c20fe2374afc9ec32f",
  "kind": "def",
  "lexical_name": "pullbackProdFstIsoProd",
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
  "slug": "pullbackprodfstisoprod--14f9a1ffc344e542e949811e",
  "source": {
    "blob": "4514058d6b818b70db07c93ece40249a815fb655",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 640,
    "line": 625,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/HasPullback/Varianta17ad7e685787abdd79860e7c9e197aa4f43f1644394dee0dd009341744b4e30.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:14f9a1ffc344e542e949811e747e6d43c7564cb066f3dddce6cd486a23a23448",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/HasPullback/Varianta17ad7e685787abdd79860e7c9e197aa4f43f1644394dee0dd009341744b4e30.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:0413638574af4b06d95ee3541dd5cadb6682a9a42991d0c20fe2374afc9ec32f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 625–640.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
noncomputable def pullbackProdFstIsoProd {X Y : C} (f : X ⟶ Y) (Z : C)
    [HasBinaryProduct Y Z] [HasBinaryProduct X Z] [HasPullback f (prod.fst : Y ⨯ Z ⟶ _)] :
    pullback f (prod.fst : Y ⨯ Z ⟶ _) ≅ X ⨯ Z where
  hom := prod.lift (pullback.fst _ _) (pullback.snd _ _ ≫ prod.snd)
  inv := pullback.lift prod.fst (prod.map f (𝟙 Z))
  hom_inv_id := by
    apply pullback.hom_ext
    · simp
    · apply prod.hom_ext <;> simp [pullback.condition]

section

variable {X Y : C} (f : X ⟶ Y) (Z : C) [HasBinaryProduct Y Z] [HasBinaryProduct X Z]
  [HasPullback f (prod.fst : Y ⨯ Z ⟶ _)]

@[reassoc (attr := simp)]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/HasPullback/Varianta17ad7e685787abdd79860e7c9e197aa4f43f1644394dee0dd009341744b4e30.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/HasPullback/Varianta17ad7e685787abdd79860e7c9e197aa4f43f1644394dee0dd009341744b4e30.lean#L625).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `4514058d6b818b70db07c93ece40249a815fb655` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
