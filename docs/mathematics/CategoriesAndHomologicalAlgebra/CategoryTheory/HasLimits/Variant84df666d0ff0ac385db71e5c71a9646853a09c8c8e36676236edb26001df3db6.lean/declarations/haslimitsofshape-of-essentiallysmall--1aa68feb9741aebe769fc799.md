# HasLimitsOfShape.of_essentiallySmall

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:4550ac93-c1fe-9643-8f9b-398abc2e0355",
  "kind": "lemma",
  "lexical_name": "HasLimitsOfShape.of_essentiallySmall",
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
  "slug": "haslimitsofshape-of-essentiallysmall--1aa68feb9741aebe769fc799",
  "source": {
    "blob": "e660253d98b1ff988ef969d2a3f6a96995292573",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 702,
    "line": 694,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/HasLimits/Variant84df666d0ff0ac385db71e5c71a9646853a09c8c8e36676236edb26001df3db6.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:1aa68feb9741aebe769fc7991eaf2273122eb31777aabe261a158f85612114c3",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/HasLimits/Variant84df666d0ff0ac385db71e5c71a9646853a09c8c8e36676236edb26001df3db6.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:4550ac93-c1fe-9643-8f9b-398abc2e0355`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 694–702.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma HasLimitsOfShape.of_essentiallySmall
    [HasLimitsOfSize.{v₁, u₁} C] (J : Type u₂) [Category.{v₂} J]
    [EssentiallySmall.{u₁} J] [LocallySmall.{v₁} J] :
    HasLimitsOfShape J C := by
  have := HasLimitsOfShape.of_small.{v₁, u₁} C (SmallModel.{u₁} J)
  exact hasLimitsOfShape_of_equivalence (equivSmallModel.{u₁} J).symm

/-- A category that has larger limits also has smaller limits. -/
@[to_dual /-- A category that has larger colimits also has smaller colimits. -/]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/HasLimits/Variant84df666d0ff0ac385db71e5c71a9646853a09c8c8e36676236edb26001df3db6.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/HasLimits/Variant84df666d0ff0ac385db71e5c71a9646853a09c8c8e36676236edb26001df3db6.lean#L694).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e660253d98b1ff988ef969d2a3f6a96995292573` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
