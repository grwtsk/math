# evaluation_preservesColimit

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:b2c429d2f9e56cffc06ac27ded11b66af9949025d61570f42564341dd80788ec",
  "kind": "instance",
  "lexical_name": "evaluation_preservesColimit",
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
  "slug": "evaluation-preservescolimit--87e5e901b067330bd903a8e0",
  "source": {
    "blob": "77e5c38d9bb37c4a5c61551ee491c2135e3b7fae",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 124,
    "line": 118,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Colimits/Variant7a1e387c10509e60ced46592ac4573b2261cc1e6791b09d86d32a7f51e695a7e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:87e5e901b067330bd903a8e030364988175f59c8b5ce3e7818338e410676244a",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Colimits/Variant7a1e387c10509e60ced46592ac4573b2261cc1e6791b09d86d32a7f51e695a7e.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:b2c429d2f9e56cffc06ac27ded11b66af9949025d61570f42564341dd80788ec`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 118–124.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
instance evaluation_preservesColimit (X : Cᵒᵖ) :
    PreservesColimit F (evaluation R X) :=
  preservesColimit_of_preserves_colimit_cocone (isColimitColimitCocone F) (colimit.isColimit _)

variable [∀ X, PreservesColimit F
  (evaluation R X ⋙ forget₂ (ModuleCat (R.obj X)) AddCommGrp)]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Colimits/Variant7a1e387c10509e60ced46592ac4573b2261cc1e6791b09d86d32a7f51e695a7e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Colimits/Variant7a1e387c10509e60ced46592ac4573b2261cc1e6791b09d86d32a7f51e695a7e.lean#L118).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `77e5c38d9bb37c4a5c61551ee491c2135e3b7fae` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
