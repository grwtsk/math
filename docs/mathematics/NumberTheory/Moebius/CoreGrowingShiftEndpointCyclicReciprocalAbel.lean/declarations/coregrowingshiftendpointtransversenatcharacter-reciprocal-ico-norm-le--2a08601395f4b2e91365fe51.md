# coreGrowingShiftEndpointTransverseNatCharacter_reciprocal_Ico_norm_le

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:77299395-d0f6-95cb-5221-0380364da63d",
  "kind": "theorem",
  "lexical_name": "coreGrowingShiftEndpointTransverseNatCharacter_reciprocal_Ico_norm_le",
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
  "slug": "coregrowingshiftendpointtransversenatcharacter-reciprocal-ico-norm-le--2a08601395f4b2e91365fe51",
  "source": {
    "blob": "5354bae776724ff721acaa8e4d4dab7d3a380abc",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 51,
    "line": 24,
    "path": "GRWTSK/NumberTheory/Moebius/CoreGrowingShiftEndpointCyclicReciprocalAbel.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:2a08601395f4b2e91365fe511ba1de0f07a177e5714b9c326aa52a0b24041077",
  "verification": {
    "reference": "docs/verification/NumberTheory/Moebius/CoreGrowingShiftEndpointCyclicReciprocalAbel.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:77299395-d0f6-95cb-5221-0380364da63d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 24–51.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem coreGrowingShiftEndpointTransverseNatCharacter_reciprocal_Ico_norm_le
    (j A B R : ℕ)
    (u : CoreGrowingShiftEndpointDoubledFourierIndex j)
    (hA : 1 ≤ A)
    (hAB : A < B)
    (hu : u ≠ 0) :
    ‖∑ n ∈ Finset.Ico A B,
        coreGrowingShiftEndpointTransverseNatCharacter j u n /
          (((n + R : ℕ) : ℂ))‖ ≤
      (coreGrowingShiftEndpointDoubledFourierModulus j : ℝ) /
        (2 *
          (coreGrowingShiftEndpointTransverseCircularDistance j u : ℝ) *
          (((A + R : ℕ) : ℝ))) := by
  simpa [coreGrowingShiftEndpointTransverseNatCharacter,
    coreGrowingShiftEndpointTransverseCircularDistance,
    GRWTSK.NumberTheory.CharacterSums.finiteCyclicCircularDistance] using
    GRWTSK.NumberTheory.CharacterSums.norm_sum_stdAddChar_neg_div_nat_add_Ico_le_circularDistance
      (q := coreGrowingShiftEndpointDoubledFourierModulus j)
      u A B R hA hAB hu

/-- Literal harmonic-interval specialization matching the summand used by
`coreGrowingShiftEndpointTransverseInteriorTailHarmonicXFourier`:

`character j u n * ((n + R : ℂ)⁻¹)` on `Ico (A + 1) B`.

The original arithmetic owner instantiates `A` with its affine-tail lower
endpoint and `R` with its effective shift.  This theorem handles the original
`A < B` condition exactly: when `B = A + 1`, the literal interval is empty. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/NumberTheory/Moebius/CoreGrowingShiftEndpointCyclicReciprocalAbel.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/Moebius/CoreGrowingShiftEndpointCyclicReciprocalAbel.lean#L24).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `5354bae776724ff721acaa8e4d4dab7d3a380abc` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
