# comp_right_triangle_aux

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "a9c4d30c13e6e16172dc8d0858ee78542ef9cbad",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 134,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/29/293498a5595c6fecb7d89453e6b2e10367a2771ac10836fa65250879fbb64100.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:24767fe9-e18a-4331-b135-a3b0fa31e86e",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:c31df691-dc52-dbae-a476-db55774781bb",
  "kind": "theorem",
  "lexical_name": "comp_right_triangle_aux",
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
  "slug": "comp-right-triangle-aux--74bf0723b3a6aaa22495d753",
  "source": {
    "blob": "a9c4d30c13e6e16172dc8d0858ee78542ef9cbad",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 150,
    "line": 134,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant293498a5595c6fecb7d89453e6b2e10367a2771ac10836fa65250879fbb64100.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:74bf0723b3a6aaa22495d753207052edc58827a555305a2c904de155b0558563",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant293498a5595c6fecb7d89453e6b2e10367a2771ac10836fa65250879fbb64100.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:c31df691-dc52-dbae-a476-db55774781bb`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 134–150.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem comp_right_triangle_aux (adj₁ : f₁ ⊣ g₁) (adj₂ : f₂ ⊣ g₂) :
    rightZigzag (compUnit adj₁ adj₂) (compCounit adj₁ adj₂) = (ρ_ _).hom ≫ (λ_ _).inv := by
  calc
    _ = 𝟙 _ ⊗≫
          (g₂ ≫ g₁) ◁ adj₁.unit ⊗≫
            g₂ ◁ ((g₁ ≫ f₁) ◁ adj₂.unit ≫ adj₁.counit ▷ (f₂ ≫ g₂)) ▷ g₁ ⊗≫
              adj₂.counit ▷ (g₂ ≫ g₁) ⊗≫ 𝟙 _ := by
      dsimp only [compUnit, compCounit]; bicategory
    _ = 𝟙 _ ⊗≫
          g₂ ◁ (rightZigzag adj₁.unit adj₁.counit) ⊗≫
            (rightZigzag adj₂.unit adj₂.counit) ▷ g₁ ⊗≫ 𝟙 _ := by
      rw [whisker_exchange]; bicategory
    _ = _ := by
      simp_rw [right_triangle]; bicategory

/-- Composition of adjunctions. -/
@[simps]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant293498a5595c6fecb7d89453e6b2e10367a2771ac10836fa65250879fbb64100.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant293498a5595c6fecb7d89453e6b2e10367a2771ac10836fa65250879fbb64100.lean#L134).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a9c4d30c13e6e16172dc8d0858ee78542ef9cbad` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
