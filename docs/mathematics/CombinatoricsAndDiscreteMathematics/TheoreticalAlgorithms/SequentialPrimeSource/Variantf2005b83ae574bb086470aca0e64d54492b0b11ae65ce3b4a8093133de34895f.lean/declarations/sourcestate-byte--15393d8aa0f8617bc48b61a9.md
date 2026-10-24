# sourceState_byte

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:25e22a73-a154-f9fc-40f6-6659790cbd53",
  "kind": "theorem",
  "lexical_name": "sourceState_byte",
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
  "slug": "sourcestate-byte--15393d8aa0f8617bc48b61a9",
  "source": {
    "blob": "cb43f6e67ffffc02ed4b6b550c69a44a190f5890",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 471,
    "line": 444,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/SequentialPrimeSource/Variantf2005b83ae574bb086470aca0e64d54492b0b11ae65ce3b4a8093133de34895f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:15393d8aa0f8617bc48b61a9a35d6301f22d5019fd3e05aaf712a635bda72c83",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/SequentialPrimeSource/Variantf2005b83ae574bb086470aca0e64d54492b0b11ae65ce3b4a8093133de34895f.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:25e22a73-a154-f9fc-40f6-6659790cbd53`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 444–471.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem sourceState_byte
    {left right : CanonicalSource}
    (equality : sourceState left = sourceState right)
    (index : Nat)
    (leftBound : index < left.utf8.size)
    (rightBound : index < right.utf8.size) :
    left.utf8[index] = right.utf8[index] := by
  apply UInt8.ext
  apply Nat.eq_of_testBit_eq
  intro bit
  by_cases bitBound : bit < 8
  · let coordinate := 7 - bit
    have coordinateBound : coordinate < 8 := by omega
    have coordinateBit : 7 - coordinate = bit := by omega
    have atBit := congrFun equality (byteAddress index coordinate)
    rw [sourceState_byteAddress left index coordinate coordinateBound leftBound,
      sourceState_byteAddress right index coordinate coordinateBound rightBound] at atBit
    simpa [byteBitMSB, coordinateBit] using atBit
  · have leftFalse := Nat.testBit_eq_false_of_lt
      (n := left.utf8[index].toNat) (i := bit)
      (lt_of_lt_of_le left.utf8[index].toNat_lt
        (Nat.pow_le_pow_right (by omega) (by omega)))
    have rightFalse := Nat.testBit_eq_false_of_lt
      (n := right.utf8[index].toNat) (i := bit)
      (lt_of_lt_of_le right.utf8[index].toNat_lt
        (Nat.pow_le_pow_right (by omega) (by omega)))
    rw [leftFalse, rightFalse]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/SequentialPrimeSource/Variantf2005b83ae574bb086470aca0e64d54492b0b11ae65ce3b4a8093133de34895f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/SequentialPrimeSource/Variantf2005b83ae574bb086470aca0e64d54492b0b11ae65ce3b4a8093133de34895f.lean#L444).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `cb43f6e67ffffc02ed4b6b550c69a44a190f5890` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
