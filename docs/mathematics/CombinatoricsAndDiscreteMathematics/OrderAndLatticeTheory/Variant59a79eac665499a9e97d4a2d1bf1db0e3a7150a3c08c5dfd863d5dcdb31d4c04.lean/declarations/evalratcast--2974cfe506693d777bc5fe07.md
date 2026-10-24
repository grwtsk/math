# evalRatCast

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:907e190bb12596ed0b7cc2bb5de13a0bff27840278ee0bdb7ca0c7c73b4aa159",
  "kind": "def",
  "lexical_name": "evalRatCast",
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
  "slug": "evalratcast--2974cfe506693d777bc5fe07",
  "source": {
    "blob": "10951d5e3ded2f1bc58d6967624aa6ae0c924fe7",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 285,
    "line": 262,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/Order/Variant59a79eac665499a9e97d4a2d1bf1db0e3a7150a3c08c5dfd863d5dcdb31d4c04.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:2974cfe506693d777bc5fe073f2120eb6d02332a21b674b3f373e02f1db906cc",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Variant59a79eac665499a9e97d4a2d1bf1db0e3a7150a3c08c5dfd863d5dcdb31d4c04.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:907e190bb12596ed0b7cc2bb5de13a0bff27840278ee0bdb7ca0c7c73b4aa159`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 262–285.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def evalRatCast : PositivityExt where eval {u α} _zα _pα e := do
  let ~q(@Rat.cast _ (_) ($a : ℚ)) := e | throwError "not Rat.cast"
  match ← core q(inferInstance) q(inferInstance) a with
  | .positive pa =>
    let _oα ← synthInstanceQ q(Field $α)
    let _oα ← synthInstanceQ q(LinearOrder $α)
    let _oα ← synthInstanceQ q(IsStrictOrderedRing $α)
    assumeInstancesCommute
    return .positive q((Rat.cast_pos (K := $α)).mpr $pa)
  | .nonnegative pa =>
    let _oα ← synthInstanceQ q(Field $α)
    let _oα ← synthInstanceQ q(LinearOrder $α)
    let _oα ← synthInstanceQ q(IsStrictOrderedRing $α)
    assumeInstancesCommute
    return .nonnegative q((Rat.cast_nonneg (K := $α)).mpr $pa)
  | .nonzero pa =>
    let _oα ← synthInstanceQ q(DivisionRing $α)
    let _cα ← synthInstanceQ q(CharZero $α)
    assumeInstancesCommute
    return .nonzero q((Rat.cast_ne_zero (α := $α)).mpr $pa)
  | .none => pure .none

/-- Extension for NNRat.cast. -/
@[positivity NNRat.cast _]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Variant59a79eac665499a9e97d4a2d1bf1db0e3a7150a3c08c5dfd863d5dcdb31d4c04.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/Order/Variant59a79eac665499a9e97d4a2d1bf1db0e3a7150a3c08c5dfd863d5dcdb31d4c04.lean#L262).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `10951d5e3ded2f1bc58d6967624aa6ae0c924fe7` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
