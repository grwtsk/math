# coreInteriorLengthCoefficient_right_indicator

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:89b9421b-944e-d390-7275-17be16dc7eea",
  "kind": "theorem",
  "lexical_name": "coreInteriorLengthCoefficient_right_indicator",
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
  "slug": "coreinteriorlengthcoefficient-right-indicator--1e7909fe3485fbd68938abaf",
  "source": {
    "blob": "ee6e8d84b1f48946be1ec1a3629a98d09374dbb8",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 198,
    "line": 164,
    "path": "GRWTSK/NumberTheory/Moebius/CoreLengthCoefficientRightTelescope.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:1e7909fe3485fbd68938abaf4a14a10734eb6fc226b58505bec8bbe77f4c26b0",
  "verification": {
    "reference": "docs/verification/NumberTheory/Moebius/CoreLengthCoefficientRightTelescope.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:89b9421b-944e-d390-7275-17be16dc7eea`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 164–198.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem coreInteriorLengthCoefficient_right_indicator
    {j t n : ℕ}
    (ht : t ∈ rightCoefficientDepths j)
    (hnH : logarithmicShiftThreshold j ≤ n)
    (hnX : n < 2 ^ j) :
    coreInteriorLengthCoefficient j t n =
      if t < rightTerminalDepth j n then
        reciprocalSecondDifference (t + n + 1)
      else 0 := by
  simp only [rightCoefficientDepths, Finset.mem_filter,
    Finset.mem_range] at ht
  have hright : 2 ^ j ≤ t + 1 := ht.2
  by_cases hlt : t < rightTerminalDepth j n
  · rw [if_pos hlt]
    have hnN : n < harmonicShiftCount j t := by
      rw [harmonicShiftCount_eq_rightDistance hright]
      unfold rightTerminalDepth at hlt
      omega
    rw [coreInteriorLengthCoefficient_eq_right hright hnH hnN]
    unfold reciprocalSecondDifference reciprocalFirstDifference
    congr 1 <;> congr 1 <;> omega
  · rw [if_neg hlt]
    unfold coreInteriorLengthCoefficient
    rw [harmonicShiftCount_eq_rightDistance hright]
    have hnot :
        ¬ (logarithmicShiftThreshold j ≤ n ∧
          n < 2 ^ (j + 1) - t - 2) := by
      intro h
      apply hlt
      unfold rightTerminalDepth
      omega
    simp [hnot]

/-- The right interior mass telescopes to the first difference at
`2^j+n` minus the final terminal first difference. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/NumberTheory/Moebius/CoreLengthCoefficientRightTelescope.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/Moebius/CoreLengthCoefficientRightTelescope.lean#L164).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ee6e8d84b1f48946be1ec1a3629a98d09374dbb8` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
