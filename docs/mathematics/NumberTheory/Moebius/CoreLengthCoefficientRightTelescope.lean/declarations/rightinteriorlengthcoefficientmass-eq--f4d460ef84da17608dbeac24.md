# rightInteriorLengthCoefficientMass_eq

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:dd935c9d-acee-ef44-29d3-24dd1cebf3e0",
  "kind": "theorem",
  "lexical_name": "rightInteriorLengthCoefficientMass_eq",
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
  "slug": "rightinteriorlengthcoefficientmass-eq--f4d460ef84da17608dbeac24",
  "source": {
    "blob": "ee6e8d84b1f48946be1ec1a3629a98d09374dbb8",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 251,
    "line": 199,
    "path": "GRWTSK/NumberTheory/Moebius/CoreLengthCoefficientRightTelescope.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:f4d460ef84da17608dbeac24012043fe6fab7803a2b0d6715d0af1c0ed7eb04f",
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

Occurrence: `result:dd935c9d-acee-ef44-29d3-24dd1cebf3e0`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 199–251.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem rightInteriorLengthCoefficientMass_eq
    {j n : ℕ}
    (hnH : logarithmicShiftThreshold j ≤ n)
    (hnX : n < 2 ^ j) :
    (∑ t ∈ rightCoefficientDepths j,
      coreInteriorLengthCoefficient j t n) =
      reciprocalFirstDifference (2 ^ j + n) -
        reciprocalFirstDifference (2 ^ (j + 1) - 1) := by
  have hn : 1 ≤ n := by
    have hH : 1 ≤ logarithmicShiftThreshold j := by
      unfold logarithmicShiftThreshold
      omega
    omega
  rw [rightCoefficientDepths_eq_Ico]
  have hLT :
      2 ^ j - 1 ≤ rightTerminalDepth j n := by
    unfold rightTerminalDepth
    rw [Nat.pow_succ]
    omega
  have hTY :
      rightTerminalDepth j n ≤ 2 ^ (j + 1) := by
    unfold rightTerminalDepth
    omega
  calc
    (∑ t ∈ Finset.Ico (2 ^ j - 1) (2 ^ (j + 1)),
      coreInteriorLengthCoefficient j t n) =
      ∑ t ∈ Finset.Ico (2 ^ j - 1) (2 ^ (j + 1)),
        if t < rightTerminalDepth j n then
          reciprocalSecondDifference (t + n + 1)
        else 0 := by
      apply Finset.sum_congr rfl
      intro t ht
      rw [coreInteriorLengthCoefficient_right_indicator
        (by
          rw [rightCoefficientDepths_eq_Ico]
          exact ht)
        hnH hnX]
    _ = ∑ t ∈ Finset.Ico (2 ^ j - 1) (rightTerminalDepth j n),
        reciprocalSecondDifference (t + n + 1) := by
      exact sum_Ico_indicator_lt reciprocalSecondDifference hLT hTY
    _ = ∑ m ∈ Finset.Ico (2 ^ j + n) (2 ^ (j + 1) - 1),
        reciprocalSecondDifference m := by
      rw [sum_Ico_shift reciprocalSecondDifference
        (2 ^ j - 1) (rightTerminalDepth j n) (n + 1)]
      congr 2 <;>
        unfold rightTerminalDepth <;> omega
    _ = reciprocalFirstDifference (2 ^ j + n) -
        reciprocalFirstDifference (2 ^ (j + 1) - 1) := by
      apply sum_reciprocalSecondDifference_Ico
      rw [Nat.pow_succ]
      omega

/-- Exact right-regime terminal-plus-interior telescope. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/NumberTheory/Moebius/CoreLengthCoefficientRightTelescope.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/Moebius/CoreLengthCoefficientRightTelescope.lean#L199).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ee6e8d84b1f48946be1ec1a3629a98d09374dbb8` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
