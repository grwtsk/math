# associativityFunctorEquivNaturalityFunctorIso

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:f4c1ad1b1af729c3b463aac15a16b6221351d2ce004980a1916bfce18cfc4086",
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
  "slug": "associativityfunctorequivnaturalityfunctoriso--6d17b0c2c4eae58c195b3577",
  "source": {
    "blob": "6a109beb4396736de52b79d7230fad7f19d576ae",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 179,
    "line": 155,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Products/Variant3d2103c13a340bd080919da3036c5cc322ace83d59a99bdf27d1692fdd583c43.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:6d17b0c2c4eae58c195b357719e3ee18b1fb97d5aafcd2f8ff49e221de45d665",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Products/Variant3d2103c13a340bd080919da3036c5cc322ace83d59a99bdf27d1692fdd583c43.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:f4c1ad1b1af729c3b463aac15a16b6221351d2ce004980a1916bfce18cfc4086`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 155–179.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def associativityFunctorEquivNaturalityFunctorIso :
    ((sum.associativity A A' T).congrLeft.trans <| (Sum.functorEquiv A (A' ⊕ T) B).trans <|
      Equivalence.refl.prod <| Sum.functorEquiv _ _ B).functor ≅
        (Sum.functorEquiv (A ⊕ A') T B).trans
          ((Sum.functorEquiv A A' B).prod Equivalence.refl)|>.trans
            (prod.associativity _ _ _)|>.functor :=
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

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Products/Variant3d2103c13a340bd080919da3036c5cc322ace83d59a99bdf27d1692fdd583c43.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Products/Variant3d2103c13a340bd080919da3036c5cc322ace83d59a99bdf27d1692fdd583c43.lean#L155).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `6a109beb4396736de52b79d7230fad7f19d576ae` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
