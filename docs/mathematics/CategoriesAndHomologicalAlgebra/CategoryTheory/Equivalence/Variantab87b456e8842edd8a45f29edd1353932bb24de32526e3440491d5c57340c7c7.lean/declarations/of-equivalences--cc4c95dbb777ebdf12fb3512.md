# of_equivalences

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:e84095b1-bf87-8bc6-ca1a-6f51946f8ecc",
  "kind": "lemma",
  "lexical_name": "of_equivalences",
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
  "slug": "of-equivalences--cc4c95dbb777ebdf12fb3512",
  "source": {
    "blob": "ef30e1ec6d53808ec423ce90f1c1af6e8a6746dd",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 121,
    "line": 108,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Equivalence/Variantab87b456e8842edd8a45f29edd1353932bb24de32526e3440491d5c57340c7c7.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:cc4c95dbb777ebdf12fb3512b027de931eeb6cce18968d6855380d80d0448853",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Equivalence/Variantab87b456e8842edd8a45f29edd1353932bb24de32526e3440491d5c57340c7c7.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:e84095b1-bf87-8bc6-ca1a-6f51946f8ecc`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 108–121.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma of_equivalences (L₁ : C₁ ⥤ D₁) (W₁ : MorphismProperty C₁) [L₁.IsLocalization W₁]
    (L₂ : C₂ ⥤ D₂) (W₂ : MorphismProperty C₂)
    (E : C₁ ≌ C₂) (E' : D₁ ≌ D₂) [CatCommSq E.functor L₁ L₂ E'.functor]
    (hW₁ : W₁ ≤ W₂.isoClosure.inverseImage E.functor) (hW₂ : W₂.IsInvertedBy L₂) :
    L₂.IsLocalization W₂ := by
  haveI : (E.functor ⋙ L₂).IsLocalization W₁ :=
    of_equivalence_target L₁ W₁ _ E' ((CatCommSq.iso _ _ _ _).symm)
  exact of_equivalence_source (E.functor ⋙ L₂) W₁ L₂ W₂ E hW₁ hW₂ (Iso.refl _)

end IsLocalization

end Functor

end CategoryTheory
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Equivalence/Variantab87b456e8842edd8a45f29edd1353932bb24de32526e3440491d5c57340c7c7.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Equivalence/Variantab87b456e8842edd8a45f29edd1353932bb24de32526e3440491d5c57340c7c7.lean#L108).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ef30e1ec6d53808ec423ce90f1c1af6e8a6746dd` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
