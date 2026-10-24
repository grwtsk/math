# comonFunctorCategoryEquivalence

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:bdfab5e4470905a026854366851acd3538cbd2097558d6cd7fd4a909760d1563",
  "kind": "def",
  "lexical_name": "comonFunctorCategoryEquivalence",
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
  "slug": "comonfunctorcategoryequivalence--62d7011560e419c1d86ccc64",
  "source": {
    "blob": "4ba7686f1c68a853a5c5c43e89391bf2e44859d8",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 275,
    "line": 258,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/FunctorCategory/Variant3cf715c8966f3b74f434910fdc522479a0e275039173102b9239ce4aa91b2a8a.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:62d7011560e419c1d86ccc64b8e8b5ec9935efbe41b5737a2f797b8a9471cd45",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/FunctorCategory/Variant3cf715c8966f3b74f434910fdc522479a0e275039173102b9239ce4aa91b2a8a.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:bdfab5e4470905a026854366851acd3538cbd2097558d6cd7fd4a909760d1563`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 258–275.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def comonFunctorCategoryEquivalence : Comon (C ⥤ D) ≌ C ⥤ Comon D where
  functor := functor
  inverse := inverse
  unitIso := unitIso
  counitIso := counitIso

variable [BraidedCategory.{v₂} D]

namespace CommMonFunctorCategoryEquivalence

variable {C D}

set_option backward.isDefEq.respectTransparency.types false in
set_option backward.defeqAttrib.useBackward true in
/-- Functor translating a commutative monoid object in a functor category
to a functor into the category of commutative monoid objects.
-/
@[simps!]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/FunctorCategory/Variant3cf715c8966f3b74f434910fdc522479a0e275039173102b9239ce4aa91b2a8a.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/FunctorCategory/Variant3cf715c8966f3b74f434910fdc522479a0e275039173102b9239ce4aa91b2a8a.lean#L258).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `4ba7686f1c68a853a5c5c43e89391bf2e44859d8` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
