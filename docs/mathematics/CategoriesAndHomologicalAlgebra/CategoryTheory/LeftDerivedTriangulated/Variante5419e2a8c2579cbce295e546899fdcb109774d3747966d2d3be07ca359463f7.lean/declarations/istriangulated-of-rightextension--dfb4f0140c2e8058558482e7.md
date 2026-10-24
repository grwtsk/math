# isTriangulated_of_rightExtension

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:f88ab687-9ecf-b5c5-48ff-a9be53c83212",
  "kind": "lemma",
  "lexical_name": "isTriangulated_of_rightExtension",
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
  "slug": "istriangulated-of-rightextension--dfb4f0140c2e8058558482e7",
  "source": {
    "blob": "63307eb8e941a0c7fe7d6dc45910b1f879e98e18",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 68,
    "line": 49,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/LeftDerivedTriangulated/Variante5419e2a8c2579cbce295e546899fdcb109774d3747966d2d3be07ca359463f7.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:dfb4f0140c2e8058558482e7fb56d2cc833f12e82b0de5c86380929b72affa17",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/LeftDerivedTriangulated/Variante5419e2a8c2579cbce295e546899fdcb109774d3747966d2d3be07ca359463f7.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:f88ab687-9ecf-b5c5-48ff-a9be53c83212`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 49–68.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
public lemma isTriangulated_of_rightExtension
    (α : L ⋙ F' ⟶ F) [NatTrans.CommShift α ℤ]
    (h : ∀ ⦃X Y : H⦄ (f : X ⟶ Y), ∃ (T : Triangle C) (_ : T ∈ distTriang C)
      (_ : IsIso (α.app T.obj₁)) (_ : IsIso (α.app T.obj₂)) (_ : IsIso (α.app T.obj₃)),
      Nonempty (Arrow.mk (L.map T.mor₁) ≅ Arrow.mk f)) : F'.IsTriangulated where
  map_distinguished T hT := by
    suffices ∃ (T' : Triangle H) (_ : T ≅ T'), F'.mapTriangle.obj T' ∈ distTriang D by
      obtain ⟨T', e, hT'⟩ := this
      exact isomorphic_distinguished _ hT' _ (F'.mapTriangle.mapIso e)
    obtain ⟨T', hT', h₁, h₂, h₃, ⟨e⟩⟩ := h T.mor₁
    refine ⟨L.mapTriangle.obj T', (isoTriangleOfIso₁₂ _ _
        (L.map_distinguished T' hT') hT (Arrow.leftFunc.mapIso e)
        (Arrow.rightFunc.mapIso e) (by simp)).symm,
      isomorphic_distinguished _ (F.map_distinguished T' hT') _
        (((mapTriangleCompIso L F').symm.app T') ≪≫
          (Triangle.isoMk _ _ (asIso (α.app _)) (asIso (α.app _)) (asIso (α.app _))
            (by simp [dsimp% α.naturality]) (by simp [dsimp% α.naturality]) ?_))⟩
    simp [← dsimp% α.naturality_assoc, NatTrans.shift_app_comm]

end CategoryTheory.Functor
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/LeftDerivedTriangulated/Variante5419e2a8c2579cbce295e546899fdcb109774d3747966d2d3be07ca359463f7.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/LeftDerivedTriangulated/Variante5419e2a8c2579cbce295e546899fdcb109774d3747966d2d3be07ca359463f7.lean#L49).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `63307eb8e941a0c7fe7d6dc45910b1f879e98e18` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
