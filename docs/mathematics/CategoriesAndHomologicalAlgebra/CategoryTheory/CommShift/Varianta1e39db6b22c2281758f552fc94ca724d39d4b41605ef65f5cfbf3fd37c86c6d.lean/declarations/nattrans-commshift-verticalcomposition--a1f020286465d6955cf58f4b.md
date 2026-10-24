# NatTrans.CommShift.verticalComposition

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "d5a3df2df7eaeda7f8832f0503836f11fc69c2be",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 629,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/a1/a1e39db6b22c2281758f552fc94ca724d39d4b41605ef65f5cfbf3fd37c86c6d.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:85218d59-e707-6d7b-7bce-b025024f587d",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:b52a8f89-db3c-0a56-a6aa-0ef53af05d1e",
  "kind": "lemma",
  "lexical_name": "NatTrans.CommShift.verticalComposition",
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
  "slug": "nattrans-commshift-verticalcomposition--a1f020286465d6955cf58f4b",
  "source": {
    "blob": "d5a3df2df7eaeda7f8832f0503836f11fc69c2be",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 648,
    "line": 629,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/CommShift/Varianta1e39db6b22c2281758f552fc94ca724d39d4b41605ef65f5cfbf3fd37c86c6d.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:a1f020286465d6955cf58f4bf38fc5bd55389742584cc626042efe2c20b4e8cd",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/CommShift/Varianta1e39db6b22c2281758f552fc94ca724d39d4b41605ef65f5cfbf3fd37c86c6d.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:b52a8f89-db3c-0a56-a6aa-0ef53af05d1e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 629–648.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma NatTrans.CommShift.verticalComposition {C₁ C₂ C₃ D₁ D₂ D₃ : Type*}
    [Category* C₁] [Category* C₂] [Category* C₃] [Category* D₁] [Category* D₂] [Category* D₃]
    {F₁₂ : C₁ ⥤ C₂} {F₂₃ : C₂ ⥤ C₃} {F₁₃ : C₁ ⥤ C₃} (α : F₁₃ ⟶ F₁₂ ⋙ F₂₃)
    {G₁₂ : D₁ ⥤ D₂} {G₂₃ : D₂ ⥤ D₃} {G₁₃ : D₁ ⥤ D₃} (β : G₁₂ ⋙ G₂₃ ⟶ G₁₃)
    {L₁ : C₁ ⥤ D₁} {L₂ : C₂ ⥤ D₂} {L₃ : C₃ ⥤ D₃}
    (e₁₂ : F₁₂ ⋙ L₂ ⟶ L₁ ⋙ G₁₂) (e₂₃ : F₂₃ ⋙ L₃ ⟶ L₂ ⋙ G₂₃) (e₁₃ : F₁₃ ⋙ L₃ ⟶ L₁ ⋙ G₁₃)
    (A : Type*) [AddMonoid A] [HasShift C₁ A] [HasShift C₂ A] [HasShift C₃ A]
    [HasShift D₁ A] [HasShift D₂ A] [HasShift D₃ A]
    [F₁₂.CommShift A] [F₂₃.CommShift A] [F₁₃.CommShift A] [CommShift α A]
    [G₁₂.CommShift A] [G₂₃.CommShift A] [G₁₃.CommShift A] [CommShift β A]
    [L₁.CommShift A] [L₂.CommShift A] [L₃.CommShift A]
    [CommShift e₁₂ A] [CommShift e₂₃ A]
    (h₁₃ : e₁₃ = Functor.whiskerRight α L₃ ≫ (Functor.associator _ _ _).hom ≫
      Functor.whiskerLeft F₁₂ e₂₃ ≫ (Functor.associator _ _ _).inv ≫
        Functor.whiskerRight e₁₂ G₂₃ ≫ (Functor.associator _ _ _).hom ≫
          Functor.whiskerLeft L₁ β) : CommShift e₁₃ A := by
  subst h₁₃
  infer_instance

end CategoryTheory
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/CommShift/Varianta1e39db6b22c2281758f552fc94ca724d39d4b41605ef65f5cfbf3fd37c86c6d.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/CommShift/Varianta1e39db6b22c2281758f552fc94ca724d39d4b41605ef65f5cfbf3fd37c86c6d.lean#L629).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `d5a3df2df7eaeda7f8832f0503836f11fc69c2be` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
