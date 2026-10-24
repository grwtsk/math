# transposedIncompatibleDyadicL1Packet_eq_truncated

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:dc725033-93c4-a67a-217a-922a3a57217d",
  "kind": "theorem",
  "lexical_name": "transposedIncompatibleDyadicL1Packet_eq_truncated",
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
  "slug": "transposedincompatibledyadicl1packet-eq-truncated--e1d7f47d03f11a214ed719b7",
  "source": {
    "blob": "7ec304e3791139f6bdfc9fe385ab886e5502f90b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 169,
    "line": 144,
    "path": "GRWTSK/NumberTheory/Moebius/CoreLengthCoefficientPiecewise.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:e1d7f47d03f11a214ed719b794ddcd27b18378c0e97e33cef4b5b9ff6acfdf3d",
  "verification": {
    "reference": "docs/verification/NumberTheory/Moebius/CoreLengthCoefficientPiecewise.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:dc725033-93c4-a67a-217a-922a3a57217d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 144–169.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem transposedIncompatibleDyadicL1Packet_eq_truncated
    (j : ℕ) :
    transposedIncompatibleDyadicL1Packet j =
      2 * ∑ n ∈ Finset.Ico (logarithmicShiftThreshold j) (2 ^ j + 1),
        coreLengthCoefficientMass j n *
          incompatibleDyadicStartBlockL1 j n := by
  rw [transposedIncompatibleDyadicL1Packet_eq_lengthMass]
  have hHY :
      logarithmicShiftThreshold j ≤ 2 ^ j + 1 :=
    logarithmicShiftThreshold_le_leftScale_add_one j
  have hXY : 2 ^ j + 1 ≤ 2 ^ (j + 1) + 1 := by
    rw [Nat.pow_succ]
    omega
  rw [Finset.sum_Ico_consecutive _ hHY hXY]
  apply congrArg (fun x : ℝ => 2 * x)
  rw [add_eq_left]
  apply Finset.sum_eq_zero
  intro n hn
  have hnX : 2 ^ j < n := by
    simp only [Finset.mem_Ico] at hn
    omega
  rw [coreLengthCoefficientMass_eq_zero_of_leftScale_lt hnX, zero_mul]

/-- For scales where the logarithmic threshold reaches the dyadic range, the
truncated packet splits into non-boundary lengths plus the single boundary
length `n=2^j`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/NumberTheory/Moebius/CoreLengthCoefficientPiecewise.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/Moebius/CoreLengthCoefficientPiecewise.lean#L144).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `7ec304e3791139f6bdfc9fe385ab886e5502f90b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
