# LeftExactFunctor.of

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:daf542a0c45a60c586888d52498bd6c667e80e422c0ef03f379cd8c455f44e95",
  "kind": "def",
  "lexical_name": "LeftExactFunctor.of",
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
  "slug": "leftexactfunctor-of--05826e0d43ff6cde6f76b36c",
  "source": {
    "blob": "8de08ee9823c23a269b7353671a76b2b5441b5c0",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 180,
    "line": 177,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/ExactFunctor/Variant2fc08e5f62ef3587f91ba6ca41eeb533f1df41aa356d26bdb123fe5254f7d66a.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:05826e0d43ff6cde6f76b36ce456058d78677d7f561f5ef14912aa98dc3eddcd",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/ExactFunctor/Variant2fc08e5f62ef3587f91ba6ca41eeb533f1df41aa356d26bdb123fe5254f7d66a.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:daf542a0c45a60c586888d52498bd6c667e80e422c0ef03f379cd8c455f44e95`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 177–180.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def LeftExactFunctor.of (F : C ⥤ D) [PreservesFiniteLimits F] : C ⥤ₗ D :=
  ⟨F, inferInstance⟩

/-- Turn a right exact functor into an object of the category `RightExactFunctor C D`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/ExactFunctor/Variant2fc08e5f62ef3587f91ba6ca41eeb533f1df41aa356d26bdb123fe5254f7d66a.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/ExactFunctor/Variant2fc08e5f62ef3587f91ba6ca41eeb533f1df41aa356d26bdb123fe5254f7d66a.lean#L177).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `8de08ee9823c23a269b7353671a76b2b5441b5c0` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
