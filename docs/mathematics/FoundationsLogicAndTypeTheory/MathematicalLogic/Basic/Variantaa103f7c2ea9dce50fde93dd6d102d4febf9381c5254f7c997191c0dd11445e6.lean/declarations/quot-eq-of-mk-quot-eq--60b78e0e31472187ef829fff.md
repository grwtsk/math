# quot_eq_of_mk'_quot_eq

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:8a874624-b6e4-baa1-260a-52d48bed5686",
  "kind": "theorem",
  "lexical_name": "quot_eq_of_mk'_quot_eq",
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
  "slug": "quot-eq-of-mk-quot-eq--60b78e0e31472187ef829fff",
  "source": {
    "blob": "7526ebae01cb53354fa46257ccc6bd139c49b5cb",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 243,
    "line": 230,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variantaa103f7c2ea9dce50fde93dd6d102d4febf9381c5254f7c997191c0dd11445e6.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:60b78e0e31472187ef829fff18cd8008edb4e312327816c33a5ddcaff25a7d92",
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

Occurrence: `result:8a874624-b6e4-baa1-260a-52d48bed5686`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 230–243.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem quot_eq_of_mk'_quot_eq {x y : PGame} (L : x.LeftMoves ≃ y.LeftMoves)
    (R : x.RightMoves ≃ y.RightMoves) (hl : ∀ i, (⟦x.moveLeft i⟧ : Game) = ⟦y.moveLeft (L i)⟧)
    (hr : ∀ j, (⟦x.moveRight j⟧ : Game) = ⟦y.moveRight (R j)⟧) : (⟦x⟧ : Game) = ⟦y⟧ := by
  exact Quot.sound (equiv_of_mk_equiv L R (fun _ => Game.PGame.equiv_iff_game_eq.2 (hl _))
                                          (fun _ => Game.PGame.equiv_iff_game_eq.2 (hr _)))
#align pgame.quot_eq_of_mk_quot_eq SetTheory.PGame.quot_eq_of_mk'_quot_eq

/-! Multiplicative operations can be defined at the level of pre-games,
but to prove their properties we need to use the abelian group structure of games.
Hence we define them here. -/


/-- The product of `x = {xL | xR}` and `y = {yL | yR}` is
`{xL*y + x*yL - xL*yL, xR*y + x*yR - xR*yR | xL*y + x*yR - xL*yR, x*yL + xR*y - xR*yL }`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variantaa103f7c2ea9dce50fde93dd6d102d4febf9381c5254f7c997191c0dd11445e6.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variantaa103f7c2ea9dce50fde93dd6d102d4febf9381c5254f7c997191c0dd11445e6.lean#L230).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `7526ebae01cb53354fa46257ccc6bd139c49b5cb` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
