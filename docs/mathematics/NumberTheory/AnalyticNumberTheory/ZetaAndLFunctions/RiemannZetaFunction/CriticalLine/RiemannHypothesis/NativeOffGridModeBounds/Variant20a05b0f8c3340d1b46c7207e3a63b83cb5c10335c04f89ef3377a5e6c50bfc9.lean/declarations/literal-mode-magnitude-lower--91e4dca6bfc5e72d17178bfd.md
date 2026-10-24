# literal_mode_magnitude_lower

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:ca283699-06bf-3518-b1f8-6a80ba221578",
  "kind": "theorem",
  "lexical_name": "literal_mode_magnitude_lower",
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
  "slug": "literal-mode-magnitude-lower--91e4dca6bfc5e72d17178bfd",
  "source": {
    "blob": "789d93e57561ce9b74b482fb5b22cecc67520d0f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 66,
    "line": 44,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/NativeOffGridModeBounds/Variant20a05b0f8c3340d1b46c7207e3a63b83cb5c10335c04f89ef3377a5e6c50bfc9.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:91e4dca6bfc5e72d17178bfdf60cc054a5dcf4bbb2e49835b331bba63efc84a5",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/NativeOffGridModeBounds/Variant20a05b0f8c3340d1b46c7207e3a63b83cb5c10335c04f89ef3377a5e6c50bfc9.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:ca283699-06bf-3518-b1f8-6a80ba221578`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 44–66.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem literal_mode_magnitude_lower {A : ℝ} (hA : 100 ≤ A) :
    (9 / 2) * (Real.exp (A / 2) / A ^ 9) ≤ modeMagnitude A := by
  have hpos : 0 < A := by linarith
  have hZ := source_normalization_pos A (by linarith)
  have hZ1 := source_normalization_le_one (by linarith : 8 ≤ A)
  have hm : 0 < ‖mode‖ := by linarith [literal_mode_norm_gt_three]
  have hm4 := literal_mode_norm_lt_four.le
  have hp8 := literal_mode_pole_norm_gt_eight
  have hp64 : (64 : ℝ) ≤ ‖mode ^ 2 - (1 / 4 : ℂ)‖ ^ 2 := by
    nlinarith [norm_nonneg (mode ^ 2 - (1 / 4 : ℂ))]
  have hm10 : ‖mode‖ ^ 10 ≤ (4 : ℝ) ^ 10 := by gcongr
  have hd : sourceNormalization A * ‖mode‖ ^ 10 ≤ (4 : ℝ) ^ 10 := by
    calc
      _ ≤ ‖mode‖ ^ 10 := by
        simpa only [one_mul] using mul_le_mul_of_nonneg_right hZ1 (pow_nonneg (norm_nonneg mode) 10)
      _ ≤ _ := hm10
  norm_num at hd
  have hcoef : (9 / 2 : ℝ) ≤ 73728 * ‖mode ^ 2 - (1 / 4 : ℂ)‖ ^ 2 /
      (sourceNormalization A * ‖mode‖ ^ 10) := by
    apply (le_div_iff₀ (by positivity : 0 < sourceNormalization A * ‖mode‖ ^ 10)).mpr
    nlinarith
  exact mul_le_mul_of_nonneg_right hcoef (by positivity)

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/NativeOffGridModeBounds/Variant20a05b0f8c3340d1b46c7207e3a63b83cb5c10335c04f89ef3377a5e6c50bfc9.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/NativeOffGridModeBounds/Variant20a05b0f8c3340d1b46c7207e3a63b83cb5c10335c04f89ef3377a5e6c50bfc9.lean#L44).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `789d93e57561ce9b74b482fb5b22cecc67520d0f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
