# coreGrowingShiftEndpointRightEndpointFiniteFiber_multiplier_identity

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:6f786f27-e37b-bc20-8212-5dfd82a61709",
  "kind": "theorem",
  "lexical_name": "coreGrowingShiftEndpointRightEndpointFiniteFiber_multiplier_identity",
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
  "slug": "coregrowingshiftendpointrightendpointfinitefiber-multiplier-identity--0f92b138f059455ab76adf40",
  "source": {
    "blob": "785325539e4a184b7c3a066549a740c8a210bde9",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 57,
    "line": 33,
    "path": "GRWTSK/NumberTheory/Moebius/CoreGrowingShiftSignedEndpointRightEndpointFiniteFiber.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:0f92b138f059455ab76adf40589bde0de80c524ab1f03672f7dd7dc54b9c6451",
  "verification": {
    "reference": "docs/verification/NumberTheory/Moebius/CoreGrowingShiftSignedEndpointRightEndpointFiniteFiber.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:6f786f27-e37b-bc20-8212-5dfd82a61709`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 33–57.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem coreGrowingShiftEndpointRightEndpointFiniteFiber_multiplier_identity
    (j A B : ℕ)
    (t : CoreGrowingShiftEndpointDoubledFourierIndex j)
    (hA : 1 ≤ A)
    (hAB : A ≤ B) :
    coreGrowingShiftEndpointTransverseMultiplier j t *
        coreGrowingShiftEndpointRightEndpointFiniteFiberSum j A B t =
      coreGrowingShiftEndpointTransverseNatCharacter j t (A - 1) -
        coreGrowingShiftEndpointTransverseNatCharacter j t (B - 1) := by
  unfold coreGrowingShiftEndpointRightEndpointFiniteFiberSum
  induction B, hAB using Nat.le_induction with
  | base => simp
  | succ B hAB ih =>
      rw [Finset.sum_Ico_succ_top hAB, mul_add, ih]
      have hB : 1 ≤ B := le_trans hA hAB
      have hchar :=
        coreGrowingShiftEndpointTransverseNatCharacter_succ_mul
          j t (B - 1)
      have hBm1 : B - 1 + 1 = B := by omega
      rw [hBm1] at hchar
      unfold coreGrowingShiftEndpointTransverseMultiplier
      ring_nf at hchar ⊢
      linear_combination hchar

/-- Every standard additive-character value has norm one. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/NumberTheory/Moebius/CoreGrowingShiftSignedEndpointRightEndpointFiniteFiber.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/Moebius/CoreGrowingShiftSignedEndpointRightEndpointFiniteFiber.lean#L33).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `785325539e4a184b7c3a066549a740c8a210bde9` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
