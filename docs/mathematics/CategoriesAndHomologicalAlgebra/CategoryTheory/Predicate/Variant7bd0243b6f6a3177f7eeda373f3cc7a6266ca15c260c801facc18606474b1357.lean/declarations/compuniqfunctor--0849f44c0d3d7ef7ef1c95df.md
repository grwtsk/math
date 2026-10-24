# compUniqFunctor

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:bf2f263c8072b79952e427cd6b51be2fb1a6da8bd8a3580a444e2931ef23d2ed",
  "kind": "def",
  "lexical_name": "compUniqFunctor",
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
  "slug": "compuniqfunctor--0849f44c0d3d7ef7ef1c95df",
  "source": {
    "blob": "6bf68d771a6508b818de1438dcaa71e3d282d617",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 456,
    "line": 447,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Predicate/Variant7bd0243b6f6a3177f7eeda373f3cc7a6266ca15c260c801facc18606474b1357.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:0849f44c0d3d7ef7ef1c95df336de4354889bff61417b6f04c31699fdffb2312",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Predicate/Variant7bd0243b6f6a3177f7eeda373f3cc7a6266ca15c260c801facc18606474b1357.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:bf2f263c8072b79952e427cd6b51be2fb1a6da8bd8a3580a444e2931ef23d2ed`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 447–456.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def compUniqFunctor : L₁ ⋙ (uniq L₁ L₂ W').functor ≅ L₂ :=
  calc
    L₁ ⋙ (uniq L₁ L₂ W').functor ≅ (L₁ ⋙ (equivalenceFromModel L₁ W').inverse) ⋙
      (equivalenceFromModel L₂ W').functor := (associator _ _ _).symm
    _ ≅ W'.Q ⋙ (equivalenceFromModel L₂ W').functor :=
      isoWhiskerRight (compEquivalenceFromModelInverseIso L₁ W') _
    _ ≅ L₂ := qCompEquivalenceFromModelFunctorIso L₂ W'

/-- The inverse functor of equivalence of localized categories given by `Localization.uniq` is
compatible with the localization functors. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Predicate/Variant7bd0243b6f6a3177f7eeda373f3cc7a6266ca15c260c801facc18606474b1357.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Predicate/Variant7bd0243b6f6a3177f7eeda373f3cc7a6266ca15c260c801facc18606474b1357.lean#L447).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `6bf68d771a6508b818de1438dcaa71e3d282d617` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
