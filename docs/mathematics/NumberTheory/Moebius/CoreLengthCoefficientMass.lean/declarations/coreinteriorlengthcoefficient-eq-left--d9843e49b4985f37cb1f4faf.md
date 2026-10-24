# coreInteriorLengthCoefficient_eq_left

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:354eafd2-d289-dace-d25b-da3c146272db",
  "kind": "theorem",
  "lexical_name": "coreInteriorLengthCoefficient_eq_left",
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
  "slug": "coreinteriorlengthcoefficient-eq-left--d9843e49b4985f37cb1f4faf",
  "source": {
    "blob": "2ec29fb62160ffffbad322d48730172b68726c84",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 176,
    "line": 152,
    "path": "GRWTSK/NumberTheory/Moebius/CoreLengthCoefficientMass.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:d9843e49b4985f37cb1f4fafed187e2a8d40b9c5d59d3002fb0e0068db7ef8af",
  "verification": {
    "reference": "docs/verification/NumberTheory/Moebius/CoreLengthCoefficientMass.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:354eafd2-d289-dace-d25b-da3c146272db`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 152–176.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem coreInteriorLengthCoefficient_eq_left
    {j t n : ℕ}
    (ht : t + 1 < 2 ^ j)
    (hnH : logarithmicShiftThreshold j ≤ n)
    (hnX : n < 2 ^ j) :
    coreInteriorLengthCoefficient j t n =
      ((((2 ^ j + n - 1 : ℕ) : ℝ))⁻¹ -
        (((2 ^ j + n : ℕ) : ℝ))⁻¹) -
      ((((2 ^ j + n : ℕ) : ℝ))⁻¹ -
        (((2 ^ j + n + 1 : ℕ) : ℝ))⁻¹) := by
  unfold coreInteriorLengthCoefficient harmonicShiftSecondDifference
    harmonicShiftFirstDifference
  rw [if_pos ⟨hnH, by simpa [harmonicShiftCount_eq_leftScale ht] using hnX⟩]
  rw [harmonicShiftReciprocal_eq_left ht,
    harmonicShiftReciprocal_eq_left ht,
    harmonicShiftReciprocal_eq_left ht]
  have hn : 1 ≤ n := by
    have hH : 1 ≤ logarithmicShiftThreshold j := by
      unfold logarithmicShiftThreshold
      omega
    omega
  congr 1 <;> congr 1 <;> omega

/-- In the right regime, an interior coefficient is the reciprocal second
difference whose denominator advances literally with depth. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/NumberTheory/Moebius/CoreLengthCoefficientMass.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/Moebius/CoreLengthCoefficientMass.lean#L152).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `2ec29fb62160ffffbad322d48730172b68726c84` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
