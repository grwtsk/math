# associativity

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:e4aab605c1c4b90dc047707a7a2927b4abfc23f886a64a68cfddf69c61b95831",
  "kind": "def",
  "lexical_name": "associativity",
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
  "slug": "associativity--d8474bfad914b197de2a4d59",
  "source": {
    "blob": "90a80bcb302b9f3e103fe2872bb24fd319fd0067",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 186,
    "line": 153,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Associator/Variant2d4c71e9cb23d416ca7f777fe55ddf3211d26d714a8b84145fe3778c5dab7496.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:d8474bfad914b197de2a4d59b5a987d55ca857e61563a44cecd84cc4e8bf7c7e",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Associator/Variant2d4c71e9cb23d416ca7f777fe55ddf3211d26d714a8b84145fe3778c5dab7496.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:e4aab605c1c4b90dc047707a7a2927b4abfc23f886a64a68cfddf69c61b95831`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 153–186.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def associativity : (C ⊕ D) ⊕ E ≌ C ⊕ (D ⊕ E) where
  functor := associator C D E
  inverse := inverseAssociator C D E
  unitIso := Functor.sumIsoExt
    (Functor.sumIsoExt
      ((Functor.associator _ _ _).symm ≪≫ Functor.rightUnitor _ ≪≫
        (isoWhiskerRight (inlCompInlCompAssociator C D E) (inverseAssociator C D E) ≪≫
          inlCompInverseAssociator C D E).symm ≪≫ Functor.associator _ _ _)
      ((Functor.associator _ _ _).symm ≪≫ Functor.rightUnitor _ ≪≫
        (isoWhiskerRight (inrCompInlCompAssociator C D E) (inverseAssociator C D E) ≪≫
          inlCompInrCompInverseAssociator C D E).symm ≪≫
        Functor.associator _ _ _ ≪≫ isoWhiskerLeft _ (Functor.associator _ _ _)))
    (Functor.rightUnitor _ ≪≫
      (isoWhiskerRight (inrCompAssociator C D E) (inverseAssociator C D E) ≪≫
        Functor.associator _ _ _ ≪≫ inrCompInrCompInverseAssociator C D E).symm ≪≫
      Functor.associator _ _ _)
  counitIso := Functor.sumIsoExt
    ((Functor.associator _ _ _).symm ≪≫
      isoWhiskerRight (inlCompInverseAssociator C D E) (associator C D E) ≪≫
      Functor.associator _ _ _ ≪≫ inlCompInlCompAssociator C D E ≪≫ (Functor.rightUnitor _).symm)
    (Functor.sumIsoExt
      ((Functor.associator _ _ _).symm ≪≫ (Functor.associator _ _ _).symm ≪≫
        isoWhiskerRight (Functor.associator _ _ _ ≪≫
          inlCompInrCompInverseAssociator C D E) (associator C D E) ≪≫
        Functor.associator _ _ _ ≪≫ inrCompInlCompAssociator C D E ≪≫ (Functor.rightUnitor _).symm)
      ((Functor.associator _ _ _).symm ≪≫ (Functor.associator _ _ _).symm ≪≫
        isoWhiskerRight (Functor.associator _ _ _ ≪≫
          inrCompInrCompInverseAssociator C D E) (associator C D E) ≪≫
        inrCompAssociator C D E ≪≫ isoWhiskerLeft _ (Functor.rightUnitor _).symm))
  functor_unitIso_comp x := match x with
    | inl (inl c) => by simp [inlCompInlCompAssociator, inlCompInverseAssociator]
    | inl (inr d) => by simp [inrCompInlCompAssociator, inlCompInrCompInverseAssociator]
    | inr e => by simp [inrCompAssociator, inrCompInrCompInverseAssociator]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Associator/Variant2d4c71e9cb23d416ca7f777fe55ddf3211d26d714a8b84145fe3778c5dab7496.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Associator/Variant2d4c71e9cb23d416ca7f777fe55ddf3211d26d714a8b84145fe3778c5dab7496.lean#L153).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `90a80bcb302b9f3e103fe2872bb24fd319fd0067` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
