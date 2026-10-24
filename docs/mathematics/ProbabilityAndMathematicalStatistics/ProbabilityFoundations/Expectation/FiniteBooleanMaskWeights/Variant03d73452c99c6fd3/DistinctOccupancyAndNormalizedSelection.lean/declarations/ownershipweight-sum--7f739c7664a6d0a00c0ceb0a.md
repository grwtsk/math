# ownershipWeight_sum

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:5b6e3acd-41db-ae65-dcb2-83a94607b0a6",
  "kind": "theorem",
  "lexical_name": "ownershipWeight_sum",
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
  "slug": "ownershipweight-sum--7f739c7664a6d0a00c0ceb0a",
  "source": {
    "blob": "59ed7f932a56ba67e5e775070278d7eaa709d6eb",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 104,
    "line": 84,
    "path": "GRWTSK/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/Expectation/FiniteBooleanMaskWeights/Variant03d73452c99c6fd3/DistinctOccupancyAndNormalizedSelection.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:7f739c7664a6d0a00c0ceb0adc28ad47d1e904d1b0495392d746a7df764b03a5",
  "verification": {
    "reference": "docs/verification/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/Expectation/FiniteBooleanMaskWeights/Variant03d73452c99c6fd3/DistinctOccupancyAndNormalizedSelection.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:5b6e3acd-41db-ae65-dcb2-83a94607b0a6`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 84–104.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem ownershipWeight_sum {count : Nat} (mask : OwnershipSelectionMask count)
    (selected : selectedOwnerCount mask ≠ 0) :
    ∑ index, ownershipWeight mask index = 1 := by
  classical
  have distribute :
      (∑ index, ownershipWeight mask index) =
        (∑ index, if mask index then (1 : ℚ) else 0) /
          selectedOwnerCount mask := by
    rw [Finset.sum_div]
    apply Finset.sum_congr rfl
    intro index _
    by_cases chosen : mask index = true
    · simp [ownershipWeight, chosen]
    · have rejected : mask index = false := Bool.eq_false_of_not_eq_true chosen
      simp [ownershipWeight, rejected]
  rw [distribute]
  simp only [Finset.sum_boole]
  change (selectedOwnerCount mask : ℚ) / (selectedOwnerCount mask : ℚ) = 1
  exact div_self (Nat.cast_ne_zero.mpr selected)

/-- Pure ownership has exactly one selected owner. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../verification/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/Expectation/FiniteBooleanMaskWeights/Variant03d73452c99c6fd3/DistinctOccupancyAndNormalizedSelection.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/Expectation/FiniteBooleanMaskWeights/Variant03d73452c99c6fd3/DistinctOccupancyAndNormalizedSelection.lean#L84).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `59ed7f932a56ba67e5e775070278d7eaa709d6eb` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
