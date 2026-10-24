# Initial.mono_to

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:3dcd295b27a31c1a529ed9eebd4a93e096903949b0577e6e65760495c1ec2db0",
  "kind": "instance",
  "lexical_name": "Initial.mono_to",
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
  "slug": "initial-mono-to--2d249a4841795de08ba6f02f",
  "source": {
    "blob": "5e2c34ace5439a46095aa40f18bf825ac63434f0",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 356,
    "line": 343,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Cartesian/Variantb4c79adb798855a6da5387dedc7c136c36d67894f88d27a753de3414e9f66ca3.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:2d249a4841795de08ba6f02fb42c3f56aa27ae02cb0f29811c378dfb98cabc1a",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Cartesian/Variantb4c79adb798855a6da5387dedc7c136c36d67894f88d27a753de3414e9f66ca3.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:3dcd295b27a31c1a529ed9eebd4a93e096903949b0577e6e65760495c1ec2db0`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 343–356.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
instance Initial.mono_to [HasInitial C] (B : C) [CartesianClosed C] : Mono (initial.to B) :=
  initial_mono B initialIsInitial

variable {D : Type u₂} [Category.{v₂} D]

section Functor

variable [CartesianMonoidalCategory D]

/-- Transport the property of being cartesian closed across an equivalence of categories.

Note we didn't require any coherence between the choice of finite products here, since we transport
along the `prodComparison` isomorphism.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Cartesian/Variantb4c79adb798855a6da5387dedc7c136c36d67894f88d27a753de3414e9f66ca3.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Cartesian/Variantb4c79adb798855a6da5387dedc7c136c36d67894f88d27a753de3414e9f66ca3.lean#L343).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `5e2c34ace5439a46095aa40f18bf825ac63434f0` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
