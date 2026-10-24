# actualCriticalUpperColumnTrace_abs_le

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:ab8b9dc4-c3d1-b5db-3063-f4d31912c94d",
  "kind": "theorem",
  "lexical_name": "actualCriticalUpperColumnTrace_abs_le",
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
  "slug": "actualcriticaluppercolumntrace-abs-le--1c9c8e99868b0ae041c2d82c",
  "source": {
    "blob": "0798d45a5059cb88c8781776d3fcb41036891551",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 234,
    "line": 197,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/RootActualCriticalUpperColumnEstimate/Variantb7f36e318af327d150cf3c833762f850d816e82909dbb41e369cb5df76c71b94.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:1c9c8e99868b0ae041c2d82c161145c4895eac4b3434dec37e8f5401401b370b",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/RootActualCriticalUpperColumnEstimate/Variantb7f36e318af327d150cf3c833762f850d816e82909dbb41e369cb5df76c71b94.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:ab8b9dc4-c3d1-b5db-3063-f4d31912c94d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 197–234.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem actualCriticalUpperColumnTrace_abs_le {A : ℝ} (hA : 91 ≤ A) :
    |actualCriticalUpperColumnTrace A| ≤ actualCriticalUpperColumnConstant / A ^ 4 := by
  let U : ℝ := (vaughanCutoff A : ℝ)
  let Ce := Real.log 4 + 4 + Real.log 2
  let C := actualCriticalHalfCrudeConstant
  have hU1 : 1 ≤ U := by exact_mod_cast vaughanCutoff_pos A (by linarith)
  have hU : 0 < U := by linarith
  have hC : 0 ≤ C := by dsimp [C, actualCriticalHalfCrudeConstant]; positivity
  have hCe : 0 ≤ Ce := by dsimp [Ce]; positivity
  have hm := actualCenteredHalfZetaMain_abs_le_crude_sqrt (vaughanCutoff A)
    (vaughanCutoff_pos A (by linarith))
  have ht := actualUpperColumn_normalized_time_factor_abs_le hA
  have hi : U * (3 / U) ^ 2 ≤ 9 := by
    have he : U * (3 / U) ^ 2 = 9 / U := by field_simp; ring
    rw [he]
    exact (div_le_iff₀ hU).2 (by linarith)
  have hs := Real.sq_sqrt hU.le
  unfold actualCriticalUpperColumnTrace
  rw [mul_assoc (-2 * _), abs_mul, abs_mul, abs_neg, abs_of_pos (by norm_num : 0 < (2 : ℝ))]
  calc
    _ ≤ 2 * (C * Real.sqrt U) *
        (268 * Ce * Real.sqrt U * Real.exp (3 / 2) / A ^ 4 * (3 / U) ^ 2) :=
      mul_le_mul (mul_le_mul_of_nonneg_left hm (by norm_num)) ht (abs_nonneg _) (by positivity)
    _ = 536 * C * Ce * Real.exp (3 / 2) / A ^ 4 * (U * (3 / U) ^ 2) := by
      calc
        _ = 536 * C * Ce * Real.exp (3 / 2) / A ^ 4 *
            ((Real.sqrt U) ^ 2 * (3 / U) ^ 2) := by ring
        _ = _ := by rw [hs]
    _ ≤ 536 * C * Ce * Real.exp (3 / 2) / A ^ 4 * 9 :=
      mul_le_mul_of_nonneg_left hi (by positivity)
    _ ≤ _ := by
      unfold actualCriticalUpperColumnConstant
      change _ ≤ 5000 * C * Ce * Real.exp (3 / 2) / A ^ 4
      have hB : 0 ≤ C * Ce * Real.exp (3 / 2) / A ^ 4 := by positivity
      convert mul_le_mul_of_nonneg_right (show (4824 : ℝ) ≤ 5000 by norm_num) hB using 1 <;> ring

end
end FormalResearch.RiemannHypothesis.RootActualCriticalUpperColumnEstimate
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/RootActualCriticalUpperColumnEstimate/Variantb7f36e318af327d150cf3c833762f850d816e82909dbb41e369cb5df76c71b94.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/RootActualCriticalUpperColumnEstimate/Variantb7f36e318af327d150cf3c833762f850d816e82909dbb41e369cb5df76c71b94.lean#L197).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `0798d45a5059cb88c8781776d3fcb41036891551` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
