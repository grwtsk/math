# Over.closedUnderLimitsOfShape_discrete_empty

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:cd993758e99cd65d8bec2deabf882cdac4a1e3eaa9a377ddbcb93f1cef2de2cf",
  "kind": "instance",
  "lexical_name": "Over.closedUnderLimitsOfShape_discrete_empty",
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
  "slug": "over-closedunderlimitsofshape-discrete-empty--571374aa93e19471d04286d1",
  "source": {
    "blob": "498ed5b92421af34cb5b56eb5ead9ff04d51ebdc",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 225,
    "line": 216,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/MorphismProperty/Variant27c96127bcf51d08c7599732f91172da5f810173d5e1151f2c141040a1d40cf7.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:571374aa93e19471d04286d17e5ed7ceb10788272cc21a68188dbff82e54921b",
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

Occurrence: `declaration:cd993758e99cd65d8bec2deabf882cdac4a1e3eaa9a377ddbcb93f1cef2de2cf`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 216–225.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
instance Over.closedUnderLimitsOfShape_discrete_empty [P.ContainsIdentities] [P.RespectsIso] :
    (P.overObj (X := X)).IsClosedUnderLimitsOfShape (Discrete PEmpty.{1}) :=
  CostructuredArrow.closedUnderLimitsOfShape_discrete_empty P

set_option backward.defeqAttrib.useBackward true in
/-- Let `P` be stable under composition and base change. If `P` satisfies cancellation on the right,
the subcategory of `Over X` defined by `P` is closed under pullbacks.

Without the cancellation property, this does not in general. Consider for example
`P = Function.Surjective` on `Type`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/MorphismProperty/Variant27c96127bcf51d08c7599732f91172da5f810173d5e1151f2c141040a1d40cf7.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/MorphismProperty/Variant27c96127bcf51d08c7599732f91172da5f810173d5e1151f2c141040a1d40cf7.lean#L216).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `498ed5b92421af34cb5b56eb5ead9ff04d51ebdc` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
