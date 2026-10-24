# coreLongDeepDepths_eq_exactInterval

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:bc37d03a-4514-b10c-3ad7-c03904afb017",
  "kind": "theorem",
  "lexical_name": "coreLongDeepDepths_eq_exactInterval",
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
  "slug": "corelongdeepdepths-eq-exactinterval--36c4bf7fad072a58036b3457",
  "source": {
    "blob": "83dcefd45fb0f6b3b2e5ea8e2a51805dd4eaba11",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 99,
    "line": 55,
    "path": "GRWTSK/NumberTheory/Moebius/CoreGrowingShiftQuarticExplicitMultiplicity.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:36c4bf7fad072a58036b3457f9971ede0df8aee0412b42d0ed3f1bbcae86f633",
  "verification": {
    "reference": "docs/verification/NumberTheory/Moebius/CoreGrowingShiftQuarticExplicitMultiplicity.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:bc37d03a-4514-b10c-3ad7-c03904afb017`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 55–99.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem coreLongDeepDepths_eq_exactInterval
    (j : ℕ) :
    coreLongDeepDepths j =
      Finset.Ico
        (logarithmicShiftThreshold j)
        (2 ^ (j + 1) - logarithmicShiftThreshold j - 1) := by
  by_cases hj : 2 ≤ j
  · have hHX : logarithmicShiftThreshold j ≤ 2 ^ j := by
      unfold logarithmicShiftThreshold
      exact nat_add_two_le_two_pow_of_two_le hj
    have hHY :
        logarithmicShiftThreshold j ≤ 2 ^ (j + 1) - 1 := by
      rw [Nat.pow_succ]
      omega
    have hD :
        logarithmicShallowDepthCount j =
          logarithmicShiftThreshold j := by
      unfold logarithmicShallowDepthCount
      exact min_eq_left hHY
    ext t
    simp only [coreLongDeepDepths, hD,
      Finset.mem_filter, Finset.mem_Ico]
    constructor
    · rintro ⟨⟨hHt, htY⟩, hcount⟩
      refine ⟨hHt, ?_⟩
      by_cases hleft : t + 1 < 2 ^ j
      · rw [Nat.pow_succ]
        omega
      · have hright : 2 ^ j ≤ t + 1 := Nat.le_of_not_gt hleft
        rw [harmonicShiftCount_eq_rightDistance hright] at hcount
        omega
    · rintro ⟨hHt, htU⟩
      refine ⟨⟨hHt, ?_⟩, ?_⟩
      · omega
      · by_cases hleft : t + 1 < 2 ^ j
        · rw [harmonicShiftCount_eq_leftScale hleft]
          exact hHX
        · have hright : 2 ^ j ≤ t + 1 := Nat.le_of_not_gt hleft
          rw [harmonicShiftCount_eq_rightDistance hright]
          omega
  · have hsmall : j = 0 ∨ j = 1 := by omega
    rcases hsmall with rfl | rfl <;> native_decide

/-- Positive active shifts convert the max/subtraction support condition into
one ordinary interval condition on the depth. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/NumberTheory/Moebius/CoreGrowingShiftQuarticExplicitMultiplicity.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/Moebius/CoreGrowingShiftQuarticExplicitMultiplicity.lean#L55).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `83dcefd45fb0f6b3b2e5ea8e2a51805dd4eaba11` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
