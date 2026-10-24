# Functor.rightDerivedObjInjectiveSucc

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:96b02033f6a314942f6f2f412eb68600392149fdd7489ba2cd9a558e1fbba27b",
  "kind": "def",
  "lexical_name": "Functor.rightDerivedObjInjectiveSucc",
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
  "slug": "functor-rightderivedobjinjectivesucc--0be9395de7302275e5a66d5e",
  "source": {
    "blob": "1886f7421ca4de2239a0ea86b677d40f46b1aa31",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 112,
    "line": 103,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/RightDerived/Variantad78119c86d7bab2df36199ed060fee85f67e9984f6e67b3378c67b1bbd8e07a.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:0be9395de7302275e5a66d5e617bed137a3d41883057489fe5f6534d4332942e",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/RightDerived/Variantad78119c86d7bab2df36199ed060fee85f67e9984f6e67b3378c67b1bbd8e07a.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:96b02033f6a314942f6f2f412eb68600392149fdd7489ba2cd9a558e1fbba27b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 103–112.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def Functor.rightDerivedObjInjectiveSucc (F : C ⥤ D) [F.Additive] (n : ℕ) (X : C) [Injective X] :
    (F.rightDerived (n + 1)).obj X ≅ 0 :=
  F.rightDerivedObjIso (n + 1) (InjectiveResolution.self X) ≪≫
    (homologyFunctor _ _ _).mapIso ((CochainComplex.single₀MapHomologicalComplex F).app X) ≪≫
      (CochainComplex.homologyFunctorSuccSingle₀ D n).app (F.obj X) ≪≫ (Functor.zero_obj _).isoZero
#align category_theory.functor.right_derived_obj_injective_succ CategoryTheory.Functor.rightDerivedObjInjectiveSucc

/-- We can compute a right derived functor on a morphism using a descent of that morphism
to a cochain map between chosen injective resolutions.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/RightDerived/Variantad78119c86d7bab2df36199ed060fee85f67e9984f6e67b3378c67b1bbd8e07a.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/RightDerived/Variantad78119c86d7bab2df36199ed060fee85f67e9984f6e67b3378c67b1bbd8e07a.lean#L103).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `1886f7421ca4de2239a0ea86b677d40f46b1aa31` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
