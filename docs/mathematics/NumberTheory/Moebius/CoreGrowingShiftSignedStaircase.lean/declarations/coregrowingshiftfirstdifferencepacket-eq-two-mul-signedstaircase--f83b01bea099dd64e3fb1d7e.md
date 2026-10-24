# coreGrowingShiftFirstDifferencePacket_eq_two_mul_signedStaircase

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:5debd29a-2a03-de0c-906c-a5175b49863c",
  "kind": "theorem",
  "lexical_name": "coreGrowingShiftFirstDifferencePacket_eq_two_mul_signedStaircase",
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
  "slug": "coregrowingshiftfirstdifferencepacket-eq-two-mul-signedstaircase--f83b01bea099dd64e3fb1d7e",
  "source": {
    "blob": "46c3d81dbbb8633f664d2f8eac9d9da440666b28",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 429,
    "line": 419,
    "path": "GRWTSK/NumberTheory/Moebius/CoreGrowingShiftSignedStaircase.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:f83b01bea099dd64e3fb1d7e0474c89058d1f6c1f04bacf5348d88e0039bfa6b",
  "verification": {
    "reference": "docs/verification/NumberTheory/Moebius/CoreGrowingShiftSignedStaircase.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:5debd29a-2a03-de0c-906c-a5175b49863c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 419–429.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem coreGrowingShiftFirstDifferencePacket_eq_two_mul_signedStaircase
    (j : ℕ) :
    coreGrowingShiftFirstDifferencePacket j =
      2 * coreGrowingShiftSignedStaircasePacket j := by
  rw [coreGrowingShiftFirstDifferencePacket_eq_two_mul_weightedPrefix,
    coreGrowingShiftWeightedPrefixPacket_eq_activeCells,
    coreGrowingShiftSignedActiveCellEnergy_eq_inheritedStaircase,
    coreGrowingShiftSignedStaircaseInheritedPacket_eq_explicit]

/-- Source-facing condition on the exact signed staircase.  The outer factor
two is retained so the normalization is literally the RH-facing packet. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/NumberTheory/Moebius/CoreGrowingShiftSignedStaircase.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/Moebius/CoreGrowingShiftSignedStaircase.lean#L419).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `46c3d81dbbb8633f664d2f8eac9d9da440666b28` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
