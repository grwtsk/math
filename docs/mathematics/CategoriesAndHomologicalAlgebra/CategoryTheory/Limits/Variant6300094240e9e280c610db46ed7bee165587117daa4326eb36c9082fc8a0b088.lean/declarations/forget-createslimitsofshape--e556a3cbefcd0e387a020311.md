# forget_createsLimitsOfShape

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:7a12091156cbd604bd2379621f6ea8ddae6b07f295ab94c72f6b496e117d6987",
  "kind": "instance",
  "lexical_name": "forget_createsLimitsOfShape",
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
  "slug": "forget-createslimitsofshape--e556a3cbefcd0e387a020311",
  "source": {
    "blob": "5b50cb5d76573358d73710f23a83465435a2a30d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 448,
    "line": 440,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Limits/Variant6300094240e9e280c610db46ed7bee165587117daa4326eb36c9082fc8a0b088.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:e556a3cbefcd0e387a020311919eb397662a4735c8b638f2a4a0ffbd3ccc194b",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Limits/Variant6300094240e9e280c610db46ed7bee165587117daa4326eb36c9082fc8a0b088.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:7a12091156cbd604bd2379621f6ea8ddae6b07f295ab94c72f6b496e117d6987`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 440–448.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
noncomputable instance forget_createsLimitsOfShape (J : Type v) [Category.{w} J] :
    CreatesLimitsOfShape J (forget CommGrp.{u}) where
  CreatesLimit := inferInstance

/-- The forgetful functor from commutative groups to types creates all limits.
-/
@[to_additive
  "The forgetful functor from additive commutative groups to types creates all limits.",
  to_additive_relevant_arg 2]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Limits/Variant6300094240e9e280c610db46ed7bee165587117daa4326eb36c9082fc8a0b088.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Limits/Variant6300094240e9e280c610db46ed7bee165587117daa4326eb36c9082fc8a0b088.lean#L440).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `5b50cb5d76573358d73710f23a83465435a2a30d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
