# comp_left_triangle_aux

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "db86a5f382c1a94a43da1b7e6a281dd59b117355",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 131,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/72/7282ff27339fda6f223d92dec1ba558cccea1ed52e2d7b19dfa1669fca76f8c6.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:dbf11462-b551-fcc2-d908-bc9ab43d7546",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:d100ea7b-7e17-a886-f206-baa96768f219",
  "kind": "theorem",
  "lexical_name": "comp_left_triangle_aux",
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
  "slug": "comp-left-triangle-aux--af8e3fce9719c02a151028e7",
  "source": {
    "blob": "db86a5f382c1a94a43da1b7e6a281dd59b117355",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 145,
    "line": 131,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant7282ff27339fda6f223d92dec1ba558cccea1ed52e2d7b19dfa1669fca76f8c6.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:af8e3fce9719c02a151028e768db5dbba5e0c508704b8bd8c74aa83b32bf0a4b",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant7282ff27339fda6f223d92dec1ba558cccea1ed52e2d7b19dfa1669fca76f8c6.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:d100ea7b-7e17-a886-f206-baa96768f219`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 131–145.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem comp_left_triangle_aux (adj₁ : f₁ ⊣ g₁) (adj₂ : f₂ ⊣ g₂) :
    leftZigzag (compUnit adj₁ adj₂) (compCounit adj₁ adj₂) = (λ_ _).hom ≫ (ρ_ _).inv := by
  calc
    _ = 𝟙 _ ⊗≫
          adj₁.unit ▷ (f₁ ≫ f₂) ⊗≫
            f₁ ◁ (adj₂.unit ▷ (g₁ ≫ f₁) ≫ (f₂ ≫ g₂) ◁ adj₁.counit) ▷ f₂ ⊗≫
              (f₁ ≫ f₂) ◁ adj₂.counit ⊗≫ 𝟙 _ := by
      dsimp only [compUnit, compCounit]; bicategory
    _ = 𝟙 _ ⊗≫
          (leftZigzag adj₁.unit adj₁.counit) ▷ f₂ ⊗≫
            f₁ ◁ (leftZigzag adj₂.unit adj₂.counit) ⊗≫ 𝟙 _ := by
      rw [← whisker_exchange]; bicategory
    _ = _ := by
      simp_rw [left_triangle]; bicategory

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant7282ff27339fda6f223d92dec1ba558cccea1ed52e2d7b19dfa1669fca76f8c6.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant7282ff27339fda6f223d92dec1ba558cccea1ed52e2d7b19dfa1669fca76f8c6.lean#L131).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `db86a5f382c1a94a43da1b7e6a281dd59b117355` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
