# equivFunctorToCodiscrete

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:563413bab2b572eaa035d2046f5b788501f51ea1128ee49f713dcb77d33795b0",
  "kind": "def",
  "lexical_name": "equivFunctorToCodiscrete",
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
  "slug": "equivfunctortocodiscrete--1d1b2920c5a31db9c9592c00",
  "source": {
    "blob": "7efafe311a472bbc1a9700f092df065a803dacca",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 131,
    "line": 123,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/CodiscreteCategory/Variant98204d06615fef5d733a604e7aca9aeff3f091e87a519828f79c74d9e7d65423.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:1d1b2920c5a31db9c9592c001683909cce1895c4f1fcbcb4fba51ec7714eea52",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/CodiscreteCategory/Variant98204d06615fef5d733a604e7aca9aeff3f091e87a519828f79c74d9e7d65423.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:563413bab2b572eaa035d2046f5b788501f51ea1128ee49f713dcb77d33795b0`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 123–131.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def equivFunctorToCodiscrete {C : Type u} [Category.{v} C] {A : Type w} :
    (C → A) ≃ (C ⥤ Codiscrete A) where
  toFun := functor
  invFun := invFunctor
  left_inv _ := rfl
  right_inv _ := rfl

/-- The functor that turns a type into a codiscrete category is right adjoint to the objects
functor. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/CodiscreteCategory/Variant98204d06615fef5d733a604e7aca9aeff3f091e87a519828f79c74d9e7d65423.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/CodiscreteCategory/Variant98204d06615fef5d733a604e7aca9aeff3f091e87a519828f79c74d9e7d65423.lean#L123).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `7efafe311a472bbc1a9700f092df065a803dacca` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
