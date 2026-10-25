# rightMoves_mul_cases

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "d41a4d07f35515cb99c37857f6dbf3b7b0bbd7e5",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 378,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/d0/d09ab75c1191e10da07a89e7da261f2883d3bfc4a52ea6018f1a06cfef95a75f.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:502501c1-ace2-f9ec-8946-5dd516d1cb89",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:e59d8dad-dba4-2a9b-631b-2834b6790a0a",
  "kind": "theorem",
  "lexical_name": "rightMoves_mul_cases",
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
  "slug": "rightmoves-mul-cases--54d1c68125d84c067f93c7ab",
  "source": {
    "blob": "d41a4d07f35515cb99c37857f6dbf3b7b0bbd7e5",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 387,
    "line": 378,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variantd09ab75c1191e10da07a89e7da261f2883d3bfc4a52ea6018f1a06cfef95a75f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:54d1c68125d84c067f93c7ab947bd5984099743d7e100b2bf7359b7a7f96078c",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variantd09ab75c1191e10da07a89e7da261f2883d3bfc4a52ea6018f1a06cfef95a75f.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:e59d8dad-dba4-2a9b-631b-2834b6790a0a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 378–387.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem rightMoves_mul_cases {x y : PGame} (k) {P : (x * y).RightMoves → Prop}
    (hl : ∀ ix jy, P <| toRightMovesMul (Sum.inl ⟨ix, jy⟩))
    (hr : ∀ jx iy, P <| toRightMovesMul (Sum.inr ⟨jx, iy⟩)) : P k := by
  rw [← toRightMovesMul.apply_symm_apply k]
  rcases toRightMovesMul.symm k with (⟨ix, iy⟩ | ⟨jx, jy⟩)
  · apply hl
  · apply hr
#align pgame.right_moves_mul_cases SetTheory.PGame.rightMoves_mul_cases

/-- `x * y` and `y * x` have the same moves. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variantd09ab75c1191e10da07a89e7da261f2883d3bfc4a52ea6018f1a06cfef95a75f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variantd09ab75c1191e10da07a89e7da261f2883d3bfc4a52ea6018f1a06cfef95a75f.lean#L378).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `d41a4d07f35515cb99c37857f6dbf3b7b0bbd7e5` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
