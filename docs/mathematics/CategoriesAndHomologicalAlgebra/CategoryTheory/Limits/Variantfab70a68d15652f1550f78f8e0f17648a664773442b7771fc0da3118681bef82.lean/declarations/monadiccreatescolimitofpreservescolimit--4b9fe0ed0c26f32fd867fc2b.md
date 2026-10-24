# monadicCreatesColimitOfPreservesColimit

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:262ec2b1e082bd022f0763d4bdeb729137f8b79bddabe3625cf55e24e84e611b",
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
  "slug": "monadiccreatescolimitofpreservescolimit--4b9fe0ed0c26f32fd867fc2b",
  "source": {
    "blob": "025c964b7796306ecb160dd4c880c36d1b8ea1bd",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 312,
    "line": 285,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Limits/Variantfab70a68d15652f1550f78f8e0f17648a664773442b7771fc0da3118681bef82.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:4b9fe0ed0c26f32fd867fc2bf51150527e5262b729aa036bf0ce45b8de31f96b",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Limits/Variantfab70a68d15652f1550f78f8e0f17648a664773442b7771fc0da3118681bef82.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:262ec2b1e082bd022f0763d4bdeb729137f8b79bddabe3625cf55e24e84e611b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 285–312.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
noncomputable def monadicCreatesColimitOfPreservesColimit (R : D ⥤ C) (K : J ⥤ D)
    [MonadicRightAdjoint R] [PreservesColimit (K ⋙ R) (monadicLeftAdjoint R ⋙ R)]
    [PreservesColimit ((K ⋙ R) ⋙ monadicLeftAdjoint R ⋙ R) (monadicLeftAdjoint R ⋙ R)] :
      CreatesColimit K R := by
  -- Porting note: It would be nice to have a variant of apply which introduces goals for missing
  -- instances.
  letI A := Monad.comparison (monadicAdjunction R)
  letI B := Monad.forget (Adjunction.toMonad (monadicAdjunction R))
  let i : (K ⋙ Monad.comparison (monadicAdjunction R)) ⋙ Monad.forget _ ≅ K ⋙ R :=
    Functor.associator _ _ _ ≪≫
      isoWhiskerLeft K (Monad.comparisonForget (monadicAdjunction R))
  letI : PreservesColimit ((K ⋙ A) ⋙ Monad.forget
    (Adjunction.toMonad (monadicAdjunction R)))
      (Adjunction.toMonad (monadicAdjunction R)).toFunctor := by
    dsimp
    exact preservesColimit_of_iso_diagram _ i.symm
  letI : PreservesColimit
    (((K ⋙ A) ⋙ Monad.forget (Adjunction.toMonad (monadicAdjunction R))) ⋙
      (Adjunction.toMonad (monadicAdjunction R)).toFunctor)
      (Adjunction.toMonad (monadicAdjunction R)).toFunctor := by
    dsimp
    exact preservesColimit_of_iso_diagram _ (isoWhiskerRight i (monadicLeftAdjoint R ⋙ R)).symm
  letI : CreatesColimit (K ⋙ A) B := CategoryTheory.Monad.forgetCreatesColimit _
  letI : CreatesColimit K (A ⋙ B) := CategoryTheory.compCreatesColimit _ _
  let e := Monad.comparisonForget (monadicAdjunction R)
  apply createsColimitOfNatIso e

/-- A monadic functor creates any colimits of shapes it preserves. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Limits/Variantfab70a68d15652f1550f78f8e0f17648a664773442b7771fc0da3118681bef82.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Limits/Variantfab70a68d15652f1550f78f8e0f17648a664773442b7771fc0da3118681bef82.lean#L285).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `025c964b7796306ecb160dd4c880c36d1b8ea1bd` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
