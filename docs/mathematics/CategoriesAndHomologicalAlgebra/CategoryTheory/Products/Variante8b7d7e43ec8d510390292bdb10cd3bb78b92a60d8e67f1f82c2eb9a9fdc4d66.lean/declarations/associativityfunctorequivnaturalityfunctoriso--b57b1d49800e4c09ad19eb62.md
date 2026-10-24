# associativityFunctorEquivNaturalityFunctorIso

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:e32bc4d73ca87a3b33dbe25f05aa746c9dc9966dd7c5d2ffb4bf1d289ed0f2b7",
  "kind": "def",
  "lexical_name": "associativityFunctorEquivNaturalityFunctorIso",
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
  "slug": "associativityfunctorequivnaturalityfunctoriso--b57b1d49800e4c09ad19eb62",
  "source": {
    "blob": "061f27a6c7689d86a1b2fd8b45132bb897662705",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 202,
    "line": 178,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Products/Variante8b7d7e43ec8d510390292bdb10cd3bb78b92a60d8e67f1f82c2eb9a9fdc4d66.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:b57b1d49800e4c09ad19eb622d3026406720afc1c289bb7d7f13e60c5ae23713",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Products/Variante8b7d7e43ec8d510390292bdb10cd3bb78b92a60d8e67f1f82c2eb9a9fdc4d66.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:e32bc4d73ca87a3b33dbe25f05aa746c9dc9966dd7c5d2ffb4bf1d289ed0f2b7`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 178–202.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def associativityFunctorEquivNaturalityFunctorIso :
    ((sum.associativity A A' T).congrLeft.trans <| (Sum.functorEquiv A (A' ⊕ T) B).trans <|
      Equivalence.refl.prod <| Sum.functorEquiv _ _ B).functor ≅
        (Sum.functorEquiv (A ⊕ A') T B).trans
          ((Sum.functorEquiv A A' B).prod Equivalence.refl) |>.trans
            (prod.associativity _ _ _) |>.functor :=
  NatIso.ofComponents (fun E ↦ Iso.prod
    ((Functor.associator _ _ _).symm ≪≫
      isoWhiskerRight (sum.inlCompInverseAssociator A A' T) E ≪≫ Functor.associator _ _ _)
    (Iso.prod
      (isoWhiskerLeft _ (Functor.associator _ _ E).symm ≪≫ (Functor.associator _ _ E).symm ≪≫
        isoWhiskerRight (sum.inlCompInrCompInverseAssociator A A' T) E ≪≫ Functor.associator _ _ E)
      (isoWhiskerLeft _ (Functor.associator _ _ E).symm ≪≫ (Functor.associator _ _ E).symm ≪≫
        isoWhiskerRight (sum.inrCompInrCompInverseAssociator A A' T) E))) (by
      intros
      ext
      all_goals
        dsimp
        simp only [Category.comp_id, Category.id_comp, NatTrans.naturality])

end CompatibilityWithProductAssociator

end Sum

end CategoryTheory
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Products/Variante8b7d7e43ec8d510390292bdb10cd3bb78b92a60d8e67f1f82c2eb9a9fdc4d66.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Products/Variante8b7d7e43ec8d510390292bdb10cd3bb78b92a60d8e67f1f82c2eb9a9fdc4d66.lean#L178).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `061f27a6c7689d86a1b2fd8b45132bb897662705` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
