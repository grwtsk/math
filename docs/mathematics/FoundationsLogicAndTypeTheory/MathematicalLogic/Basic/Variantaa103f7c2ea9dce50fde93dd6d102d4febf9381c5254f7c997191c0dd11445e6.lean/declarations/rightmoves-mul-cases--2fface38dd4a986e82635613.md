# rightMoves_mul_cases

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:60c47615-b653-1dcf-2341-4f7b8470f97c",
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
  "slug": "rightmoves-mul-cases--2fface38dd4a986e82635613",
  "source": {
    "blob": "7526ebae01cb53354fa46257ccc6bd139c49b5cb",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 395,
    "line": 386,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variantaa103f7c2ea9dce50fde93dd6d102d4febf9381c5254f7c997191c0dd11445e6.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:2fface38dd4a986e8263561372b084d812453b2983ac15fc2b036cf034a9b914",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variantaa103f7c2ea9dce50fde93dd6d102d4febf9381c5254f7c997191c0dd11445e6.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:60c47615-b653-1dcf-2341-4f7b8470f97c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 386–395.

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

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variantaa103f7c2ea9dce50fde93dd6d102d4febf9381c5254f7c997191c0dd11445e6.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variantaa103f7c2ea9dce50fde93dd6d102d4febf9381c5254f7c997191c0dd11445e6.lean#L386).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `7526ebae01cb53354fa46257ccc6bd139c49b5cb` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
