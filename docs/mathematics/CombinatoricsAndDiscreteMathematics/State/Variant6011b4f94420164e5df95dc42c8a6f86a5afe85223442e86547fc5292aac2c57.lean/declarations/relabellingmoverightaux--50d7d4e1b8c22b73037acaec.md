# relabellingMoveRightAux

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:327deca53e2812ef41024291cb5830abc8a23e02a9530595605ea4020a718b47",
  "kind": "def",
  "lexical_name": "relabellingMoveRightAux",
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
  "slug": "relabellingmoverightaux--50d7d4e1b8c22b73037acaec",
  "source": {
    "blob": "ae13a687134d42bc748fe284067e3264dac05e87",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 194,
    "line": 181,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/State/Variant6011b4f94420164e5df95dc42c8a6f86a5afe85223442e86547fc5292aac2c57.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:50d7d4e1b8c22b73037acaec85fd4e7bbb10ba887d6d8401f9c9727d69919249",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/State/Variant6011b4f94420164e5df95dc42c8a6f86a5afe85223442e86547fc5292aac2c57.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:327deca53e2812ef41024291cb5830abc8a23e02a9530595605ea4020a718b47`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 181–194.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def relabellingMoveRightAux (n : ℕ) {s : S} (h : turnBound s ≤ n)
    (t : RightMoves (ofStateAux n s h)) :
    Relabelling (moveRight (ofStateAux n s h) t)
      (ofStateAux (n - 1) ((rightMovesOfStateAux n h) t : S)
        (turnBound_of_right ((rightMovesOfStateAux n h) t).2 (n - 1)
          (Nat.le_trans h le_tsub_add))) := by
  induction n
  · have t' := (rightMovesOfStateAux 0 h) t
    exfalso; exact turnBound_ne_zero_of_right_move t'.2 (nonpos_iff_eq_zero.mp h)
  · rfl

/-- The relabelling showing `moveRight` applied to a game constructed using `of`
has itself been constructed using `of`.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/State/Variant6011b4f94420164e5df95dc42c8a6f86a5afe85223442e86547fc5292aac2c57.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/State/Variant6011b4f94420164e5df95dc42c8a6f86a5afe85223442e86547fc5292aac2c57.lean#L181).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ae13a687134d42bc748fe284067e3264dac05e87` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
