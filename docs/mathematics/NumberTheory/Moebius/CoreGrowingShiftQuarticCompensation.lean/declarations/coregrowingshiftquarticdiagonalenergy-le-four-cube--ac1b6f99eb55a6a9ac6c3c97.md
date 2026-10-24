# coreGrowingShiftQuarticDiagonalEnergy_le_four_cube

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:48220960-27d7-f070-0a5d-5338bb9c68f2",
  "kind": "theorem",
  "lexical_name": "coreGrowingShiftQuarticDiagonalEnergy_le_four_cube",
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
  "slug": "coregrowingshiftquarticdiagonalenergy-le-four-cube--ac1b6f99eb55a6a9ac6c3c97",
  "source": {
    "blob": "3518dbff04192d80d5d1cbf70d56011fab2cb8e5",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 302,
    "line": 249,
    "path": "GRWTSK/NumberTheory/Moebius/CoreGrowingShiftQuarticCompensation.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:ac1b6f99eb55a6a9ac6c3c9733456a92cbb6da48f058839f6ffd71663a6e9760",
  "verification": {
    "reference": "docs/verification/NumberTheory/Moebius/CoreGrowingShiftQuarticCompensation.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:48220960-27d7-f070-0a5d-5338bb9c68f2`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 249–302.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem coreGrowingShiftQuarticDiagonalEnergy_le_four_cube
    (j : ℕ) :
    coreGrowingShiftQuarticDiagonalEnergy j ≤
      4 * (((2 ^ j : ℕ) : ℝ)) ^ 3 := by
  let X : ℕ := 2 ^ j
  let Y : ℕ := 2 ^ (j + 1)
  have hcard :
      ((coreLongDeepDepths j).card : ℝ) ≤ (Y : ℝ) := by
    exact_mod_cast coreLongDeepDepths_card_le_rightScale j
  have hYX : (Y : ℝ) = 2 * (X : ℝ) := by
    dsimp [X, Y]
    rw [Nat.pow_succ]
    norm_num
    ring
  unfold coreGrowingShiftQuarticDiagonalEnergy
  calc
    (∑ t ∈ coreLongDeepDepths j,
      ∑ k ∈ Finset.range (harmonicShiftCount j t),
        mertensTwoPointQuarticDiagonal
          (harmonicShiftLower j t + k) (t + 1)) ≤
      ∑ t ∈ coreLongDeepDepths j,
        (harmonicShiftCount j t : ℝ) * (t + 1 : ℝ) := by
          apply Finset.sum_le_sum
          intro t _ht
          exact coreGrowingShiftQuarticDiagonalDepth_le j t
    _ ≤ ∑ _t ∈ coreLongDeepDepths j,
        (X : ℝ) * (Y : ℝ) := by
          apply Finset.sum_le_sum
          intro t ht
          have hN :
              (harmonicShiftCount j t : ℝ) ≤ (X : ℝ) := by
            dsimp [X]
            exact_mod_cast harmonicShiftCount_le_leftScale j t
          have ht' := ht
          simp only [coreLongDeepDepths, Finset.mem_filter,
            Finset.mem_Ico] at ht'
          have htY : t + 1 ≤ Y := by
            dsimp [Y]
            omega
          have htYR : ((t + 1 : ℕ) : ℝ) ≤ (Y : ℝ) := by
            exact_mod_cast htY
          exact mul_le_mul hN htYR (by positivity) (by positivity)
    _ = ((coreLongDeepDepths j).card : ℝ) *
        ((X : ℝ) * (Y : ℝ)) := by simp
    _ ≤ (Y : ℝ) * ((X : ℝ) * (Y : ℝ)) := by
      apply mul_le_mul_of_nonneg_right hcard
      positivity
    _ = 4 * (X : ℝ) ^ 3 := by
      rw [hYX]
      ring
    _ = 4 * (((2 ^ j : ℕ) : ℝ)) ^ 3 := by rfl

/-- Exact off-diagonal compensation proposition.  The positive diagonal is
kept visible rather than absorbed into an unsigned square-energy name. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/NumberTheory/Moebius/CoreGrowingShiftQuarticCompensation.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/Moebius/CoreGrowingShiftQuarticCompensation.lean#L249).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `3518dbff04192d80d5d1cbf70d56011fab2cb8e5` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
