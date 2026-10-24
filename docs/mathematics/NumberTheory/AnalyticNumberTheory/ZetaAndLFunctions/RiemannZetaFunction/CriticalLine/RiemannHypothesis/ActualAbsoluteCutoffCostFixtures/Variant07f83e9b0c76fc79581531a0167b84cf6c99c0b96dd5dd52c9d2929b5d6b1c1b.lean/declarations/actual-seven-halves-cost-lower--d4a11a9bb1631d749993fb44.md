# actual_seven_halves_cost_lower

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:9ba54052-13c7-8e8b-7f37-523c9691093a",
  "kind": "theorem",
  "lexical_name": "actual_seven_halves_cost_lower",
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
  "slug": "actual-seven-halves-cost-lower--d4a11a9bb1631d749993fb44",
  "source": {
    "blob": "7650ab163f32ca267613bca85e170d0084894e9e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 69,
    "line": 58,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ActualAbsoluteCutoffCostFixtures/Variant07f83e9b0c76fc79581531a0167b84cf6c99c0b96dd5dd52c9d2929b5d6b1c1b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:d4a11a9bb1631d749993fb443a4a7ff2e27043eaf24925a2d64a8b93c0fb54a0",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ActualAbsoluteCutoffCostFixtures/Variant07f83e9b0c76fc79581531a0167b84cf6c99c0b96dd5dd52c9d2929b5d6b1c1b.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:9ba54052-13c7-8e8b-7f37-523c9691093a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 58–69.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem actual_seven_halves_cost_lower :
    (1 : ℝ) / 12 ≤ absoluteCutoffCost (7 / 2 : ℝ) := by
  have hU : vaughanCutoff (7 / 2 : ℝ) = 12 := by
    unfold vaughanCutoff
    apply (Nat.floor_eq_iff (sq_nonneg (7 / 2 : ℝ))).2
    constructor <;> norm_num
  have h := harmonic_div_twelve_le_absoluteCutoffCost (by norm_num : (1 : ℝ) ≤ 7 / 2)
  rw [hU] at h
  norm_num [harmonic] at h
  exact h

/-- Every complete absolute-cost term is nonnegative without any positivity for its signed flux. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ActualAbsoluteCutoffCostFixtures/Variant07f83e9b0c76fc79581531a0167b84cf6c99c0b96dd5dd52c9d2929b5d6b1c1b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ActualAbsoluteCutoffCostFixtures/Variant07f83e9b0c76fc79581531a0167b84cf6c99c0b96dd5dd52c9d2929b5d6b1c1b.lean#L58).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `7650ab163f32ca267613bca85e170d0084894e9e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
