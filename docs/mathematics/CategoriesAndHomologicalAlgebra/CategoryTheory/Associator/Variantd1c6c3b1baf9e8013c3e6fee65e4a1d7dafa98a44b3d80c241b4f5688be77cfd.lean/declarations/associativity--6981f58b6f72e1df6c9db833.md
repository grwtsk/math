# associativity

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:e0e106ce3f35d65c4307cfd8f5e22a9df706e4d158bb74660762123a82b8e573",
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
  "slug": "associativity--6981f58b6f72e1df6c9db833",
  "source": {
    "blob": "5b8b6f38831ea611f4782c755381d516fa3c9035",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 178,
    "line": 145,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Associator/Variantd1c6c3b1baf9e8013c3e6fee65e4a1d7dafa98a44b3d80c241b4f5688be77cfd.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:6981f58b6f72e1df6c9db83372e7cf947e3f5a1e758e684a0bd8a0cf2fd5fa17",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Associator/Variantd1c6c3b1baf9e8013c3e6fee65e4a1d7dafa98a44b3d80c241b4f5688be77cfd.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:e0e106ce3f35d65c4307cfd8f5e22a9df706e4d158bb74660762123a82b8e573`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 145–178.

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

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Associator/Variantd1c6c3b1baf9e8013c3e6fee65e4a1d7dafa98a44b3d80c241b4f5688be77cfd.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Associator/Variantd1c6c3b1baf9e8013c3e6fee65e4a1d7dafa98a44b3d80c241b4f5688be77cfd.lean#L145).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `5b8b6f38831ea611f4782c755381d516fa3c9035` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
