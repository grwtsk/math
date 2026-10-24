# Functor.leftDerivedObjProjectiveSucc

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:07797907c5a967085e6ca6bc7115adcffccd742efc56311b5eb92c81da83cb11",
  "kind": "def",
  "lexical_name": "Functor.leftDerivedObjProjectiveSucc",
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
  "slug": "functor-leftderivedobjprojectivesucc--25d8392e226034383d4f0d0b",
  "source": {
    "blob": "877e846cb5ac1176ebda6524062353b1ad8e0813",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 107,
    "line": 96,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/LeftDerived/Variant3cdc5dd8fdaac548ecb63fbe18755960d3cd3542eb02f1ddb5bac272b972af7b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:25d8392e226034383d4f0d0be371bab4c7380750e43de2c55a79dfc2cef091f4",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/LeftDerived/Variant3cdc5dd8fdaac548ecb63fbe18755960d3cd3542eb02f1ddb5bac272b972af7b.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:07797907c5a967085e6ca6bc7115adcffccd742efc56311b5eb92c81da83cb11`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 96–107.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def Functor.leftDerivedObjProjectiveSucc (F : C ⥤ D) [F.Additive] (n : ℕ) (X : C) [Projective X] :
    (F.leftDerived (n + 1)).obj X ≅ 0 :=
  F.leftDerivedObjIso (n + 1) (ProjectiveResolution.self X) ≪≫
    (homologyFunctor _ _ _).mapIso ((ChainComplex.single₀MapHomologicalComplex F).app X) ≪≫
      (ChainComplex.homologyFunctorSuccSingle₀ D n).app (F.obj X) ≪≫ (Functor.zero_obj _).isoZero
#align category_theory.functor.left_derived_obj_projective_succ CategoryTheory.Functor.leftDerivedObjProjectiveSucc

end

/-- We can compute a left derived functor on a morphism using a lift of that morphism
to a chain map between chosen projective resolutions.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/LeftDerived/Variant3cdc5dd8fdaac548ecb63fbe18755960d3cd3542eb02f1ddb5bac272b972af7b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/LeftDerived/Variant3cdc5dd8fdaac548ecb63fbe18755960d3cd3542eb02f1ddb5bac272b972af7b.lean#L96).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `877e846cb5ac1176ebda6524062353b1ad8e0813` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
