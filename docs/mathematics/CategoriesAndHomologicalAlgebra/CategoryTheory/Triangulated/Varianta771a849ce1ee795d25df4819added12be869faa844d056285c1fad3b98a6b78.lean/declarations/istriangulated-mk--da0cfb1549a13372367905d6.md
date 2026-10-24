# IsTriangulated.mk'

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:be918ad5-a1f1-f6eb-726b-4711d12f4492",
  "kind": "lemma",
  "lexical_name": "IsTriangulated.mk'",
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
  "slug": "istriangulated-mk--da0cfb1549a13372367905d6",
  "source": {
    "blob": "93f983f44889ac624530ba68e60f96deb9a21c0a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 232,
    "line": 215,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Triangulated/Varianta771a849ce1ee795d25df4819added12be869faa844d056285c1fad3b98a6b78.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:da0cfb1549a13372367905d6224a2e1c85952223d67b3c27081c848a26ba5c12",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Triangulated/Varianta771a849ce1ee795d25df4819added12be869faa844d056285c1fad3b98a6b78.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:be918ad5-a1f1-f6eb-726b-4711d12f4492`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 215–232.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma IsTriangulated.mk' (h : ∀ ⦃X₁' X₂' X₃' : C⦄ (u₁₂' : X₁' ⟶ X₂') (u₂₃' : X₂' ⟶ X₃'),
    ∃ (X₁ X₂ X₃ Z₁₂ Z₂₃ Z₁₃ : C) (u₁₂ : X₁ ⟶ X₂) (u₂₃ : X₂ ⟶ X₃) (e₁ : X₁' ≅ X₁) (e₂ : X₂' ≅ X₂)
    (e₃ : X₃' ≅ X₃) (_ : u₁₂' ≫ e₂.hom = e₁.hom ≫ u₁₂)
    (_ : u₂₃' ≫ e₃.hom = e₂.hom ≫ u₂₃)
    (v₁₂ : X₂ ⟶ Z₁₂) (w₁₂ : Z₁₂ ⟶ X₁⟦1⟧) (h₁₂ : Triangle.mk u₁₂ v₁₂ w₁₂ ∈ distTriang C)
    (v₂₃ : X₃ ⟶ Z₂₃) (w₂₃ : Z₂₃ ⟶ X₂⟦1⟧) (h₂₃ : Triangle.mk u₂₃ v₂₃ w₂₃ ∈ distTriang C)
    (v₁₃ : X₃ ⟶ Z₁₃) (w₁₃ : Z₁₃ ⟶ X₁⟦1⟧)
      (h₁₃ : Triangle.mk (u₁₂ ≫ u₂₃) v₁₃ w₁₃ ∈ distTriang C),
        Nonempty (Octahedron rfl h₁₂ h₂₃ h₁₃)) :
    IsTriangulated C where
  octahedron_axiom {X₁' X₂' X₃' Z₁₂' Z₂₃' Z₁₃' u₁₂' u₂₃' u₁₃'} comm'
    {v₁₂' w₁₂'} h₁₂' {v₂₃' w₂₃'} h₂₃' {v₁₃' w₁₃'} h₁₃' := by
    obtain ⟨X₁, X₂, X₃, Z₁₂, Z₂₃, Z₁₃, u₁₂, u₂₃, e₁, e₂, e₃, comm₁₂, comm₂₃,
      v₁₂, w₁₂, h₁₂, v₂₃, w₂₃, h₂₃, v₁₃, w₁₃, h₁₃, H⟩ := h u₁₂' u₂₃'
    exact ⟨Octahedron.ofIso u₁₂' u₂₃' u₁₃' comm' h₁₂' h₂₃' h₁₃'
      u₁₂ u₂₃ _ rfl e₁ e₂ e₃ comm₁₂ comm₂₃ v₁₂ w₁₂ h₁₂ v₂₃ w₂₃ h₂₃ v₁₃ w₁₃ h₁₃ H.some⟩

end CategoryTheory
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Triangulated/Varianta771a849ce1ee795d25df4819added12be869faa844d056285c1fad3b98a6b78.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Triangulated/Varianta771a849ce1ee795d25df4819added12be869faa844d056285c1fad3b98a6b78.lean#L215).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `93f983f44889ac624530ba68e60f96deb9a21c0a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
