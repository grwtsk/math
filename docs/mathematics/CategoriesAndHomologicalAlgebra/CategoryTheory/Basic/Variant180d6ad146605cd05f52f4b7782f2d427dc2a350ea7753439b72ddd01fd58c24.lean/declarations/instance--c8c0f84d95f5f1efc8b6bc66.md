# Anonymous instance

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:38d93317d299a32321cc7c8d52d62beed0396ae35c7a0baa9b33bd4f7dc6fed7",
  "kind": "instance",
  "lexical_name": null,
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
  "slug": "instance--c8c0f84d95f5f1efc8b6bc66",
  "source": {
    "blob": "f777e2f0518d585f19ea97cb698a5775cd887c28",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 112,
    "line": 105,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant180d6ad146605cd05f52f4b7782f2d427dc2a350ea7753439b72ddd01fd58c24.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:c8c0f84d95f5f1efc8b6bc66a6c1520e14a9bf548817fde5fb4cbe1c21e11293",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant180d6ad146605cd05f52f4b7782f2d427dc2a350ea7753439b72ddd01fd58c24.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:38d93317d299a32321cc7c8d52d62beed0396ae35c7a0baa9b33bd4f7dc6fed7`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 105–112.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
instance : HasFunctorialFactorization I.rlp.llp I.rlp :=
  hasFunctorialFactorization I I.smallObjectκ

/-- If `I : MorphismProperty C` permits the small object argument,
then the class of morphism that have the left lifting property with respect to
the maps that have the right lifting property with respect to `I` are
exactly the retracts of transfinite compositions (indexed by `I.smallObjectκ.ord.toType`)
of pushouts of coproducts of morphisms in `C`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant180d6ad146605cd05f52f4b7782f2d427dc2a350ea7753439b72ddd01fd58c24.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant180d6ad146605cd05f52f4b7782f2d427dc2a350ea7753439b72ddd01fd58c24.lean#L105).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f777e2f0518d585f19ea97cb698a5775cd887c28` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
