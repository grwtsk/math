# actual_centered_discrepancy_abs_le

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:2b3bfdc0-9a83-41d8-d3f5-cc45b43746c6",
  "kind": "theorem",
  "lexical_name": "actual_centered_discrepancy_abs_le",
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
  "slug": "actual-centered-discrepancy-abs-le--6498729c598b6d4339c07b9d",
  "source": {
    "blob": "a5a5d98bd3fd2657a617df4e6d7b3d0c5c56e34c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 41,
    "line": 31,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceActualJointCenteredDiscrepancy/Variantd74f4dae4fd8d442393ba63a0a4be4149299786000306ea3946fd5d3d0ddfd10.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:6498729c598b6d4339c07b9dfb6de525b4770ec6a62748c97553b20738ca3d77",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceActualJointCenteredDiscrepancy/Variantd74f4dae4fd8d442393ba63a0a4be4149299786000306ea3946fd5d3d0ddfd10.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:2b3bfdc0-9a83-41d8-d3f5-cc45b43746c6`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 31–41.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem actual_centered_discrepancy_abs_le (b : ℝ) (hb : 0 ≤ b) :
    |actualCenteredLogDiscrepancy b| ≤ Real.log 4 + 4 + Real.log 2 + 2 / 3 := by
  have hg0 : 0 ≤ Real.eulerMascheroniConstant := by
    linarith [Real.one_half_lt_eulerMascheroniConstant]
  unfold actualCenteredLogDiscrepancy
  calc
    _ ≤ |mangoldtLogError b| + |Real.eulerMascheroniConstant| := abs_add_le _ _
    _ ≤ _ := by
      rw [abs_of_nonneg hg0]
      linarith [mangoldtLogError_abs_le b hb, Real.eulerMascheroniConstant_lt_two_thirds]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceActualJointCenteredDiscrepancy/Variantd74f4dae4fd8d442393ba63a0a4be4149299786000306ea3946fd5d3d0ddfd10.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceActualJointCenteredDiscrepancy/Variantd74f4dae4fd8d442393ba63a0a4be4149299786000306ea3946fd5d3d0ddfd10.lean#L31).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a5a5d98bd3fd2657a617df4e6d7b3d0c5c56e34c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
