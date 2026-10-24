# prod_sdiff_le_prod_sdiff

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:cfa46daf-2dae-4a2c-9921-aaab70cd3821",
  "kind": "lemma",
  "lexical_name": "prod_sdiff_le_prod_sdiff",
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
  "slug": "prod-sdiff-le-prod-sdiff--469227ab0a1cecababffe083",
  "source": {
    "blob": "04fc6ed3e31ef9cd594f3db95e8edf87bf593bf3",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 658,
    "line": 653,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/Finset/Variant17c2e6e0d7b41171e8d023f58f583230da93ae4e8576be56ac8cbb07dd00f478.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:469227ab0a1cecababffe083e6fdd94731216740a037e4d9924be6b1087b2d2a",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/Finset/Variant17c2e6e0d7b41171e8d023f58f583230da93ae4e8576be56ac8cbb07dd00f478.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:cfa46daf-2dae-4a2c-9921-aaab70cd3821`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 653–658.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
@[to_additive] lemma prod_sdiff_le_prod_sdiff [DecidableEq ι] :
    ∏ i ∈ s \ t, f i ≤ ∏ i ∈ t \ s, f i ↔ ∏ i ∈ s, f i ≤ ∏ i ∈ t, f i := by
  rw [← mul_le_mul_iff_right, ← prod_union (disjoint_sdiff_inter _ _), sdiff_union_inter,
    ← prod_union, inter_comm, sdiff_union_inter]
  simpa only [inter_comm] using disjoint_sdiff_inter t s

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/Finset/Variant17c2e6e0d7b41171e8d023f58f583230da93ae4e8576be56ac8cbb07dd00f478.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/Finset/Variant17c2e6e0d7b41171e8d023f58f583230da93ae4e8576be56ac8cbb07dd00f478.lean#L653).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `04fc6ed3e31ef9cd594f3db95e8edf87bf593bf3` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
