# Equivalence.mapContAction

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:dafeed937004678debbf99902b44d18aeef7a9f35f00f78abaea095979a8dcac",
  "kind": "def",
  "lexical_name": "Equivalence.mapContAction",
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
  "slug": "equivalence-mapcontaction--dfac555172bf328455dc0c00",
  "source": {
    "blob": "972e00d30f27ca144f4346d9fc5c7fc01b98d961",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 239,
    "line": 226,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Continuous/Variantc7d7ebbf0b87662780e82dfdd6b914311b94dcd0f0319645f35e98022c333797.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:dfac555172bf328455dc0c00363bb90076d20d56a4d2511e7761f31eadf948a6",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Continuous/Variantc7d7ebbf0b87662780e82dfdd6b914311b94dcd0f0319645f35e98022c333797.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:dafeed937004678debbf99902b44d18aeef7a9f35f00f78abaea095979a8dcac`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 226–239.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def Equivalence.mapContAction (E : V ≌ W)
    (H₁ : ∀ X : ContAction V G, ((E.functor.mapAction G).obj X.obj).IsContinuous)
    (H₂ : ∀ X : ContAction W G, ((E.inverse.mapAction G).obj X.obj).IsContinuous) :
    ContAction V G ≌ ContAction W G where
  functor := E.functor.mapContAction G H₁
  inverse := E.inverse.mapContAction G H₂
  unitIso := Functor.mapContActionCongr G E.unitIso
      (fun X ↦ X.2) (fun X ↦ H₂ ((E.functor.mapContAction G H₁).obj X))  ≪≫
    Functor.mapContActionComp G _ _ _ _
  counitIso := (Functor.mapContActionComp G _ _ _ _).symm ≪≫
    Functor.mapContActionCongr G E.counitIso _ (fun X ↦ X.2)
  functor_unitIso_comp X := (E.mapAction G).functor_unitIso_comp X.obj

end CategoryTheory
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Continuous/Variantc7d7ebbf0b87662780e82dfdd6b914311b94dcd0f0319645f35e98022c333797.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Continuous/Variantc7d7ebbf0b87662780e82dfdd6b914311b94dcd0f0319645f35e98022c333797.lean#L226).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `972e00d30f27ca144f4346d9fc5c7fc01b98d961` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
