# actualAnchoredXiTailPrimitive_cell_abs_le

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:9b801fcb-fbc6-c18f-8a90-f487c9c6f2df",
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
  "slug": "actualanchoredxitailprimitive-cell-abs-le--14c8f3a57d240eb5fb487b0c",
  "source": {
    "blob": "387741afd2cf2b9280cee3f23152ac66054b2e2a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 151,
    "line": 101,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceActualXiClosedCellOscillation/Varianta3b64f124292f9650452e38cd26917e6636905f9b7fa843181dac4ee45f2ab04.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:14c8f3a57d240eb5fb487b0ce088c603a8260a8c66b98301d137fcd6959a6b04",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceActualXiClosedCellOscillation/Varianta3b64f124292f9650452e38cd26917e6636905f9b7fa843181dac4ee45f2ab04.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:9b801fcb-fbc6-c18f-8a90-f487c9c6f2df`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 101–151.

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
        |2 * (Real.sqrt Y - Real.sqrt (N : ℝ))| := abs_sub _ _
    _ = 2 * |Chebyshev.psi (N : ℝ) + c| *
          (1 / Real.sqrt (N : ℝ) - 1 / Real.sqrt Y) +
        2 * (Real.sqrt Y - Real.sqrt (N : ℝ)) := by
      rw [abs_mul, abs_mul, abs_mul, abs_of_nonneg hb.2.2.1, abs_of_nonneg hb.1]
      norm_num
    _ ≤ 2 * (Chebyshev.psi (N : ℝ) + |c|) *
          (1 / ((N : ℝ) * Real.sqrt (N : ℝ))) + 2 / Real.sqrt (N : ℝ) := by
      have ht : 2 * |Chebyshev.psi (N : ℝ) + c| *
          (1 / Real.sqrt (N : ℝ) - 1 / Real.sqrt Y) ≤
          2 * (Chebyshev.psi (N : ℝ) + |c|) *
            (1 / ((N : ℝ) * Real.sqrt (N : ℝ))) := by
        calc
          _ ≤ 2 * (Chebyshev.psi (N : ℝ) + |c|) *
              (1 / Real.sqrt (N : ℝ) - 1 / Real.sqrt Y) :=
            mul_le_mul_of_nonneg_right (mul_le_mul_of_nonneg_left hc (by norm_num)) hb.2.2.1
          _ ≤ _ := mul_le_mul_of_nonneg_left hb.2.2.2 (by positivity)
      have hs : 2 * (Real.sqrt Y - Real.sqrt (N : ℝ)) ≤ 2 / Real.sqrt (N : ℝ) := by
        calc
          _ ≤ 2 * (1 / Real.sqrt (N : ℝ)) :=
            mul_le_mul_of_nonneg_left hb.2.1 (by norm_num)
          _ = _ := by ring
      exact add_le_add ht hs
    _ ≤ 2 * (Real.log 4 + 5 + |c|) / Real.sqrt (N : ℝ) := by
      apply (le_div_iff₀ hsnp).2
      field_simp
      nlinarith [abs_nonneg c, Real.log_nonneg (by norm_num : (1 : ℝ) ≤ 4)]

end
end FormalResearch.RiemannHypothesis.SourceActualXiClosedCellOscillation
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceActualXiClosedCellOscillation/Varianta3b64f124292f9650452e38cd26917e6636905f9b7fa843181dac4ee45f2ab04.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceActualXiClosedCellOscillation/Varianta3b64f124292f9650452e38cd26917e6636905f9b7fa843181dac4ee45f2ab04.lean#L101).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `387741afd2cf2b9280cee3f23152ac66054b2e2a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
