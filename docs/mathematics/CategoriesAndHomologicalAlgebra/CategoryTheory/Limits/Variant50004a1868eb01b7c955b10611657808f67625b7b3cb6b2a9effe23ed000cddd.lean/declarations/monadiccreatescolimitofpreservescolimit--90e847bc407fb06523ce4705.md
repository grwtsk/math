# monadicCreatesColimitOfPreservesColimit

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:a95c6f53b57fbe180153b8bf15a6da4b3d2e56cc2808042c9a7530448f9f7b41",
  "kind": "def",
  "lexical_name": "monadicCreatesColimitOfPreservesColimit",
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
  "slug": "monadiccreatescolimitofpreservescolimit--90e847bc407fb06523ce4705",
  "source": {
    "blob": "3eddd8635913e10161cec1516a0a305a3931d4e4",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 342,
    "line": 314,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Limits/Variant50004a1868eb01b7c955b10611657808f67625b7b3cb6b2a9effe23ed000cddd.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:90e847bc407fb06523ce470599ec9b7ea41d91afcb1ea0cc6a76ba7c76baab30",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Limits/Variant50004a1868eb01b7c955b10611657808f67625b7b3cb6b2a9effe23ed000cddd.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:a95c6f53b57fbe180153b8bf15a6da4b3d2e56cc2808042c9a7530448f9f7b41`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 314–342.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
noncomputable def monadicCreatesColimitOfPreservesColimit (R : D ⥤ C) (K : J ⥤ D)
    [MonadicRightAdjoint R] [PreservesColimit (K ⋙ R) (leftAdjoint R ⋙ R)]
    [PreservesColimit ((K ⋙ R) ⋙ leftAdjoint R ⋙ R) (leftAdjoint R ⋙ R)] :
      CreatesColimit K R := by
  -- Porting note: It would be nice to have a variant of apply which introduces goals for missing
  -- instances.
  letI A := Monad.comparison (Adjunction.ofRightAdjoint R)
  letI B := Monad.forget (Adjunction.toMonad (Adjunction.ofRightAdjoint R))
  let i : (K ⋙ Monad.comparison (Adjunction.ofRightAdjoint R)) ⋙ Monad.forget _ ≅ K ⋙ R :=
    Functor.associator _ _ _ ≪≫
      isoWhiskerLeft K (Monad.comparisonForget (Adjunction.ofRightAdjoint R))
  letI : PreservesColimit ((K ⋙ A) ⋙ Monad.forget
    (Adjunction.toMonad (Adjunction.ofRightAdjoint R)))
      (Adjunction.toMonad (Adjunction.ofRightAdjoint R)).toFunctor := by
    dsimp
    refine' preservesColimitOfIsoDiagram _ i.symm
  letI : PreservesColimit
    (((K ⋙ A) ⋙ Monad.forget (Adjunction.toMonad (Adjunction.ofRightAdjoint R))) ⋙
      (Adjunction.toMonad (Adjunction.ofRightAdjoint R)).toFunctor)
      (Adjunction.toMonad (Adjunction.ofRightAdjoint R)).toFunctor := by
    dsimp
    refine' preservesColimitOfIsoDiagram _ (isoWhiskerRight i (leftAdjoint R ⋙ R)).symm
  letI : CreatesColimit (K ⋙ A) B := CategoryTheory.Monad.forgetCreatesColimit _
  letI : CreatesColimit K (A ⋙ B) := CategoryTheory.compCreatesColimit _ _
  let e := (Monad.comparisonForget (Adjunction.ofRightAdjoint R))
  apply createsColimitOfNatIso e
#align category_theory.monadic_creates_colimit_of_preserves_colimit CategoryTheory.monadicCreatesColimitOfPreservesColimit

/-- A monadic functor creates any colimits of shapes it preserves. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Limits/Variant50004a1868eb01b7c955b10611657808f67625b7b3cb6b2a9effe23ed000cddd.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Limits/Variant50004a1868eb01b7c955b10611657808f67625b7b3cb6b2a9effe23ed000cddd.lean#L314).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `3eddd8635913e10161cec1516a0a305a3931d4e4` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
