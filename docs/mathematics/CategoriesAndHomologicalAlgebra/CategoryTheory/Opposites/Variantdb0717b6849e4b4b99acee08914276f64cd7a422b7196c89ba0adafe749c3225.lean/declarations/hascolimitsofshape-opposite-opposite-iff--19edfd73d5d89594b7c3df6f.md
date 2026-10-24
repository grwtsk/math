# hasColimitsOfShape_opposite_opposite_iff

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:1a4ab764-6afe-82b5-7fa1-cb30eac600c6",
  "kind": "lemma",
  "lexical_name": "hasColimitsOfShape_opposite_opposite_iff",
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
  "slug": "hascolimitsofshape-opposite-opposite-iff--19edfd73d5d89594b7c3df6f",
  "source": {
    "blob": "0245018d539b7c0602381c505e9f338f8cd0e0b0",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 551,
    "line": 546,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Opposites/Variantdb0717b6849e4b4b99acee08914276f64cd7a422b7196c89ba0adafe749c3225.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:19edfd73d5d89594b7c3df6fb7ff1fef2550982c7fc5c9b9246eb53d97d0fbcc",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Opposites/Variantdb0717b6849e4b4b99acee08914276f64cd7a422b7196c89ba0adafe749c3225.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:1a4ab764-6afe-82b5-7fa1-cb30eac600c6`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 546–551.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma hasColimitsOfShape_opposite_opposite_iff :
    HasColimitsOfShape Jᵒᵖ Cᵒᵖ ↔ HasLimitsOfShape J C := by
  refine ⟨fun _ ↦ hasLimitsOfShape_of_hasColimitsOfShape_op, fun _ ↦ ?_⟩
  have : HasLimitsOfShape Jᵒᵖᵒᵖ C := hasLimitsOfShape_of_equivalence (opOpEquivalence J).symm
  exact hasColimitsOfShape_op_of_hasLimitsOfShape

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Opposites/Variantdb0717b6849e4b4b99acee08914276f64cd7a422b7196c89ba0adafe749c3225.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Opposites/Variantdb0717b6849e4b4b99acee08914276f64cd7a422b7196c89ba0adafe749c3225.lean#L546).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `0245018d539b7c0602381c505e9f338f8cd0e0b0` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
