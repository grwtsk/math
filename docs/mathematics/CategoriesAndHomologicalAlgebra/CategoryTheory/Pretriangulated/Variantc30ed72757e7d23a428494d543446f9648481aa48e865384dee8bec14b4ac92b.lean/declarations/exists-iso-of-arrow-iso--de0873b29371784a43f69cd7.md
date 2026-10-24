# exists_iso_of_arrow_iso

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:4fa38229-d5a6-05ee-6b54-cfd099a06a67",
  "kind": "lemma",
  "lexical_name": "exists_iso_of_arrow_iso",
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
  "slug": "exists-iso-of-arrow-iso--de0873b29371784a43f69cd7",
  "source": {
    "blob": "2761fb222aa79c26ed3573e707f04ca2e0e97b02",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 713,
    "line": 698,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Pretriangulated/Variantc30ed72757e7d23a428494d543446f9648481aa48e865384dee8bec14b4ac92b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:de0873b29371784a43f69cd764c71a8cb08edbff0c82a20d2c0eec6ae1a7cd57",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Pretriangulated/Variantc30ed72757e7d23a428494d543446f9648481aa48e865384dee8bec14b4ac92b.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:4fa38229-d5a6-05ee-6b54-cfd099a06a67`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 698–713.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma exists_iso_of_arrow_iso (T₁ T₂ : Triangle C) (hT₁ : T₁ ∈ distTriang C)
    (hT₂ : T₂ ∈ distTriang C) (e : Arrow.mk T₁.mor₁ ≅ Arrow.mk T₂.mor₁) :
    ∃ (e' : T₁ ≅ T₂), e'.hom.hom₁ = e.hom.left ∧ e'.hom.hom₂ = e.hom.right := by
  let φ := completeDistinguishedTriangleMorphism T₁ T₂ hT₁ hT₂ e.hom.left e.hom.right e.hom.w.symm
  have : IsIso φ.hom₁ := by dsimp [φ]; infer_instance
  have : IsIso φ.hom₂ := by dsimp [φ]; infer_instance
  have : IsIso φ.hom₃ := isIso₃_of_isIso₁₂ φ hT₁ hT₂ inferInstance inferInstance
  have : IsIso φ := by
    apply Triangle.isIso_of_isIsos
    all_goals infer_instance
  exact ⟨asIso φ, by simp [φ], by simp [φ]⟩

set_option backward.defeqAttrib.useBackward true in
/-- A choice of isomorphism `T₁ ≅ T₂` between two distinguished triangles
when we are given two isomorphisms `e₁ : T₁.obj₁ ≅ T₂.obj₁` and `e₂ : T₁.obj₂ ≅ T₂.obj₂`. -/
@[simps! hom_hom₁ hom_hom₂ inv_hom₁ inv_hom₂]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Pretriangulated/Variantc30ed72757e7d23a428494d543446f9648481aa48e865384dee8bec14b4ac92b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Pretriangulated/Variantc30ed72757e7d23a428494d543446f9648481aa48e865384dee8bec14b4ac92b.lean#L698).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `2761fb222aa79c26ed3573e707f04ca2e0e97b02` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
