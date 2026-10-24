# Under.closedUnderColimitsOfShape_pushout

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:c6a29ee10a122fe3b8fb98800fad8a0a23153448c59ef3502cf0b348b25ab084",
  "kind": "instance",
  "lexical_name": "Under.closedUnderColimitsOfShape_pushout",
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
  "slug": "under-closedundercolimitsofshape-pushout--dd2c9bab1d31f893a2e4c038",
  "source": {
    "blob": "77887bf594e7b084cdea7a9c2ef439f99b7e4463",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 265,
    "line": 251,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/MorphismProperty/Variant9025f6f53f919e76389d8ea1362059e53087e4609c04b9142ab5bd7a27f7b471.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:dd2c9bab1d31f893a2e4c038f2e4c8c27ccbce78e7b54f7f76dc624586b61555",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/MorphismProperty/Variant9025f6f53f919e76389d8ea1362059e53087e4609c04b9142ab5bd7a27f7b471.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:c6a29ee10a122fe3b8fb98800fad8a0a23153448c59ef3502cf0b348b25ab084`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 251–265.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
instance Under.closedUnderColimitsOfShape_pushout [HasPushouts T]
    [P.IsStableUnderComposition] [P.IsStableUnderCobaseChange] [P.HasOfPrecompProperty P] :
    (P.underObj (X := X)).IsClosedUnderColimitsOfShape WalkingSpan := by
  rw [ObjectProperty.isClosedUnderColimitsOfShape_iff_op, ←
    ObjectProperty.isClosedUnderLimitsOfShape_inverseImage_iff _ _ (Over.opEquivOpUnder _),
    MorphismProperty.inverseImage_op_underObj,
    ObjectProperty.isClosedUnderLimitsOfShape_iff_of_equivalence _ walkingSpanOpEquiv]
  infer_instance

end

namespace MorphismProperty.Over

variable (X : T)

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/MorphismProperty/Variant9025f6f53f919e76389d8ea1362059e53087e4609c04b9142ab5bd7a27f7b471.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/MorphismProperty/Variant9025f6f53f919e76389d8ea1362059e53087e4609c04b9142ab5bd7a27f7b471.lean#L251).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `77887bf594e7b084cdea7a9c2ef439f99b7e4463` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
