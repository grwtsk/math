# actual_adaptive_depth_ge_four_square

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:299dcfd4-19a7-6f0c-2e23-57dedef1587d",
  "kind": "theorem",
  "lexical_name": "actual_adaptive_depth_ge_four_square",
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
  "slug": "actual-adaptive-depth-ge-four-square--d6cc9ca679fed647d707bd2d",
  "source": {
    "blob": "a952796c64ae226ff0bfd75745eca573488fa15a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 32,
    "line": 13,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Attempt01Source/Variant6d7abfa66cfc9369493534e6e9b5fe25b0c4f1936a655afe3b042874b2e87d36.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:d6cc9ca679fed647d707bd2dfa1dc3e7eecda5ff441470adbb47a31c8595e5ec",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Attempt01Source/Variant6d7abfa66cfc9369493534e6e9b5fe25b0c4f1936a655afe3b042874b2e87d36.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:299dcfd4-19a7-6f0c-2e23-57dedef1587d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 13–32.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem actual_adaptive_depth_ge_four_square (A : ℝ) (hA : 32 ≤ A) :
    4 * (vaughanCutoff A) ^ 2 ≤ adaptiveMangoldtDepth A := by
  have ha : 0 ≤ A := by linarith
  have hU : (vaughanCutoff A : ℝ) ≤ A ^ 2 := Nat.floor_le (sq_nonneg A)
  have hA2 : 945 ≤ A ^ 2 := by nlinarith
  have hexp := Real.pow_div_factorial_le_exp (2 * A) (by linarith : 0 ≤ 2 * A) 8
  norm_num at hexp
  have hpoly : 6 * A ^ 6 ≤ (2 * A) ^ 8 / (40320 : ℝ) := by
    nlinarith [mul_nonneg (pow_nonneg ha 6) (sub_nonneg.mpr hA2)]
  have hc : (vaughanCutoff A : ℝ) ^ 3 ≤ A ^ 6 := by
    convert pow_le_pow_left₀ (Nat.cast_nonneg (vaughanCutoff A)) hU 3 using 1 <;> ring
  have he : ((4 * (vaughanCutoff A) ^ 3 : ℕ) : ℝ) ≤ Real.exp (2 * A) := by
    push_cast
    nlinarith [pow_nonneg ha 6]
  have hn : 4 * (vaughanCutoff A) ^ 3 ≤ sourceKernelCutoff A := by
    exact (Nat.le_floor_iff (Real.exp_pos (2 * A)).le).mpr he
  unfold adaptiveMangoldtDepth
  apply (Nat.le_div_iff_mul_le (vaughanCutoff_pos A (by linarith : 1 ≤ A))).mpr
  convert hn using 1 <;> ring
end RH16ActualAdaptiveDepthBudget
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Attempt01Source/Variant6d7abfa66cfc9369493534e6e9b5fe25b0c4f1936a655afe3b042874b2e87d36.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Attempt01Source/Variant6d7abfa66cfc9369493534e6e9b5fe25b0c4f1936a655afe3b042874b2e87d36.lean#L13).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a952796c64ae226ff0bfd75745eca573488fa15a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
