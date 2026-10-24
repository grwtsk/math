# isEquivalence_imp

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:bbc4a22f-766c-9cc5-f31d-a8a1f55f2565",
  "kind": "lemma",
  "lexical_name": "isEquivalence_imp",
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
  "slug": "isequivalence-imp--73f1c3927d09b79c98205f5c",
  "source": {
    "blob": "e73bc93bc18354b9603e6d75f4a13ff4c82d20d5",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 129,
    "line": 113,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/LocalizerMorphism/Variantd8b38da2d585500413e9bbdba068f76986e0e9d3787040c18133920456e688ba.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:73f1c3927d09b79c98205f5c6b28da985dbfeaf57a63e18d904276dfbd2466ab",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/LocalizerMorphism/Variantd8b38da2d585500413e9bbdba068f76986e0e9d3787040c18133920456e688ba.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:bbc4a22f-766c-9cc5-f31d-a8a1f55f2565`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 113–129.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma isEquivalence_imp [G.IsEquivalence] : G'.IsEquivalence :=
  let E₁ := Localization.uniq L₁ L₁' W₁
  let E₂ := Localization.uniq L₂ L₂' W₂
  let e : L₁ ⋙ G ⋙ E₂.functor ≅ L₁ ⋙ E₁.functor ⋙ G' :=
    calc
      L₁ ⋙ G ⋙ E₂.functor ≅ Φ.functor ⋙ L₂ ⋙ E₂.functor :=
          (Functor.associator _ _ _).symm ≪≫
            isoWhiskerRight (CatCommSq.iso Φ.functor L₁ L₂ G).symm E₂.functor ≪≫
            Functor.associator _ _ _
      _ ≅ Φ.functor ⋙ L₂' := isoWhiskerLeft Φ.functor (compUniqFunctor L₂ L₂' W₂)
      _ ≅ L₁' ⋙ G' := CatCommSq.iso Φ.functor L₁' L₂' G'
      _ ≅ L₁ ⋙ E₁.functor ⋙ G' :=
            isoWhiskerRight (compUniqFunctor L₁ L₁' W₁).symm G' ≪≫ Functor.associator _ _ _
  have := Functor.isEquivalence_of_iso
    (liftNatIso L₁ W₁ _ _ (G ⋙ E₂.functor) (E₁.functor ⋙ G') e)
  Functor.isEquivalence_of_comp_left E₁.functor G'

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/LocalizerMorphism/Variantd8b38da2d585500413e9bbdba068f76986e0e9d3787040c18133920456e688ba.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/LocalizerMorphism/Variantd8b38da2d585500413e9bbdba068f76986e0e9d3787040c18133920456e688ba.lean#L113).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e73bc93bc18354b9603e6d75f4a13ff4c82d20d5` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
