# preservesBinaryCoproducts_of_preservesCokernels

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:fd0cb9d3-f977-2762-1b5b-49e13ef87437",
  "kind": "lemma",
  "lexical_name": "preservesBinaryCoproducts_of_preservesCokernels",
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
  "slug": "preservesbinarycoproducts-of-preservescokernels--cce947a4fcb9ba9d0cedc051",
  "source": {
    "blob": "e4d2678ec3a1e2a4e57787b4e27942666ac36d56",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 176,
    "line": 165,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/LeftExact/Variant24164104edc44dea8c18215de7443502aa5aea2ce6da019c751a4ac87777b3ea.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:cce947a4fcb9ba9d0cedc051082122a7f9c8f3d5666da68429c194b0b24546b5",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/LeftExact/Variant24164104edc44dea8c18215de7443502aa5aea2ce6da019c751a4ac87777b3ea.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:fd0cb9d3-f977-2762-1b5b-49e13ef87437`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 165–176.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma preservesBinaryCoproducts_of_preservesCokernels
    [∀ {X Y} (f : X ⟶ Y), PreservesColimit (parallelPair f 0) F] :
    PreservesColimitsOfShape (Discrete WalkingPair) F where
  preservesColimit := preservesColimit_of_iso_diagram F (diagramIsoPair _).symm

attribute [local instance] preservesBinaryCoproducts_of_preservesCokernels

variable [HasBinaryBiproducts C]

set_option backward.defeqAttrib.useBackward true in
/-- A functor between preadditive categories preserves the coequalizer of two
morphisms if it preserves all cokernels. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/LeftExact/Variant24164104edc44dea8c18215de7443502aa5aea2ce6da019c751a4ac87777b3ea.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/LeftExact/Variant24164104edc44dea8c18215de7443502aa5aea2ce6da019c751a4ac87777b3ea.lean#L165).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e4d2678ec3a1e2a4e57787b4e27942666ac36d56` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
