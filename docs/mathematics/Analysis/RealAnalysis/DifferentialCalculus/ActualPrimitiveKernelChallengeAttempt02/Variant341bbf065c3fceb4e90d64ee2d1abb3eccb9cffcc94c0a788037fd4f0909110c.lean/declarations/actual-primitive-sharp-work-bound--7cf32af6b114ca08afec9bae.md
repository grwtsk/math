# actual_primitive_sharp_work_bound

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "ac1f69bd6ff1a3cfe26b1f68f5cfa7c8eaa1d6b6",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 101,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/34/341bbf065c3fceb4e90d64ee2d1abb3eccb9cffcc94c0a788037fd4f0909110c.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:e6c39665-1dd6-78af-4bb7-7407ad00b176",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:acfbee1b-8c83-e1bc-45f2-67f6df44a0c1",
  "kind": "theorem",
  "lexical_name": "actual_primitive_sharp_work_bound",
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
  "slug": "actual-primitive-sharp-work-bound--7cf32af6b114ca08afec9bae",
  "source": {
    "blob": "ac1f69bd6ff1a3cfe26b1f68f5cfa7c8eaa1d6b6",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 119,
    "line": 101,
    "path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/ActualPrimitiveKernelChallengeAttempt02/Variant341bbf065c3fceb4e90d64ee2d1abb3eccb9cffcc94c0a788037fd4f0909110c.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:7cf32af6b114ca08afec9baecdc50f0d4fd9104be73c17b5f49b4b04cc13afc2",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/DifferentialCalculus/ActualPrimitiveKernelChallengeAttempt02/Variant341bbf065c3fceb4e90d64ee2d1abb3eccb9cffcc94c0a788037fd4f0909110c.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:acfbee1b-8c83-e1bc-45f2-67f6df44a0c1`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 101–119.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem actual_primitive_sharp_work_bound (M : ℝ) (hM : 0 ≤ M)
    (hF : ∀ t : ℝ, 0 ≤ t → |criticalPrimitive t| ≤ M)
    (A : ℝ) (hA : 1 ≤ A) :
    |∫ t in 0..2 * A, criticalPrimitive t * deriv (criticalKernel A) t| ≤
      M * (2 * (162826 / 7623 : ℝ) / A + Real.sqrt (162826 / 7623 : ℝ)) := by
  have hpoint (t : ℝ) (ht : t ∈ Ι (0 : ℝ) (2 * A)) :
      ‖criticalPrimitive t * deriv (criticalKernel A) t‖ ≤
        M * ((162826 / 7623 : ℝ) / A ^ 2 +
          Real.sqrt (162826 / 7623 : ℝ) / (2 * A)) := by
    rw [Real.norm_eq_abs, abs_mul]
    have ht0 : 0 ≤ t := ((uIoc_of_le (by linarith : (0 : ℝ) ≤ 2 * A)) ▸ ht).1.le
    exact mul_le_mul (hF t ht0) (actual_criticalKernel_deriv_sharp_bound A t hA)
      (abs_nonneg _) hM
  have hb := intervalIntegral.norm_integral_le_of_norm_le_const hpoint
  simp only [Real.norm_eq_abs, sub_zero, abs_of_pos (by positivity : 0 < 2 * A)] at hb
  convert hb using 1
  field_simp <;> ring

/-- The exact actual continuous half is negative; the earlier +2 allowance disappears. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/DifferentialCalculus/ActualPrimitiveKernelChallengeAttempt02/Variant341bbf065c3fceb4e90d64ee2d1abb3eccb9cffcc94c0a788037fd4f0909110c.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/ActualPrimitiveKernelChallengeAttempt02/Variant341bbf065c3fceb4e90d64ee2d1abb3eccb9cffcc94c0a788037fd4f0909110c.lean#L101).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ac1f69bd6ff1a3cfe26b1f68f5cfa7c8eaa1d6b6` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
