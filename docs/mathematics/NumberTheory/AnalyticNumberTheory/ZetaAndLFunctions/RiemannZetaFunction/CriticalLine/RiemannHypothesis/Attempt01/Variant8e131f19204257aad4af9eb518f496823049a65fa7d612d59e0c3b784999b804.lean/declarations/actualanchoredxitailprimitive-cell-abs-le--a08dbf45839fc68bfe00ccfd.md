# actualAnchoredXiTailPrimitive_cell_abs_le

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:59a14972-d226-d144-9267-50c4f2ecd307",
  "kind": "theorem",
  "lexical_name": "actualAnchoredXiTailPrimitive_cell_abs_le",
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
  "slug": "actualanchoredxitailprimitive-cell-abs-le--a08dbf45839fc68bfe00ccfd",
  "source": {
    "blob": "6d29a1b8213650619d25131d856e93cce8f6fe43",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 134,
    "line": 95,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Attempt01/Variant8e131f19204257aad4af9eb518f496823049a65fa7d612d59e0c3b784999b804.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:a08dbf45839fc68bfe00ccfdf7db40a5d34ab8d4320e871a970f7ecf6f1e66fd",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Attempt01/Variant8e131f19204257aad4af9eb518f496823049a65fa7d612d59e0c3b784999b804.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:59a14972-d226-d144-9267-50c4f2ecd307`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 95–134.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem actualAnchoredXiTailPrimitive_cell_abs_le {N : ℕ} {Y : ℝ}
    (hN : 7 ≤ N) (hY : (N : ℝ) ≤ Y) (hYs : Y ≤ (N + 1 : ℕ)) :
    |actualAnchoredXiTailPrimitive (Real.log Y) -
      actualAnchoredXiTailPrimitive (Real.log (N : ℝ))| ≤
      2 * (Real.log 4 + 5 + |2 * (Real.eulerMascheroniConstant + 1 - Real.log 2)|) /
        Real.sqrt (N : ℝ) := by
  let c : ℝ := 2 * (Real.eulerMascheroniConstant + 1 - Real.log 2)
  have hn : 1 ≤ (N : ℝ) := by exact_mod_cast (show 1 ≤ N by omega)
  have hsnp : 0 < Real.sqrt (N : ℝ) := Real.sqrt_pos.2 (by linarith)
  have hb := cell_sqrt_bounds (by omega : 1 ≤ N) hY hYs
  rw [actualAnchoredXiTailPrimitive_cell_difference hN hY hYs]
  change |2 * (Chebyshev.psi (N : ℝ) + c) *
    (1 / Real.sqrt (N : ℝ) - 1 / Real.sqrt Y) -
    2 * (Real.sqrt Y - Real.sqrt (N : ℝ))| ≤ _
  have hp := Chebyshev.psi_nonneg (N : ℝ)
  have hpu := Chebyshev.psi_le_const_mul_self (by linarith : 0 ≤ (N : ℝ))
  have hc : |Chebyshev.psi (N : ℝ) + c| ≤ Chebyshev.psi (N : ℝ) + |c| := by
    simpa only [abs_of_nonneg hp] using (abs_add_le (Chebyshev.psi (N : ℝ)) c)
  calc
    _ ≤ |2 * (Chebyshev.psi (N : ℝ) + c) *
          (1 / Real.sqrt (N : ℝ) - 1 / Real.sqrt Y)| +
        |2 * (Real.sqrt Y - Real.sqrt (N : ℝ))| := abs_sub_le _ _
    _ = 2 * |Chebyshev.psi (N : ℝ) + c| *
          (1 / Real.sqrt (N : ℝ) - 1 / Real.sqrt Y) +
        2 * (Real.sqrt Y - Real.sqrt (N : ℝ)) := by
      rw [abs_mul, abs_mul, abs_mul, abs_of_nonneg hb.2.2.1, abs_of_nonneg hb.1]
      norm_num
    _ ≤ 2 * (Chebyshev.psi (N : ℝ) + |c|) *
          (1 / ((N : ℝ) * Real.sqrt (N : ℝ))) + 2 / Real.sqrt (N : ℝ) := by
      gcongr
      · exact hc
      · exact hb.2.2.2
      · simpa only [mul_one_div] using hb.2.1
    _ ≤ 2 * (Real.log 4 + 5 + |c|) / Real.sqrt (N : ℝ) := by
      apply (le_div_iff₀ hsnp).2
      field_simp
      nlinarith [abs_nonneg c, Real.log_nonneg (by norm_num : (1 : ℝ) ≤ 4)]

end
end FormalResearch.RiemannHypothesis.SourceActualXiClosedCellOscillation
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Attempt01/Variant8e131f19204257aad4af9eb518f496823049a65fa7d612d59e0c3b784999b804.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Attempt01/Variant8e131f19204257aad4af9eb518f496823049a65fa7d612d59e0c3b784999b804.lean#L95).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `6d29a1b8213650619d25131d856e93cce8f6fe43` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
