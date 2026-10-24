# coreNonboundaryAmbientLengthPacket_le_reciprocalSquare

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:2bad821d-aaa6-1d90-bf30-0c39712d9662",
  "kind": "theorem",
  "lexical_name": "coreNonboundaryAmbientLengthPacket_le_reciprocalSquare",
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
  "slug": "corenonboundaryambientlengthpacket-le-reciprocalsquare--a84be33fb32a5c3620e4cf53",
  "source": {
    "blob": "924e1353fa1f845b173628b25495cae64c05382f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 302,
    "line": 276,
    "path": "GRWTSK/NumberTheory/Moebius/CoreNonboundaryReciprocalSquareL1.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:a84be33fb32a5c3620e4cf533579ebc6d9deb9f9aa265750db7977ab2050fa49",
  "verification": {
    "reference": "docs/verification/NumberTheory/Moebius/CoreNonboundaryReciprocalSquareL1.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:2bad821d-aaa6-1d90-bf30-0c39712d9662`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 276–302.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem coreNonboundaryAmbientLengthPacket_le_reciprocalSquare
    (j : ℕ) :
    coreNonboundaryAmbientLengthPacket j ≤
      6 * reciprocalSquareAmbientShortIntervalL1Packet j := by
  unfold coreNonboundaryAmbientLengthPacket
    reciprocalSquareAmbientShortIntervalL1Packet
  calc
    2 * (∑ n ∈ Finset.Ico (logarithmicShiftThreshold j) (2 ^ j),
      harmonicAmbientShortIntervalL1 j n *
        coreLengthCoefficientMass j n) ≤
      2 * (∑ n ∈ Finset.Ico (logarithmicShiftThreshold j) (2 ^ j),
        harmonicAmbientShortIntervalL1 j n *
          (3 * ((((2 ^ j + n : ℕ) : ℝ))⁻¹ ^ 2))) := by
      apply mul_le_mul_of_nonneg_left
      · apply Finset.sum_le_sum
        intro n hn
        have hnI := Finset.mem_Ico.mp hn
        apply mul_le_mul_of_nonneg_left
        · exact le_trans (coreLengthCoefficientMass_le_full j n)
            (fullLengthCoefficientMass_le_three_inv_sq hnI.1 hnI.2)
        · exact harmonicAmbientShortIntervalL1_nonneg j n
      · norm_num
    _ = 6 * (∑ n ∈ Finset.Ico (logarithmicShiftThreshold j) (2 ^ j),
        harmonicAmbientShortIntervalL1 j n *
          ((((2 ^ j + n : ℕ) : ℝ))⁻¹ ^ 2)) := by ring

/-- Source-facing reciprocal-square ambient short-interval first moment. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/NumberTheory/Moebius/CoreNonboundaryReciprocalSquareL1.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/Moebius/CoreNonboundaryReciprocalSquareL1.lean#L276).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `924e1353fa1f845b173628b25495cae64c05382f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
