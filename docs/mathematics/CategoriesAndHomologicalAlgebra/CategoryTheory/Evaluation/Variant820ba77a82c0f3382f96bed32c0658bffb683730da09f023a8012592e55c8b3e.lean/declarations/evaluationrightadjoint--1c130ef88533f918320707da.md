# evaluationRightAdjoint

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:bbf8ce6688c96fafd07732f9e97e5ab8b06c81d6687f8a899c6da528c5f4a472",
  "kind": "def",
  "lexical_name": "evaluationRightAdjoint",
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
  "slug": "evaluationrightadjoint--1c130ef88533f918320707da",
  "source": {
    "blob": "0143fe17f0749146bbb17fc685ae3c581604294b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 109,
    "line": 95,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Evaluation/Variant820ba77a82c0f3382f96bed32c0658bffb683730da09f023a8012592e55c8b3e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:1c130ef88533f918320707da53926768cb91dc8d009c89fd7547831491c2c4ce",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Evaluation/Variant820ba77a82c0f3382f96bed32c0658bffb683730da09f023a8012592e55c8b3e.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:bbf8ce6688c96fafd07732f9e97e5ab8b06c81d6687f8a899c6da528c5f4a472`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 95–109.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def evaluationRightAdjoint (c : C) : D ⥤ C ⥤ D where
  obj d :=
    { obj := fun t => ∏ fun _ : t ⟶ c => d
      map := fun f => Pi.lift fun g => Pi.π _ <| f ≫ g }
  map f :=
    { app := fun t => Pi.lift fun g => Pi.π _ g ≫ f
      naturality := by
        intros
        dsimp
        ext
        simp }
#align category_theory.evaluation_right_adjoint CategoryTheory.evaluationRightAdjoint

/-- The adjunction showing that evaluation is a left adjoint. -/
@[simps! unit_app_app counit_app]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Evaluation/Variant820ba77a82c0f3382f96bed32c0658bffb683730da09f023a8012592e55c8b3e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Evaluation/Variant820ba77a82c0f3382f96bed32c0658bffb683730da09f023a8012592e55c8b3e.lean#L95).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `0143fe17f0749146bbb17fc685ae3c581604294b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
