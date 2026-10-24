# actualFiniteBetaMangoldtInteraction_abs_le

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:6ba25281-5ad0-325d-3f2e-17858ffa0be6",
  "kind": "theorem",
  "lexical_name": "actualFiniteBetaMangoldtInteraction_abs_le",
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
  "slug": "actualfinitebetamangoldtinteraction-abs-le--186ee12430079299d7ab89fb",
  "source": {
    "blob": "df28819fdf2a73eb9cd006489a4246a468789432",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 135,
    "line": 97,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ActualSupportEdgeBetaInteraction/Varianted1cfccdcabb97303081e7feb1c194046cb5311d4e3262934fa84329ddd0324e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:186ee12430079299d7ab89fb4d79d2157a5a7209cc37628f6521600b2f7dc208",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ActualSupportEdgeBetaInteraction/Varianted1cfccdcabb97303081e7feb1c194046cb5311d4e3262934fa84329ddd0324e.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:6ba25281-5ad0-325d-3f2e-17858ffa0be6`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 97–135.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem actualFiniteBetaMangoldtInteraction_abs_le {A : ℝ} (hA : 91 ≤ A) :
    |actualFiniteBetaMangoldtInteraction A| ≤ 25728 * (Real.log 4 + 4) / A ^ 2 := by
  let U := (vaughanCutoff A : ℝ)
  let L := ((sourceKernelCutoff A / (vaughanCutoff A + 1) - 1 : ℕ) : ℝ)
  have hK := actual_column_window_nonempty (by linarith : 1 ≤ A)
  have hU0 := vaughanCutoff_pos A (by linarith : 1 ≤ A)
  have hL : 0 < L := by
    dsimp only [L]
    exact_mod_cast (show 0 < sourceKernelCutoff A / (vaughanCutoff A + 1) - 1 by omega)
  have hLs : 0 < Real.sqrt L := Real.sqrt_pos.2 hL
  have hu : U ≤ A ^ 2 := Nat.floor_le (sq_nonneg A)
  have he := actual_support_half_le_two_sqrt_terminal (by linarith : 4 ≤ A)
  have hr := actualLowerColumnHalfMangoldtRow_abs_le hA
  have hd := actualTerminalCenteredHalfDefect_abs_le (by linarith : 1 ≤ A)
  have hr' : |actualLowerColumnHalfMangoldtRow A| ≤
      4288 * (Real.log 4 + 4) * Real.sqrt L / A ^ 4 := by
    apply hr.trans
    calc
      _ ≤ 2144 * (Real.log 4 + 4) * (2 * Real.sqrt L) / A ^ 4 := by
        apply div_le_div_of_nonneg_right _ (by positivity)
        exact mul_le_mul_of_nonneg_left he (by positivity)
      _ = _ := by ring
  unfold actualFiniteBetaMangoldtInteraction
  rw [abs_mul, abs_mul]
  norm_num only [abs_neg, abs_of_nonneg (by norm_num : (0 : ℝ) ≤ 2)]
  calc
    _ ≤ 2 * (3 * U / Real.sqrt L) *
        (4288 * (Real.log 4 + 4) * Real.sqrt L / A ^ 4) := by
      apply mul_le_mul
      · exact mul_le_mul_of_nonneg_left hd (by norm_num)
      · exact hr'
      · exact abs_nonneg _
      · positivity
    _ = 25728 * (Real.log 4 + 4) * U / A ^ 4 := by field_simp; ring
    _ ≤ 25728 * (Real.log 4 + 4) * A ^ 2 / A ^ 4 := by gcongr
    _ = _ := by field_simp

end
end FormalResearch.RiemannHypothesis.ActualSupportEdgeBetaInteraction
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ActualSupportEdgeBetaInteraction/Varianted1cfccdcabb97303081e7feb1c194046cb5311d4e3262934fa84329ddd0324e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ActualSupportEdgeBetaInteraction/Varianted1cfccdcabb97303081e7feb1c194046cb5311d4e3262934fa84329ddd0324e.lean#L97).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `df28819fdf2a73eb9cd006489a4246a468789432` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
