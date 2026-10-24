# coreGrowingShiftEndpointTransverseCircularDistance_two_mul_le

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:7c7e0a1d-a392-e924-6755-67a1901e7e8b",
  "kind": "theorem",
  "lexical_name": "coreGrowingShiftEndpointTransverseCircularDistance_two_mul_le",
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
  "slug": "coregrowingshiftendpointtransversecirculardistance-two-mul-le--78694f35eec2a2f4057d16bf",
  "source": {
    "blob": "d8c25de4ac93bfffc0e812581d3b2725088df52e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 43,
    "line": 23,
    "path": "GRWTSK/NumberTheory/Moebius/CoreGrowingShiftSignedEndpointTransverseFrequencySplitFourier.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:78694f35eec2a2f4057d16bf900b9bf5e12fc26bf5f45f05573feb9f26d6be0c",
  "verification": {
    "reference": "docs/verification/NumberTheory/Moebius/CoreGrowingShiftSignedEndpointTransverseFrequencySplitFourier.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:7c7e0a1d-a392-e924-6755-67a1901e7e8b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 23–43.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem coreGrowingShiftEndpointTransverseCircularDistance_two_mul_le
    (j : ℕ)
    (u : CoreGrowingShiftEndpointDoubledFourierIndex j) :
    2 * coreGrowingShiftEndpointTransverseCircularDistance j u ≤
      coreGrowingShiftEndpointDoubledFourierModulus j := by
  by_cases hu : u = 0
  · subst u
    simp [coreGrowingShiftEndpointTransverseCircularDistance]
  · letI : NeZero u := ⟨hu⟩
    rw [coreGrowingShiftEndpointTransverseCircularDistance,
      ZMod.val_neg_of_ne_zero]
    by_cases hside :
        u.val ≤ coreGrowingShiftEndpointDoubledFourierModulus j - u.val
    · rw [min_eq_left hside]
      have hult := ZMod.val_lt u
      omega
    · rw [min_eq_right (Nat.le_of_not_ge hside)]
      have hult := ZMod.val_lt u
      omega

/-- Circular distance lies in the endpoint half-window. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/NumberTheory/Moebius/CoreGrowingShiftSignedEndpointTransverseFrequencySplitFourier.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/Moebius/CoreGrowingShiftSignedEndpointTransverseFrequencySplitFourier.lean#L23).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `d8c25de4ac93bfffc0e812581d3b2725088df52e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
