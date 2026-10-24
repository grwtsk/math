# factorialCancellationSumMajorant_integral_le

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:dae5bc66-daa4-4aad-1604-3627d101d05f",
  "kind": "theorem",
  "lexical_name": "factorialCancellationSumMajorant_integral_le",
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
  "slug": "factorialcancellationsummajorant-integral-le--8952c805ab8b80d9e47d55bc",
  "source": {
    "blob": "5151c0495da9d42f4f411316efe89fd103d5e5bd",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 228,
    "line": 189,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/D9972fcb5a21e569700bSourceCancelledFactorialSectorBudget/Variantd3e4c093324883715948c582463a0382063187f946b44a7b1ef16665e1a8b46d.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:8952c805ab8b80d9e47d55bc1f744b181be2ce4dc50d241c3c6a2d7468ea23c6",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/D9972fcb5a21e569700bSourceCancelledFactorialSectorBudget/Variantd3e4c093324883715948c582463a0382063187f946b44a7b1ef16665e1a8b46d.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:dae5bc66-daa4-4aad-1604-3627d101d05f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 189–228.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem factorialCancellationSumMajorant_integral_le (A : ℝ) (hA : 1 ≤ A) :
    (∫ x in Ioi (0 : ℝ), factorialCancellationSumMajorant A x) ≤
      2 * A * (60 * Real.log (vaughanCutoff A : ℝ) ^ 2 +
        640 * Real.log (vaughanCutoff A : ℝ) + 1920) := by
  let T := Real.log (vaughanCutoff A : ℝ)
  let P := 60 * T ^ 2 + 640 * T + 1920
  have hU : (1 : ℝ) ≤ vaughanCutoff A := by exact_mod_cast vaughanCutoff_pos A hA
  have hT : 0 ≤ T := Real.log_nonneg hU
  have hP : 0 ≤ P := by unfold P; positivity
  unfold factorialCancellationSumMajorant
  rw [integral_finsetSum]
  · simp_rw [integral_const_mul]
    calc
      _ ≤ ∑ d ∈ Finset.Icc 1 (vaughanCutoff A), |realMoebius d| /
          Real.sqrt (d : ℝ) * P := by
        apply Finset.sum_le_sum
        intro d hd
        have hd1 : (1 : ℝ) ≤ d := by exact_mod_cast (Finset.mem_Icc.mp hd).1
        have hdU : (d : ℝ) ≤ vaughanCutoff A := by exact_mod_cast (Finset.mem_Icc.mp hd).2
        have hdT : Real.log (d : ℝ) ≤ T := Real.log_le_log (by linarith) hdU
        have hdlog := Real.log_nonneg hd1
        have hpoly : 60 * Real.log (d : ℝ) ^ 2 + 640 * Real.log (d : ℝ) + 1920 ≤ P := by
          unfold P
          gcongr
        calc
          _ ≤ |realMoebius d| *
              ((60 * Real.log (d : ℝ) ^ 2 + 640 * Real.log (d : ℝ) + 1920) /
                Real.sqrt (d : ℝ)) :=
            mul_le_mul_of_nonneg_left (factorialCancellationRowMajorant_integral_le hd1)
              (abs_nonneg _)
          _ ≤ |realMoebius d| * (P / Real.sqrt (d : ℝ)) := by gcongr
          _ = _ := by ring
      _ = (∑ d ∈ Finset.Icc 1 (vaughanCutoff A), |realMoebius d| /
          Real.sqrt (d : ℝ)) * P := (Finset.sum_mul _ _ _).symm
      _ ≤ 2 * A * P := mul_le_mul_of_nonneg_right (actualMoebiusSqrtMass_le A hA) hP
      _ = _ := rfl
  · intro d hd
    have hd1 : (1 : ℝ) ≤ d := by exact_mod_cast (Finset.mem_Icc.mp hd).1
    exact (factorialCancellationRowMajorant_integrable hd1).const_mul _

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/D9972fcb5a21e569700bSourceCancelledFactorialSectorBudget/Variantd3e4c093324883715948c582463a0382063187f946b44a7b1ef16665e1a8b46d.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/D9972fcb5a21e569700bSourceCancelledFactorialSectorBudget/Variantd3e4c093324883715948c582463a0382063187f946b44a7b1ef16665e1a8b46d.lean#L189).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `5151c0495da9d42f4f411316efe89fd103d5e5bd` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
