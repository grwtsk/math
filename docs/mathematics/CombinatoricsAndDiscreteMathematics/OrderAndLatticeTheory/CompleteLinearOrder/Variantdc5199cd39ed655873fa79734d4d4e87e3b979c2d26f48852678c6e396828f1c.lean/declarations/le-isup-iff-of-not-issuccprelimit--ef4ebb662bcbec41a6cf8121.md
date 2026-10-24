# le_iSup_iff_of_not_isSuccPrelimit

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:0c52cf3f-e6bd-3425-887f-1a63d6cafd50",
  "kind": "theorem",
  "lexical_name": "le_iSup_iff_of_not_isSuccPrelimit",
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
  "slug": "le-isup-iff-of-not-issuccprelimit--ef4ebb662bcbec41a6cf8121",
  "source": {
    "blob": "ed08c937a1422f045d5f16669b50c881e8173ea9",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 207,
    "line": 201,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/CompleteLinearOrder/Variantdc5199cd39ed655873fa79734d4d4e87e3b979c2d26f48852678c6e396828f1c.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:ef4ebb662bcbec41a6cf812140737eace83f09644beb4e682ace3be1f1be2c04",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/CompleteLinearOrder/Variantdc5199cd39ed655873fa79734d4d4e87e3b979c2d26f48852678c6e396828f1c.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:0c52cf3f-e6bd-3425-887f-1a63d6cafd50`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 201–207.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem le_iSup_iff_of_not_isSuccPrelimit (h : ¬IsSuccPrelimit x) :
    x ≤ ⨆ i, f i ↔ ∃ i, x ≤ f i :=
  le_sSup_iff_of_not_isSuccPrelimit h |>.trans exists_range_iff

/-- Similar to `sSup_lt_iff` but with a stronger RHS, as it requires a strict inequality. -/
@[to_dual lt_sInf_iff
/-- Similar to `lt_sInf_iff` but with a stronger RHS, as it requires a strict inequality. -/]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/CompleteLinearOrder/Variantdc5199cd39ed655873fa79734d4d4e87e3b979c2d26f48852678c6e396828f1c.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/CompleteLinearOrder/Variantdc5199cd39ed655873fa79734d4d4e87e3b979c2d26f48852678c6e396828f1c.lean#L201).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ed08c937a1422f045d5f16669b50c881e8173ea9` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
