# arithmeticFolders

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:71d2c090e3cbef954df48846c627aa218c0c42e6bfd3aef70c5693f09b902a5c",
  "kind": "def",
  "lexical_name": "arithmeticFolders",
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
  "slug": "arithmeticfolders--e72046b869e8ab5f0a00a6a5",
  "source": {
    "blob": "6f654d7836fbbcd9327d6a7073984014f21903f5",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 562,
    "line": 494,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/ConstantFold/Variantde3e366f02ffa802243ae4685b90a5f74420cbbb2f2b1284fa8e3b2e9559182b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:e72046b869e8ab5f0a00a6a5ae82ace247a6f812262503539b357070ce8ea219",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/ConstantFold/Variantde3e366f02ffa802243ae4685b90a5f74420cbbb2f2b1284fa8e3b2e9559182b.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:71d2c090e3cbef954df48846c627aa218c0c42e6bfd3aef70c5693f09b902a5c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 494–562.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def arithmeticFolders : List (Name × Folder) := [
  (``Nat.succ, Folder.mkUnary Nat.succ),
  (``Nat.reprFast, Folder.mkUnary Nat.reprFast),
  (``Nat.add,    Folder.first #[Folder.mkBinary Nat.add, Folder.leftRightNeutral 0 (· + ·)]),
  (``UInt8.add,  Folder.first #[Folder.mkBinary UInt8.add, Folder.leftRightNeutral (0 : UInt8) (· + ·)]),
  (``UInt16.add,  Folder.first #[Folder.mkBinary UInt16.add, Folder.leftRightNeutral (0 : UInt16) (· + ·)]),
  (``UInt32.add,  Folder.first #[Folder.mkBinary UInt32.add, Folder.leftRightNeutral (0 : UInt32) (· + ·)]),
  (``UInt64.add,  Folder.first #[Folder.mkBinary UInt64.add, Folder.leftRightNeutral (0 : UInt64) (· + ·)]),
  (``USize.add,  Folder.first #[Folder.mkBinaryUSize UInt64.add UInt32.add, Folder.leftRightNeutralUSize 0 0]),
  (``Nat.sub,    Folder.first #[Folder.mkBinary Nat.sub, Folder.leftAnnihilator 0 0 (· -  ·), Folder.rightNeutral 0 (· - ·)]),
  (``UInt8.sub,  Folder.first #[Folder.mkBinary UInt8.sub, Folder.rightNeutral (0 : UInt8) (· - ·)]),
  (``UInt16.sub,  Folder.first #[Folder.mkBinary UInt16.sub, Folder.rightNeutral (0 : UInt16) (· - ·)]),
  (``UInt32.sub,  Folder.first #[Folder.mkBinary UInt32.sub, Folder.rightNeutral (0 : UInt32) (· - ·)]),
  (``UInt64.sub,  Folder.first #[Folder.mkBinary UInt64.sub, Folder.rightNeutral (0 : UInt64) (· - ·)]),
  (``USize.sub,  Folder.first #[Folder.mkBinaryUSize UInt64.sub UInt32.sub, Folder.rightNeutralUSize 0 0]),
  -- We don't convert Nat multiplication by a power of 2 into a left shift, because the fast path
  -- for multiplication isn't any slower than a fast path for left shift that checks for overflow.
  (``Nat.mul, Folder.first #[Folder.mkBinary Nat.mul, Folder.leftRightNeutral (1 : Nat) (· * ·), Folder.leftRightAnnihilator (0 : Nat) 0 (· * ·)]),
  (``UInt8.mul,  Folder.first #[Folder.mkBinary UInt8.mul, Folder.leftRightNeutral (1 : UInt8) (· * ·), Folder.leftRightAnnihilator (0 : UInt8) 0 (· * ·), Folder.mulShift ``UInt8.shiftLeft (UInt8.shiftLeft 1 ·) UInt8.log2]),
  (``UInt16.mul,  Folder.first #[Folder.mkBinary UInt16.mul, Folder.leftRightNeutral (1 : UInt16) (· * ·), Folder.leftRightAnnihilator (0 : UInt16) 0 (· * ·), Folder.mulShift ``UInt16.shiftLeft (UInt16.shiftLeft 1 ·) UInt16.log2]),
  (``UInt32.mul,  Folder.first #[Folder.mkBinary UInt32.mul, Folder.leftRightNeutral (1 : UInt32) (· * ·), Folder.leftRightAnnihilator (0 : UInt32) 0 (· * ·), Folder.mulShift ``UInt32.shiftLeft (UInt32.shiftLeft 1 ·) UInt32.log2]),
  (``UInt64.mul,  Folder.first #[Folder.mkBinary UInt64.mul, Folder.leftRightNeutral (1 : UInt64) (· * ·), Folder.leftRightAnnihilator (0 : UInt64) 0 (· * ·), Folder.mulShift ``UInt64.shiftLeft (UInt64.shiftLeft 1 ·) UInt64.log2]),
  (``USize.mul,  Folder.first #[Folder.mkBinaryUSize UInt64.mul UInt32.mul, Folder.leftRightNeutralUSize 1 1, Folder.leftRightAnnihilatorUSize 0 0 0 0, Folder.mulShiftUSize]),
  (``Nat.div,    Folder.first #[Folder.mkBinary Nat.div, Folder.rightNeutral 1 (· / ·), Folder.divShift ``Nat.shiftRight (Nat.pow 2) Nat.log2]),
  (``UInt8.div,  Folder.first #[Folder.mkBinary UInt8.div, Folder.rightNeutral (1 : UInt8) (· / ·), Folder.divShift ``UInt8.shiftRight (UInt8.shiftLeft 1 ·) UInt8.log2]),
  (``UInt16.div,  Folder.first #[Folder.mkBinary UInt16.div, Folder.rightNeutral (1 : UInt16) (· / ·), Folder.divShift ``UInt16.shiftRight (UInt16.shiftLeft 1 ·) UInt16.log2]),
  (``UInt32.div,  Folder.first #[Folder.mkBinary UInt32.div, Folder.rightNeutral (1 : UInt32) (· / ·), Folder.divShift ``UInt32.shiftRight (UInt32.shiftLeft 1 ·) UInt32.log2]),
  (``UInt64.div,  Folder.first #[Folder.mkBinary UInt64.div, Folder.rightNeutral (1 : UInt64) (· / ·), Folder.divShift ``UInt64.shiftRight (UInt64.shiftLeft 1 ·) UInt64.log2]),
  (``USize.div,  Folder.first #[Folder.mkBinaryUSize UInt64.div UInt32.div, Folder.rightNeutralUSize 1 1, Folder.divShiftUSize]),

  (``Nat.shiftLeft, Folder.first #[Folder.mkBinary Nat.shiftLeft, Folder.rightNeutral 0 Nat.shiftLeft (by intros; rfl)]),
  (``UInt8.shiftLeft, Folder.first #[Folder.mkBinary UInt8.shiftLeft, Folder.rightNeutral 0 UInt8.shiftLeft @UInt8.shiftLeft_zero]),
  (``UInt16.shiftLeft, Folder.first #[Folder.mkBinary UInt16.shiftLeft, Folder.rightNeutral 0 UInt16.shiftLeft @UInt16.shiftLeft_zero]),
  (``UInt32.shiftLeft, Folder.first #[Folder.mkBinary UInt32.shiftLeft, Folder.rightNeutral 0 UInt32.shiftLeft @UInt32.shiftLeft_zero]),
  (``UInt64.shiftLeft, Folder.first #[Folder.mkBinary UInt64.shiftLeft, Folder.rightNeutral 0 UInt64.shiftLeft @UInt64.shiftLeft_zero]),
  (``USize.shiftLeft, Folder.first #[Folder.mkBinaryUSize UInt64.shiftLeft UInt32.shiftLeft, Folder.rightNeutralUSize 0 0]),

  (``Nat.shiftRight, Folder.first #[Folder.mkBinary Nat.shiftRight, Folder.rightNeutral 0 Nat.shiftRight (by intros; rfl)]),
  (``UInt8.shiftRight, Folder.first #[Folder.mkBinary UInt8.shiftRight, Folder.rightNeutral 0 UInt8.shiftRight @UInt8.shiftRight_zero]),
  (``UInt16.shiftRight, Folder.first #[Folder.mkBinary UInt16.shiftRight, Folder.rightNeutral 0 UInt16.shiftRight @UInt16.shiftRight_zero]),
  (``UInt32.shiftRight, Folder.first #[Folder.mkBinary UInt32.shiftRight, Folder.rightNeutral 0 UInt32.shiftRight @UInt32.shiftRight_zero]),
  (``UInt64.shiftRight, Folder.first #[Folder.mkBinary UInt64.shiftRight, Folder.rightNeutral 0 UInt64.shiftRight @UInt64.shiftRight_zero]),
  (``USize.shiftRight, Folder.first #[Folder.mkBinaryUSize UInt64.shiftRight UInt32.shiftRight, Folder.rightNeutralUSize 0 0]),

  (``Nat.land, Folder.first #[Folder.mkBinary Nat.land, Folder.leftRightAnnihilator 0 0 Nat.land]),
  (``UInt8.land, Folder.first #[Folder.mkBinary UInt8.land, Folder.leftRightAnnihilator 0 0 UInt8.land @UInt8.zero_and @UInt8.and_zero]),
  (``UInt16.land, Folder.first #[Folder.mkBinary UInt16.land, Folder.leftRightAnnihilator 0 0 UInt16.land @UInt16.zero_and @UInt16.and_zero]),
  (``UInt32.land, Folder.first #[Folder.mkBinary UInt32.land, Folder.leftRightAnnihilator 0 0 UInt32.land @UInt32.zero_and @UInt32.and_zero]),
  (``UInt64.land, Folder.first #[Folder.mkBinary UInt64.land, Folder.leftRightAnnihilator 0 0 UInt64.land @UInt64.zero_and @UInt64.and_zero]),
  (``USize.land, Folder.first #[Folder.mkBinaryUSize UInt64.land UInt32.land, Folder.leftRightAnnihilatorUSize 0 0 0 0]),

  (``Nat.lor, Folder.first #[Folder.mkBinary Nat.lor, Folder.leftRightNeutral 0 Nat.lor]),
  (``UInt8.lor, Folder.first #[Folder.mkBinary UInt8.lor, Folder.leftRightNeutral 0 UInt8.lor @UInt8.zero_or @UInt8.or_zero]),
  (``UInt16.lor, Folder.first #[Folder.mkBinary UInt16.lor, Folder.leftRightNeutral 0 UInt16.lor @UInt16.zero_or @UInt16.or_zero]),
  (``UInt32.lor, Folder.first #[Folder.mkBinary UInt32.lor, Folder.leftRightNeutral 0 UInt32.lor @UInt32.zero_or @UInt32.or_zero]),
  (``UInt64.lor, Folder.first #[Folder.mkBinary UInt64.lor, Folder.leftRightNeutral 0 UInt64.lor @UInt64.zero_or @UInt64.or_zero]),
  (``USize.lor, Folder.first #[Folder.mkBinaryUSize UInt64.lor UInt32.lor, Folder.leftRightNeutralUSize 0 0]),

  (``Nat.xor, Folder.first #[Folder.mkBinary Nat.xor, Folder.leftRightNeutral 0 Nat.xor]),
  (``UInt8.xor, Folder.first #[Folder.mkBinary UInt8.xor, Folder.leftRightNeutral 0 UInt8.xor @UInt8.zero_xor @UInt8.xor_zero]),
  (``UInt16.xor, Folder.first #[Folder.mkBinary UInt16.xor, Folder.leftRightNeutral 0 UInt16.xor @UInt16.zero_xor @UInt16.xor_zero]),
  (``UInt32.xor, Folder.first #[Folder.mkBinary UInt32.xor, Folder.leftRightNeutral 0 UInt32.xor @UInt32.zero_xor @UInt32.xor_zero]),
  (``UInt64.xor, Folder.first #[Folder.mkBinary UInt64.xor, Folder.leftRightNeutral 0 UInt64.xor @UInt64.zero_xor @UInt64.xor_zero]),
  (``USize.xor, Folder.first #[Folder.mkBinaryUSize UInt64.xor UInt32.xor, Folder.leftRightNeutralUSize 0 0]),

  (``Nat.pow, foldNatPow),
  (``Nat.nextPowerOfTwo, Folder.mkUnary Nat.nextPowerOfTwo),
]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/ConstantFold/Variantde3e366f02ffa802243ae4685b90a5f74420cbbb2f2b1284fa8e3b2e9559182b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/ConstantFold/Variantde3e366f02ffa802243ae4685b90a5f74420cbbb2f2b1284fa8e3b2e9559182b.lean#L494).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `6f654d7836fbbcd9327d6a7073984014f21903f5` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
