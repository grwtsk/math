# opcyclesToE_map

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:482582ce-88d7-3ea6-cd37-77b2773dff22",
  "kind": "lemma",
  "lexical_name": "opcyclesToE_map",
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
  "slug": "opcyclestoe-map--f29c314e194e6a43ae64e648",
  "source": {
    "blob": "ba2d5fe329ad6e8f57e0ca4008171cfcb2d0f04a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 952,
    "line": 931,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Page/Variante330462938b8041778c755932fad9da1bea14a6064e2c994114a5b267c534c60.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:f29c314e194e6a43ae64e6481f1102bdb0a0de48a38d2fbb98ff7a39e5811fb2",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Page/Variante330462938b8041778c755932fad9da1bea14a6064e2c994114a5b267c534c60.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:482582ce-88d7-3ea6-cd37-77b2773dff22`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 931–952.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma opcyclesToE_map (α : mk₃ f₁ f₂ f₃ ⟶ mk₃ f₁' f₂' f₃') (β : mk₂ f₁₂ f₃ ⟶ mk₂ f₁₂' f₃')
    (n₀ n₁ n₂ : ℤ) (h₀ : β.app 0 = α.app 0 := by cat_disch) (h₁ : β.app 1 = α.app 2 := by cat_disch)
    (hn₁ : n₀ + 1 = n₁ := by lia) (hn₂ : n₁ + 1 = n₂ := by lia) :
    X.opcyclesToE f₁ f₂ f₃ f₁₂ h₁₂ n₀ n₁ n₂ hn₁ hn₂ ≫ X.map _ _ _ _ _ _ α _ _ _ =
      X.opcyclesMap _ _ _ _ β _ ≫ X.opcyclesToE f₁' f₂' f₃' f₁₂' h₁₂' n₀ n₁ n₂ hn₁ hn₂ := by
  rw [← cancel_mono (X.ιE ..), Category.assoc, Category.assoc, opcyclesToE_ιE ..,
    ← cancel_epi (X.pOpcycles ..), p_opcyclesToE_assoc ..,
    X.πE_map_assoc _ _ _ _ _ _ _
      (homMk₂ (α.app 0) (α.app 1) (α.app 2) (naturality' α 0 1) (naturality' α 1 2)) ..,
    πE_ιE .., X.cyclesMap_i_assoc .., toCycles_i_assoc,
    X.p_opcyclesMap_assoc .., X.p_opcyclesMap ..,
    ← Functor.map_comp_assoc, ← Functor.map_comp_assoc]
  congr 2
  ext
  · simpa [h₀] using naturality' α 0 1
  · simp [h₁]

end SpectralObject

end Abelian

end CategoryTheory
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Page/Variante330462938b8041778c755932fad9da1bea14a6064e2c994114a5b267c534c60.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Page/Variante330462938b8041778c755932fad9da1bea14a6064e2c994114a5b267c534c60.lean#L931).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ba2d5fe329ad6e8f57e0ca4008171cfcb2d0f04a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
