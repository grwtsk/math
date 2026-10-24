# liftingConstructionLift

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:f3f81ad41a6f214879f813d65adeed67efd717b559a65fd56e242200e8142949",
  "kind": "instance",
  "lexical_name": "liftingConstructionLift",
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
  "slug": "liftingconstructionlift--c0692729c6ff2c75e1506844",
  "source": {
    "blob": "a55842102cdf31d59c728b865a322a1941aad2ee",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 333,
    "line": 324,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Predicate/Variantbee3926fb29318e8b351a832fcd5fb9ceca391ee61a36ad1229e44f03f5efdf3.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:c0692729c6ff2c75e15068445cb8f7072c1bf67669fa7108ea66e4b45b426bed",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Predicate/Variantbee3926fb29318e8b351a832fcd5fb9ceca391ee61a36ad1229e44f03f5efdf3.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:f3f81ad41a6f214879f813d65adeed67efd717b559a65fd56e242200e8142949`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 324–333.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
instance liftingConstructionLift (F : C ⥤ D) (hF : W.IsInvertedBy F) :
    Lifting W.Q W F (Construction.lift F hF) :=
  ⟨eqToIso (Construction.fac F hF)⟩
#align category_theory.localization.lifting_construction_lift CategoryTheory.Localization.liftingConstructionLift

variable (W)

/-- Given a localization functor `L : C ⥤ D` for `W : MorphismProperty C`,
if `(F₁' F₂' : D ⥤ E)` are functors which lifts functors `(F₁ F₂ : C ⥤ E)`,
a natural transformation `τ : F₁ ⟶ F₂` uniquely lifts to a natural transformation `F₁' ⟶ F₂'`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Predicate/Variantbee3926fb29318e8b351a832fcd5fb9ceca391ee61a36ad1229e44f03f5efdf3.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Predicate/Variantbee3926fb29318e8b351a832fcd5fb9ceca391ee61a36ad1229e44f03f5efdf3.lean#L324).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a55842102cdf31d59c728b865a322a1941aad2ee` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
