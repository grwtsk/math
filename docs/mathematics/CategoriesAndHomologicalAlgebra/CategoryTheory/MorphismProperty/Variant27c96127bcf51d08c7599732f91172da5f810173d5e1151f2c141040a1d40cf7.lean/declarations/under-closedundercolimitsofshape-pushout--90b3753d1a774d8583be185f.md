# Under.closedUnderColimitsOfShape_pushout

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:982b09da00c28ccf8ff543f37d1886d5057d0b0d8639b79d1eb13bd661526164",
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
  "slug": "under-closedundercolimitsofshape-pushout--90b3753d1a774d8583be185f",
  "source": {
    "blob": "498ed5b92421af34cb5b56eb5ead9ff04d51ebdc",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 257,
    "line": 243,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/MorphismProperty/Variant27c96127bcf51d08c7599732f91172da5f810173d5e1151f2c141040a1d40cf7.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:90b3753d1a774d8583be185f1acfd144a7ee59e3edc42cd8e969440eb149b601",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/MorphismProperty/Variant27c96127bcf51d08c7599732f91172da5f810173d5e1151f2c141040a1d40cf7.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:982b09da00c28ccf8ff543f37d1886d5057d0b0d8639b79d1eb13bd661526164`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 243–257.

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

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/MorphismProperty/Variant27c96127bcf51d08c7599732f91172da5f810173d5e1151f2c141040a1d40cf7.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/MorphismProperty/Variant27c96127bcf51d08c7599732f91172da5f810173d5e1151f2c141040a1d40cf7.lean#L243).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `498ed5b92421af34cb5b56eb5ead9ff04d51ebdc` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
