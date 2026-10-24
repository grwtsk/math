# actual_local_primitive_work_bound

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:ea55ae09-0e85-3071-2580-b0ae1c31c5b5",
  "kind": "theorem",
  "lexical_name": "actual_local_primitive_work_bound",
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
  "slug": "actual-local-primitive-work-bound--995e37943ed8c52ede8fa997",
  "source": {
    "blob": "a30f566f1fa927dcf0fff32533c894981f075dbf",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 50,
    "line": 32,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/LocalPrimitiveBudget/Variant06651c2f1ea8953dca19de8086f0afd56775bc5c3c4ad8d430c0f51d6eaeeacc.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:995e37943ed8c52ede8fa997ef593a9c56157b48275f018961e9550450cb2b01",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/LocalPrimitiveBudget/Variant06651c2f1ea8953dca19de8086f0afd56775bc5c3c4ad8d430c0f51d6eaeeacc.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_SOURCE_DEPENDENCY"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:ea55ae09-0e85-3071-2580-b0ae1c31c5b5`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 32–50.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem actual_local_primitive_work_bound (M : ℝ) (hM : 0 ≤ M)
    (A : ℝ) (hA : 1 ≤ A)
    (hF : ∀ t : ℝ, t ∈ Icc 0 (2 * A) → |criticalPrimitive t| ≤ M) :
    |∫ t in 0..2 * A, criticalPrimitive t * deriv (criticalKernel A) t| ≤
      M * (130 / (3 * A) + Real.sqrt (65 / 3 : ℝ)) := by
  have hp : 0 < A := by linarith
  have hpoint (t : ℝ) (ht : t ∈ Ι (0 : ℝ) (2 * A)) :
      ‖criticalPrimitive t * deriv (criticalKernel A) t‖ ≤
        M * (65 / (3 * A ^ 2) + Real.sqrt (65 / 3 : ℝ) / (2 * A)) := by
    rw [Real.norm_eq_abs, abs_mul]
    have ht' : t ∈ Icc 0 (2 * A) := by
      exact (uIcc_of_le (by linarith : (0 : ℝ) ≤ 2 * A)) ▸ (uIoc_subset_uIcc ht)
    exact mul_le_mul (hF t ht') (criticalKernel_deriv_abs_le A t hA) (abs_nonneg _) hM
  have hb := intervalIntegral.norm_integral_le_of_norm_le_const hpoint
  simp only [Real.norm_eq_abs, sub_zero, abs_of_pos (by positivity : 0 < 2 * A)] at hb
  convert hb using 1
  field_simp
  ring

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_SOURCE_DEPENDENCY`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/LocalPrimitiveBudget/Variant06651c2f1ea8953dca19de8086f0afd56775bc5c3c4ad8d430c0f51d6eaeeacc.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/LocalPrimitiveBudget/Variant06651c2f1ea8953dca19de8086f0afd56775bc5c3c4ad8d430c0f51d6eaeeacc.lean#L32).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a30f566f1fa927dcf0fff32533c894981f075dbf` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
