# actual_bumpMellinWeight_on_strip_norm_le

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:a6e21af4-0e76-b5c9-fe70-fec726a2917e",
  "kind": "theorem",
  "lexical_name": "actual_bumpMellinWeight_on_strip_norm_le",
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
  "slug": "actual-bumpmellinweight-on-strip-norm-le--127fc5509e7797679ccc2553",
  "source": {
    "blob": "fe53c30c0788cea36dd6a86df2550a6327ac3cb9",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 114,
    "line": 83,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ActualBumpHorizontalStripBudget/Variant79ceb6afa23f225d230eb547bb5ffd17def4746a72612d1fd10ba18504b04333.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:127fc5509e7797679ccc25539672d7cf43fa97edb7622ea0bd6a0f010edecb4b",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ActualBumpHorizontalStripBudget/Variant79ceb6afa23f225d230eb547bb5ffd17def4746a72612d1fd10ba18504b04333.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:a6e21af4-0e76-b5c9-fe70-fec726a2917e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 83–114.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem actual_bumpMellinWeight_on_strip_norm_le (A c x y : ℝ)
    (hA : 1 ≤ A) (hc : 1 < c) (hl : 1-c ≤ x) (hr : x ≤ c) (hy : 1 ≤ |y|) :
    ‖bumpMellinWeight A ((x : ℂ)+(y : ℂ)*Complex.I)‖ ≤
      (204288 : ℝ)^2/sourceNormalization A*(1+c^2)^2*
        Real.exp ((2*c-1)*A)/(A^9*|y|^6) := by
  have hZ := source_normalization_pos A hA
  have hb := actual_bump_on_strip_norm_le A c x y hA hc hl hr hy
  have hp := strip_pole_norm_le c x y hc hl hr hy
  have he : Real.exp (A*(c-1/2))^2 = Real.exp ((2*c-1)*A) := by
    rw [← Real.exp_nat_mul]
    congr 1
    norm_num
    ring
  have hn : ‖bumpMellinWeight A ((x : ℂ)+(y : ℂ)*Complex.I)‖ =
      (A/sourceNormalization A)*
        (‖(x : ℂ)+(y : ℂ)*Complex.I‖^2 * ‖(x : ℂ)+(y : ℂ)*Complex.I-1‖^2)*
        ‖bumpLaplace ((A : ℂ)*((x : ℂ)+(y : ℂ)*Complex.I-1/2))‖^2 := by
    unfold bumpMellinWeight
    simp only [norm_mul,norm_pow,Complex.norm_real,Real.norm_eq_abs]
    rw [abs_of_nonneg (by positivity : 0 ≤ A/sourceNormalization A)]
    ring
  rw [hn]
  calc
    _ ≤ (A/sourceNormalization A)*((1+c^2)^2*|y|^4)*
        (204288*Real.exp (A*(c-1/2))/(A^5*|y|^5))^2 := by gcongr
    _ = _ := by
      rw [div_pow,mul_pow,he]
      have hA0 : A ≠ 0 := by linarith
      have hy0 : |y| ≠ 0 := by linarith
      field_simp

/-- The strip budget applies to the actual bilateral source correlation itself. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ActualBumpHorizontalStripBudget/Variant79ceb6afa23f225d230eb547bb5ffd17def4746a72612d1fd10ba18504b04333.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ActualBumpHorizontalStripBudget/Variant79ceb6afa23f225d230eb547bb5ffd17def4746a72612d1fd10ba18504b04333.lean#L83).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `fe53c30c0788cea36dd6a86df2550a6327ac3cb9` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
