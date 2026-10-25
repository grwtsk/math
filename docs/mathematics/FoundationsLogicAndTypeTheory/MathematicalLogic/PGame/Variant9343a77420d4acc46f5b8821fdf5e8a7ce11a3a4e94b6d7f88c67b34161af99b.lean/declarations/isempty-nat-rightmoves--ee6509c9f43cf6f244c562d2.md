# isEmpty_nat_rightMoves

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:795ced3bf69dd6ad10b4d47d16537a1f132975b98d4dc050c09c3caca25aa587",
  "kind": "instance",
  "lexical_name": "isEmpty_nat_rightMoves",
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
  "slug": "isempty-nat-rightmoves--ee6509c9f43cf6f244c562d2",
  "source": {
    "blob": "cd209ea69ea62689862c280bb5efbd52e7469f24",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 1627,
    "line": 1618,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/PGame/Variant9343a77420d4acc46f5b8821fdf5e8a7ce11a3a4e94b6d7f88c67b34161af99b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:ee6509c9f43cf6f244c562d24885abce52868f67ce253ac95e1ea627c9cd180d",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/MathematicalLogic/PGame/Variant9343a77420d4acc46f5b8821fdf5e8a7ce11a3a4e94b6d7f88c67b34161af99b.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:795ced3bf69dd6ad10b4d47d16537a1f132975b98d4dc050c09c3caca25aa587`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 1618–1627.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
instance isEmpty_nat_rightMoves : ∀ n : ℕ, IsEmpty (RightMoves n)
  | 0 => inferInstanceAs (IsEmpty PEmpty)
  | n + 1 => by
    haveI := isEmpty_nat_rightMoves n
    rw [PGame.nat_succ, rightMoves_add]
    infer_instance
#align pgame.is_empty_nat_right_moves SetTheory.PGame.isEmpty_nat_rightMoves

/-- If `w` has the same moves as `x` and `y` has the same moves as `z`,
then `w + y` has the same moves as `x + z`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/MathematicalLogic/PGame/Variant9343a77420d4acc46f5b8821fdf5e8a7ce11a3a4e94b6d7f88c67b34161af99b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/PGame/Variant9343a77420d4acc46f5b8821fdf5e8a7ce11a3a4e94b6d7f88c67b34161af99b.lean#L1618).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `cd209ea69ea62689862c280bb5efbd52e7469f24` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
